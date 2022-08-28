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
  :depends-on (:aw-filament-runtime-bindings :aw-filament-extra-bindings))


(asdf:defsystem :aw-filament/tools
  :description "Wrapper over Filament rendering engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:aw-filament-imgui-bindings
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
               (:file "src/claw.extra")
               (:module :aw-filament-includes :pathname "src/lib/adapter/pixel-format/")
               (:module :lib-includes :pathname "src/lib/")
               (:module :runtime-utils-includes :pathname "src/lib/adapter/runtime-utils/")
               (:module :tool-utils-includes :pathname "src/lib/adapter/tool-utils/")
               (:module :filament-includes :pathname "src/lib/filament/filament/include/")
               (:module :backend-includes :pathname "src/lib/filament/filament/backend/include/")
               (:module :util-includes :pathname "src/lib/filament/libs/utils/include/")
               (:module :math-includes :pathname "src/lib/filament/libs/math/include/")
               (:module :filabridge-includes :pathname "src/lib/filament/libs/filabridge/include/")
               (:module :filagui-includes :pathname "src/lib/filament/libs/filagui/include/")
               (:module :filamat-includes :pathname "src/lib/filament/libs/filamat/include/")
               (:module :matc-includes :pathname "src/lib/filament/tools/matc/src/")
               (:module :imgui-includes :pathname "src/lib/filament/third_party/imgui/")
               (:module :gltfio-includes :pathname "src/lib/filament/libs/gltfio/include/")
               (:module :image-includes :pathname "src/lib/filament/libs/image/include/")
               (:module :imageio-includes :pathname "src/lib/filament/libs/imageio/include/")
               (:module :ktxreader-includes :pathname "src/lib/filament/libs/ktxreader/include/")))
