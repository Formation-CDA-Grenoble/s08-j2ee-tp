import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import { NotFoundPage } from './pages';

function App() {
  return (
    <BrowserRouter>
      <Switch>
        <Route component={NotFoundPage} />
      </Switch>
    </BrowserRouter>
  );
}

export default App;
