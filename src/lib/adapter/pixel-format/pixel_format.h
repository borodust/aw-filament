#ifndef _AW_FILAMENT_PIXEL_FORMAT_
#define _AW_FILAMENT_PIXEL_FORMAT_

#if !defined(__CLAW_API)
#  if defined(_WIN32)
#    define __CLAW_API __declspec(dllexport)
#  elif defined(__GNUC__)
#    define __CLAW_API __attribute__((visibility("default")))
#  else
#    define __CLAW_API
#  endif
#endif

#if defined(__cplusplus)
extern "C" {
#endif

struct aw_filament_pixel_format {
    int red_bits;
    int green_bits;
    int blue_bits;
    int alpha_bits;

    int accum_red_bits;
    int accum_green_bits;
    int accum_blue_bits;
    int accum_alpha_bits;

    int buffer_bits;
    int depth_bits;
    int stencil_bits;
};

__CLAW_API int aw_filament_select_pixel_format(struct aw_filament_pixel_format* pf);


#if defined(__cplusplus)
}
#endif


#endif
