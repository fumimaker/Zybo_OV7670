/******************************************************************************
*
* Copyright (C) 2009 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL
* XILINX  BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/*
 * helloworld.c: simple test application
 *
 * This application configures UART 16550 to baud rate 9600.
 * PS7 UART (Zynq) is not initialized by this application, since
 * bootrom/bsp configures it to baud rate 115200
 *
 * ------------------------------------------------
 * | UART TYPE   BAUD RATE                        |
 * ------------------------------------------------
 *   uartns550   9600
 *   uartlite    Configurable only in HW design
 *   ps7_uart    115200 (configured by bootrom/bsp)
 */

#include "platform.h"
#include "xparameters.h"
#include "sleep.h"
#include "xiicps.h"
#include "stdio.h"


// I2C parameters
#define IIC_SCLK_RATE       100000  // clock 100KHz
#define TMP102_ADDRESS      0x48    // 7bit address
#define IIC_DEVICE_ID       XPAR_XIICPS_0_DEVICE_ID

XIicPs Iic;

int Init()
{
    int Status;
    XIicPs_Config *Config;  /**< configuration information for the device */

    Config = XIicPs_LookupConfig(IIC_DEVICE_ID);
    if(Config == NULL){
        printf("Error: XIicPs_LookupConfig()\n");
        return XST_FAILURE;
    }

    Status = XIicPs_CfgInitialize(&Iic, Config, Config->BaseAddress);
    if(Status != XST_SUCCESS){
        printf("Error: XIicPs_CfgInitialize()\n");
        return XST_FAILURE;
    }

    Status = XIicPs_SelfTest(&Iic);
    if(Status != XST_SUCCESS){
        printf("Error: XIicPs_SelfTest()\n");
        return XST_FAILURE;
    }

    XIicPs_SetSClk(&Iic, IIC_SCLK_RATE);
    printf("I2C configuration done.\n");

    return XST_SUCCESS;
}

int i2c_write(XIicPs *Iic, u8 command, u16 i2c_adder)
{
    int Status;
    u8 buffer[4];
    buffer[0] = command;

    Status = XIicPs_MasterSendPolled(Iic, buffer, 1, i2c_adder);

    if(Status != XST_SUCCESS){
        return XST_FAILURE;
    }

    // Wait until bus is idle to start another transfer.
    while(XIicPs_BusIsBusy(Iic)){
        /* NOP */
    }

    return XST_SUCCESS;
}


int i2c_read(XIicPs *Iic, u8* buff, u32 len, u16 i2c_adder)
{
    int Status;

    Status = XIicPs_MasterRecvPolled(Iic, buff, len, i2c_adder);

    if (Status == XST_SUCCESS)
        return XST_SUCCESS;
    else
        return -1;
}


int main()
{
    init_platform();
    Init();

    u8    buff[4];
    u16   rawdata;
    float temp;

    while(1) {
        i2c_write(&Iic, 0, TMP102_ADDRESS);
        i2c_read(&Iic, buff, 2, TMP102_ADDRESS);

        rawdata = ((int8_t)buff[0] << 4) | ((u8)buff[1] >> 4);
        temp = (float) ((float)rawdata * 0.0625);
        printf("Tmep: %2.1f\n", temp);
        usleep(1000*1000);      // sleep 1sec (1000 x 1000us)
    }

    cleanup_platform();
    return 0;
}
