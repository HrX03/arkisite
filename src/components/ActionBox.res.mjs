// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Utils from "../utils/Utils.res.mjs";
import * as Core__Array from "@rescript/core/src/Core__Array.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function ActionBox(props) {
  var __shouldFloat = props.shouldFloat;
  var boxType = props.boxType;
  var href = props.href;
  var shouldFloat = __shouldFloat !== undefined ? __shouldFloat : false;
  var match;
  match = boxType === "Download" ? [
      "/static/img/download-gdc.svg",
      "Download"
    ] : [
      "/static/img/whatsapp-gdc.svg",
      "Chat WhatsApp"
    ];
  var download;
  download = boxType === "Download" ? Core__Array.last(Utils.splitPath(href)) : undefined;
  var className = shouldFloat ? "w-full sticky bottom-0 p-2" : "w-full";
  return JsxRuntime.jsx("div", {
              children: JsxRuntime.jsxs("div", {
                    children: [
                      JsxRuntime.jsxs("div", {
                            children: [
                              JsxRuntime.jsx("h3", {
                                    children: props.title
                                  }),
                              JsxRuntime.jsx("p", {
                                    children: props.description
                                  })
                            ],
                            className: "flex-1 m-4 gap-2 flex flex-col justify-start items-start"
                          }),
                      JsxRuntime.jsx("a", {
                            children: JsxRuntime.jsx("img", {
                                  alt: match[1],
                                  src: match[0]
                                }),
                            className: "flex justify-center items-center w-20 bg-secondary self-stretch",
                            download: download,
                            href: href
                          })
                    ],
                    className: "bg-black text-white w-full flex flex-row"
                  }),
              className: className
            });
}

var make = ActionBox;

export {
  make ,
}
/* react/jsx-runtime Not a pure module */