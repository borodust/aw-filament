(uiop:define-package :%filament.util (:use))
(uiop:define-package :aw-filament-tools-bindings~pristine (:use :cl))
(common-lisp:in-package :aw-filament-tools-bindings~pristine)

(defparameter %filament.util::+pthread-cancel-deferred+ 0)

(defparameter %filament.util::+pthread-cancel-asynchronous+ 1)

(defparameter %filament.util::+pthread-cancel-enable+ 0)

(defparameter %filament.util::+pthread-cancel-disable+ 1)

(defparameter %filament.util::+pthread-create-joinable+ 0)

(defparameter %filament.util::+pthread-create-detached+ 1)

(defparameter %filament.util::+pthread-inherit-sched+ 0)

(defparameter %filament.util::+pthread-explicit-sched+ 1)

(defparameter %filament.util::+pthread-mutex-stalled+ 0)

(defparameter %filament.util::+pthread-mutex-stalled-np+ 0)

(defparameter %filament.util::+pthread-mutex-robust+ 1)

(defparameter %filament.util::+pthread-mutex-robust-np+ 1)

(defparameter %filament.util::+pthread-mutex-timed-np+ 0)

(defparameter %filament.util::+pthread-mutex-recursive-np+ 1)

(defparameter %filament.util::+pthread-mutex-errorcheck-np+ 2)

(defparameter %filament.util::+pthread-mutex-adaptive-np+ 3)

(defparameter %filament.util::+pthread-mutex-normal+ 0)

(defparameter %filament.util::+pthread-mutex-recursive+ 1)

(defparameter %filament.util::+pthread-mutex-errorcheck+ 2)

(defparameter %filament.util::+pthread-mutex-default+ 0)

(defparameter %filament.util::+pthread-mutex-fast-np+ 0)

(defparameter %filament.util::+pthread-prio-none+ 0)

(defparameter %filament.util::+pthread-prio-inherit+ 1)

(defparameter %filament.util::+pthread-prio-protect+ 2)

(defparameter %filament.util::+pthread-process-private+ 0)

(defparameter %filament.util::+pthread-process-shared+ 1)

(defparameter %filament.util::+pthread-rwlock-prefer-reader-np+ 0)

(defparameter %filament.util::+pthread-rwlock-prefer-writer-np+ 1)

(defparameter %filament.util::+pthread-rwlock-prefer-writer-nonrecursive-np+ 2)

(defparameter %filament.util::+pthread-rwlock-default-np+ 0)

(defparameter %filament.util::+pthread-scope-system+ 0)

(defparameter %filament.util::+pthread-scope-process+ 1)

(defparameter %filament.util::+%i-supper+ 256)

(defparameter %filament.util::+%i-slower+ 512)

(defparameter %filament.util::+%i-salpha+ 1024)

(defparameter %filament.util::+%i-sdigit+ 2048)

(defparameter %filament.util::+%i-sxdigit+ 4096)

(defparameter %filament.util::+%i-sspace+ 8192)

(defparameter %filament.util::+%i-sprint+ 16384)

(defparameter %filament.util::+%i-sgraph+ 32768)

(defparameter %filament.util::+%i-sblank+ 1)

(defparameter %filament.util::+%i-scntrl+ 2)

(defparameter %filament.util::+%i-spunct+ 4)

(defparameter %filament.util::+%i-salnum+ 8)

(defparameter %filament.util::+%%i-swupper+ 0)

(defparameter %filament.util::+%%i-swlower+ 1)

(defparameter %filament.util::+%%i-swalpha+ 2)

(defparameter %filament.util::+%%i-swdigit+ 3)

(defparameter %filament.util::+%%i-swxdigit+ 4)

(defparameter %filament.util::+%%i-swspace+ 5)

(defparameter %filament.util::+%%i-swprint+ 6)

(defparameter %filament.util::+%%i-swgraph+ 7)

(defparameter %filament.util::+%%i-swblank+ 8)

(defparameter %filament.util::+%%i-swcntrl+ 9)

(defparameter %filament.util::+%%i-swpunct+ 10)

(defparameter %filament.util::+%%i-swalnum+ 11)

(defparameter %filament.util::+%i-swupper+ 16777216)

(defparameter %filament.util::+%i-swlower+ 33554432)

(defparameter %filament.util::+%i-swalpha+ 67108864)

(defparameter %filament.util::+%i-swdigit+ 134217728)

(defparameter %filament.util::+%i-swxdigit+ 268435456)

(defparameter %filament.util::+%i-swspace+ 536870912)

(defparameter %filament.util::+%i-swprint+ 1073741824)

(defparameter %filament.util::+%i-swgraph+ -2147483648)

(defparameter %filament.util::+%i-swblank+ 65536)

(defparameter %filament.util::+%i-swcntrl+ 131072)

(defparameter %filament.util::+%i-swpunct+ 262144)

(defparameter %filament.util::+%i-swalnum+ 524288)

(defparameter %filament.util::+%%width+ 32)

(defparameter %filament.util::+%%width+ 64)

(defparameter %filament.util::+%%width+ 64)

(defparameter %filament.util::+%%width+ 0)

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
               :unsigned-long
               "/usr/lib/clang/12.0.0/include/stddef.h:46:23")

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryConfigC1EPKcS3_m"
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

(iffi:deficlass (%filament.util::std+basic-string<char>
                 :size-reporter
                 "__claw_sizeof_std_basic_string_char_"
                 :alignment-reporter
                 "__claw_alignof_std_basic_string_char_")
                nil
                "/usr/include/c++/11.1.0/bits/basic_string.tcc:1627:25")

(iffi:defitype %filament.util::std+string
               %filament.util::std+basic-string<char>
               "/usr/include/c++/11.1.0/bits/stringfwd.h:79:33")

(iffi:defifun ("__claw__ZNK4claw8filament14InMemoryConfig8toStringB5cxx11Ev"
               %filament.util::claw+filament+to-string :non-mutating
               t)
              (claw-utils:claw-pointer %filament.util::std+string)
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:124:17"
              (%filament.util::%%claw-result-
               (claw-utils:claw-pointer %filament.util::std+string))
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

(iffi:defifun ("__claw__ZN4claw8filament13InMemoryInputC1EPKcS3_m"
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
               :int
               "/usr/include/sys/types.h:108:19")

(iffi:defifun ("__claw__ZN4claw8filament13InMemoryInput4openEv"
               %filament.util::claw+filament+open)
              %filament.util::ssize-t
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:79:13"
              (%filament.util::%%claw-this-
               (claw-utils:claw-pointer
                %filament.util::claw+filament+in-memory-input)))

(iffi:deficlass (%filament.util::std+unique-ptr<const+char[]+std+default-delete<const+char[]>>
                 :size-reporter
                 "__claw_sizeof_std_unique_ptr_const_char___std_default_delete_const_char____"
                 :alignment-reporter
                 "__claw_alignof_std_unique_ptr_const_char___std_default_delete_const_char____")
                nil
                "/usr/include/c++/11.1.0/bits/unique_ptr.h:477:11")

(iffi:defifun ("__claw__ZN4claw8filament13InMemoryInput4readEv"
               %filament.util::claw+filament+read)
              (claw-utils:claw-pointer
               %filament.util::std+unique-ptr<const+char[]+std+default-delete<const+char[]>>)
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:83:35"
              (%filament.util::%%claw-result-
               (claw-utils:claw-pointer
                %filament.util::std+unique-ptr<const+char[]+std+default-delete<const+char[]>>))
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

(iffi:deficlass (%filament.util::std+basic-ostream<char>
                 :size-reporter
                 "__claw_sizeof_std_basic_ostream_char_"
                 :alignment-reporter
                 "__claw_alignof_std_basic_ostream_char_")
                nil
                "/usr/include/c++/11.1.0/bits/ostream.tcc:359:25")

(iffi:defitype %filament.util::std+ostream
               %filament.util::std+basic-ostream<char>
               "/usr/include/c++/11.1.0/iosfwd:141:33")

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutput15getOutputStreamEv"
               %filament.util::claw+filament+get-output-stream)
              (claw-utils:claw-pointer %filament.util::std+ostream)
              "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/ClawMemIo.h:54:19"
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

(iffi:defifun ("__claw__ZN4claw8filament14InMemoryOutput5writeEPKhm"
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

(iffi:defifun ("__claw__ZN4claw8filament12MaterialDataC1EPvm"
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

(defparameter %filament.util::+invalid+ 0)

(defparameter %filament.util::+uniform+ 1)

(defparameter %filament.util::+sampler+ 2)

(defparameter %filament.util::+subpass+ 3)

(iffi:deficlass (%filament.util::matc+material-compiler
                  :size-reporter
                  "__claw_sizeof_matc_MaterialCompiler"
                  :alignment-reporter
                  "__claw_alignof_matc_MaterialCompiler"
                  :constructor
                  %filament.util::matc+material-compiler
                  :destructor
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

(iffi:deficlass (%filament.util::matc+config :size-reporter
                 "__claw_sizeof_matc_Config" :alignment-reporter
                 "__claw_alignof_matc_Config")
                nil
                "/home/borodust/devel/repo/aw-projects/aw-filament/src/lib/filament/tools/matc/src/matc/Config.h:33:7")

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

(defparameter %filament.util::+%s-chunk-size+ 7)

(defparameter %filament.util::+%s-threshold+ 16)

(defparameter %filament.util::+%s-word-bit+ 64)

(defparameter %filament.util::+%s-local-capacity+ 15)

(defparameter %filament.util::+%s-local-capacity+ 3)

(defparameter %filament.util::+%s-local-capacity+ 7)

(defparameter %filament.util::+%s-local-capacity+ 3)

(defparameter %filament.util::+%s-local-capacity+ 0)

(defparameter %filament.util::+%s-need-barriers+ 0)

(defparameter %filament.util::+%s-need-barriers+ 1)

(defparameter %filament.util::+%s-need-barriers+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%%value+ 1)

(defparameter %filament.util::+%s-iminus+ 0)

(defparameter %filament.util::+%s-iplus+ 1)

(defparameter %filament.util::+%s-ix+ 2)

(defparameter %filament.util::+%s-i-x+ 3)

(defparameter %filament.util::+%s-izero+ 4)

(defparameter %filament.util::+%s-ie+ 18)

(defparameter %filament.util::+%s-i-e+ 24)

(defparameter %filament.util::+%s-iend+ 26)

(defparameter %filament.util::+%s-ominus+ 0)

(defparameter %filament.util::+%s-oplus+ 1)

(defparameter %filament.util::+%s-ox+ 2)

(defparameter %filament.util::+%s-o-x+ 3)

(defparameter %filament.util::+%s-odigits+ 4)

(defparameter %filament.util::+%s-odigits-end+ 20)

(defparameter %filament.util::+%s-oudigits+ 20)

(defparameter %filament.util::+%s-oudigits-end+ 36)

(defparameter %filament.util::+%s-oe+ 18)

(defparameter %filament.util::+%s-o-e+ 34)

(defparameter %filament.util::+%s-oend+ 36)

(defparameter %filament.util::+%s-local-word-size+ 8)

(defparameter %filament.util::+%s-categories-size+ 12)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%s-need-barriers+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(defparameter %filament.util::+%%value+ 0)

(eval-when (:load-toplevel :compile-toplevel :execute)
  (export '%filament.util::+pthread-prio-none+ :%filament.util)
  (export '%filament.util::std+basic-string<char> :%filament.util)
  (export '%filament.util::claw+filament+size :%filament.util)
  (export '%filament.util::+uniform+ :%filament.util)
  (export '%filament.util::+%s-o-e+ :%filament.util)
  (export '%filament.util::+pthread-cancel-enable+ :%filament.util)
  (export '%filament.util::+%%i-swalnum+ :%filament.util)
  (export '%filament.util::size-t :%filament.util)
  (export '%filament.util::+%i-swalpha+ :%filament.util)
  (export '%filament.util::+pthread-cancel-asynchronous+
          :%filament.util)
  (export '%filament.util::+%%i-swlower+ :%filament.util)
  (export '%filament.util::+%%width+ :%filament.util)
  (export '%filament.util::+%i-spunct+ :%filament.util)
  (export '%filament.util::+%s-categories-size+ :%filament.util)
  (export '%filament.util::+%s-oplus+ :%filament.util)
  (export '%filament.util::+%%i-swpunct+ :%filament.util)
  (export '%filament.util::+pthread-process-shared+ :%filament.util)
  (export '%filament.util::claw+filament+get-output-stream
          :%filament.util)
  (export '%filament.util::+%s-ix+ :%filament.util)
  (export '%filament.util::claw+filament+open :%filament.util)
  (export '%filament.util::claw+filament+get-output :%filament.util)
  (export '%filament.util::std+ostream :%filament.util)
  (export '%filament.util::+pthread-explicit-sched+ :%filament.util)
  (export '%filament.util::+pthread-prio-inherit+ :%filament.util)
  (export '%filament.util::+pthread-scope-system+ :%filament.util)
  (export '%filament.util::matc+~material-compiler :%filament.util)
  (export '%filament.util::+%%i-swprint+ :%filament.util)
  (export '%filament.util::matc+config+output :%filament.util)
  (export '%filament.util::std+basic-ostream<char> :%filament.util)
  (export '%filament.util::+%i-salpha+ :%filament.util)
  (export '%filament.util::+%%i-swupper+ :%filament.util)
  (export '%filament.util::+pthread-process-private+ :%filament.util)
  (export '%filament.util::+%%i-swblank+ :%filament.util)
  (export '%filament.util::std+unique-ptr<const+char[]+std+default-delete<const+char[]>>
          :%filament.util)
  (export '%filament.util::+%s-ie+ :%filament.util)
  (export '%filament.util::+%s-need-barriers+ :%filament.util)
  (export '%filament.util::+%s-izero+ :%filament.util)
  (export '%filament.util::+%%value+ :%filament.util)
  (export '%filament.util::matc+run :%filament.util)
  (export '%filament.util::matc+config :%filament.util)
  (export '%filament.util::+%i-sspace+ :%filament.util)
  (export '%filament.util::+%s-oend+ :%filament.util)
  (export '%filament.util::+%i-scntrl+ :%filament.util)
  (export '%filament.util::+%s-i-x+ :%filament.util)
  (export '%filament.util::+%i-swgraph+ :%filament.util)
  (export '%filament.util::+%i-swblank+ :%filament.util)
  (export '%filament.util::+pthread-mutex-robust-np+ :%filament.util)
  (export '%filament.util::+subpass+ :%filament.util)
  (export '%filament.util::+pthread-rwlock-prefer-reader-np+
          :%filament.util)
  (export '%filament.util::+%i-sgraph+ :%filament.util)
  (export '%filament.util::claw+filament+~in-memory-input
          :%filament.util)
  (export '%filament.util::+pthread-mutex-recursive+ :%filament.util)
  (export '%filament.util::+%i-swspace+ :%filament.util)
  (export '%filament.util::+%i-sblank+ :%filament.util)
  (export '%filament.util::+pthread-mutex-fast-np+ :%filament.util)
  (export '%filament.util::+%%i-swdigit+ :%filament.util)
  (export '%filament.util::+pthread-inherit-sched+ :%filament.util)
  (export '%filament.util::+%i-swcntrl+ :%filament.util)
  (export '%filament.util::+%i-swprint+ :%filament.util)
  (export '%filament.util::+%i-salnum+ :%filament.util)
  (export '%filament.util::+%s-oudigits-end+ :%filament.util)
  (export '%filament.util::+%s-ox+ :%filament.util)
  (export '%filament.util::uint8-t :%filament.util)
  (export '%filament.util::matc+material-compiler+material-config-processor-json
          :%filament.util)
  (export '%filament.util::claw+filament+read :%filament.util)
  (export '%filament.util::+%i-supper+ :%filament.util)
  (export '%filament.util::+pthread-create-joinable+ :%filament.util)
  (export '%filament.util::+%s-oudigits+ :%filament.util)
  (export '%filament.util::+%s-threshold+ :%filament.util)
  (export '%filament.util::+pthread-mutex-timed-np+ :%filament.util)
  (export '%filament.util::+pthread-mutex-default+ :%filament.util)
  (export '%filament.util::+pthread-mutex-recursive-np+
          :%filament.util)
  (export '%filament.util::+%s-chunk-size+ :%filament.util)
  (export '%filament.util::+%i-swdigit+ :%filament.util)
  (export '%filament.util::matc+config+input :%filament.util)
  (export '%filament.util::+%%i-swxdigit+ :%filament.util)
  (export '%filament.util::+pthread-scope-process+ :%filament.util)
  (export '%filament.util::+%%i-swspace+ :%filament.util)
  (export '%filament.util::+pthread-rwlock-prefer-writer-np+
          :%filament.util)
  (export '%filament.util::+%s-ominus+ :%filament.util)
  (export '%filament.util::+%i-swpunct+ :%filament.util)
  (export '%filament.util::+sampler+ :%filament.util)
  (export '%filament.util::+%i-swalnum+ :%filament.util)
  (export '%filament.util::matc+material-compiler+material-config-processor
          :%filament.util)
  (export '%filament.util::claw+filament+data :%filament.util)
  (export '%filament.util::+pthread-mutex-robust+ :%filament.util)
  (export '%filament.util::claw+filament+in-memory-output
          :%filament.util)
  (export '%filament.util::claw+filament+in-memory-config
          :%filament.util)
  (export '%filament.util::+%i-sxdigit+ :%filament.util)
  (export '%filament.util::+pthread-mutex-errorcheck+
          :%filament.util)
  (export '%filament.util::+pthread-mutex-stalled+ :%filament.util)
  (export '%filament.util::+%s-oe+ :%filament.util)
  (export '%filament.util::+pthread-rwlock-default-np+
          :%filament.util)
  (export '%filament.util::+pthread-create-detached+ :%filament.util)
  (export '%filament.util::claw+filament+write :%filament.util)
  (export '%filament.util::claw+filament+get-name :%filament.util)
  (export '%filament.util::+%s-odigits-end+ :%filament.util)
  (export '%filament.util::+%s-word-bit+ :%filament.util)
  (export '%filament.util::+%i-swupper+ :%filament.util)
  (export '%filament.util::+%i-sdigit+ :%filament.util)
  (export '%filament.util::claw+filament+~material-data
          :%filament.util)
  (export '%filament.util::+invalid+ :%filament.util)
  (export '%filament.util::+%i-slower+ :%filament.util)
  (export '%filament.util::+pthread-mutex-stalled-np+
          :%filament.util)
  (export '%filament.util::ssize-t :%filament.util)
  (export '%filament.util::+pthread-mutex-normal+ :%filament.util)
  (export '%filament.util::+pthread-cancel-deferred+ :%filament.util)
  (export '%filament.util::matc+check-parameters :%filament.util)
  (export '%filament.util::+%s-o-x+ :%filament.util)
  (export '%filament.util::claw+filament+to-string :%filament.util)
  (export '%filament.util::+%i-swxdigit+ :%filament.util)
  (export '%filament.util::claw+filament+close :%filament.util)
  (export '%filament.util::+%s-odigits+ :%filament.util)
  (export '%filament.util::+pthread-prio-protect+ :%filament.util)
  (export '%filament.util::claw+filament+~in-memory-output
          :%filament.util)
  (export '%filament.util::+%s-local-capacity+ :%filament.util)
  (export '%filament.util::+%i-sprint+ :%filament.util)
  (export '%filament.util::matc+material-compiler :%filament.util)
  (export '%filament.util::+pthread-rwlock-prefer-writer-nonrecursive-np+
          :%filament.util)
  (export '%filament.util::+%%i-swgraph+ :%filament.util)
  (export '%filament.util::+pthread-mutex-adaptive-np+
          :%filament.util)
  (export '%filament.util::+%s-i-e+ :%filament.util)
  (export '%filament.util::+pthread-mutex-errorcheck-np+
          :%filament.util)
  (export '%filament.util::+%%i-swalpha+ :%filament.util)
  (export '%filament.util::+%s-iplus+ :%filament.util)
  (export '%filament.util::std+string :%filament.util)
  (export '%filament.util::+%s-iminus+ :%filament.util)
  (export '%filament.util::claw+filament+get-input :%filament.util)
  (export '%filament.util::claw+filament+material-data
          :%filament.util)
  (export '%filament.util::+%%i-swcntrl+ :%filament.util)
  (export '%filament.util::claw+filament+in-memory-input
          :%filament.util)
  (export '%filament.util::claw+filament+~in-memory-config
          :%filament.util)
  (export '%filament.util::+%i-swlower+ :%filament.util)
  (export '%filament.util::+pthread-cancel-disable+ :%filament.util)
  (export '%filament.util::+%s-local-word-size+ :%filament.util)
  (export '%filament.util::+%s-iend+ :%filament.util))

