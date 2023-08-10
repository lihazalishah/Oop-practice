genericMethod<T, U>(T value, T value2) {
  return {value, value2};
}

void main(List<String> args) {
  print('Int ${genericMethod(23, 45)}');
  print('Mix ${genericMethod('hellow', 45)}');
}
