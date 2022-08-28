#ifndef _AW_TOOL_UTILS_IO_
#define _AW_TOOL_UTILS_IO_

#include <filesystem>
#include <imageio/ImageDecoder.h>
#include <imageio/ImageEncoder.h>

namespace aw::filament::tools::util {

int resizeFile(const char *filename, unsigned long new_size);

image::LinearImage decodeImage(uint8_t *data, size_t size, image::ImageDecoder::ColorSpace sourceSpace);

size_t encodeImage(uint8_t *data, size_t size, image::ImageEncoder::Format format, image::LinearImage *image);
}

#endif
