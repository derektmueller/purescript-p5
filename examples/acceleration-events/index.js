const App = require('./AccelerationEvents.purs');

window.__appState = App.main(window.__appState || App.initialState)();
module.hot.accept();
