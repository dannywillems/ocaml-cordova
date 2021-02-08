(* -------------------------------------------------------------------------- *)
(* Bindings to the cordova object *)
val platform_id : string [@@js.global "cordova.platformId"]

val platform_version : string [@@js.global "cordova.platformVersion"]

val version : string [@@js.global "cordova.version"]

(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
module Event : sig
  type t =
    | Device_ready [@js "deviceready"]
    | Pause [@js "pause"]
    | Resume [@js "resume"]
    | Back_button [@js "backbutton"]
    | Menu_button [@js "menubutton"]
    | Search_button [@js "searchbutton"]
    | Start_call_button [@js "startcallbutton"]
    | End_call_button [@js "endcallbutton"]
    | Vol_up_button [@js "volumeupbutton"]
    | Vol_down_button [@js "volumedownbutton"]
  [@@js.enum]

  val add_event_listener : t -> (unit -> unit) -> bool -> unit
    [@@js.global "document.addEventListener"]

  [@@@js.stop]

  val device_ready : (unit -> unit) -> unit

  val resume : (unit -> unit) -> unit

  val pause : (unit -> unit) -> unit

  val menu_button : (unit -> unit) -> unit

  val back_button : (unit -> unit) -> unit

  val search_button : (unit -> unit) -> unit

  val start_call_button : (unit -> unit) -> unit

  val end_call_button : (unit -> unit) -> unit

  val vol_up_button : (unit -> unit) -> unit

  val vol_down_button : (unit -> unit) -> unit

  [@@@js.start]

  [@@@js.implem
  let device_ready f = add_event_listener Device_ready f false

  let resume f = add_event_listener Resume f false

  let pause f = add_event_listener Pause f false

  let back_button f = add_event_listener Back_button f false

  let menu_button f = add_event_listener Menu_button f false

  let search_button f = add_event_listener Search_button f false

  let start_call_button f = add_event_listener Start_call_button f false

  let end_call_button f = add_event_listener End_call_button f false

  let vol_up_button f = add_event_listener Vol_up_button f false

  let vol_down_button f = add_event_listener Vol_down_button f false]
end
