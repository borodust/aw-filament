(cl:in-package :filament)

(claw.wrapper:defwrapper (:aw-filament-tools
                          (:system :aw-filament/wrapper)
                          (:headers ;; material compiler
                           "matc/MaterialCompiler.h"
                           "matc/Config.h"

                           ;; memory io for matc
                           "ClawMemIo.h")
                          (:includes :lib-includes :util-includes
                                     :math-includes :filamat-includes :matc-includes
                                     :backend-includes :filabridge-includes)
                          (:instantiate #'instantiate-some)
                          (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                                    ((:and :aarch64 :android) "aarch64-linux-android")
                                    ((:and :x86-64 :windows) "x86_64-w64-mingw32"))
                          (:persistent t
                           :bindings-path "bindings/tools/"
                           :depends-on (:claw-utils))
                          (:language :c++)
                          (:include-definitions "^matc::MaterialCompiler"
                                                "^claw::filament::.*")
                          (:exclude-definitions "^std::"
                                                "::includeCallback"
                                                "::function<"))
  :in-package :%filament.util
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :ignore-entities (filament::ignore-uninstantiable)
  :with-adapter (:static
                 :path "src/lib/adapter/tools/adapter.cxx")
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer))
  :symbolicate-names (:by-removing-prefixes "filament::" "FILAMENT_"))
