IntList numbers;
int sum;

void setup() {
  numbers = new IntList();
  for (int i = 3; i<1000; i += 3) {
    numbers.append(i);
  }
  for (int i = 5; i<1000; i+=5) {
    numbers.append(i);
  }
  for (int i = 0; i < numbers.size(); i++) {
    for (int v = 0; v < numbers.size() && v != i; v++) {
      if (numbers.get(i)==numbers.get(v)) {
        numbers.remove(v);
      }
    }
  }
  for (int i = 0; i < numbers.size(); i++) {
    println(numbers.get(i));
  }
  for (int i = 0; i < numbers.size(); i++) {
    sum += numbers.get(i);
  }
  println(sum);
}
