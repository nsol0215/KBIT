<script setup>
import Like from '@/components/like.vue';

// 01_basic
import { useLikeStore } from '@/stores/01_basic/like';

const LikeStore = useLikeStore();
</script>

<template>
  <div>
    <h1>Pinia 상태 관리 예제</h1>
    <h2>좋아요 수 : {{ LikeStore.like }}</h2>
    <h2>좋아요 수 5배 증가 : {{ LikeStore.fivetimes }}</h2>
    <Like />
  </div>
</template>

<style scoped></style>
