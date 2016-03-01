class type cordova =
  object
    method platformId : Js.js_string Js.t Js.readonly_prop
    method platformVersion : Js.js_string Js.t Js.readonly_prop
    method version : Js.js_string Js.t Js.readonly_prop
  end

let cordova : cordova Js.t = (Js.Unsafe.js_expr "cordova")
