(cl:defpackage :filament
  (:use :cl)
  (:export))
(uiop:define-package :%filament
  (:use))
(cl:in-package :filament)


(eval-when (:compile-toplevel :load-toplevel :execute)
  (defun ignore-uninstantiable ()
    (claw-utils:ignore-functions
      (:in-class "filament::math::details::TVec4<filament::math::half>"
                 (:ctor))
      (:in-class "filament::math::details::TVec3<filament::math::half>"
                 (:ctor))
      (:in-class "filament::math::details::TVec2<filament::math::half>"
                 (:ctor))

      (:in-class "filament::Renderer"
                 ("readPixels" :any))
      (:in-class "utils::CString"
                 (:ctor :any)
                 ("operator=" :any))
      (:in-class "filamat::IncludeResult"
                 (:ctor))

      ("filament::math::getBits" :any))))


(claw.wrapper:defwrapper (filament::claw-filament
                          (:headers "filament/Engine.h"
                                    "filament/Renderer.h"
                                    "filament/View.h"
                                    "filament/Scene.h"
                                    "filament/Camera.h"
                                    "filament/Viewport.h"
                                    "filament/RenderableManager.h"
                                    "filament/TransformManager.h"
                                    "filament/Frustum.h"
                                    "filament/Skybox.h"

                                    "filament/VertexBuffer.h"
                                    "filament/IndexBuffer.h"
                                    "filament/Material.h"

                                    "utils/EntityManager.h"
                                    "backend/PixelBufferDescriptor.h"

                                    ;; material builder
                                    "filamat/MaterialBuilder.h"
                                    ;; material compiler
                                    "matc/MaterialCompiler.h"
                                    "matc/Config.h"

                                    ;; bundled materials
                                    "lib/materials.h"
                                    ;; memory io for matc
                                    "lib/ClawMemIo.h")
                          (:includes :filament-includes :backend-includes
                                     :util-includes :math-includes
                                     :filabridge-includes :filamat-includes
                                     :matc-includes)
                          (:include-definitions "^filament::.*"
                                                "^utils::Entity.*"
                                                "^utils::MaterialBuilder"
                                                "^filamat::.*"
                                                "^matc::MaterialCompiler"
                                                "^claw::filament::.*"

                                                "^MATERIALS_PACKAGE$"
                                                "^MATERIALS_.*_OFFSET$"
                                                "^MATERIALS_.*_SIZE$")
                          (:exclude-definitions "^utils::bitset.*"
                                                "^filament::math::fp"
                                                "^filament::math::details::half"
                                                "^filamat::IncludeCallback"
                                                "::includeCallback"
                                                "::function<"
                                                "filament::math::half"

                                                ;; i don't know why those friends
                                                ;; are not welcome
                                                "filament::math::details::length2"
                                                "filament::math::details::norm2")
                          (:targets :local)
                          (:persistent nil)
                          (:language :c++))
  :in-package :%filament
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :ignore-entities (filament::ignore-uninstantiable)
  :with-adapter (:static
                 :path "lib/adapter.c")
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer)))
