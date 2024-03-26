Stream<int> emitNumbers() {
  return Stream.periodic(Duration(seconds: 1), (value) {
    return value;
  }).take(5);
}

Stream<int> emitNumberAsync() async* {
  final valuesToEmit = [1, 2, 3, 4, 5];

  for (var i in valuesToEmit) {
    await Future.delayed(const Duration(seconds: 1));
    yield i;
  }
}
