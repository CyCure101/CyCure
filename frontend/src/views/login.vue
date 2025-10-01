<script setup>
import { useRouter } from 'vue-router'

const router = useRouter()

function login() {
  // här kan du lägga logik senare
  router.push('/main')
}
</script>

<template>
  <div class="page">
    <h2>Login Page</h2>
    <p>Skriv in dina uppgifter (placeholder just nu).</p>
    <button @click="login">Logga in</button>
  </div>
</template>

<style scoped>
.page {
  padding: 1rem;
}
button {
  padding: 0.5rem 1rem;
  background-color: #42b883;
  border: none;
  color: white;
  cursor: pointer;
}
</style>
