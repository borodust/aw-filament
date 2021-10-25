(cl:in-package :filament)

(claw:defwrapper (:aw-filament-extra
                  (:system :aw-filament/wrapper)
                  (:headers "pixel_format.h")
                  (:includes :aw-filament-includes)
                  (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                            ((:and :aarch64 :android) "aarch64-linux-android")
                            ((:and :x86-64 :windows) "x86_64-w64-mingw32"))
                  (:persistent t
                   :bindings-path "bindings/extra/")
                  (:language :c)
                  (:include-definitions "^aw_filament_"))
  :in-package :%filament.extra
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :symbolicate-names (:by-removing-prefixes "aw_filament_"))
