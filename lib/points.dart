import 'dart:math';

class Point {
  final double x, y, z;

  Point(this.x, this.y, this.z);

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.initial() {
    return Point(1, 1, 1);
  }

  factory Point.far() {
    return Point(15, 15, 15);
  }

  double distanceTo(Point point) {
    return sqrt(
        pow(x - point.x, 2) + pow(y - point.y, 2) + pow(z - point.z, 2));
  }
}

double triangleSquare(Point a, Point b, Point c) {
  var distanceAB = a.distanceTo(b);
  var distanceBC = b.distanceTo(c);
  var distanceCA = c.distanceTo(a);

  return _triangleSquareBySides(distanceAB, distanceBC, distanceCA);
}

double _triangleSquareBySides(double a, double b, double c) {
  var perimeter = (a + b + c) * 0.5;
  return sqrt(perimeter * (perimeter - a) * (perimeter - b) * (perimeter - c));
}
