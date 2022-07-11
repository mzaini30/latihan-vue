<script setup="" lang="ts">
import { ref } from "vue";
import Form from "../komponen/form.vue";

const state = ref({
  nama: "",
  kelas: "",
});
</script>

<template>
  <p>{{ state }}</p>
  <Form v-model:isi="state.nama" label="Nama"></Form>
  <Form v-model:isi="state.kelas" label="Kelas"></Form>
</template>
