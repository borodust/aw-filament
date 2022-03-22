/* Generated by :claw at 2022-03-22T18:52:31.946309Z */

#if defined(__cplusplus)
#include <new>
#endif



#include "matc/MaterialCompiler.h"
#include "matc/Config.h"
#include "ClawMemIo.h"
#include "ClawUtil.h"

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


namespace aw {
namespace filament {
__CLAW_API const char* __claw__ZNK2aw8filament13InMemoryInput7getNameEv(aw::filament::InMemoryInput* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:94:17
return (const char*) __claw_this_->getName();
}
}
}

namespace filamat {
__CLAW_API void __claw__ZN7filamat15MaterialBuilderC1Ev(filamat::MaterialBuilder* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:178:5
new (__claw_this_) filamat::MaterialBuilder();
}
}

namespace filamat {
__CLAW_API void __claw_cE3AE40NE40filamatE40SE40MaterialBuilder_claw_dtor(filamat::MaterialBuilder* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:176:20
__claw_this_->~MaterialBuilder();
}
}

namespace matc {
__CLAW_API unsigned long long __claw_sizeof_matcWConfigWOutput() {
return sizeof(matc::Config::Output);
}
}

namespace matc {
__CLAW_API bool __claw__ZN4matc6Config5Input5closeEv(matc::Config::Input* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:66:22
return __claw_this_->close();
}
}

namespace aw {
namespace filament {
__CLAW_API matc::Config::Input* __claw__ZNK2aw8filament14InMemoryConfig8getInputEv(aw::filament::InMemoryConfig* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:156:26
return (matc::Config::Input*) __claw_this_->getInput();
}
}
}

namespace matc {
__CLAW_API void __claw__ZN4matc6Config6OutputD1Ev(matc::Config::Output* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:53:17
__claw_this_->~Output();
}
}

namespace matc {
__CLAW_API unsigned long long __claw_sizeof__ZN4matc6LexemeINS_12MaterialTypeEEC2ES1_PKcS4_yy() {
return sizeof(matc::Lexeme<matc::MaterialType>);
}
}

namespace aw {
namespace filament {
__CLAW_API matc::Config::Output* __claw__ZNK2aw8filament14InMemoryConfig9getOutputEv(aw::filament::InMemoryConfig* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:152:27
return (matc::Config::Output*) __claw_this_->getOutput();
}
}
}

namespace aw {
namespace filament {
__CLAW_API unsigned long long __claw_alignof__ZN2aw8filament13InMemoryInputC2EPKcS3_y() {
return alignof(aw::filament::InMemoryInput);
}
}
}

namespace matc {
__CLAW_API matc::Config::Optimization __claw__ZNK4matc6Config20getOptimizationLevelEv(matc::Config* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:89:18
return __claw_this_->getOptimizationLevel();
}
}

namespace matc {
__CLAW_API matc::Config::Input* __claw__ZNK4matc6Config8getInputEv(matc::Config* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:69:20
return (matc::Config::Input*) __claw_this_->getInput();
}
}

namespace aw {
namespace filament {
__CLAW_API unsigned long long __claw_alignof__ZN2aw8filament14InMemoryOutputC2Ev() {
return alignof(aw::filament::InMemoryOutput);
}
}
}

namespace aw {
namespace filament {
__CLAW_API bool __claw__ZNK2aw8filament14InMemoryConfig14isPrintShadersEv(aw::filament::InMemoryConfig* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:120:10
return __claw_this_->isPrintShaders();
}
}
}

namespace filamat {
__CLAW_API unsigned long long __claw_alignof__ZN7filamat15MaterialBuilderC2Ev() {
return alignof(filamat::MaterialBuilder);
}
}

namespace filamat {
__CLAW_API unsigned long long __claw_alignof_filamatWMaterialBuilderBase() {
return alignof(filamat::MaterialBuilderBase);
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament12MaterialDataC1EPvy(aw::filament::MaterialData* __claw_this_, void* data, size_t size) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:14:5
new (__claw_this_) aw::filament::MaterialData(data, size);
}
}
}

namespace aw {
namespace filament {
__CLAW_API bool __claw__ZN2aw8filament14InMemoryOutput5closeEv(aw::filament::InMemoryOutput* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:62:10
return __claw_this_->close();
}
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament14InMemoryConfigC1EPKcS3_y(aw::filament::InMemoryConfig* __claw_this_, const char* name, const char* data, size_t size) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:105:14
new (__claw_this_) aw::filament::InMemoryConfig(name, data, size);
}
}
}

namespace matc {
__CLAW_API void __claw__ZN4matc6Config20setOptimizationLevelEN7filamat19MaterialBuilderBase12OptimizationE(matc::Config* __claw_this_, matc::Config::Optimization level) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:93:10
__claw_this_->setOptimizationLevel(level);
}
}

namespace aw {
namespace filament {
__CLAW_API unsigned long long __claw_alignof__ZN2aw8filament12MaterialDataC2EPvy() {
return alignof(aw::filament::MaterialData);
}
}
}

namespace matc {
__CLAW_API unsigned long long __claw_alignof_matcWCompiler() {
return alignof(matc::Compiler);
}
}

namespace aw {
namespace filament {
__CLAW_API unsigned long long __claw_sizeof__ZN2aw8filament14InMemoryConfigC2EPKcS3_y() {
return sizeof(aw::filament::InMemoryConfig);
}
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament14InMemoryConfig19setReflectionTargetEN4matc6Config8MetadataE(aw::filament::InMemoryConfig* __claw_this_, enum matc::Config::Metadata reflectionTarget) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:132:10
__claw_this_->setReflectionTarget(reflectionTarget);
}
}
}

namespace filamat {
__CLAW_API void __claw__ZN7filamat15MaterialBuilder9ParameterC1EPKcN8filament7backend11UniformTypeEyNS5_9PrecisionE(struct filamat::MaterialBuilder::Parameter* __claw_this_, const char* paramName, filamat::MaterialBuilder::UniformType t, size_t typeSize, filamat::MaterialBuilder::ParameterPrecision p) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:566:9
new (__claw_this_) filamat::MaterialBuilder::Parameter(paramName, t, typeSize, p);
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament14InMemoryConfig11setPlatformEN7filamat19MaterialBuilderBase8PlatformE(aw::filament::InMemoryConfig* __claw_this_, matc::Config::Platform platform) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:136:10
__claw_this_->setPlatform(platform);
}
}
}

namespace matc {
__CLAW_API bool __claw__ZN4matc6Config6Output4openEv(matc::Config::Output* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:54:22
return __claw_this_->open();
}
}

namespace aw {
namespace filament {
__CLAW_API bool __claw__ZN2aw8filament13InMemoryInput5closeEv(aw::filament::InMemoryInput* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:90:10
return __claw_this_->close();
}
}
}

namespace matc {
__CLAW_API bool __claw__ZNK4matc6Config7isDebugEv(matc::Config* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:73:10
return __claw_this_->isDebug();
}
}

namespace matc {
__CLAW_API filament::UserVariantFilterMask __claw__ZNK4matc6Config16getVariantFilterEv(matc::Config* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:113:37
return __claw_this_->getVariantFilter();
}
}

namespace matc {
__CLAW_API bool __claw__ZNK4matc6Config12printShadersEv(matc::Config* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:105:10
return __claw_this_->printShaders();
}
}

namespace utils {
__CLAW_API unsigned long long __claw_sizeof__ZN5utils6bitsetIjLy1EvEC2Ev() {
return sizeof(utils::bitset<unsigned int,1,void>);
}
}

namespace matc {
__CLAW_API unsigned long long __claw_alignof_matcWConfig() {
return alignof(matc::Config);
}
}

namespace matc {
__CLAW_API matc::Config::Platform __claw__ZNK4matc6Config11getPlatformEv(matc::Config* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:77:14
return __claw_this_->getPlatform();
}
}

namespace matc {
__CLAW_API void __claw__ZN4matc6ConfigD1Ev(matc::Config* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:49:13
__claw_this_->~Config();
}
}

namespace filamat {
__CLAW_API void __claw__ZN7filamat15MaterialBuilder9ParameterC1EPKcN8filament7backend11SubpassTypeENS5_13SamplerFormatENS5_9PrecisionE(struct filamat::MaterialBuilder::Parameter* __claw_this_, const char* paramName, filamat::MaterialBuilder::SubpassType t, filamat::MaterialBuilder::SamplerFormat f, filamat::MaterialBuilder::ParameterPrecision p) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:570:9
new (__claw_this_) filamat::MaterialBuilder::Parameter(paramName, t, f, p);
}
}

namespace filamat {
__CLAW_API unsigned long long __claw_sizeof_filamatWMaterialBuilderBase() {
return sizeof(filamat::MaterialBuilderBase);
}
}

namespace matc {
__CLAW_API matc::Config::Output* __claw__ZNK4matc6Config9getOutputEv(matc::Config* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:59:21
return (matc::Config::Output*) __claw_this_->getOutput();
}
}

namespace utils {
__CLAW_API void __claw__ZN5utils6bitsetIjLy1EvEC1Ev(utils::bitset<unsigned int,1,void>* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/utils/include/utils/bitset.h:58:5
new (__claw_this_) utils::bitset<unsigned int,1,void>();
}
}

namespace matc {
__CLAW_API unsigned long long __claw_sizeof_matcWConfigWInput() {
return sizeof(matc::Config::Input);
}
}

namespace matc {
__CLAW_API bool __claw__ZN4matc6Config6Output5writeEPKhy(matc::Config::Output* __claw_this_, const uint8_t* data, size_t size) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:55:22
return __claw_this_->write(data, size);
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament14InMemoryConfig16setVariantFilterEh(aw::filament::InMemoryConfig* __claw_this_, uint8_t variantFilter) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:148:10
__claw_this_->setVariantFilter(variantFilter);
}
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament12MaterialDataD1Ev(aw::filament::MaterialData* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:21:13
__claw_this_->~MaterialData();
}
}
}

namespace aw {
namespace filament {
__CLAW_API bool __claw__ZN2aw8filament14InMemoryOutput5writeEPKhy(aw::filament::InMemoryOutput* __claw_this_, const uint8_t* data, size_t size) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:49:10
return __claw_this_->write(data, size);
}
}
}

namespace aw {
namespace filament {
__CLAW_API unsigned long long __claw_sizeof__ZN2aw8filament14InMemoryOutputC2Ev() {
return sizeof(aw::filament::InMemoryOutput);
}
}
}

namespace matc {
__CLAW_API void __claw__ZN4matc16MaterialCompilerC1Ev(matc::MaterialCompiler* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:36:5
new (__claw_this_) matc::MaterialCompiler();
}
}

namespace aw {
namespace filament {
__CLAW_API unsigned long long __claw_sizeof__ZN2aw8filament13InMemoryInputC2EPKcS3_y() {
return sizeof(aw::filament::InMemoryInput);
}
}
}

namespace aw {
namespace filament {
__CLAW_API bool __claw__ZN2aw8filament14InMemoryOutput4openEv(aw::filament::InMemoryOutput* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:45:10
return __claw_this_->open();
}
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament14InMemoryOutputD1Ev(aw::filament::InMemoryOutput* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:43:13
__claw_this_->~InMemoryOutput();
}
}
}

namespace utils {
__CLAW_API unsigned long long __claw_alignof__ZN5utils6bitsetIjLy1EvEC2Ev() {
return alignof(utils::bitset<unsigned int,1,void>);
}
}

namespace filamat {
__CLAW_API unsigned long long __claw_sizeof__ZN7filamat15MaterialBuilderC2Ev() {
return sizeof(filamat::MaterialBuilder);
}
}

namespace matc {
__CLAW_API bool __claw__ZN4matc16MaterialCompiler15checkParametersERKNS_6ConfigE(matc::MaterialCompiler* __claw_this_, const matc::Config* config) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:40:10
return __claw_this_->checkParameters(*config);
}
}

namespace matc {
__CLAW_API const char* __claw__ZNK4matc6Config5Input7getNameEv(matc::Config::Input* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:67:29
return (const char*) __claw_this_->getName();
}
}

namespace matc {
__CLAW_API unsigned long long __claw_alignof__ZN4matc6LexemeINS_12MaterialTypeEEC2ES1_PKcS4_yy() {
return alignof(matc::Lexeme<matc::MaterialType>);
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament13InMemoryInputC1EPKcS3_y(aw::filament::InMemoryInput* __claw_this_, const char* name, const char* data, size_t size) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:74:14
new (__claw_this_) aw::filament::InMemoryInput(name, data, size);
}
}
}

namespace matc {
__CLAW_API enum matc::Config::Metadata __claw__ZNK4matc6Config19getReflectionTargetEv(matc::Config* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:97:14
return __claw_this_->getReflectionTarget();
}
}

namespace matc {
__CLAW_API unsigned long long __claw_sizeof_matcWConfig() {
return sizeof(matc::Config);
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament14InMemoryConfig16setRawShaderModeEb(aw::filament::InMemoryConfig* __claw_this_, bool rawShaderMode) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:128:10
__claw_this_->setRawShaderMode(rawShaderMode);
}
}
}

namespace filamat {
__CLAW_API void __claw__ZN7filamat15MaterialBuilder9ParameterC1EPKcN8filament7backend11SamplerTypeENS5_13SamplerFormatENS5_9PrecisionE(struct filamat::MaterialBuilder::Parameter* __claw_this_, const char* paramName, filamat::MaterialBuilder::SamplerType t, filamat::MaterialBuilder::SamplerFormat f, filamat::MaterialBuilder::ParameterPrecision p) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:562:9
new (__claw_this_) filamat::MaterialBuilder::Parameter(paramName, t, f, p);
}
}

namespace filamat {
__CLAW_API unsigned long long __claw_alignof_filamatWMaterialBuilderWParameter() {
return alignof(filamat::MaterialBuilder::Parameter);
}
}

namespace matc {
__CLAW_API void __claw__ZN4matc6Config5InputD1Ev(matc::Config::Input* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:63:17
__claw_this_->~Input();
}
}

namespace filamat {
__CLAW_API unsigned long long __claw_sizeof_filamatWMaterialBuilderWParameter() {
return sizeof(filamat::MaterialBuilder::Parameter);
}
}

namespace aw {
namespace filament {
__CLAW_API unsigned long long __claw_sizeof__ZN2aw8filament12MaterialDataC2EPvy() {
return sizeof(aw::filament::MaterialData);
}
}
}

namespace matc {
__CLAW_API void __claw_cE3AE40NE40matcE40SE40MaterialCompiler_claw_dtor(matc::MaterialCompiler* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:34:7
__claw_this_->~MaterialCompiler();
}
}

namespace aw {
namespace filament {
__CLAW_API ssize_t __claw__ZN2aw8filament13InMemoryInput4openEv(aw::filament::InMemoryInput* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:79:13
return __claw_this_->open();
}
}
}

namespace matc {
__CLAW_API unsigned long long __claw_alignof_matcWConfigWInput() {
return alignof(matc::Config::Input);
}
}

namespace matc {
__CLAW_API enum matc::Config::OutputFormat __claw__ZNK4matc6Config15getOutputFormatEv(matc::Config* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:81:18
return __claw_this_->getOutputFormat();
}
}

namespace matc {
__CLAW_API unsigned long long __claw_sizeof__ZN4matc16MaterialCompilerC2Ev() {
return sizeof(matc::MaterialCompiler);
}
}

namespace matc {
__CLAW_API ssize_t __claw__ZN4matc6Config5Input4openEv(matc::Config::Input* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:64:25
return __claw_this_->open();
}
}

namespace matc {
__CLAW_API unsigned long long __claw_sizeof_matcWCompiler() {
return sizeof(matc::Compiler);
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament14InMemoryConfigD1Ev(aw::filament::InMemoryConfig* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:111:13
__claw_this_->~InMemoryConfig();
}
}
}

namespace matc {
__CLAW_API unsigned long long __claw_alignof__ZN4matc14MaterialLexemeC2ENS_12MaterialTypeEPKcS3_yy() {
return alignof(matc::MaterialLexeme);
}
}

namespace matc {
__CLAW_API bool __claw__ZNK4matc6Config13rawShaderModeEv(matc::Config* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:109:10
return __claw_this_->rawShaderMode();
}
}

namespace matc {
__CLAW_API unsigned long long __claw_alignof_matcWConfigWOutput() {
return alignof(matc::Config::Output);
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament13InMemoryInputD1Ev(aw::filament::InMemoryInput* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:77:13
__claw_this_->~InMemoryInput();
}
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament14InMemoryOutputC1Ev(aw::filament::InMemoryOutput* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:40:14
new (__claw_this_) aw::filament::InMemoryOutput();
}
}
}

namespace matc {
__CLAW_API void __claw_cE3AE40NE40matcE40SE40MaterialLexeme_claw_dtor(matc::MaterialLexeme* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialLexeme.h:30:7
__claw_this_->~MaterialLexeme();
}
}

namespace matc {
__CLAW_API unsigned long long __claw_sizeof__ZN4matc14MaterialLexemeC2ENS_12MaterialTypeEPKcS3_yy() {
return sizeof(matc::MaterialLexeme);
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament14InMemoryConfig15setPrintShadersEb(aw::filament::InMemoryConfig* __claw_this_, bool printShaders) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:124:10
__claw_this_->setPrintShaders(printShaders);
}
}
}

namespace aw {
namespace filament {
namespace util {
__CLAW_API int __claw__ZN2aw8filament4util11resize_fileEPKcm(const char* filename, unsigned long new_size) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawUtil.h:10:5
return aw::filament::util::resize_file(filename, new_size);
}
}
}
}

namespace filamat {
__CLAW_API void __claw__ZN7filamat15MaterialBuilder9ParameterC1Ev(struct filamat::MaterialBuilder::Parameter* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:559:9
new (__claw_this_) filamat::MaterialBuilder::Parameter();
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament14InMemoryConfig12setTargetApiEN7filamat19MaterialBuilderBase9TargetApiE(aw::filament::InMemoryConfig* __claw_this_, matc::Config::TargetApi targetApi) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:144:10
__claw_this_->setTargetApi(targetApi);
}
}
}

namespace aw {
namespace filament {
__CLAW_API unsigned long long __claw_alignof__ZN2aw8filament14InMemoryConfigC2EPKcS3_y() {
return alignof(aw::filament::InMemoryConfig);
}
}
}

namespace matc {
__CLAW_API void __claw__ZN4matc14MaterialLexemeC1ENS_12MaterialTypeEPKcS3_yy(matc::MaterialLexeme* __claw_this_, enum matc::MaterialType type, const char* start, const char* end, size_t line, size_t pos) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialLexeme.h:32:5
new (__claw_this_) matc::MaterialLexeme(type, start, end, line, pos);
}
}

namespace matc {
__CLAW_API unsigned long long __claw_alignof__ZN4matc16MaterialCompilerC2Ev() {
return alignof(matc::MaterialCompiler);
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament14InMemoryConfig15setOutputFormatEN4matc6Config12OutputFormatE(aw::filament::InMemoryConfig* __claw_this_, enum matc::Config::OutputFormat outputFormat) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:140:10
__claw_this_->setOutputFormat(outputFormat);
}
}
}

namespace aw {
namespace filament {
__CLAW_API aw::filament::MaterialData* __claw__ZN2aw8filament14InMemoryOutput12materialDataEv(aw::filament::InMemoryOutput* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:58:19
return (aw::filament::MaterialData*) __claw_this_->materialData();
}
}
}

namespace matc {
__CLAW_API matc::Config::TargetApi __claw__ZNK4matc6Config12getTargetApiEv(matc::Config* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:101:15
return __claw_this_->getTargetApi();
}
}

namespace matc {
__CLAW_API bool __claw__ZNK4matc6Config7isValidEv(matc::Config* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:85:10
return __claw_this_->isValid();
}
}

namespace aw {
namespace filament {
__CLAW_API size_t __claw__ZN2aw8filament12MaterialData4sizeEv(aw::filament::MaterialData* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:25:12
return __claw_this_->size();
}
}
}

namespace matc {
__CLAW_API void __claw__ZN4matc8CompilerD1Ev(matc::Compiler* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Compiler.h:28:13
__claw_this_->~Compiler();
}
}

namespace aw {
namespace filament {
__CLAW_API void __claw__ZN2aw8filament14InMemoryConfig8setDebugEb(aw::filament::InMemoryConfig* __claw_this_, bool mDebug) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:116:10
__claw_this_->setDebug(mDebug);
}
}
}

namespace matc {
__CLAW_API bool __claw__ZN4matc6Config6Output5closeEv(matc::Config::Output* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:57:22
return __claw_this_->close();
}
}

namespace matc {
__CLAW_API bool __claw__ZN4matc16MaterialCompiler3runERKNS_6ConfigE(matc::MaterialCompiler* __claw_this_, const matc::Config* config) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:38:10
return __claw_this_->run(*config);
}
}

namespace aw {
namespace filament {
__CLAW_API void* __claw__ZN2aw8filament12MaterialData4dataEv(aw::filament::MaterialData* __claw_this_) {
// /home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:29:11
return (void*) __claw_this_->data();
}
}
}

#if defined(__cplusplus)
}
#endif
