import { defineRule } from 'vee-validate';

defineRule('required', (value: string) => {
  if (!value || !value.length) {
    return '必須項目です';
  }
  return true;
});

defineRule('email', (value: string) => {
  if (!value || !value.length) {
    return true;
  }
  if (!/[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}/i.test(value)) {
    return '正しいメールアドレスを入力してください';
  }
  return true;
});
