;; Generated by :claw at 2021-09-17T19:00:19.381586Z
(uiop:define-package :%filament.util (:use))
(uiop:define-package :aw-filament-tools-bindings~pristine (:use :cl))
(common-lisp:in-package :aw-filament-tools-bindings~pristine)

(iffi:deficlass (%filament.util::claw+filament+in-memory-config
                 :size-reporter
                 "__claw_sizeof_claw_filament_InMemoryConfig"
                 :alignment-reporter
                 "__claw_alignof_claw_filament_InMemoryConfig"
                 :constructor
                 %filament.util::claw+filament+in-memory-config
                 :destructor
                 %filament.util::claw+filament+~in-memory-config)
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:103:7")

(iffi:defitype %filament.util::size-t
               :unsigned-long-long
               "/usr/lib/gcc/x86_64-pc-linux-gnu/11.1.0/include/stddef.h:209:23")

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryConfigC1EPKcS3_y"
               %filament.util::claw+filament+in-memory-config)
              :void
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:105:14"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-config))
              (%filament.util::name claw-utils:claw-string)
              (%filament.util::data claw-utils:claw-string)
              (%filament.util::size %filament.util::size-t))

(iffi:deficlass (%filament.util::matc+config+input :size-reporter
                 "__claw_sizeof_matc_Config_Input"
                 :alignment-reporter
                 "__claw_alignof_matc_Config_Input")
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:61:11")

(iffi:defifun ("__claw__ZNK4claw8filament14InMemoryConfig8getInputEv"
               %filament.util::claw+filament+get-input :non-mutating
               t)
              (claw-utils:claw-pointer
               %filament.util::matc+config+input)
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:120:26"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-config)))

(iffi:deficlass (%filament.util::matc+config+output :size-reporter
                 "__claw_sizeof_matc_Config_Output"
                 :alignment-reporter
                 "__claw_alignof_matc_Config_Output")
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:51:11")

(iffi:defifun ("__claw__ZNK4claw8filament14InMemoryConfig9getOutputEv"
               %filament.util::claw+filament+get-output :non-mutating
               t)
              (claw-utils:claw-pointer
               %filament.util::matc+config+output)
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:116:27"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-config)))

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryConfigD1Ev"
               %filament.util::claw+filament+~in-memory-config)
              :void
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:111:13"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-config)))

(iffi:deficlass (%filament.util::claw+filament+in-memory-input
                 :size-reporter
                 "__claw_sizeof_claw_filament_InMemoryInput"
                 :alignment-reporter
                 "__claw_alignof_claw_filament_InMemoryInput"
                 :constructor
                 %filament.util::claw+filament+in-memory-input
                 :destructor
                 %filament.util::claw+filament+~in-memory-input)
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:72:7")

(iffi:defifun ("__claw__ZN4claw8filament13InMemoryInputC1EPKcS3_y"
               %filament.util::claw+filament+in-memory-input)
              :void
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:74:14"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-input))
              (%filament.util::name claw-utils:claw-string)
              (%filament.util::data claw-utils:claw-string)
              (%filament.util::size %filament.util::size-t))

(iffi:defifun ("__claw__ZN4claw8filament13InMemoryInput5closeEv"
               %filament.util::claw+filament+close)
              :bool
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:90:10"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-input)))

(iffi:defifun ("__claw__ZNK4claw8filament13InMemoryInput7getNameEv"
               %filament.util::claw+filament+get-name :non-mutating
               t)
              claw-utils:claw-string
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:94:17"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-input)))

(iffi:defitype %filament.util::ssize-t
               :long
               "/usr/include/sys/types.h:108:19")

(iffi:defifun ("__claw__ZN4claw8filament13InMemoryInput4openEv"
               %filament.util::claw+filament+open)
              %filament.util::ssize-t
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:79:13"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-input)))

(iffi:defifun ("__claw__ZN4claw8filament13InMemoryInputD1Ev"
               %filament.util::claw+filament+~in-memory-input)
              :void
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:77:13"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-input)))

(iffi:deficlass (%filament.util::claw+filament+in-memory-output
                 :size-reporter
                 "__claw_sizeof_claw_filament_InMemoryOutput"
                 :alignment-reporter
                 "__claw_alignof_claw_filament_InMemoryOutput"
                 :constructor
                 %filament.util::claw+filament+in-memory-output
                 :destructor
                 %filament.util::claw+filament+~in-memory-output)
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:38:7")

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutputC1Ev"
               %filament.util::claw+filament+in-memory-output)
              :void
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:40:14"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-output)))

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutput5closeEv"
               %filament.util::claw+filament+close)
              :bool
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:62:10"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-output)))

(iffi:deficlass (%filament.util::claw+filament+material-data
                 :size-reporter
                 "__claw_sizeof_claw_filament_MaterialData"
                 :alignment-reporter
                 "__claw_alignof_claw_filament_MaterialData"
                 :constructor
                 %filament.util::claw+filament+material-data
                 :destructor
                 %filament.util::claw+filament+~material-data)
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:12:7")

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutput12materialDataEv"
               %filament.util::claw+filament+material-data)
              (claw-utils:claw-pointer
               %filament.util::claw+filament+material-data)
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:58:19"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-output)))

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutput4openEv"
               %filament.util::claw+filament+open)
              :bool
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:45:10"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-output)))

(iffi:defitype %filament.util::uint8-t
               :unsigned-char
               "/usr/include/bits/stdint-uintn.h:24:19")

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutput5writeEPKhy"
               %filament.util::claw+filament+write)
              :bool
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:49:10"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-output))
              (%filament.util::data
               (claw-utils:claw-pointer %filament.util::uint8-t))
              (%filament.util::size %filament.util::size-t))

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutputD1Ev"
               %filament.util::claw+filament+~in-memory-output)
              :void
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:43:13"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-output)))

(iffi:defifun ("__claw__ZN4claw8filament12MaterialDataC1EPvy"
               %filament.util::claw+filament+material-data)
              :void
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:14:5"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+material-data))
              (%filament.util::data (claw-utils:claw-pointer :void))
              (%filament.util::size %filament.util::size-t))

(iffi:defifun ("__claw__ZN4claw8filament12MaterialData4dataEv"
               %filament.util::claw+filament+data)
              (claw-utils:claw-pointer :void)
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:29:11"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+material-data)))

(iffi:defifun ("__claw__ZN4claw8filament12MaterialData4sizeEv"
               %filament.util::claw+filament+size)
              %filament.util::size-t
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:25:12"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+material-data)))

(iffi:defifun ("__claw__ZN4claw8filament12MaterialDataD1Ev"
               %filament.util::claw+filament+~material-data)
              :void
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:21:13"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+material-data)))

(iffi:deficlass (%filament.util::filamat+material-builder
                 :size-reporter
                 "__claw_sizeof_filamat_MaterialBuilder"
                 :alignment-reporter
                 "__claw_alignof_filamat_MaterialBuilder")
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:177:20")

(cffi:defcenum (%filament.util::filamat+material-builder+output-target
                %filament.util::uint8-t)
               "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:213:16"
               (:color 0)
               (:depth 1))

(cffi:defcenum (%filament.util::filamat+material-builder+output-type
                %filament.util::uint8-t)
               "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:218:16"
               (:float 0)
               (:float2 1)
               (:float3 2)
               (:float4 3))

(cffi:defcenum (%filament.util::filamat+material-builder+variable
                %filament.util::uint8-t)
               "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:182:16"
               (:custom0 0)
               (:custom1 1)
               (:custom2 2)
               (:custom3 3))

(cffi:defcenum (%filament.util::filamat+material-builder+variable-qualifier
                %filament.util::uint8-t)
               "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:209:16"
               (:out 0))

(iffi:deficlass (%filament.util::filamat+material-builder-base
                 :size-reporter
                 "__claw_sizeof_filamat_MaterialBuilderBase"
                 :alignment-reporter
                 "__claw_alignof_filamat_MaterialBuilderBase")
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:51:20")

(cffi:defcenum (%filament.util::filamat+material-builder-base+optimization
                :int)
               "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:75:16"
               (:none 0)
               (:preprocessor 1)
               (:size 2)
               (:performance 3))

(cffi:defcenum (%filament.util::filamat+material-builder-base+target-api
                %filament.util::uint8-t)
               "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:63:16"
               (:opengl 1)
               (:vulkan 2)
               (:metal 4)
               (:all 7))

(cffi:defcenum (%filament.util::filamat+material-builder-base+target-language
                :int)
               "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/libs/filamat/include/filamat/MaterialBuilder.h:70:16"
               (:glsl 0)
               (:spirv 1))

(cffi:defcenum (%filament.util::matc+material-type :unsigned-int)
               "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialLexeme.h:24:6"
               (:block 0)
               (:identifier 1)
               (:unknown 2))

(iffi:deficlass (%filament.util::matc+compiler :size-reporter
                 "__claw_sizeof_matc_Compiler" :alignment-reporter
                 "__claw_alignof_matc_Compiler")
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Compiler.h:26:7")

(iffi:deficlass (%filament.util::matc+config :size-reporter
                 "__claw_sizeof_matc_Config" :alignment-reporter
                 "__claw_alignof_matc_Config")
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:33:7")

(cffi:defcenum (%filament.util::matc+config+metadata :int)
               "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:44:16"
               (:none 0)
               (:parameters 1))

(cffi:defcenum (%filament.util::matc+config+output-format :int)
               "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:35:16"
               (:blob 0)
               (:c-header 1))

(iffi:deficlass (%filament.util::matc+jsonish-value :size-reporter
                 nil :alignment-reporter nil)
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:33:7")

(iffi:deficlass (%filament.util::matc+lexeme<matc+material-type>
                 :size-reporter
                 "__claw_sizeof_matc_Lexeme_matc_MaterialType_"
                 :alignment-reporter
                 "__claw_alignof_matc_Lexeme_matc_MaterialType_")
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Lexeme.h:28:7")

(iffi:deficlass (%filament.util::matc+material-compiler
                 :size-reporter "__claw_sizeof_matc_MaterialCompiler"
                 :alignment-reporter
                 "__claw_alignof_matc_MaterialCompiler" :constructor
                 %filament.util::matc+material-compiler :destructor
                 %filament.util::matc+~material-compiler)
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:34:7")

(iffi:defifun ("__claw__ZN4matc16MaterialCompilerC1Ev"
               %filament.util::matc+material-compiler)
              :void
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:36:5"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::matc+material-compiler)))

(iffi:defifun ("__claw__ZN4matc16MaterialCompiler15checkParametersERKNS_6ConfigE"
               %filament.util::matc+check-parameters)
              :bool
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:40:10"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::matc+material-compiler))
              (%filament.util::config
               (claw-utils:claw-pointer %filament.util::matc+config)))

(iffi:defifun ("__claw__ZN4matc16MaterialCompiler3runERKNS_6ConfigE"
               %filament.util::matc+run)
              :bool
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:38:10"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::matc+material-compiler))
              (%filament.util::config
               (claw-utils:claw-pointer %filament.util::matc+config)))

(iffi:defitype %filament.util::matc+material-compiler+material-config-processor
               (claw-utils:claw-pointer :void)
               "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:71:11")

(iffi:defitype %filament.util::matc+material-compiler+material-config-processor-json
               (claw-utils:claw-pointer :void)
               "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:77:11")

(iffi:defifun ("__claw_cE3AE40NE40matcE40SE40MaterialCompiler_claw_dtor"
               %filament.util::matc+~material-compiler)
              :void
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:34:7"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::matc+material-compiler)))

(iffi:deficlass (%filament.util::matc+material-lexeme :size-reporter
                 "__claw_sizeof_matc_MaterialLexeme"
                 :alignment-reporter
                 "__claw_alignof_matc_MaterialLexeme")
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/MaterialLexeme.h:30:7")

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%filament.util::filamat+material-builder-base+target-language
          :%filament.util)
  (export '%filament.util::matc+config+metadata :%filament.util)
  (export '%filament.util::matc+material-type :%filament.util)
  (export '%filament.util::uint8-t :%filament.util)
  (export '%filament.util::matc+material-compiler+material-config-processor
          :%filament.util)
  (export '%filament.util::matc+lexeme<matc+material-type>
          :%filament.util)
  (export '%filament.util::size-t :%filament.util)
  (export '%filament.util::matc+material-compiler :%filament.util)
  (export '%filament.util::filamat+material-builder+variable-qualifier
          :%filament.util)
  (export '%filament.util::filamat+material-builder+output-target
          :%filament.util)
  (export '%filament.util::claw+filament+close :%filament.util)
  (export '%filament.util::claw+filament+in-memory-input
          :%filament.util)
  (export '%filament.util::matc+config+output-format :%filament.util)
  (export '%filament.util::matc+config+input :%filament.util)
  (export '%filament.util::matc+material-lexeme :%filament.util)
  (export '%filament.util::matc+config :%filament.util)
  (export '%filament.util::claw+filament+~material-data
          :%filament.util)
  (export '%filament.util::claw+filament+get-name :%filament.util)
  (export '%filament.util::claw+filament+get-input :%filament.util)
  (export '%filament.util::matc+jsonish-value :%filament.util)
  (export '%filament.util::claw+filament+~in-memory-input
          :%filament.util)
  (export '%filament.util::claw+filament+material-data
          :%filament.util)
  (export '%filament.util::filamat+material-builder-base+target-api
          :%filament.util)
  (export '%filament.util::claw+filament+size :%filament.util)
  (export '%filament.util::claw+filament+write :%filament.util)
  (export '%filament.util::filamat+material-builder+output-type
          :%filament.util)
  (export '%filament.util::claw+filament+open :%filament.util)
  (export '%filament.util::claw+filament+in-memory-config
          :%filament.util)
  (export '%filament.util::matc+compiler :%filament.util)
  (export '%filament.util::matc+run :%filament.util)
  (export '%filament.util::filamat+material-builder :%filament.util)
  (export '%filament.util::filamat+material-builder-base
          :%filament.util)
  (export '%filament.util::claw+filament+data :%filament.util)
  (export '%filament.util::ssize-t :%filament.util)
  (export '%filament.util::filamat+material-builder-base+optimization
          :%filament.util)
  (export '%filament.util::matc+check-parameters :%filament.util)
  (export '%filament.util::claw+filament+in-memory-output
          :%filament.util)
  (export '%filament.util::matc+~material-compiler :%filament.util)
  (export '%filament.util::claw+filament+~in-memory-output
          :%filament.util)
  (export '%filament.util::matc+material-compiler+material-config-processor-json
          :%filament.util)
  (export '%filament.util::matc+config+output :%filament.util)
  (export '%filament.util::claw+filament+~in-memory-config
          :%filament.util)
  (export '%filament.util::filamat+material-builder+variable
          :%filament.util)
  (export '%filament.util::claw+filament+get-output :%filament.util))
