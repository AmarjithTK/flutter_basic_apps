import 'dart:io';
import 'dart:async';

void main() {
  performTasks();
}

void performTasks() async {
  one();
  String twodata = await two();
  three(twodata);
}

void one() {
  print('one task completed');
}

Future<String> two() async {
  Duration fiveSec = Duration(seconds: 5);
  String task2data = '';
  await Future.delayed(fiveSec, () {
    task2data = 'message comes from task2';
  });
  print('two task completed');
  return task2data;
}

void three(twodata) {
  print(' This is message coming from task3 ' + twodata);
}
