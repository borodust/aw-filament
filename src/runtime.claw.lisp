(cl:in-package :filament)

(uiop:define-package :%filament
  (:use))

(claw.wrapper:defwrapper (filament::claw-filament
                          (:system :claw-filament/wrapper)
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
                                    "filament/TextureSampler.h"
                                    "backend/PixelBufferDescriptor.h"

                                    "utils/EntityManager.h")
                          (:includes :filament-includes :backend-includes
                                     :util-includes :math-includes
                                     :filabridge-includes)
                          (:instantiate #'instantiate-some)
                          (:targets ((:and :x86-64 :linux) "x86_64-pc-linux-gnu")
                                    ((:and :aarch64 :android) "aarch64-linux-android"))
                          (:persistent :claw-filament-runtime-bindings
                           :asd-path "../claw-filament-runtime-bindings.asd"
                           :bindings-path "../bindings/runtime/"
                           :depends-on (:claw-utils))
                          (:language :c++)
                          (:include-definitions "^filament::.*"
                                                "^utils::Entity.*")
                          (:exclude-definitions "^utils::bitset.*"
                                                "::includeCallback"
                                                "::function<"
                                                "::T.*Operators<.*half.*>"
                                                "fp<.*>::bits$"
                                                "::_M_elems"

                                                ;; TODO: i don't know why those friends
                                                ;; are not welcome, smth to do
                                                ;; with crazy namespacing
                                                "filament::math::details::length2"
                                                "filament::math::details::norm2"))
  :in-package :%filament
  :trim-enum-prefix t
  :recognize-bitfields t
  :recognize-strings t
  :ignore-entities (filament::ignore-uninstantiable)
  :with-adapter (:static
                 :path "lib/adapter.cxx")
  :override-types ((:string claw-utils:claw-string)
                   (:pointer claw-utils:claw-pointer)))
