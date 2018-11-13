var app = new Vue({
  el: '#app',
  data: {
    message: '初期メッセージ',
    list: ['apple', 'orange', 'pen'],
    show: true
  },
  methods: {
    handleClick: function(event) {
      alert(event.target) //[object HTMLButtonElement]
    }
  }
})
