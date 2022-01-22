import 'package:dart_application_1/noc_and_nod.dart';
import 'package:dart_application_1/decimal_to_binary.dart';
import 'package:dart_application_1/numbers_from_string.dart';
import 'package:dart_application_1/points.dart';
import 'package:dart_application_1/unique_numbers.dart';
import 'package:dart_application_1/user.dart';
import 'package:dart_application_1/words_counter.dart';
import 'package:dart_application_1/num_extension.dart';

void main(List<String> arguments) {
  // №1 НОК и НОД:
  var calc = DelimetersCalculator();
  print(calc.calculateNod(15, 20));
  print(calc.calculateNod(12, 30));
  print(calc.calculateNod(10, 4));

  print(calc.calculateNok(13, 7));

  // №2 Из двоичной в десятичную и обратно:
  var converter = NumConverter();
  print(converter.convertToBinary(1012));
  print(converter.convertToDecimal(1111110100));

  // №3 Из строки взять числа:
  var numsFromString = NumbersFromString();
  var stringWithNumbers = 'abc 123 def 456 ghi 789 2.4';

  print(numsFromString.getNumbersFromString(stringWithNumbers));

  // №4 Посчитать кол-во слов в коллекции
  var wordsCounter = WordsCounter();
  var wordsList = ['one', 'two', 'three', 'two', 'one', 'two'];
  print(wordsCounter.getWordsCount(wordsList));

  // №5 Цифры без повторений в строке
  var uniqueNumbers = UniqueNumbers();
  var stringList = ['one, two, three, cat, dog', 'one, two, zero, zero'];
  print(uniqueNumbers.getUniqueNumbersFromStrings(stringList));

  // №6 Точки в пространстве и площадь треугольника в 3Д
  var p1 = Point(10, 5, 6);
  var p2 = Point.far();

  print('Distance to = ${p1.distanceTo(p2)}');

  var a = Point(1, 1, 0);
  var b = Point(-2, 4, 0);
  var c = Point(-2, -2, 0);

  print(triangleSquare(a, b, c));

  // №7 Корень н-ной степени из числа
  var n = 4.0;
  print('-> ${n.customSqrtWithPow(2)}');
  print(n.customSqrt(2));

  print('-> ${n.customSqrtWithPow(4)}');
  print(n.customSqrt(4));

  // №8 Пользователи, миксин, наследование и емеил
  var admin = AdminUser('test@test.ru');
  print(admin.getMailSystem());

  var userManager = UserManager();
  userManager.addUser(admin);

  for (var i = 0; i < 3; i++) {
    var generalUser_i = GeneralUser('general-user$i@email.ru');
    userManager.addUser(generalUser_i);
    var user_i = User('user$i@email.ru');
    userManager.addUser(user_i);
  }

  userManager.printEmails();
}
