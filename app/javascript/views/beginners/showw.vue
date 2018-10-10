<template>
  <div id="show_vue">
    {{ this_begginer }}
    <p>
      <strong>Title:</strong>
      <span>{{ this_begginer.title }}</span>
    </p>

    <p>
      <strong>Element:</strong>
      {{ this_begginer.element }}
    </p>

    <p>
      <strong>Author:</strong>
      {{ this_begginer.author }}
    </p>

    <button v-on:click="change_name">change name</button>
  </div>
</template>

<script>
  export default {
    props: ["beginner"],
    data () {
      return {
        this_begginer: this.beginner
      }
    },
    methods: {
      change_name: function() {
        var vm = this;
        return vm.beginner.element = 'juancho'
      },
    }
  }
</script>

<style scoped>
  p {
    font-size: 2em;
    text-align: center;
  }
</style>
