// Generated by ReScript, PLEASE EDIT WITH CARE

import * as Utils from "../utils/Utils.res.mjs";
import * as Core__Array from "@rescript/core/src/Core__Array.res.mjs";
import * as JsxRuntime from "react/jsx-runtime";

function DownloadBox(props) {
  var href = props.href;
  var download = Core__Array.last(Utils.splitPath(href));
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
                                  alt: "Download",
                                  src: "/static/img/download-gdc.svg"
                                }),
                            className: "flex justify-center items-center w-20 bg-secondary self-stretch",
                            download: download,
                            href: href
                          }, "download")
                    ],
                    className: "bg-black text-white w-full flex flex-row"
                  }, "text"),
              className: "w-full sticky bottom-0 p-2"
            }, "downloadbox");
}

var make = DownloadBox;

export {
  make ,
}
/* react/jsx-runtime Not a pure module */