<template>
  <div>
    <header>
      <img alt="CyCure Logo" class="logo" src="./assets/logo.svg" width="125" height="125" />
      <h1>CyCure101</h1>
    </header>

    <nav>
      <router-link to="/login">Login</router-link> |
      <router-link to="/main">Main</router-link> |
      <router-link to="/quiz">Quiz</router-link>
    </nav>

    <main>
      <router-view />
    </main>
  </div>
</template>

<style scoped>
header {
  display: flex;
  align-items: center;
  gap: 1rem;
  margin-bottom: 1rem;
}

.logo {
  width: 60px;
  height: 60px;
}

nav {
  margin-bottom: 1rem;
}

nav a {
  margin: 0 0.5rem;
  text-decoration: none;
  color: #42b883;
}

nav a.router-link-exact-active {
  font-weight: bold;
  color: #35495e;
}
</style>
