<script setup="" lang="ts">
const props = defineProps(["label", "isi"]);
defineEmits(["update:isi"]);
</script>

<template>
  <div class="p-3">
    <label class="block mb-2">{{ props.label }}</label>
    <input
      type="text"
      class="block border rounded rounded-30px border-3 px-5 p-2"
      :value="isi"
      @input="$emit('update:isi', ($event.target as HTMLInputElement).value)"
    />
  </div>
</template>
