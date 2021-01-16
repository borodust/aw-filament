(cl:in-package :filament)

(uiop:define-package :%filament.util
  (:use))

(claw.wrapper:defwrapper (filament::claw-filament-util
                          (:system :claw-filament)
                          (:headers ;; material compiler
                                    "matc/MaterialCompiler.h"
                                    "matc/Config.h"

                                    ;; memory io for matc
                                    "lib/ClawMemIo.h")
                          (:includes :util-includes :math-includes
                                     :filamat-includes :matc-includes)
                          (:include-definitions "^matc::MaterialCompiler"
                                                "^claw::filament::.*")
                          (:exclude-definitions "::includeCallback"
                                                "::function<")
                          (:instantiate #'instantiate-some)
                          (:targets :local)
                          (:persistent nil)
                          (:language :c++))
  :in-package :%filament.util
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :ignore-entities (filament::ignore-uninstantiable)
  :with-adapter (:static
                 :path "lib/util-adapter.cxx")
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer)))
