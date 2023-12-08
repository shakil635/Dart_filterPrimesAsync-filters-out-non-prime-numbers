/// Support for doing something awesome.
///
/// More dartdocs go here.
library;

export 'src/dart_asynchronous_prime_base.dart';

// TODO: Export any libraries intended for clients of this package.

Future<List<int>> filterPrimesAsync(List<int> numbers) async {
  return numbers.where((number) => isPrime(number)).toList();
}

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  for (var i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}




/*
Practice Question 3: Asynchronous Prime Number Filter
Task:
Implement a function filterPrimesAsync
 that takes a list of integers and returns 
 a Future<List<int>> containing only the prime numbers. 
 The prime number check should be done asynchronously.
 */