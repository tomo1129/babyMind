import React, { Component } from 'react'
import { BrowserRouter, Route } from 'react-router-dom'
import Signup from './pages/Signup';
import Home from './pages/Home';
import Header from './components/Header';
import Sidebar from "./components/Sidebar";
import Footer from "./components/Footer";
import './common/base.css';
import './common/layout.css';
import './common/reset.css';

class RouterTop extends Component {
  render() {
    return (
      <div className={this.props.match.params.relation}>
        <Header/>
        <div className="main-article clearfix">
          <Route exact path='/' component={Home} />
          <Route path='/signup' component={Signup} />
          <Sidebar/>
        </div>
        <Footer/>
      </div>
    );
  }
}

const App = () => (
  <BrowserRouter>
    <Route exact path='/:relation?' component={RouterTop} />
  </BrowserRouter>
)

export default App