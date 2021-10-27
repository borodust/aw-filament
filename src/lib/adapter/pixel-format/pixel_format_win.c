#include "pixel_format.h"

#include <Windows.h>
#include <Wingdi.h>
#include <assert.h>
#include <stdio.h>


int aw_filament_select_pixel_format(struct aw_filament_pixel_format *pf) {
    memset(pf, 0, sizeof(struct aw_filament_pixel_format));

    PIXELFORMATDESCRIPTOR win_pf = {
            sizeof(PIXELFORMATDESCRIPTOR),
            1,
            PFD_DRAW_TO_WINDOW | PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER,    // Flags
            PFD_TYPE_RGBA,        // The kind of framebuffer. RGBA or palette.
            32,                   // Colordepth of the framebuffer.
            0, 0, 0, 0, 0, 0,
            0,
            0,
            0,
            0, 0, 0, 0,
            24,                   // Number of bits for the depthbuffer
            0,                    // Number of bits for the stencilbuffer
            0,                    // Number of Aux buffers in the framebuffer.
            PFD_MAIN_PLANE,
            0,
            0, 0, 0
    };

    HWND mHWnd = CreateWindowA("STATIC", "dummy", 0, 0, 0, 1, 1, NULL, NULL, NULL, NULL);
    HDC mWhdc = GetDC(mHWnd);
    if (mWhdc == NULL) {
        fprintf(stderr, "Failed to create dummy window for pixel format selection\n");
        return 1;
    }

    int pixelFormat = ChoosePixelFormat(mWhdc, &win_pf);
    DescribePixelFormat(mWhdc, pixelFormat, sizeof(PIXELFORMATDESCRIPTOR), &win_pf);

    pf->red_bits = win_pf.cRedBits;
    pf->green_bits = win_pf.cGreenBits;
    pf->blue_bits = win_pf.cBlueBits;
    pf->alpha_bits = win_pf.cAlphaBits;

    pf->accum_red_bits = win_pf.cAccumRedBits;
    pf->accum_green_bits = win_pf.cAccumGreenBits;
    pf->accum_blue_bits = win_pf.cAccumBlueBits;
    pf->accum_alpha_bits = win_pf.cAccumAlphaBits;

    pf->buffer_bits = win_pf.cColorBits + win_pf.cAlphaBits;
    pf->depth_bits = win_pf.cDepthBits;
    pf->stencil_bits = win_pf.cStencilBits;

    ReleaseDC(mHWnd, mWhdc);
    DestroyWindow(mHWnd);

    return 0;
}
