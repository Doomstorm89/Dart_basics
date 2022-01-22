class WordsCounter {
  Map getWordsCount(List<String> list) {
    Map<String, int> map = Map();
    for (var item in list) {
      if (map.containsKey(item)) {
        map.update(item, (value) => value + 1);
      } else {
        map.putIfAbsent(item, () => 1);
      }
    }
    return map;
  }
}
