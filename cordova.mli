(* -------------------------------------------------------------------------- *)
(* Bindings to the cordova object *)
class cordova : Ojs.t ->
  object
    inherit Ojs.obj

    method platform_id      : string
    method platform_version : string
    method version          : string
  end
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
val t : unit -> cordova
[@@js.get "cordova"]
(* -------------------------------------------------------------------------- *)
