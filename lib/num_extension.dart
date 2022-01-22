import 'dart:math';

extension NumExtension on num {
  num customSqrtWithPow(double exponent) {
    try {
      return pow(this, 1 / exponent);
    } catch (e) {
      throw Exception(e);
    }
  }

  /*num customSqrt(double exponent) {
    try {
      var a = this;
      var precision = 0.001;
      for (var i = 0.0; i < 100.0; i += precision) {
        var res = exponent * i;
        if (double.parse(res.toStringAsFixed(10)) == a) {
          return i;
        }
      }
      return 0.0;
    } catch (e) {
      throw Exception(e);
    }
  }*/
  num customSqrt(double exponent) {
    try {
      var a = this;
      var precision = 0.001;
      var res = 0.0;
      for (var i = precision; i < 100.0; i += precision) {
        res = 0.5 * (i + a / i);
        var newRes = 0.5 * (res + a / res);
        if (double.parse(newRes.toStringAsFixed(10)) < a) {
          print('res: $res, i: $i, new: $newRes');
          return newRes + precision;
        }
      }
      return 0.0;
    } catch (e) {
      throw Exception(e);
    }
  }
}
