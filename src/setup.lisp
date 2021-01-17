(cl:defpackage :filament
  (:use :cl)
  (:export))
(cl:in-package :filament)


(defun ignore-uninstantiable ()
  (claw.resect:ignore-functions
    (:in-class "filament::math::details::TVec4<filament::math::half>"
               (:ctor))
    (:in-class "filament::math::details::TVec3<filament::math::half>"
               (:ctor))
    (:in-class "filament::math::details::TVec2<filament::math::half>"
               (:ctor))
    (:in-class "filament::math::fp<1,5,10>"
               (:ctor :any))

    (:in-class "filament::Renderer"
               ("readPixels" :any))
    (:in-class "utils::CString"
               (:ctor :any)
               ("operator=" :any))
    (:in-class "filamat::IncludeResult"
               (:ctor))

    ("filament::math::getBits" :any)))

(defun instantiate-some (decl)
  (when (and (string= "filament" (claw.resect:declaration-namespace decl))
             (string= "setParameter" (claw.resect:declaration-name decl)))
    '(("bool") ("float")
      ("int32_t") ("uint32_t")
      ("math::bool2") ("math::bool3") ("math::bool4")
      ("math::int2") ("math::int3") ("math::int4")
      ("math::uint2") ("math::uint3") ("math::uint4")
      ("math::float2") ("math::float3") ("math::float4")
      ("math::mat3f") ("math::mat4f"))))
