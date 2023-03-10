extension Shuffling on List {
  List shuffleInline() {
    final List list = [...this];
    list.shuffle();
    return list;
  }
}
