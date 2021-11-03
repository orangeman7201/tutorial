<template>
  <v-app>
    <v-app-bar
      app
      color="primary"
      dark
    >
      <div class="d-flex align-center">
      Sample app
      </div>

      <v-spacer></v-spacer>

      <v-btn text to="/" class="mr-2">Home</v-btn>
      <v-btn text class="mr-2">About</v-btn>
      <v-btn text class="mr-2">Login</v-btn>
    </v-app-bar>

    <v-main>
      <router-view></router-view>
    </v-main>

    <v-footer
      color="primary"
      dark
      app
    >
      <v-btn text class="mr-2">rails tutorial</v-btn>
      <v-spacer></v-spacer>
      <v-btn text class="mr-2">About</v-btn>
      <v-btn text class="mr-2">Contact</v-btn>
      <v-btn text class="mr-2">News</v-btn>

    </v-footer>

  </v-app>
</template>

<script>
export default {
  name: 'App',

  data: () => ({
    //
  }),
};
</script>
