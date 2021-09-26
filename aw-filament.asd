(asdf:defsystem :aw-filament
  :description "Wrapper over Filament rendering engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:aw-filament/runtime :aw-filament/tools))


(asdf:defsystem :aw-filament/runtime
  :description "Wrapper over Filament rendering engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:aw-filament-runtime-bindings))


(asdf:defsystem :aw-filament/tools
  :description "Wrapper over Filament rendering engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:aw-filament-ui-bindings
               :aw-filament-imgui-bindings
               :aw-filament-tools-bindings))


(asdf:defsystem :aw-filament/wrapper
  :description "Wrapper over Filament rendering engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :cffi-c-ref :claw :claw-utils)
  :serial t
  :components ((:file "src/setup")
               (:file "src/claw.runtime")
               (:file "src/claw.tools")
               (:file "src/claw.ui")
               (:module :lib-includes :pathname "src/lib/")
               (:module :filament-includes :pathname "src/lib/filament/filament/include/")
               (:module :backend-includes :pathname "src/lib/filament/filament/backend/include/")
               (:module :util-includes :pathname "src/lib/filament/libs/utils/include/")
               (:module :math-includes :pathname "src/lib/filament/libs/math/include/")
               (:module :filabridge-includes :pathname "src/lib/filament/libs/filabridge/include/")
               (:module :filagui-includes :pathname "src/lib/filament/libs/filagui/include/")
               (:module :filamat-includes :pathname "src/lib/filament/libs/filamat/include/")
               (:module :matc-includes :pathname "src/lib/filament/tools/matc/src/")
               (:module :imgui-includes :pathname "src/lib/filament/third_party/imgui/")))
