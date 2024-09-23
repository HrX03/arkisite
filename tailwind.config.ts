import type { Config } from "tailwindcss";

const config: Config = {
  content: [
    "./pages/**/*.{js,ts,jsx,tsx,mdx}",
    "./components/**/*.{js,ts,jsx,tsx,mdx}",
    "./app/**/*.{js,ts,jsx,tsx,mdx}",
  ],
  safelist: [
    "gdc-orange",
    "gdc-pink",
    "gdc-cyan",
    "gdc-yellow",
    "gdc-black",
    "gdc-sp",
  ],
  theme: {
    extend: {
      colors: {
        background: "var(--bg-color)",
        foreground: "var(--fg-color)",
        secondary: "var(--snd-color)",
      },
      typography: {
        DEFAULT: {
          css: {
            "*": {
              color: "var(--fg-color)",
              "line-height": 1.5,
            },
            h1: {
              "font-size": "48px",
              "font-weight": 800,
            },
            "h2, h3": {
              "font-weight": 600,
            },
            h2: {
              "font-size": "24px",
            },
            h3: {
              "font-size": "18px",
            },
            li: {
              "font-size": "16px",
              "font-variation-settings": '"wdth" 100, "wght" 400, "opsz" 30',
            },
            "li::marker": {
              color: "var(--fg-color)",
            },
            p: {
              "font-size": "16px",
              "font-variation-settings": '"wdth" 100, "wght" 400, "opsz" 30',
            },
            strong: {
              "font-variation-settings": '"wdth" 100, "wght" 700, "opsz" 8;',
            },
            img: {
              margin: "0px",
            },
          },
        },
      },
    },
  },
  plugins: [require("@tailwindcss/typography")],
};
export default config;
