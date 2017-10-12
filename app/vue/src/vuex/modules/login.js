const loginStatus = {
  namespaced: true,
  state: {
    loginStatus: false,
    user: '',
    csrfToken: ''
  },
  getters: {
    getLoginStatus: (state) => state.loginStatus,
    getUser: (state) => state.user,
    getCsrfToken: (state) => state.csrfToken
  },
  mutations: {
    setLoginStatus (state, loginStatus) {
      state.loginStatus = loginStatus
    },
    setUser (state, user) {
      state.user = user
    },
    setCsrfToken (state, csrfToken) {
      state.csrfToken = csrfToken
    }
  },
  actions: {
    setLoginStatus ({ commit }, loginStatus) {
      commit('setLoginStatus', loginStatus)
    },
    setUser ({ commit }, user) {
      commit('setUser', user)
    },
    setCsrfToken ({ commit }, csrfToken) {
      commit('setCsrfToken', csrfToken)
    }
  }
}

export default loginStatus
