class type cordova =
  object
    method platformId : Js.js_string Js.t Js.readonly_prop
    method platformVersion : Js.js_string Js.t Js.readonly_prop
    method version : Js.js_string Js.t Js.readonly_prop
  end

val cordova : cordova Js.t
