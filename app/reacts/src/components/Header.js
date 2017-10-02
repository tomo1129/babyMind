import React, { Component } from 'react';
import './header.css';
class Header extends Component {
	render() {
		return (
			<header className="header">
				<div className="edge-outer">
					<div className="edge-inner">
						<h1>みんなの気持ち</h1>
						<h2>〜 子育てをめぐるみんなの掲示板 〜</h2>
						<nav className="header-nav">
							<ul className="header-menu">
								<li className="header-menu-list"><a className="active">お母さんの気持ち</a></li>
								<li className="header-menu-list"><a>お父さんの気持ち</a></li>
								<li className="header-menu-list"><a>胎児の気持ち</a></li>
								<li className="header-menu-list"><a>乳児の気持ち</a></li>
								<li className="header-menu-list"><a>おじいちゃんの気持ち</a></li>
								<li className="header-menu-list"><a>おばあちゃんの気持ち</a></li>
							</ul>
						</nav>
					</div>
				</div>
			</header>
		);
	}
}
export default Header;
