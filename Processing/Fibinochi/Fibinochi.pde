IntList fib = new IntList(0);
int sum = 0;

void setup() {
  fib.append(1);
  fib.append(2);
  sum += 2;
  println(fib);
  for (int i = 2; fib.get(i-1)+fib.get(i-2) < 4000000; i ++) {
    fib.append(fib.get(i-1)+fib.get(i-2));
    if ((fib.get(i-1)+fib.get(i-2)) % 2 == 0) {
      sum += fib.get(i-1)+fib.get(i-2);
    }
  }
  println(sum);
}
