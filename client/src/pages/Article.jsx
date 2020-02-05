import React from 'react';
import { Layout } from '../components';
import { articles } from '../data';
import { Button } from 'react-bootstrap';
import { Link } from 'react-router-dom';

const Article = props => {
  const id = props.match.params.id;
  const article = articles[id];
  const { title, author, content, date } = article;

  return (
    <Layout>
      <h1>{title}</h1>
      <p>Posté par {author.name} le {date.toLocaleString()}</p>
      <p>{content}</p>
      <Link to='/'>
        <Button variant="secondary">Retour à l'accueil</Button>
      </Link>
    </Layout>
  );
}

export default Article;
