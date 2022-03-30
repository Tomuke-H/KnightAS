import React from 'react';
import { Link } from 'react-router-dom';

const Home = () => {
  return (
    <>
     <h1>pick your page</h1>
     <Link to='/Admin'>
      Admin
     </Link> 
     <Link as={Link} to='/Display'>
      Display
     </Link> 
    </>
  )
};

export default Home;