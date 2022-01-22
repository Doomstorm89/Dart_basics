class NumbersFromString {
  List getNumbersFromString(String text) {
    var split = text.split(' ');
    var list = [];
    for (var item in split) {
      if (num.tryParse(item) != null) {
        list.add(item);
      }
    }

    return list;
  }
}
