/** @type {import('postcss-load-config').Config} */
const plugins = {
  tailwindcss: {},
  autoprefixer: {}
};

if(process.env.NODE_ENV === 'production') {
  plugins.cssnano = {};
}

export default {
  plugins: plugins
};
