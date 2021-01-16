(asdf:defsystem :claw-filament
  :description "Wrapper over Filament rendering engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :cffi-c-ref :claw :claw-utils
                           :claw-filament/runtime :claw-filament/utils)
  :pathname "src/"
  :components ((:module :filament-includes :pathname "lib/filament/filament/include/")
               (:module :backend-includes :pathname "lib/filament/filament/backend/include/")
               (:module :util-includes :pathname "lib/filament/libs/utils/include/")
               (:module :math-includes :pathname "lib/filament/libs/math/include/")
               (:module :filabridge-includes :pathname "lib/filament/libs/filabridge/include/")
               (:module :filamat-includes :pathname "lib/filament/libs/filamat/include/")
               (:module :matc-includes :pathname "lib/filament/tools/matc/src/")))


(asdf:defsystem :claw-filament/setup
  :description "Some helpers for the wrapper"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :cffi-c-ref :claw :claw-utils)
  :serial t
  :pathname "src/"
  :components ((:file "setup")))


(asdf:defsystem :claw-filament/runtime
  :description "Wrapper over Filament rendering engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :cffi-c-ref :claw :claw-utils :claw-filament/setup)
  :serial t
  :pathname "src/"
  :components ((:file "runtime.claw")))



(asdf:defsystem :claw-filament/utils
  :description "Wrapper over Filament various utilities not exactly needed at runtime"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :cffi-c-ref :claw :claw-utils :claw-filament/setup)
  :serial t
  :pathname "src/"
  :components ((:file "util.claw")))


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
