class UniqueNumbers {
  final _map = {
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9
  };

  Set<int> getUniqueNumbersFromStrings(List<String> list) {
    Set<int> uniqueNumbers = {};

    for (var item in list) {
      var words = item.split(',');
      for (var word in words) {
        var clearWord = word.replaceAll(' ', '');
        if (_map.containsKey(clearWord)) {
          var value = _map[clearWord];
          if (value != null) {
            uniqueNumbers.add(value);
          }
        }
      }
    }

    return uniqueNumbers;
  }
}
