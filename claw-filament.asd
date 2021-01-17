(asdf:defsystem :claw-filament
  :description "Wrapper over Filament rendering engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:claw-filament/runtime :claw-filament/support))


(asdf:defsystem :claw-filament/runtime
  :description "Wrapper over Filament rendering engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:claw-filament-runtime-bindings))


(asdf:defsystem :claw-filament/support
  :description "Wrapper over Filament rendering engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:claw-filament-util-bindings))


(asdf:defsystem :claw-filament/wrapper
  :description "Wrapper over Filament rendering engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :cffi-c-ref :claw :claw-utils)
  :pathname "src/"
  :serial t
  :components ((:file "setup")
               (:file "runtime.claw")
               (:file "util.claw")
               (:module :filament-includes :pathname "lib/filament/filament/include/")
               (:module :backend-includes :pathname "lib/filament/filament/backend/include/")
               (:module :util-includes :pathname "lib/filament/libs/utils/include/")
               (:module :math-includes :pathname "lib/filament/libs/math/include/")
               (:module :filabridge-includes :pathname "lib/filament/libs/filabridge/include/")
               (:module :filamat-includes :pathname "lib/filament/libs/filamat/include/")
               (:module :matc-includes :pathname "lib/filament/tools/matc/src/")))


(asdf:defsystem :claw-filament/example
  :description "bodge-sndfile simple example"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:claw-filament)
  :pathname "example/"
  :serial t
  :components ((:file "example")))
