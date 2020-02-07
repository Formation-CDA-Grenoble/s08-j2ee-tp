import React, { Component } from 'react';
import Axios from 'axios';
import Loader from 'react-loader-spinner';
import ArticleList from '../pages/ArticleList';
import { Layout } from '../components';

const ArticleListLoader = () =>
  <Layout>
    <Loader
      type="Puff"
      color="#00BFFF"
      height={100}
      width={100}
    />
  </Layout>
;

export default class ArticleListContainer extends Component {
  state = {
    data: null,
    errorMessage: null,
  }

  async componentDidMount() {
    try {
      // Attend que la requête AJAX réponde
      const response = await Axios.get('http://localhost:8080/api/articles');
      const { data } = response;
      // Modifier l'état du composant une fois que la réponse est arrivée
      this.setState({ data });
    }
    catch(error) {
      this.setState({ errorMessage: error.message });
    }
  }

  render() {
    const { data, errorMessage } = this.state;

    if (errorMessage) {
      return (
        <Layout>
          {errorMessage}
        </Layout>
      );
    }

    if (data === null) {
      return <ArticleListLoader />
    }

    return (
      <ArticleList articles={data} />
    );
  }
}
