const App = require('./MouseEvents.purs');

window.__appState = App.main(window.__appState || App.initialState)();
module.hot.accept();
