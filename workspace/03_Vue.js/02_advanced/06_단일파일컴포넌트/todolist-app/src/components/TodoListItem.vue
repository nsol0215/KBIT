<template>
  <li
    class="list-group-item d-flex align-items-center"
    :class="{ 'list-group-item-success': todoItem.completed }"
  >
    <input
      type="checkbox"
      class="form-check-input pointer me-3"
      :checked="todoItem.completed"
      @change="$emit('toggle-completed', todoItem.id)"
    />

    <span
      class="pointer flex-grow-1"
      :class="{ 'todo-done': todoItem.completed }"
      @click="$emit('toggle-completed', todoItem.id)"
    >
      {{ todoItem.todo }} {{ todoItem.completed ? '(완료)' : '' }}
    </span>

    <span
      class="badge bg-secondary pointer p-2"
      @click.stop="$emit('delete-todo', todoItem.id)"
      >삭제</span
    >
  </li>
</template>

<script>
export default {
  name: 'TodoListItem',
  props: { todoItem: { type: Object, required: true } },
  emits: ['delete-todo', 'toggle-completed'],
};
</script>
