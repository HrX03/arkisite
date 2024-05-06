export default {
  content: [
    './src/components/**/*.res',
    './src/layouts/**/*.res',
    './src/pages/**/*.res',
    './src/*.res',
  ],
  theme: {
    extend: {
      colors: {
        "background": "var(--background-color)",
        "foreground": "var(--foreground-color)",
        "secondary": "var(--secondary-color)",
      },
      typography: {
        "gdc": {
          css: {
            h1: {
              "font-family": "Hopalope Bubble",
              "font-weight": 400,
            },
            h2: {
              "font-family": "BM Space",
              "font-weight": 400,
            },
            h3: {
              "font-family": "BM Space",
              "font-weight": 400,
            },
          }
        }
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
      'sans': ['-apple-system', 'BlinkMacSystemFont', 'Helvetica Neue', 'Arial', 'sans-serif'],
      'serif': ['Georgia', '-apple-system', 'BlinkMacSystemFont', 'Helvetica Neue', 'Arial', 'sans-serif'],
      'mono': ['Menlo', 'Monaco', 'Consolas', 'Roboto Mono', 'SFMono-Regular', 'Segoe UI', 'Courier', 'monospace']
    },
  },
  variants: {
    width: ['responsive']
  },
  plugins: [require('@tailwindcss/typography')],
}
