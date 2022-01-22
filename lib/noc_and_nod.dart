class DelimetersCalculator {
  num calculateNod(int a, int b) {
    return b != 0 ? calculateNod(b, a % b) : a;
  }

  num calculateNok(int a, int b) {
    return a / calculateNod(a, b) * b;
  }
}
