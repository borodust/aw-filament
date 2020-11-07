(cl:defpackage :filament
  (:use :cl)
  (:export))
(uiop:define-package :%filament
  (:use))
(cl:in-package :filament)


(eval-when (:compile-toplevel :load-toplevel :execute)
  (defun ignore-uninstantiable ()
    (claw-utils:ignore-functions
      (claw-utils:in-class "filament::math::details::TVec4<filament::math::half>"
                           (:ctor))
      (claw-utils:in-class "filament::math::details::TVec3<filament::math::half>"
                           (:ctor))
      (claw-utils:in-class "filament::math::details::TVec2<filament::math::half>"
                           (:ctor))

      (claw-utils:in-class "filament::Renderer"
                           ("readPixels" :any))
      (claw-utils:in-class "filament::math::fp<1,5,10>"
                           (:ctor :any))

       (claw-utils:in-class "utils::CString"
                           (:ctor :any)
                           ("operator=" :any))
      (claw-utils:in-class "filamat::IncludeResult"
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

                                    ;; bundled materials
                                    "lib/materials.h"
                                    ;; material builder
                                    "filamat/MaterialBuilder.h")
                          (:includes :filament-includes :backend-includes
                                     :util-includes :math-includes
                                     :filabridge-includes :filamat-includes)
                          (:include-definitions "^filament::.*"
                                                "^utils::Entity.*"
                                                "^utils::MaterialBuilder"
                                                "^filamat::.*"
                                                "^MATERIALS_PACKAGE$"
                                                "^MATERIALS_.*_OFFSET$"
                                                "^MATERIALS_.*_SIZE$")
                          (:exclude-definitions "^filament::math::details::TMat44<double>.*"
                                                "^filament::math::details::TVec4<double>.*"
                                                "^utils::bitset.*")
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
