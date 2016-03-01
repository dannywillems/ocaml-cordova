# ocaml-cordova

Binding to the *cordova* object available
[here](https://github.com/apache/cordova-js) in the src directory.
It allows you to create your cordova plugin entirely in OCaml by using the exec
function. You also have access to the device version, the platform id, etc.

## Introduction

### What's cordova ?

Cordova allows you to develop hybrid mobile application using web technologies such as HTML, CSS and Javascript. For more informations, see [the official website](https://cordova.apache.org/).
Through cordova plugins, you can access to the native components. To learn how to make cordova plugins, see [the official tutorial](https://cordova.apache.org/docs/en/latest/guide/hybrid/plugins/index.html).
You can find the official cordova plugin list [here](https://cordova.apache.org/plugins/).

### Binding in OCaml to existing cordova plugins

There's a list of bindings to existing cordova plugins (written in Javascript)
using js_of_ocaml:
[See this
repository](https://github.com/dannywillems/ocaml-cordova-plugin-list).

## Develop your cordova plugin entirely in OCaml !

Instead of using js_of_ocaml to bind to existing cordova plugins, it's
interesting to be able to develop his own cordova plugin using only **ocaml**.

This repository aims to provide a simple way to do it by providing a binding to
the *cordova* object. You develop entirely in OCaml and this module will create,
using js_of_ocaml, the Javascript interface for your cordova plugin.

## Available bindings

* cordova.platformId
* cordova.platformVersion
* cordova.version

## Example

An example is available
[here](https://github.com/dannywillems/ocaml-cordova-example)
