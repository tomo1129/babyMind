import React from 'react'
import { BrowserRouter, Route } from 'react-router-dom'
import Signup from './pages/Signup';
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
          <Route path='/signup' component={Signup} />
          <Sidebar/>
        </article>
        <Footer/>
      </div>
    </BrowserRouter>
)

export default App