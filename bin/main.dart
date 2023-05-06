import 'dart:math';

import 'package:firstproject/firstproject.dart' as firstproject;
import 'package:firstproject/lesson01/03datatypes.dart' as data;
import 'package:firstproject/lesson01/05operators.dart' as ope;
import 'package:firstproject/lesson01/06input.dart' as input;
import 'package:firstproject/lesson02/01condition.dart' as cond;
import 'package:firstproject/lesson02/03switch.dart' as st;
import 'package:firstproject/lesson02/04ternary.dart' as tr;
import 'package:firstproject/lesson02/05loops.dart' as lop;
import 'package:firstproject/lesson02/06break.dart' as brk;
import 'package:firstproject/lesson03/02math.dart' as math;
import 'package:firstproject/lesson04/01collection.dart' as col;

void main(List<String> arguments) {
//! ============== lESSON 01 ===============
  //* Lesson 01 Veriables 03 Example 1
  // print('The sum of all these number is ${data.number()}');
  //* Lesson 01 Veriables 03 Example 2
  // print('this is type of string as return value ${data.doubleNum()}');
  // //* Lesson 01 Veriables 03 Example 3
  // print('${data.address()}');
  //* Lesson 01 Veriables 03 Example 4
  // print('The value of multi line is:${data.multiLine()}');
  //* Lesson 01 Veriables 03 Example 5
  // print('The value is:${data.tab()}');
  //* Lesson 01 Veriables 03 Example 6
  //print('Value is:${data.rawString()}');
  // String To Double conversation
  //* Lesson 01 Veriables 03 Example 7
  //data.stringToInt()}; //${data.runtimeType}
  // String To Double conversation
  //* Lesson 01 Veriables 03 Example 8
  //data.stringToDouble();
  // Int  To String  conversation
  //* Lesson 01 Veriables 03 Example 9
  //data.intToString();
  //* Lesson 01 Veriables 03 Example 10
  // data.doubleToInt();
  //* Lesson 01 Veriables 03 Example 11
  // data.boolean();
  //List
  //* Lesson 01 Veriables 03 Example 12
  // data.listLesson();
  //Sets
  //* Lesson 01 Veriables 03 Example 13
  // data.sets();
  //Map
  //* Lesson 01 Veriables 03 Example 14
  // data.maps();
  //Var
  //* Lesson 01 Veriables 03 Example 15
  // data.varchar();
  //Find UniCode
  //* Lesson 01 Veriables 03 Example 16
  // data.unicode();

//!===================== Lec 05 ============== Operators ============
  //* Lesson 01 Operators 05 Example 01
  // print('Arithmatic Operator:');
  // ope.arthmatic();
  //* Lesson 01 Operators 05 Example 02
  // print('Increment Decrement Operator:');
  // ope.incdec();
  //* Lesson 01 Operators 05 Example 03
  // print('Assignment Operator:');
  // ope.assign();
  //* Lesson 01 Operators 05 Example 04
  // print('Relation Operator:');
  // ope.rln();
  //* Lesson 01 Operators 05 Example 05
  // print('Logical Operator:');
  // ope.logic();
  //* Lesson 01 Operators 05 Example 06
  // print('Test Operator:'); //Check at run time type
  // ope.test();

  //!===================== Lec 06 ============== Input ============
  //* Lesson 01 Operators 06 Example 01
  // print('Input String:${input.stringInput()}');
  //* Lesson 01 Operators 06 Example 02
  //print('Input Number Is:${input.intInput()}');
  //* Lesson 01 Operators 06 Example 03
  //print('Input Floating Is:${input.folatingInput()}');

  //!====== LECTURE 02 ====== LESSON 01 ======== Condition ============
  //* Lesson 01 If Condition 01 Example 01
  // print('If condition:${cond.condition()}');
  //* Lesson 01 If Condition 01 Example 02
  // cond.ifelse();
  //* Lesson 01 If Condition 01 Example 03
  // cond.condBool();
  //* Lesson 01 If Condition 01 Example 04
  // cond.ifelseif();
  //* Lesson 01 If Condition 01 Example 05
  // cond.findGreatet();

  //!====== LECTURE 02 ====== LESSON 03 ======== Switch Statement ============
  //* Lesson 02 If Switch 03 Example 01
  //st.usignIfElse();
  //* Lesson 02 If Switch 03 Example 02
  //st.switchStatement();
  //* Lesson 02 Switch 03 Example 03
  // st.stringSwitch();
  //* Lesson 02 Switch with enum 03 Example 04
//  st.swithWithEnum();

  //!====== LECTURE 02 ====== LESSON 04 ======== Turnary Operator =========
  //* Lesson 02 If Turnary 04 Example 01
  // tr.ter();
  //* Lesson 02 If Turnary 04 Example 02
  //tr.ternary();
  //* Lesson 02 If Turnary 04 Example 03
  //tr.valueBase();

  //!====== LECTURE 02 ====== LESSON 05 ======== Loops =========
  //* Example 1
  //  lop.withOutLoop();
  //* Example 2
  //  lop.withLoop();
  //* Sum of natural numbers
  //  lop.sumOfNatural();
  //* Display even number b/w 50 to 100
  //  lop.even();
  //* Display foreach
  //  lop.item();
  //* Display foreach each item
  //  lop.eachItem();
  //* Display for item
  //  lop.usingForEach();
  //* Display for index
  //  lop.indexBase();
  //* Display for index code
  //  lop.codePoint();
  //** while loop
  // lop.whilelp();
  // lop.whilelpRv();
  // lop.whileNatural();
  // lop.whileEven();
  // lop.dowhlLow();
  // lop.doWhlUp();

  //!====== LECTURE 02 ====== LESSON 06 ======== Break and Continue =========
  //* Example  Break
  // brk.exampleB1();
  // brk.exampleB2();
  // brk.exampleB3();
  // brk.exampleB4();
  //* Example Continue
  // brk.example1();
  // brk.example2();
  //brk.example3();

  //!====== LECTURE 03 ====== LESSON 02 ======== Math.dart =========
  // math.random();
  // math.randomAnyNumber();
  // math.power();

  //!====== LECTURE 04 ====== LESSON 01 ======== Collection =========
  //* List lesson 1
  // col.fixedLength();
  // col.growingList();
  // col.accessList();
  // col.indexList();
  // col.lengthOfList();
  // col.changingValueOfList();
  // col.findFirstList();
  // col.isEmptyOrNot();
  // col.reverse();
  // col.addList();
  // col.addAllList();
  // col.insertList();
  // col.insertAllList();
  // col.replaceList();
  // col.removeList();
  // col.removeListAt();
  // col.removeLastList();
  // col.removeRangeList();
  // col.loopList();
  // col.multipleListByTwo();
  // col.combineTwoList();
  // col.conditionInList();
  // col.whereConditionInList();

  //* Set lesson 2

  //* Map lesson 3

  //* Where lesson 4
}
