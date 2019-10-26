(asdf:defsystem :claw-filament
  :description "Wrapper over Filament rendering engine"
  :version "1.0.0"
  :author "Pavel Korolev"
  :mailto "dev@borodust.org"
  :license "MIT"
  :depends-on (:alexandria :cffi :cffi-c-ref :claw :claw-utils)
  :serial t
  :pathname "src/"
  :components ((:file "claw")
               (:module :filament-includes :pathname "lib/filament/filament/include/")
               (:module :backend-includes :pathname "lib/filament/filament/backend/include/")
               (:module :util-includes :pathname "lib/filament/libs/utils/include/")
               (:module :math-includes :pathname "lib/filament/libs/math/include/")
               (:module :filabridge-includes :pathname "lib/filament/libs/filabridge/include/")))


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
