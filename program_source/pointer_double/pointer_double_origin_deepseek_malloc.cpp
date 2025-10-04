// MALLOC_VARIANT

typedef int data_t;

data_t sub(data_t ptr[10], data_t size, data_t **flagPtr) {
  data_t x, i;

  x = 0;
  for (i = 0; i < size; ++i)
    if ((**flagPtr & i))
      x += *(ptr + i);
  return x;
}

data_t pointer_double(data_t pos, data_t x, data_t *flag) {
  data_t* array = new data_t[10];
  for (int i = 0; i < 10; ++i) {
    array[i] = i + 1;
  }

  data_t *ptrFlag = flag;

  if (pos >= 0 & pos < 10)
    *(array + pos) = x;

  data_t result = sub(array, 10, &ptrFlag);

  delete[] array;
  return result;
}
