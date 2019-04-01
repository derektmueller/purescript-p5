const App = require('./FrameCount.purs');

window.__appState = App.main(window.__appState || App.initialState)();
module.hot.accept();
