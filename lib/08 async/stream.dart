//? STREAMS

// A stream is a sequence of asynchronous events representing multiple values
// that will arrive in the future. Stream class deals with sequences of events
// instead of single events. Stream has one or more listeners,
// and all listeners will receive the same value.

/* For example, A stream is like a pipe that emits events, you put a value on
  the one end, and if there’s a listener on the other end that listener will
  receive that value. These events can be values of any type, errors or a
 “done” event to signal the end of the stream.

Single Value	Zero or more values
Sync	int	Iterator
Async	Future<int>	Stream<int>
How To Create Stream In Dart
You can create a stream in dart by using Stream class. Here the function will return Stream<String> after 5 seconds.
*/
// function that returns a stream
Stream<String> getUserName() async* {
  await Future.delayed(Duration(seconds: 1));
  yield 'Mark';
  await Future.delayed(Duration(seconds: 1));
  yield 'John';
  await Future.delayed(Duration(seconds: 1));
  yield 'Smith';
}

// Here yield returns the value from the stream. To use yield you have to use async*.

// You can also create a stream by using Stream.fromIterable() method.
// Here the function will return Stream<String> immediately.

// function that returns a stream
// Stream<String> getUserName() {
//   return Stream.fromIterable(['Mark', 'John', 'Smith']);
// }

// How To Use Stream In Dart
// You can use stream in dart by using await for loop.

// function that returns a stream
// Stream<String> getUserName() async* {
//   await Future.delayed(Duration(seconds: 1));
//   yield 'Mark';
//   await Future.delayed(Duration(seconds: 1));
//   yield 'John';
//   await Future.delayed(Duration(seconds: 1));
//   yield 'Smith';
// }

// main function
// void main() async {
//   // you can use await for loop to get the value from stream
//   await for (String name in getUserName()) {
//     print(name);
//   }
// }

/*
Future vs Stream
              Future	Stream

Future represents the value or error that is supposed to be available in the Future.

Stream is a way by which we receive a sequence of events.

A Future can provide only a single result over time.	

Stream can provide zero or more values.

You can use FutureBuilder to view and interact with data.	

You can use StreamBuilder to view and interact with data.

It can’t listen to a variable change.

But Stream can listen to a variable change.

*/
// Syntax:
// Future <data_type> class_name	Syntax: Stream <data_type> class_name

// Types Of Stream
// There are two types of streams:

// Single Subscription streams
// Broadcast streams
// Single Subscription Stream
// By default, Streams are set up for a single subscription.
// They hold onto the values until someone subscribes and can only
// be listened to once. You will get an exception if you try to listen more
// than once. Any event’s value should not be missed and must be in the correct
// order. Inside the stream controller, there is only one stream,
// and only one subscriber can use that stream.

// Broadcast Stream
// This is the stream that is set up for multiple subscriptions.
// They hold onto the values until subscribers can only listen many times.
// You can use the broadcast stream if you want more objects to listen to the
// stream. It can be used for mouse events in a browser. Inside the stream
// controller, many streams can be used by many subscribers.
// E.g., You can start watching videos on such a stream at any time, and more
// than one subscriber can watch the video simultaneously. Similarly, you can
// watch again after canceling a previous subscription.

// Syntax
// StreamController<data_type> controller = StreamController<data_type>.broadcast();

// How Streams Are Created
// You can create a stream in many ways. Let’s create a StreamController first.

// StreamController<data_type> controller = StreamController<data_type>();
// Now we can access this controller through the stream property.

// Stream stream = controller.stream;

// How To Subscribe A Stream
// After getting access from the stream you subscribe to the stream
// by calling a listen() method.
/*
 stream.listen((value) {
  print("Value from controller: $value");
});*/

// How To Add Value To The Stream
// We can add the stream by calling the add() method. Let’s add some value to the stream.

// controller.add(3);
// When we call the above function, we’ll get the output as:

// Value from controller: 3

// How To Manage The Stream
// To manage the stream, listen() method is used.

// StreamSubscription<int> streamSubscription = stream.listen((value){
//   print("Value from controller: $value");
// });

// How To Cancel A Stream
// You can cancel a stream by using the cancel() method.

//? streamSubscription.cancel();

//? Types Of Classes In Stream
// Four major classes in Dart’s async libraries are used to manage streams.

// Stream: It represents an asynchronous stream of data. For E.g:

// final controller = StreamController<String>();

// final subscription = controller.stream.listen((String data) {
//   print(data);
// });
// controller.sink.add("Data!");
// EventSink: It is like a stream that flows in the opposite direction.

// StreamController: It simplifies stream management, automatically creating a
// stream and sink and also providing methods for controlling a stream’s behavior.

// StreamSubscription: It saves the references of the subscription and allows
// them to pause, resume or cancel the flow of data they receive.

// Method Used In Stream

// There are four methods used in the stream: *listen(): It returns a
// StreamSubscription object representing the active stream-producing events.
// The stream subscription allows you to pause, resume the subscription after
// a pause, and cancel the subscription completely.

//? Syntax: listen
// final subscription = myStream.listen()
// onError: Stream can provide errors just like a future can; by adding an
// onError method, you can catch and process an mistakes.
// Syntax: onError
// onError: (err){

// }

// cancelOnError: This property or method is true by default but can be set to
// false to keep the subscription going even after an error.

//Syntax: cancelOnError
//cancelOnError : false
// onDone: This method can execute some code when the stream is finished sending
// data, such as when a file has been completely read.
// Syntax: onDome
// onDone: (){

// }

// Keywords Used In Stream
// async*: It is mainly used in the stream that works like the async in the future.

// yield: It is used to emit values from a generator, either async or sync.
// yield returns values from an Iterable or a Stream.

// yield*: yield* is used to call its Iterable or Stream function recursively.

//? Example Of async
// Future<int> doSomeLongTask() async {
//   await Future.delayed(const Duration(seconds: 2));
//   return 21;
// }main() async {
//   int result = await doSomeLongTask();
//   print(result); // prints '42' after waiting 2 second
// }

//? Example Of async*
// Stream<int> countForOneMinute() async* {
//   for (int i = 1; i <= 5; i++) {
//     await Future.delayed(const Duration(seconds: 1));
//     yield i;
//   }
// } main() async {
//   await for (int i in countForOneMinute()) {
//     print(i); // prints 1 to 5, one integer per second
//   }
// }
// Example Of yield*
// Stream<int> str(int n) async* {
//  if (n > 0) {
//    await Future.delayed(Duration(seconds: 2));
//    yield n;
//    yield* str(n - 2);
//  }
// }

// void main() {
//  str(10).forEach(print);
// }
// Example 1

//import 'dart:async';
// void main() {
//   var controller = StreamController();
//   controller.stream.listen((event) {
//     print(event);
//   });
//   controller.add('Hello');
//   controller.add(42);
//   controller.addError('Error!');
//   controller.close();
// }

// Example 2
// Stream<int> numberOfStream(int number) async* {
//   for (int i = 0; i <= number; i++) {
//     yield i;
//   }
// }

// void main(List<String> arguments) {
//   // Calling the Stream
//   var stream = numberOfStream(6);
//   // Listening to Stream yielding each number
//   stream.listen((s) => print(s));
// }
// Stream<int> str(int n) async* {
//  for (var i = 1; i <= n; i++) {
//    await Future.delayed(Duration(seconds: 1));
//    yield i;
//  }
// }

// void main() {
//  str(10).forEach(print);
// }

/*
async              	               async*
It gives a Future.               	It gives a Stream.
async keyword does some           async* returns a bunch of future values on at a time.
work that might take a long time.	

It gives the result 	            It gives the result wrapped in the stream.
wrapped in future.

yield	                                        yield*
It is a keyword that returns single value 	It is used for returning recursive generator.
to the sequence, but doesn’t stop the generator function.

To sum up, Streams are used in Dart to        They allow us to process data as 
 handle asynchronous data flows.              it becomes available, rather than waiting for it to be fully loaded before processing.

Streams are commonly used in scenarios where data is being continuously updated or where we want to handle events as they occur. For example, we can use streams to monitor user interactions in real-time, or to receive data from a server as it becomes available.

In Dart, we can use the Stream and StreamController classes to create and manage streams. The StreamController class is used to create a stream and add data to it, while the Stream class is used to listen to the stream and process incoming data.

Ultimately, streams are a strong feature in Dart that let us handle asynchronous data flows in a flexible and effective way.
*/
