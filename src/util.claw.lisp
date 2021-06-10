(cl:in-package :filament)

(uiop:define-package :%filament.util
  (:use))

(claw.wrapper:defwrapper (:aw-filament-util
                          (:system :aw-filament/wrapper)
                          (:headers ;; material compiler
                           "matc/MaterialCompiler.h"
                           "matc/Config.h"

                           ;; memory io for matc
                           "lib/ClawMemIo.h")
                          (:includes :util-includes :math-includes
                                     :filamat-includes :matc-includes)
                          (:instantiate #'instantiate-some)
                          (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                                    ((:and :aarch64 :android) "aarch64-linux-android"))
                          (:persistent :aw-filament-util-bindings
                           :asd-path "../aw-filament-util-bindings.asd"
                           :bindings-path "../bindings/util/"
                           :depends-on (:claw-utils))
                          (:language :c++)
                          (:include-definitions "^matc::MaterialCompiler"
                                                "^claw::filament::.*")
                          (:exclude-definitions "::includeCallback"
                                                "::function<"))
  :in-package :%filament.util
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :ignore-entities (filament::ignore-uninstantiable)
  :with-adapter (:static
                 :path "lib/util-adapter.cxx")
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer)))
