// In Dart, bitwise operators are used to perform operations at the bit level
// on integer values. These operators allow you to manipulate and extract
// individual bits from integer values.
// Dart provides the following bitwise operators:

//? Bitwise AND (&):
// Performs a bitwise AND operation on two integers.
// It compares the corresponding bits of both operands and returns a new integer
// with bits set only where both operands have corresponding bits set to 1.

// Example 1:

void exampleOne() {
  int a = 5; // 101 in binary
  int b = 3; // 011 in binary

  int result = a & b;
  print(result); // Output: 1 (001 in binary)
}

// In this example, the bitwise AND operation is performed on a and b.
// The binary representation of a is 101, and the binary representation
// of b is 011. By performing a bitwise AND operation, the resulting binary
// value is 001, which is equivalent to decimal 1.

//? Bitwise OR (|):
// Performs a bitwise OR operation on two integers.
// It compares the corresponding bits of both operands and returns a new integer
// with bits set where either of the operands has the corresponding bit set to 1.
void exampleTwo() {
  int a = 5; // 101 in binary
  int b = 3; // 011 in binary

  int result = a | b;
  print(result); // Output: 7 (111 in binary)
}

// In this example, the bitwise OR operation is performed on a and b.
// The binary representation of a is 101, and the binary representation
// of b is 011. By performing a bitwise OR operation, the resulting
// binary value is 111, which is equivalent to decimal 7.

//? Bitwise XOR (^):
// Performs a bitwise XOR (exclusive OR) operation on two integers.
// It compares the corresponding bits of both operands and returns a new integer
// with bits set where only one of the operands has the corresponding
// bit set to 1.

// Example 3:
void exampleThree() {
  int a = 5; // 101 in binary
  int b = 3; // 011 in binary

  int result = a ^ b;
  print(result); // Output: 6 (110 in binary)
}

// In this example, the bitwise XOR operation is performed on a and b.
// The binary representation of a is 101, and the binary representation
// of b is 011. By performing a bitwise XOR operation, the resulting binary
// value is 110, which is equivalent to decimal 6.

//? Bitwise NOT (~):
// Performs a bitwise NOT operation on a single integer.
// It flips the bits of the integer, changing 0s to 1s and 1s to 0s.

// Example 4:

void exampleFour() {
  int a = 5; // 101 in binary

  int result = ~a;
  print(result); // Output: -6 (11111111111111111111111111111010 in binary)
}

// In this example, the bitwise NOT operation is performed on a.
// The binary representation of a is 101. By performing a bitwise NOT operation,
// the resulting binary value is 11111111111111111111111111111010,
// which is equivalent to decimal -6 due to two's complement representation.

//? Bitwise left shift (<<):
// Shifts the bits of an integer to the left by a specified number of positions.
// The bits that are shifted beyond the leftmost position are discarded, and new
// zero bits are added on the right.

// Example 5:

void exampleFive() {
  int a = 5; // 101 in binary

  int result = a << 2;
  print(result); // Output: 20 (10100 in binary)
}

// In this example, the bitwise left shift operation is performed on a
// by 2 positions. The binary representation of a is 101.
// By shifting the bits to the left by 2 positions, the resulting
// binary value is 10100, which is equivalent to decimal 20.

//? Bitwise right shift (>>):
// Shifts the bits of an integer to the right by a specified number of positions.
// The bits that are shifted beyond the rightmost position are discarded,
// and the new bits on the left depend on the sign of the integer.

//Example 6:
void exampleSix() {
  int a = 20; // 10100 in binary

  int result = a >> 2;
  print(result); // Output: 5 (101 in binary)
}

// In this example, the bitwise right shift operation is performed
// on a by 2 positions. The binary representation of a is 10100.
// By shifting the bits to the right by 2 positions, the resulting
// binary value is 101, which is equivalent to decimal 5.

// These are the fundamental bitwise operators available in Dart.
// They provide low-level bit manipulation capabilities and are often used
// in scenarios that require fine-grained control over individual bits of
// integer values.