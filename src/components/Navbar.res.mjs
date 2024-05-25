// Generated by ReScript, PLEASE EDIT WITH CARE

import Link from "next/link";
import * as JsxRuntime from "react/jsx-runtime";

function Navbar$Navlink(props) {
  var __ignoreIconTheme = props.ignoreIconTheme;
  var href = props.href;
  var sizeClass = props.sizeClass;
  var alt = props.alt;
  var icon = props.icon;
  var ignoreIconTheme = __ignoreIconTheme !== undefined ? __ignoreIconTheme : false;
  var iconTheme = ignoreIconTheme ? "" : "icon";
  if (href !== undefined) {
    return JsxRuntime.jsx(Link, {
                href: href,
                children: JsxRuntime.jsx("img", {
                      className: iconTheme + " " + sizeClass,
                      alt: alt,
                      src: icon
                    })
              });
  } else {
    return JsxRuntime.jsx("img", {
                className: iconTheme + " " + sizeClass,
                alt: alt,
                src: icon
              });
  }
}

function Navbar(props) {
  var path = props.path;
  var match;
  if (path && path.hd === "gdc") {
    var rest = path.tl;
    var tmp;
    if (rest) {
      switch (rest.hd) {
        case "cinemastria" :
        case "contest" :
            tmp = rest.tl ? false : true;
            break;
        default:
          tmp = false;
      }
    } else {
      tmp = true;
    }
    match = [
      true,
      tmp
    ];
  } else {
    match = [
      false,
      false
    ];
  }
  var gdcBg = match[1];
  var match$1 = match[0] ? [
      JsxRuntime.jsx(Navbar$Navlink, {
            icon: "/static/img/gdc.svg",
            alt: "GDC9.0 LOGO",
            sizeClass: "h-12",
            href: "/gdc",
            ignoreIconTheme: gdcBg
          }),
      JsxRuntime.jsx(Navbar$Navlink, {
            icon: "/static/img/2024.svg",
            alt: "GDC9.0 2024 LOGOTYPE",
            sizeClass: "h-8",
            ignoreIconTheme: gdcBg
          })
    ] : [
      JsxRuntime.jsx(Navbar$Navlink, {
            icon: "/static/img/arki-text.svg",
            alt: "Arkimastria Logotype",
            sizeClass: "h-6",
            href: "/",
            ignoreIconTheme: gdcBg
          }),
      JsxRuntime.jsx(Navbar$Navlink, {
            icon: "/static/img/arki.svg",
            alt: "Arkimastria Logo",
            sizeClass: "h-10",
            ignoreIconTheme: gdcBg
          })
    ];
  return JsxRuntime.jsxs("nav", {
              children: [
                gdcBg ? JsxRuntime.jsx("img", {
                        className: "-z-10 absolute top-0 bottom-0 w-full h-full object-cover",
                        src: "/static/img/gdc-navbar-strip.webp"
                      }) : JsxRuntime.jsx("div", {}),
                JsxRuntime.jsxs("div", {
                      children: [
                        JsxRuntime.jsxs("div", {
                              children: [
                                JsxRuntime.jsx(Navbar$Navlink, {
                                      icon: "/static/img/arki.svg",
                                      alt: "Arkimastria Logo",
                                      sizeClass: "h-10",
                                      ignoreIconTheme: gdcBg
                                    }),
                                match$1[1]
                              ],
                              className: "flex justify-between h-full px-4 items-center"
                            }),
                        JsxRuntime.jsx("div", {
                              children: match$1[0],
                              className: "absolute top-0 flex justify-center w-full h-full items-center"
                            })
                      ],
                      className: "max-w-2xl m-auto relative h-full"
                    })
              ],
              className: "sticky top-0 z-50 h-16 bg-background"
            });
}

var make = Navbar;

export {
  make ,
}
/* next/link Not a pure module */