import 'dart:math';

class NumConverter {
  int convertToBinary(int number) {
    var tmp = [];
    while (number != 0) {
      var remainder = number % 2;
      tmp.add(remainder.toString());
      number ~/= 2;
    }

    var intTostr = '';
    for (var element in tmp.reversed) {
      intTostr += element.toString();
    }

    return int.parse(intTostr);
  }

  int convertToDecimal(int number) {
    var tmp = number.toString();
    var result = 0;
    var rank = 0;

    for (var i = tmp.length - 1; i >= 0; i--, rank++) {
      var num = int.parse(tmp[i]);
      result += num * pow(2, rank).toInt();
    }

    return result;
  }
}
