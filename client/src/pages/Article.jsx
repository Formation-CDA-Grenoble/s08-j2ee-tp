import React from 'react';
import { Layout } from '../components';
// import { articles } from '../data';
import { Button } from 'react-bootstrap';
import { Link } from 'react-router-dom';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faSignLanguage } from '@fortawesome/free-solid-svg-icons';

const Article = ({ title, author, content, date, claps, clap }) => {
  return (
    <Layout>
      <h1>{title}</h1>
      <p>Posté par {author.name} le {date.toLocaleString()}</p>
      <p>{content}</p>
      <Button variant="success" onClick={clap}>
        <FontAwesomeIcon icon={faSignLanguage} /> {claps} applaudissements
      </Button>
      <Link to='/'>
        <Button variant="secondary">Retour à l'accueil</Button>
      </Link>
    </Layout>
  );
}

export default Article;
