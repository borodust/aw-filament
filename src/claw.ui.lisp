(cl:in-package :filament)

(claw.wrapper:defwrapper (:aw-filament-imgui
                          (:system :aw-filament/wrapper)
                          (:headers "imgui.h"
                                    "imstb_textedit.h"
                                    "imstb_truetype.h")
                          (:defines "IMGUI_DISABLE_OBSOLETE_FUNCTIONS" 1
                            "IMGUI_DISABLE_DEMO_WINDOWS" 1)
                          (:includes :imgui-includes)
                          (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                                    ((:and :aarch64 :android) "aarch64-linux-android")
                                    ((:and :x86-64 :windows) "x86_64-w64-mingw32"))
                          (:persistent t
                           :bindings-path "bindings/imgui/"
                           :depends-on (:claw-utils))
                          (:language :c++)
                          (:include-definitions "^ImGui" "^IMGUI_" "^FLT_")
                          (:exclude-definitions "__"))
  :in-package :%filament.imgui
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :with-adapter (:static
                 :path "src/lib/adapter/imgui/adapter.cxx")
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer))
  :symbolicate-names (:in-pipeline
                      (:by-removing-prefixes "ImGui::" "IMGUI_")
                      (:by-changing-postfix "_" "_enum")))
