import { transform } from "next/dist/build/swc";

export default {
  content: [
    './src/components/**/*.res',
    './src/layouts/**/*.res',
    './src/pages/**/*.res',
    './src/*.res',
  ],
  safelist: [
    'gdc-orange',
    'gdc-pink',
    'gdc-cyan',
    'gdc-yellow',
    'gdc-black',
    'gdc-sp',
  ],
  theme: {
    extend: {
      colors: {
        "background": "var(--bg-color)",
        "foreground": "var(--fg-color)",
        "secondary": "var(--snd-color)",
      },
      keyframes: {
        "marquee-gradient": {
          from: {
            transform: 'translateX(0%);'
          },
          to: {
            transform: 'translateX(-672px);'
          },
        },
        "marquee-gradient-re": {
          from: {
            transform: 'translateX(-672px);'
          },
          to: {
            transform: 'translateX(0%);'
          },
        },
      },
      animation: {
        "marquee-gradient": "marquee-gradient 5s infinite linear;",
        "marquee-gradient-re": "marquee-gradient-re 5s infinite linear;",
      }
    },
    /* Most of the time we customize the font-sizes,
     so we added the Tailwind default values here for
     convenience */
    fontSize: {
      xs: ".75rem",
      sm: ".875rem",
      base: "1rem",
      lg: "1.125rem",
      xl: "1.25rem",
      '2xl': "1.5rem",
      '3xl': "1.875rem",
      '4xl': "2.25rem",
      '5xl': "3rem",
      '6xl': "4rem"
    },
    /* We override the default font-families with our own default prefs  */
    fontFamily: {
      'sans': ['Helvetica Now', '-apple-system', 'BlinkMacSystemFont', 'Helvetica Neue', 'Arial', 'sans-serif'],
      'serif': ['Georgia', '-apple-system', 'BlinkMacSystemFont', 'Helvetica Neue', 'Arial', 'sans-serif'],
      'mono': ['Menlo', 'Monaco', 'Consolas', 'Roboto Mono', 'SFMono-Regular', 'Segoe UI', 'Courier', 'monospace']
    },
  },
  variants: {
    width: ['responsive']
  },
  plugins: [],
}
