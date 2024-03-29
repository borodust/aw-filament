;; Generated by :claw at 2023-04-30T13:16:25.569662Z
(asdf:defsystem #:aw-filament-tools-bindings
  :description "Bindings generated by aw-filament-tools"
  :author "CLAW"
  :license "Public domain"
  :defsystem-depends-on (:trivial-features)
  :depends-on (:uiop :cffi :iffi :claw-utils)
  :components
  ((:file "bindings/tools/x86_64-pc-linux-gnu" :if-feature
    (:and :x86-64 :linux))
   (:file "bindings/tools/aarch64-linux-android" :if-feature
    (:and :aarch64 :android))
   (:file "bindings/tools/x86_64-w64-mingw32" :if-feature
    (:and :x86-64 :windows))))
#-(:or (:and :x86-64 :windows)(:and :aarch64 :android)(:and :x86-64 :linux))
(warn "Current platform unrecognized or unsupported by aw-filament-tools-bindings system")