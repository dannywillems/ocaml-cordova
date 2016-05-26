(* -------------------------------------------------------------------------- *)
(* Bindings to the cordova object *)
val platform_id      : string
[@@js.global "cordova.platformId"]
val platform_version : string
[@@js.global "cordova.platformVersion"]
val version          : string
[@@js.global "cordova.version"]
(* -------------------------------------------------------------------------- *)

(* -------------------------------------------------------------------------- *)
module Event :
  sig
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
    [@@@js.start]

    [@@@js.implem
      let device_ready f = add_event_listener Device_ready f false
    ]
  end
