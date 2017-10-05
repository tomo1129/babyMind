import React, { Component } from 'react';

import './Home.css';

class Home extends Component {
  render() {
    return (
      <main className="main-contents">
        <div className="edge-outer">
          <div className="edge-inner">
            <section className="pickup">

              <div className="thread-wrap">
                <dl className="thread-list">
                  <dt>&#9830;人気スレッド</dt>
                  <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
                  <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
                  <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
                </dl>
              </div>

              <div className="thread-wrap">
                <dl className="thread-list">
                  <dt>&#9830;新着スレッド</dt>
                  <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
                  <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
                  <dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
                </dl>
              </div>

            </section>
          </div>
        </div>
      </main>
    );
  }
}
export default Home;
