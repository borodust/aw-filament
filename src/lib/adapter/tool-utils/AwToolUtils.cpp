#include "AwToolUtils.h"

#include <istream>
#include <ostream>
#include <vector>

namespace aw::filament::tools::util {

int resizeFile(const char *filename, unsigned long new_size) {
    std::error_code error;
    std::filesystem::resize_file(filename, new_size, error);
    return error.value();
}


struct membuf : std::streambuf {
    membuf(char const *base, size_t size) {
        char *p = const_cast<char *>(base);
        this->setg(p, p, p + size);
        this->setp(p, p + size);
    }

public:
    size_t written() {
        return this->pptr() - this->pbase();
    }

    size_t read() {
        return this->gptr() - this->eback();
    }

protected:
    int currentGetPos() const { return gptr() - eback(); }

    int currentPutPos() const { return pptr() - pbase(); }

    pos_type seekoffbeg(off_type offset, std::ios_base::openmode which) {
        if (which & std::ios_base::in) {
            char *newPtr = eback() + offset;
            if (newPtr < eback() || newPtr > egptr()) {
                return -1;
            }
            this->setg(eback(), newPtr, egptr());
            return currentGetPos();
        }
        if (which & std::ios_base::out) {
            if (offset < 0 || ((pbase() + offset) > epptr())) {
                return -1;
            }
            pbump(offset - currentPutPos());
            return currentPutPos();
        }
        return -1;
    }

    pos_type seekoffcur(off_type offset, std::ios_base::openmode which) {
        if (which & std::ios_base::in) {
            char *newPtr = gptr() + offset;
            if (newPtr < eback() || newPtr > egptr()) {
                return -1;
            }
            this->setg(eback(), newPtr, egptr());
            return currentGetPos();
        }
        if (which & std::ios_base::out) {
            if (((pptr() + offset) < eback()) || ((pptr() + offset) > epptr())) {
                return -1;
            }
            pbump(offset);
            return currentPutPos();
        }
        return -1;
    }

    pos_type seekoffend(off_type offset, std::ios_base::openmode which) {
        if (which & std::ios_base::in) {
            char *newPtr = egptr() - offset;
            if (newPtr < eback() || newPtr > egptr()) {
                return -1;
            }
            this->setg(eback(), newPtr, egptr());
            return currentGetPos();
        }
        if (which & std::ios_base::out) {
            if (((epptr() - offset) < eback()) || ((epptr() - offset) > epptr())) {
                return -1;
            }
            pbump(epptr() - pptr() - offset);
            return currentPutPos();
        }
        return -1;
    }

    pos_type seekoff(off_type offset, std::ios_base::seekdir way, std::ios_base::openmode which) override {
        switch (way) {
            case std::ios_base::beg:
                return seekoffbeg(offset, which);
            case std::ios_base::cur:
                return seekoffcur(offset, which);
            case std::ios_base::end:
                return seekoffend(offset, which);
        }
        return -1;
    }

    pos_type seekpos(pos_type sp, std::ios_base::openmode which) override {
        char *newPtr = pbase() + sp;

        if (newPtr < pbase() || newPtr > epptr()) {
            return -1;
        }

        if (which & std::ios_base::in) {
            this->setg(eback(), newPtr, egptr());
            return currentGetPos();
        }

        if (which & std::ios_base::out) {
            pbump(newPtr - pptr());
            return currentPutPos();
        }

        return -1;
    }

private:
};

image::LinearImage decodeImage(uint8_t *data, size_t size, image::ImageDecoder::ColorSpace sourceSpace) {
    membuf buf((const char *) data, size);
    std::istream stream(&buf);
    return image::ImageDecoder::decode(stream, "", sourceSpace);
}

size_t encodeImage(uint8_t *data, size_t size, image::ImageEncoder::Format format, image::LinearImage *image) {
    membuf buf((char *) data, size);
    std::ostream stream(&buf);
    bool success = image::ImageEncoder::encode(stream, format, *image, "", "");
    if (!success) {
        return -1;
    }
    return buf.written();
}

}