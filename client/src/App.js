import React from 'react';
import { BrowserRouter, Route, Switch } from 'react-router-dom';
import { NotFoundPage, ArticleListPage } from './pages';

function App() {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path='/' component={ArticleListPage} />
        <Route component={NotFoundPage} />
      </Switch>
    </BrowserRouter>
  );
}

export default App;
