<template>
 <div id="home">
   <h1>{{ msg }}</h1>
   <button @click="googleLogin">Googleアカウントでログイン</button>
 </div>
</template>

<script>
export default {
  name: 'home',
  data () {
    return {
      msg: 'Welcome to MyMarkdown'
    }
  },
  created: function() {
    firebase.auth().onAuthStateChanged(user => {
      console.log(user);
      if (user) {
        this.isLogin = true;
      } else {
        this.isLogin = false;
      };
    });
  },
  methods: {
    googleLogin: function() {
      firebase.auth().signInWithRedirect(new firebase.auth.GoogleAuthProvider());
    }
  }
}
</script>
