var Header = React.createClass({

  render: function() {
    return (
      <header className="header">
        <div className="edge-outer">
          <div className="edge-inner">
            <h1>みんなの気持ち</h1>
            <h2>〜 子育てをめぐるみんなの掲示板 〜</h2>
            <nav className="header-nav">
              <ul className="header-menu">
                <li className="header-menu-list"><a href="javascript:void(0)" className="active">お母さんの気持ち</a></li>
                <li className="header-menu-list"><a href="javascript:void(0)">お父さんの気持ち</a></li>
                <li className="header-menu-list"><a href="javascript:void(0)">胎児の気持ち</a></li>
                <li className="header-menu-list"><a href="javascript:void(0)">乳児の気持ち</a></li>
                <li className="header-menu-list"><a href="javascript:void(0)">おじいちゃんの気持ち</a></li>
                <li className="header-menu-list"><a href="javascript:void(0)">おばあちゃんの気持ち</a></li>
              </ul>
            </nav>
          </div>
        </div>
      </header>
    );
  }
});
