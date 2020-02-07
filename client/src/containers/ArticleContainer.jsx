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
    errorMessage: null,
  }

  async componentDidMount() {
    const id = this.props.match.params.id;
    try {
      const response = await Axios.get(`http://localhost:8080/api/articles/${id}`);
      const { data } = response;
      this.setState({ data });
    }
    catch(error) {
      this.setState({ errorMessage: error.message });
    }
  }

  clap = async () => {
    const id = this.props.match.params.id;
    try {
      const response = await Axios.post(`http://localhost:8080/api/articles/${id}/clap`);
      const claps = response.data;
      const { data } = this.state;
      this.setState({ data: {...data, claps} })
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
      return <ArticleLoader />;
    }

    return (
      <Article {...data} clap={this.clap} />
    );
  }
}
