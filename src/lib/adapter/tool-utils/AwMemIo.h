#ifndef _AW_IN_MEMORY_IO_
#define _AW_IN_MEMORY_IO_

#include <sstream>

#include "matc/Config.h"

namespace aw::filament::tools::memio {

class MaterialData {
public:
    MaterialData(void *data, size_t size) {
        mData = malloc(size);
        mSize = size;

        memcpy(mData, data, mSize);
    }

    virtual ~MaterialData() {
        free(mData);
    }

    size_t size() {
        return mSize;
    }

    void *data() {
        return mData;
    }

private:
    size_t mSize;
    void *mData;
};

class InMemoryOutput : public matc::Config::Output {
public:
    explicit InMemoryOutput() {
    }

    virtual ~InMemoryOutput() {}

    bool open() noexcept override {
        return true;
    }

    bool write(const uint8_t *data, size_t size) noexcept override {
        mBuffer.write((const char *) data, size);
        return mBuffer.fail();
    }

    std::ostream &getOutputStream() noexcept override {
        return mBuffer;
    }

    MaterialData *materialData() {
        return new MaterialData(mData.data(), mData.size());
    }

    bool close() noexcept override {
        mData = mBuffer.str();
        mBuffer.clear();
        return true;
    };
private:
    std::ostringstream mBuffer;
    std::string mData;
};

class InMemoryInput : public matc::Config::Input {
public:
    explicit InMemoryInput(const char *name, const char *data, size_t size) : mData(data, size), mName(name) {
    }

    virtual ~InMemoryInput() {}

    ssize_t open() noexcept override {
        return mData.size();
    }

    std::unique_ptr<const char[]> read() noexcept override {
        auto buffer = std::unique_ptr<const char[]>(new char[mData.size()]);

        memcpy((void *) buffer.get(), mData.c_str(), mData.size());
        return buffer;
    }

    bool close() noexcept override {
        return true;
    }

    const char *getName() const noexcept override {
        return mName.c_str();
    }

private:
    std::string mData;
    std::string mName;
};

class InMemoryConfig : public matc::Config {
public:
    explicit InMemoryConfig(const char *name, const char *data, size_t size) {
        mInput = new InMemoryInput(name, data, size);
        mOutput = new InMemoryOutput();
        mTargetApi = TargetApi::ALL;
    }

    virtual ~InMemoryConfig() {
        delete mInput;
        delete mOutput;
    };

    void setDebug(bool mDebug) {
        InMemoryConfig::mDebug = mDebug;
    }

    bool isPrintShaders() const {
        return mPrintShaders;
    }

    void setPrintShaders(bool printShaders) {
        mPrintShaders = printShaders;
    }

    void setRawShaderMode(bool rawShaderMode) {
        mRawShaderMode = rawShaderMode;
    }

    void setReflectionTarget(Metadata reflectionTarget) {
        mReflectionTarget = reflectionTarget;
    }

    void setPlatform(Platform platform) {
        mPlatform = platform;
    }

    void setOutputFormat(OutputFormat outputFormat) {
        mOutputFormat = outputFormat;
    }

    void setTargetApi(TargetApi targetApi) {
        mTargetApi = targetApi;
    }

    void setVariantFilter(uint8_t variantFilter) {
        mVariantFilter = variantFilter;
    }

    matc::Config::Output *getOutput() const noexcept override {
        return mOutput;
    }

    matc::Config::Input *getInput() const noexcept override {
        return mInput;
    }

    std::string toString() const noexcept override {
        return "InMemoryConfig {}";
    }

private:
    InMemoryInput *mInput;
    InMemoryOutput *mOutput;
};


}

#endif
