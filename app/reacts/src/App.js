import React from 'react'
import { BrowserRouter, Route } from 'react-router-dom'
import Friends from './pages/Friends';
import Home from './pages/Home';
import Header from './components/Header';
import Sidebar from "./components/Sidebar";

import './common/base.css';
import './common/layout.css';
import './common/reset.css';
import Footer from "./components/Footer";

const App = () => (
    <BrowserRouter>
      <div>
        <Header/>
        <article className="main-article clearfix">
          <Route exact path='/' component={Home} />
          <Route path='/friends' component={Friends} />
          <Sidebar/>
        </article>
        <Footer/>
      </div>
    </BrowserRouter>
)

export default App