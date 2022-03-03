#ifndef _AW_FILAMENT_UTIL_IO_
#define _AW_FILAMENT_UTIL_IO_

#include <filesystem>

namespace aw {
namespace filament {
namespace util {

int resize_file(const char *filename, unsigned long new_size) {
    std::error_code error;
    std::filesystem::resize_file(filename, new_size, error);
    return error.value();
}

}
}
}

#endif
