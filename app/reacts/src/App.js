import React, { Component } from 'react'
import { BrowserRouter, Route, Link } from 'react-router-dom'
import Friends from './pages/Friends';
import Header from './components/Header';

import './common/base.css';
import './common/layout.css';
import './common/reset.css';

const App = () => (
    <BrowserRouter>
      <div>
        <Header/>
        <Route exact path='/' component={Home} />
        <Route path='/about' component={About} />
        <Route path='/friends' component={Friends} />
      </div>
    </BrowserRouter>
)

const Home = () => (
    <div>
      <h2>Home</h2>
      <p>Welcome to ようこそ</p>
    </div>
)
const About = () => (
    <div>
      <h2>About</h2>
      <p>フレンズに投票するページです</p>
    </div>
)
// const Friends = () => (
//     <div>
//       <h2>Friends</h2>
//       <p>ここにフレンズのリストを書きます</p>
//     </div>
// )

export default App