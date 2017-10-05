import React, { Component } from 'react';
import axios from 'axios'

import './Sidebar.css';

class Sidebar extends Component {
	constructor(props) {
		super(props);

		this.state = {
			email: '',
			password: ''
		};

		this.onChangeEmail = this.onChangeEmail.bind(this);
		this.onChangePassword = this.onChangePassword.bind(this);
        this.login = this.login.bind(this);
	}

	onChangeEmail(e) {
		this.setState({ email: e.target.value });
	}

	onChangePassword(e) {
		this.setState({ password: e.target.value });
	}

	login() {
		axios.post('http://localhost:3000/login', {
				email: this.state.email,
				password: this.state.password
			})
			.then(function (response) {
				console.log(response);
			})
	}

	render() {
		return (
			<div className="sidebar">
				<div className="edge-outer">
					<div className="edge-inner">

						<section>

							<div className="login-area">
								<input className="input1" type="text" value={this.state.email} onChange={this.onChangeEmail} placeholder="メールアドレス"/>
								<input className="input1" type="password" value={this.state.password} onChange={this.onChangePassword} placeholder="パスワード" />
								<p className="btn-area">
									<a onClick={this.login} className="btn1">ログイン</a>
								</p>
							</div>

							<dl className="thread-list">
								<dt>&#9830;人気スレッド</dt>
								<dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
								<dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
								<dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
							</dl>

							<dl className="thread-list">
								<dt>&#9830;人気アンケート</dt>
								<dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
								<dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
								<dd><a href="">テストテストテストテストテストテストテストテストテストテスト</a></dd>
							</dl>

						</section>

					</div>
				</div>
			</div>
		);
	}
}
export default Sidebar;
