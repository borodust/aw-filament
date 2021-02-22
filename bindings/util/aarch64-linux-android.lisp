(uiop:define-package :%filament.util (:use))
(uiop:define-package :claw-filament-util-bindings~pristine (:use :cl))
(common-lisp:in-package :claw-filament-util-bindings~pristine)

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
                "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:103:7")

(iffi:defitype %filament.util::size-t
               :unsigned-long
               "/usr/lib/clang/11.0.1/include/stddef.h:46:23")

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryConfigC1EPKcS3_m"
               %filament.util::claw+filament+in-memory-config)
              :void
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:105:14"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-config))
              (%filament.util::name claw-utils:claw-string)
              (%filament.util::data claw-utils:claw-string)
              (%filament.util::size %filament.util::size-t))

(iffi:deficlass (%filament.util::matc+config+input :size-reporter
                 "__claw_sizeof_matc_Config_Input"
                 :alignment-reporter
                 "__claw_alignof_matc_Config_Input")
                nil
                "/home/borodust/devel/repo/claw-filament/src/lib/filament/tools/matc/src/matc/Config.h:61:11")

(iffi:defifun ("__claw__ZNK4claw8filament14InMemoryConfig8getInputEv"
               %filament.util::claw+filament+get-input :non-mutating
               t)
              (:pointer %filament.util::matc+config+input)
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:119:26"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-config)))

(iffi:deficlass (%filament.util::matc+config+output :size-reporter
                 "__claw_sizeof_matc_Config_Output"
                 :alignment-reporter
                 "__claw_alignof_matc_Config_Output")
                nil
                "/home/borodust/devel/repo/claw-filament/src/lib/filament/tools/matc/src/matc/Config.h:51:11")

(iffi:defifun ("__claw__ZNK4claw8filament14InMemoryConfig9getOutputEv"
               %filament.util::claw+filament+get-output :non-mutating
               t)
              (:pointer %filament.util::matc+config+output)
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:115:27"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-config)))

(iffi:deficlass (%filament.util::std+basic-string<char>
                 :size-reporter
                 "__claw_sizeof_std_basic_string_char_"
                 :alignment-reporter
                 "__claw_alignof_std_basic_string_char_")
                nil
                "/usr/include/c++/10.2.0/bits/basic_string.tcc:1618:25")

(iffi:defitype %filament.util::std+string
               %filament.util::std+basic-string<char>
               "/usr/include/c++/10.2.0/bits/stringfwd.h:79:33")

(iffi:defifun ("__claw__ZNK4claw8filament14InMemoryConfig8toStringB5cxx11Ev"
               %filament.util::claw+filament+to-string :non-mutating
               t)
              (:pointer %filament.util::std+string)
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:123:17"
              (%filament.util::%%claw-result-
               (:pointer %filament.util::std+string))
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-config)))

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryConfigD1Ev"
               %filament.util::claw+filament+~in-memory-config)
              :void
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:110:13"
              (%filament.util::%%claw-this-
               (:pointer
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
                "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:72:7")

(iffi:defifun ("__claw__ZN4claw8filament13InMemoryInputC1EPKcS3_m"
               %filament.util::claw+filament+in-memory-input)
              :void
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:74:14"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-input))
              (%filament.util::name claw-utils:claw-string)
              (%filament.util::data claw-utils:claw-string)
              (%filament.util::size %filament.util::size-t))

(iffi:defifun ("__claw__ZN4claw8filament13InMemoryInput5closeEv"
               %filament.util::claw+filament+close)
              :bool
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:90:10"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-input)))

(iffi:defifun ("__claw__ZNK4claw8filament13InMemoryInput7getNameEv"
               %filament.util::claw+filament+get-name :non-mutating
               t)
              claw-utils:claw-string
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:94:17"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-input)))

(iffi:defitype %filament.util::ssize-t
               :int
               "/usr/include/sys/types.h:108:19")

(iffi:defifun ("__claw__ZN4claw8filament13InMemoryInput4openEv"
               %filament.util::claw+filament+open)
              %filament.util::ssize-t
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:79:13"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-input)))

(iffi:deficlass (%filament.util::std+unique-ptr<const+char[]+std+default-delete<const+char[]>>
                 :size-reporter
                 "__claw_sizeof_std_unique_ptr_const_char___std_default_delete_const_char____"
                 :alignment-reporter
                 "__claw_alignof_std_unique_ptr_const_char___std_default_delete_const_char____")
                nil
                "/usr/include/c++/10.2.0/bits/unique_ptr.h:477:11")

(iffi:defifun ("__claw__ZN4claw8filament13InMemoryInput4readEv"
               %filament.util::claw+filament+read)
              (:pointer
               %filament.util::std+unique-ptr<const+char[]+std+default-delete<const+char[]>>)
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:83:35"
              (%filament.util::%%claw-result-
               (:pointer
                %filament.util::std+unique-ptr<const+char[]+std+default-delete<const+char[]>>))
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-input)))

(iffi:defifun ("__claw__ZN4claw8filament13InMemoryInputD1Ev"
               %filament.util::claw+filament+~in-memory-input)
              :void
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:77:13"
              (%filament.util::%%claw-this-
               (:pointer
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
                "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:38:7")

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutputC1Ev"
               %filament.util::claw+filament+in-memory-output)
              :void
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:40:14"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-output)))

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutput5closeEv"
               %filament.util::claw+filament+close)
              :bool
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:62:10"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-output)))

(iffi:deficlass (%filament.util::std+basic-ostream<char>
                 :size-reporter
                 "__claw_sizeof_std_basic_ostream_char_"
                 :alignment-reporter
                 "__claw_alignof_std_basic_ostream_char_")
                nil
                "/usr/include/c++/10.2.0/bits/ostream.tcc:359:25")

(iffi:defitype %filament.util::std+ostream
               %filament.util::std+basic-ostream<char>
               "/usr/include/c++/10.2.0/iosfwd:141:33")

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutput15getOutputStreamEv"
               %filament.util::claw+filament+get-output-stream)
              (:pointer %filament.util::std+ostream)
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:54:19"
              (%filament.util::%%claw-this-
               (:pointer
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
                "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:12:7")

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutput12materialDataEv"
               %filament.util::claw+filament+material-data)
              (:pointer %filament.util::claw+filament+material-data)
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:58:19"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-output)))

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutput4openEv"
               %filament.util::claw+filament+open)
              :bool
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:45:10"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-output)))

(iffi:defitype %filament.util::uint8-t
               :unsigned-char
               "/usr/include/bits/stdint-uintn.h:24:19")

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutput5writeEPKhm"
               %filament.util::claw+filament+write)
              :bool
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:49:10"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-output))
              (%filament.util::data
               (:pointer %filament.util::uint8-t))
              (%filament.util::size %filament.util::size-t))

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutputD1Ev"
               %filament.util::claw+filament+~in-memory-output)
              :void
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:43:13"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+in-memory-output)))

(iffi:defifun ("__claw__ZN4claw8filament12MaterialDataC1EPvm"
               %filament.util::claw+filament+material-data)
              :void
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:14:5"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+material-data))
              (%filament.util::data (:pointer :void))
              (%filament.util::size %filament.util::size-t))

(iffi:defifun ("__claw__ZN4claw8filament12MaterialData4dataEv"
               %filament.util::claw+filament+data)
              (:pointer :void)
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:29:11"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+material-data)))

(iffi:defifun ("__claw__ZN4claw8filament12MaterialData4sizeEv"
               %filament.util::claw+filament+size)
              %filament.util::size-t
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:25:12"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+material-data)))

(iffi:defifun ("__claw__ZN4claw8filament12MaterialDataD1Ev"
               %filament.util::claw+filament+~material-data)
              :void
              "/home/borodust/devel/repo/claw-filament/src/lib/ClawMemIo.h:21:13"
              (%filament.util::%%claw-this-
               (:pointer
                %filament.util::claw+filament+material-data)))

(iffi:deficlass (%filament.util::matc+material-compiler
                 :size-reporter "__claw_sizeof_matc_MaterialCompiler"
                 :alignment-reporter
                 "__claw_alignof_matc_MaterialCompiler" :constructor
                 %filament.util::matc+material-compiler :destructor
                 %filament.util::matc+~material-compiler)
                nil
                "/home/borodust/devel/repo/claw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:34:7")

(iffi:defifun ("__claw__ZN4matc16MaterialCompilerC1Ev"
               %filament.util::matc+material-compiler)
              :void
              "/home/borodust/devel/repo/claw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:36:5"
              (%filament.util::%%claw-this-
               (:pointer %filament.util::matc+material-compiler)))

(iffi:deficlass (%filament.util::matc+config :size-reporter
                 "__claw_sizeof_matc_Config" :alignment-reporter
                 "__claw_alignof_matc_Config")
                nil
                "/home/borodust/devel/repo/claw-filament/src/lib/filament/tools/matc/src/matc/Config.h:33:7")

(iffi:defifun ("__claw__ZN4matc16MaterialCompiler15checkParametersERKNS_6ConfigE"
               %filament.util::matc+check-parameters)
              :bool
              "/home/borodust/devel/repo/claw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:40:10"
              (%filament.util::%%claw-this-
               (:pointer %filament.util::matc+material-compiler))
              (%filament.util::config
               (:pointer %filament.util::matc+config)))

(iffi:defifun ("__claw__ZN4matc16MaterialCompiler3runERKNS_6ConfigE"
               %filament.util::matc+run)
              :bool
              "/home/borodust/devel/repo/claw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:38:10"
              (%filament.util::%%claw-this-
               (:pointer %filament.util::matc+material-compiler))
              (%filament.util::config
               (:pointer %filament.util::matc+config)))

(iffi:defitype %filament.util::matc+material-compiler+material-config-processor
               (:pointer :pointer)
               "/home/borodust/devel/repo/claw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:71:11")

(iffi:defitype %filament.util::matc+material-compiler+material-config-processor-json
               (:pointer :pointer)
               "/home/borodust/devel/repo/claw-filament/src/lib/filament/tools/matc/src/matc/MaterialCompiler.h:77:11")

(iffi:defifun ("__claw_cE3AE40NE40matcE40SE40MaterialCompiler_claw_dtor"
               %filament.util::matc+~material-compiler)
              :void
              "::"
              (%filament.util::%%claw-this-
               (:pointer %filament.util::matc+material-compiler)))

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%filament.util::std+basic-ostream<char> "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+data "%FILAMENT.UTIL")
  (export '%filament.util::std+unique-ptr<const+char[]+std+default-delete<const+char[]>>
          "%FILAMENT.UTIL")
  (export '%filament.util::size-t "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+read "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+to-string "%FILAMENT.UTIL")
  (export '%filament.util::std+basic-string<char> "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+close "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+in-memory-input
          "%FILAMENT.UTIL")
  (export '%filament.util::matc+config+input "%FILAMENT.UTIL")
  (export '%filament.util::matc+material-compiler "%FILAMENT.UTIL")
  (export '%filament.util::uint8-t "%FILAMENT.UTIL")
  (export '%filament.util::matc+material-compiler+material-config-processor
          "%FILAMENT.UTIL")
  (export '%filament.util::matc+config "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+get-output-stream
          "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+~material-data
          "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+get-name "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+get-input "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+~in-memory-input
          "%FILAMENT.UTIL")
  (export '%filament.util::std+ostream "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+size "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+write "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+open "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+in-memory-config
          "%FILAMENT.UTIL")
  (export '%filament.util::matc+run "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+material-data
          "%FILAMENT.UTIL")
  (export '%filament.util::std+string "%FILAMENT.UTIL")
  (export '%filament.util::ssize-t "%FILAMENT.UTIL")
  (export '%filament.util::matc+check-parameters "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+in-memory-output
          "%FILAMENT.UTIL")
  (export '%filament.util::matc+~material-compiler "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+~in-memory-output
          "%FILAMENT.UTIL")
  (export '%filament.util::matc+material-compiler+material-config-processor-json
          "%FILAMENT.UTIL")
  (export '%filament.util::matc+config+output "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+~in-memory-config
          "%FILAMENT.UTIL")
  (export '%filament.util::claw+filament+get-output "%FILAMENT.UTIL"))

