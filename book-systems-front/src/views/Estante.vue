<template>
  <v-container>
    <v-row class="text-center">
      <v-col>
        <v-img
          :src="require('../assets/saraiva-logo.svg')"
          contain
          class="logo"
          height="400"
        />
        <h1>Cadastro de livros</h1>
      </v-col>
        </v-row>
  </v-container>
</template>

<script>
  export default {
    data: () => ({
      errorMessages: '',
      name: null,
      address: null,
      city: null,
      state: null,
      zip: null,
      country: null,
      formHasErrors: false,
    }),

    computed: {
      form () {
        return {
          name: this.name,
          address: this.address,
          city: this.city,
          state: this.state,
          zip: this.zip,
          country: this.country,
        }
      },
    },

    watch: {
      name () {
        this.errorMessages = ''
      },
    },

    methods: {
      addressCheck () {
        this.errorMessages = this.address && !this.name
          ? `Hey! I'm required`
          : ''

        return true
      },
      resetForm () {
        this.errorMessages = []
        this.formHasErrors = false

        Object.keys(this.form).forEach(f => {
          this.$refs[f].reset()
        })
      },
      submit () {
        this.formHasErrors = false

        Object.keys(this.form).forEach(f => {
          if (!this.form[f]) this.formHasErrors = true

          this.$refs[f].validate(true)
        })
      },
    },
  }
</script>

<style scoped>
.logo {
  margin-top: -160px
}

h1{
  color: rgb(0, 0, 0);
  font-family: 'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;
  font-size: 20px;
  margin-top: -190px;
  margin-left: 150px;
}
</style>