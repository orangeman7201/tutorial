<template>
  <v-app>

    <v-row class="text-center">

      <v-col cols="12" class="mb-4">
        <h1 class="display-2 font-weight-bold mb-3">
          Welcome to Sample app
        </h1>

        <p class="subheading font-weight-regular">
          This is a sample app
        </p>
      </v-col>

      <v-col
        cols="12"
      >
        <v-btn to="/signup">Sign up now!</v-btn>
      </v-col>

    </v-row>



  </v-app>

</template>

<script>
  export default {
    name: 'HelloWorld',
  }
</script>
