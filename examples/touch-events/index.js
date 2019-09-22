const App = require('./TouchEvents.purs');

window.__appState = App.main(window.__appState || App.initialState)();
module.hot.accept();
