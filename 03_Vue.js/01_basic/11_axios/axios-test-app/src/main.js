import './assets/main.css';

import App from './App1.vue';
import { createApp } from 'vue';
// import App from './App.vue';
import router from './router';

const app = createApp(App);

app.use(router);

app.mount('#app');
