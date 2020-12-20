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

      ("filament::math::getBits" :any)))

  (defun instantiate-some (decl)
    (when (and (string= "filament" (claw.resect::declaration-namespace decl))
               (string= "setParameter" (claw.resect::declaration-name decl)))
      '(("bool") ("float")
        ("int32_t") ("uint32_t")
        ("math::bool2") ("math::bool3") ("math::bool4")
        ("math::int2") ("math::int3") ("math::int4")
        ("math::uint2") ("math::uint3") ("math::uint4")
        ("math::float2") ("math::float3") ("math::float4")
        ("math::mat3f") ("math::mat4f")))))


(claw.wrapper:defwrapper (filament::claw-filament
                          (:headers "filament/Engine.h"
                                    "filament/Renderer.h"
                                    "filament/View.h"
                                    "filament/Scene.h"
                                    "filament/Camera.h"
                                    "filament/Viewport.h"
                                    "filament/RenderableManager.h"
                                    "filament/TransformManager.h"
                                    "filament/LightManager.h"
                                    "filament/Frustum.h"
                                    "filament/Skybox.h"
                                    "filament/IndirectLight.h"

                                    "filament/VertexBuffer.h"
                                    "filament/IndexBuffer.h"
                                    "filament/Material.h"
                                    "filament/MaterialInstance.h"

                                    "filament/Texture.h"
                                    "backend/PixelBufferDescriptor.h"

                                    "utils/EntityManager.h"

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

                                                ;; TODO: i don't know why those friends
                                                ;; are not welcome, smth to do
                                                ;; with crazy namespacing
                                                "filament::math::details::length2"
                                                "filament::math::details::norm2")
                          (:instantiate #'instantiate-some)
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
