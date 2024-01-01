import { defineRule } from 'vee-validate';

defineRule('required', (value: string) => {
  if (!value || !value.length) {
    return '必須項目です';
  }
  return true;
});
