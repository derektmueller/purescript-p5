const App = require('./HelloP5SimpleShapes.purs');

window.__appState = App.main(window.__appState || App.initialState)();
module.hot.accept();
