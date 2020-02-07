import React, { Component } from 'react';
import Axios from 'axios';
import Loader from 'react-loader-spinner';
import { Layout } from '../components';
import Article from '../pages/Article';

const ArticleLoader = () =>
  <Layout>
    <Loader
      type="Puff"
      color="#00BFFF"
      height={100}
      width={100}
    />
  </Layout>
;

export default class ArticleContainer extends Component {
  state = {
    data: null,
  }

  async componentDidMount() {
    const id = this.props.match.params.id;
    const response = await Axios.get(`http://localhost:8080/api/articles/${id}`);
    const { data } = response;
    this.setState({ data });
  }

  render() {
    const { data } = this.state;

    if (data === null) {
      return <ArticleLoader />
    }

    return (
      <Article {...data} />
    );
  }
}
