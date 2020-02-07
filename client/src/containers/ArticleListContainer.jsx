import React, { Component } from 'react';
import Axios from 'axios';
import ArticleList from '../pages/ArticleList';

export default class ArticleListContainer extends Component {
  state = {
    data: null,
  }

  async componentDidMount() {
    // Attend que la requête AJAX réponde
    const response = await Axios.get('http://localhost:8080/api/articles');
    const { data } = response;
    // Modifier l'état du composant une fois que la réponse est arrivée
    this.setState({ data });
  }

  render() {
    const { data } = this.state;

    if (data === null) {
      return <div>Loading...</div>
    }

    return (
      <ArticleList articles={data} />
    );
  }
}
