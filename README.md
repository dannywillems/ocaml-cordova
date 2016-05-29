# ocaml-cordova

[![Build Status](https://travis-ci.org/dannywillems/ocaml-cordova.svg?branch=master)](https://travis-ci.org/dannywillems/ocaml-cordova)

Binding to the *cordova* object available
[here](https://github.com/apache/cordova-js) in the src directory.

This binding provides you some functions to create easily listener for Cordova
like the deviceready event.

## Available bindings

* Cordova.platform_id: get the platform id.
* Cordova.platform_version: get the platform version.
* Cordova.version: get the Cordova version.
* Cordova.Event: module for Cordva events.
  * add_event_listener: add a listener on *volume buttons*, *deviceready*,
    *backbutton*, etc. Use a sum type to have type checking.
  * device_ready: alias to ```add_event_listener Device_ready```. **You need to
    use it for all your Cordova projects using plugins because they are only
    available when this event is handled**.

## How to install?

```Shell
opam install cordova
```

## Example

An example is available
[here](https://github.com/dannywillems/ocaml-cordova-example)
