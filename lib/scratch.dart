import 'dart:io';

void main() {
  performTasks();
}

void performTasks() async {
  task1();
  String task2Result = await task2();
  task3(task2Result);
}

void task1() {
  String result = 'task 1 data';
  print('Task 1 Complete');
}

Future<String> task2() async {
  Duration three = Duration(seconds: 3);
  // sleep(three); //synchronous function

  String result;

  await Future.delayed(three, (){ //input1 followed by a call back //asynchronous
  //function (to specify what it should do after input1)

  result = 'task 2 data';
  print('Task 2 Complete');
  });

  return result;
}

void task3(String task2Data) {
  String result = 'task 3 data';
  print('Task 3 Complete with $task2Data');
}