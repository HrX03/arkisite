// Generated by ReScript, PLEASE EDIT WITH CARE

import Link from "next/link";
import * as JsxRuntime from "react/jsx-runtime";

function Footer(props) {
  return JsxRuntime.jsxs("div", {
              children: [
                JsxRuntime.jsx("img", {
                      className: "h-14",
                      src: "/static/img/arki-horizontal.svg"
                    }),
                JsxRuntime.jsxs("div", {
                      children: [
                        JsxRuntime.jsx(Link, {
                              href: "https://chat.whatsapp.com/CdABpRtb7J7KWN1UZI7McL",
                              children: JsxRuntime.jsx("img", {
                                    className: "h-8 icon-white",
                                    alt: "Chat whatsapp Arkimastria",
                                    src: "/static/img/whatsapp.svg"
                                  })
                            }),
                        JsxRuntime.jsx(Link, {
                              href: "https://instagram.com/arkimastria",
                              children: JsxRuntime.jsx("img", {
                                    className: "h-8 icon-white",
                                    alt: "Instagram arkimastria",
                                    src: "/static/img/instagram.svg"
                                  })
                            }),
                        JsxRuntime.jsx(Link, {
                              href: "mailto:asap.arkimastria@yahoo.it",
                              children: JsxRuntime.jsx("img", {
                                    className: "h-8 icon-white",
                                    alt: "Contatta email Arkimastria",
                                    src: "/static/img/email.svg"
                                  })
                            })
                      ],
                      className: "flex flex-row justify-center items-center gap-4"
                    })
              ],
              className: "py-6 flex justify-center items-center flex-col gap-6 bg-black"
            });
}

var make = Footer;

export {
  make ,
}
/* next/link Not a pure module */
