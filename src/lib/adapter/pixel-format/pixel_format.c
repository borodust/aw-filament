#include "pixel_format.h"

int aw_filament_select_pixel_format(struct aw_filament_pixel_format *pf) {
    memset(pf, 0, sizeof(struct aw_filament_pixel_format));

    pf->red_bits = 0;
    pf->green_bits = 0;
    pf->blue_bits = 0;
    pf->alpha_bits = 0;

    pf->accum_red_bits = 0;
    pf->accum_green_bits = 0;
    pf->accum_blue_bits = 0;
    pf->accum_alpha_bits = 0;

    pf->buffer_bits = 32;
    pf->depth_bits = 24;
    pf->stencil_bits = 0;

    return 0;
}
