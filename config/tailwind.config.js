/** @type {import('tailwindcss').Config} */
module.exports = {
  content: [
    './app/helpers/**/*.rb',
    './app/javascript/**/*.js',
    './app/views/**/*',
  ],
  theme: {
    extend: {
      colors: {
        'primary-blue': '#3778c2',
        'secondary-green': '#5fb523',
        'gray-text': '#434b54'
      },
    },
  },
  plugins: [],
}
