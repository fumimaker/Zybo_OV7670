#include "platform.h"
#include "xparameters.h"
#include "sleep.h"
#include "xiicps.h"
#include "stdio.h"
#include "OV7670.h"

int main()
{
	int result;

    init_platform();

    xil_printf("Start Initialize Camera Module\n\r");
    result = Init();
    if (result != XST_SUCCESS) {
		xil_printf("Camera Module Initialization failed\n\r");
		cleanup_platform();
		return (-1);
	}
    xil_printf("Reset Camera Module\n\r");

    xil_printf("Camera Module default register dump\n\r");
	DumpReg();

	xil_printf("Set RGB 565 mode\n\r");
	InitRGB565();

	xil_printf("Set VGA mode\n\r");
	InitVGA();
	xil_printf("Load default Camera registers\n\r");
	InitDefaultReg();

	//xil_printf("Camera Test\n");
	//ShowQVGA_ColorBar();

	xil_printf("\nCamera Module register dump after initialization\n\r");
	DumpReg();

	xil_printf("\nCamera Module register settings completed.\n\r");

	while(1) {
		// dummy loop
	}

    cleanup_platform();
    return 0;
}
