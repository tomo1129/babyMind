import React, { Component } from 'react';
import axios from 'axios'

import './Signup.css';

class Signup extends Component {
  constructor(props) {
    super(props);

    this.state = {
      email: '',
      password: '',
      passwordConfirm: ''
    };

    this.onChangeEmail = this.onChangeEmail.bind(this);
    this.onChangePassword = this.onChangePassword.bind(this);
    this.onChangePasswordConfirm = this.onChangePasswordConfirm.bind(this);
    this.signup = this.signup.bind(this);
  }

  onChangeEmail(e) {
    this.setState({ email: e.target.value });
  }

  onChangePassword(e) {
    this.setState({ password: e.target.value });
  }

  onChangePasswordConfirm(e) {
    this.setState({ passwordConfirm: e.target.value });
  }

  signup() {
    axios.post('http://localhost:3000/api/users', {
      email: this.state.email,
      password: this.state.password
    })
		.then(function (response) {
			console.log(response);
		})
  }

  render() {
		return (
			<main className="main-contents">
				<div className="edge-outer">
					<div className="edge-inner">
						<section className="signup-section">

							<input className="input1" type="text" value={this.state.email} onChange={this.onChangeEmail} placeholder="メールアドレス"/>
							<input className="input1" type="password" value={this.state.password} onChange={this.onChangePassword} placeholder="パスワード" />
							<input className="input1" type="password" value={this.state.passwordConfirm} onChange={this.onChangePasswordConfirm} placeholder="パスワード再入力" />
							<p className="btn-area">
								<a onClick={this.signup} className="btn1">会員登録</a>
							</p>

						</section>
					</div>
				</div>
			</main>
		);
	}
}
export default Signup;
