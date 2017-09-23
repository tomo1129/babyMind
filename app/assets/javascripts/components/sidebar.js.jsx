var Sidebar = React.createClass({

  render: function() {
    return (
      <div className="sidebar">
        <div className="edge-outer">
          <div className="edge-inner">

            <section>

              <p className="login-area"><a href="/login">ログイン</a><a href="/signup">新規登録</a></p>

              <dl className="thread-list">
                <dt>&#9830;人気スレッド</dt>
                <dd><a href="#">テストテストテストテストテストテストテストテストテストテスト</a></dd>
                <dd><a href="#">テストテストテストテストテストテストテストテストテストテスト</a></dd>
                <dd><a href="#">テストテストテストテストテストテストテストテストテストテスト</a></dd>
              </dl>

              <dl className="thread-list">
                <dt>&#9830;人気アンケート</dt>
                <dd><a href="#">テストテストテストテストテストテストテストテストテストテスト</a></dd>
                <dd><a href="#">テストテストテストテストテストテストテストテストテストテスト</a></dd>
                <dd><a href="#">テストテストテストテストテストテストテストテストテストテスト</a></dd>
              </dl>

            </section>

          </div>
        </div>
      </div>
    );
  }
});

