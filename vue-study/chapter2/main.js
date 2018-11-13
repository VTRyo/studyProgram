var state = { count: 0 }
var app = new Vue({
  el: '#app',
  data: {
    message: 'Vue.js!', //messageは変化を検知できるようになる
    count: 0
  },
  methods: {
    increment: function() {
      this.count += 1
    }
  }
})
state.count++
