import React from 'react';
import { Navbar, Nav } from 'react-bootstrap';

const Header = () =>
  <Navbar bg="primary" variant="dark">
    <Navbar.Brand href="#home">CDA Blog</Navbar.Brand>
    <Nav className="mr-auto">
      <Nav.Link href="#home">Accueil</Nav.Link>
    </Nav>
  </Navbar>
;

export default Header;
