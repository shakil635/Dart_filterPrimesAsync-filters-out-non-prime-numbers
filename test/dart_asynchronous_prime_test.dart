import 'package:dart_asynchronous_prime/dart_asynchronous_prime.dart';
import 'package:test/test.dart';

void main() {
  test('filterPrimesAsync filters out non-prime numbers', () async {
    var numbers = [2, 3, 4, 5, 6, 7, 8, 9, 10];
    var result = await filterPrimesAsync(numbers);
    expect(result, equals([2, 3, 5, 7]));
  });

  test('filterPrimesAsync handles an empty list', () async {
    var numbers = <int>[];
    var result = await filterPrimesAsync(numbers);
    expect(result, isEmpty);
  });

  test('filterPrimesAsync handles a list with no primes', () async {
    var numbers = [4, 6, 8, 10];
    var result = await filterPrimesAsync(numbers);
    expect(result, isEmpty);
  });
}
