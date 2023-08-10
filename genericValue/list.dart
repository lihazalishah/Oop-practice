class Data<T> {
  T data;
  Data(this.data);
}

void main(List<String> args) {
  Data<int> intdata = Data<int>(23);
  Data<String> Stringdata = Data<String>('hellow');

  print(intdata.data);
  print(Stringdata.data);
}
