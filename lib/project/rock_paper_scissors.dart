import 'dart:io';
import 'dart:math';

enum Moves { rock, paper, scissors }

void main() {
  final randomNumber = Random();
  while (true) {
    stdout.write('Rock, Paper or Scissors? (r/p/s) ');
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      Moves playerMoves;
      if (input == 'r') {
        playerMoves = Moves.rock;
      } else if (input == 'p') {
        playerMoves = Moves.paper;
      } else {
        playerMoves = Moves.scissors;
      }

      final random = randomNumber.nextInt(3);
      final aiMoves = Moves.values[random];
      print('You Played: $playerMoves');
      print('AI Played: $aiMoves');
      if (playerMoves == aiMoves) {
        print('It is a Draw');
      } else if (playerMoves == Moves.rock && aiMoves == Moves.scissors ||
          playerMoves == Moves.paper && aiMoves == Moves.rock ||
          playerMoves == Moves.scissors && aiMoves == Moves.paper) {
        print('You Win');
      } else {
        print('You Lose');
      }
    } else if (input == 'q') {
      break;
    } else {
      print("Invalid Input");
    }
  }
  //! show a prompt
  //! Read the user input
  //! if input is valid move("r", "p", "s")
  //! Choose the AI move at random
  //! Comapre the AI move with the user move
  //! Show the result
  //! If the input is "q"
  //! Quit the program
  //! if anything else we print invalid input

  // this will continue over and over until q as input
  // for that we use Whiel loop infinite
}
