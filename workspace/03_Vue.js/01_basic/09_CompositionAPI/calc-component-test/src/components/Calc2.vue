<template>
  <div>
    X : <input type="text" v-model.number="x" /> <br />
    Y : <input type="text" v-model.number="y" /> <br />
    <button @click="calcAdd(x, y, 2)">계산</button> <br />
    <div>결과: {{ sum }}</div>
  </div>
</template>

<script>
import { ref } from 'vue';
export default {
  name: 'Calc2',
  setup() {
    const x = ref(15);
    const y = ref(25);
    const sum = ref(40);
    const calcAdd = (x, y) => {
      sum.value = x + y;
    };

    return { x, y, sum, calcAdd };
  },
};
</script>
