<template>
  <div class="row mb-3">
    <div class="col">
      <div class="input-group">
        <input
          type="text"
          class="form-control"
          placeholder="할일을 여기에 입력!"
          v-model.trim="todo"
          @keyup.enter="addHandler"
        />
        <input type="date" class="form-control" v-model="deadline" />
        <button class="btn btn-primary" @click="addHandler">추가</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'InputTodo',
  data() {
    return {
      todo: '',
    };
  },
  emits: ['add-todo'],
  methods: {
    addHandler() {
      if (this.todo.trim().length >= 2) {
        this.$emit('add-todo', this.todo);
        this.todo = '';
      } else {
        alert('할 일을 2글자 이상 입력해주세요!');
      }
    },
  },
};
</script>
