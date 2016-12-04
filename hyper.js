module.exports = {
  config: {
    fontSize: 15,
    fontFamily: '"Fira Code", Monaco, Menlo, "DejaVu Sans Mono", "Lucida Console", monospace',
    cursorColor: 'rgba(248,28,229,0.75)',
    cursorShape: 'BEAM',
    foregroundColor: '#fff',
    backgroundColor: '#000',
    borderColor: '#333',
    css: '',
    termCSS: '',
    padding: '12px 14px',
    colors: {
      black: '#000000',
      red: '#ff0000',
      green: '#33ff00',
      yellow: '#ffff00',
      blue: '#0066ff',
      magenta: '#cc00ff',
      cyan: '#00ffff',
      white: '#d0d0d0',
      lightBlack: '#808080',
      lightRed: '#ff0000',
      lightGreen: '#33ff00',
      lightYellow: '#ffff00',
      lightBlue: '#0066ff',
      lightMagenta: '#cc00ff',
      lightCyan: '#00ffff',
      lightWhite: '#ffffff'
    },
    shell: '',
    shellArgs: ['--login'],
    env: {},
    bell: 'SOUND',
    copyOnSelect: false
  },
  plugins: [
    'hyperterm-snazzy',
    'hyperlinks',
    'hypercwd',
    'hyperterm-mactabs'
  ],
  localPlugins: []
};
