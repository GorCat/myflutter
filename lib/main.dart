// import 'package:flutter/material.dart';

void main() {
  sets();
}

// === 2.sets ===
void sets() {
  // set：无序且唯一值的集合，和 iOS 中的 set 差不多

  // 1.init
  var halogens = {'fluorine', 'chlorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var names = <String>{};
  // Set<String> halogens = {}; // dThis works, too.

  // {} defaults to the Map type.
  // var halogens = {} // Creates a map, not a set.

  // 只会打印 1 个 chlorine
  print('1.$halogens');  //  1.{fluorine, chlorine, bromine, iodine, astatine}
  
  // 2. add & addAll
  var elements = <String>{};
  elements.add('fluorine');
  elements.addAll(halogens);
  print("2.$elements");
  print("2.length = ${elements.length}");

  // 3.constant set
  final constantSet = const {
    'fluorine',
    'chlorine',
    'bromine',
  };
  // constantSet.add('helium'); 
  print("3.$constantSet");
}

// === 1.colleciton ===
void colleciton() {
  // 1.collection
  var list = [1, 3, 4];
  list[0] = 5;
  print('1.$list[0]');

  // 2.const collection
  var constantList = const[1, 2, 3];
  // constantList[1] = 5; Error:Cannot modify an unmodifiable list
  print('2.constantList = $constantList');

  // 3. spread operator (...) and null-aware spread operator (...?)
  var list2 = [0, ...list];
  print('3.spread operator: list2.count = ${list2.length}'); // 4

  var listNull;
  var list3 = [0, ...?listNull];
  print('  null-aware spread operator: list3.count = ${list3.length}'); // 1

  // 4.collection if
  var promoActive = true;
  var nav =[
    'Home',
    'Furniture',
    'Plants',
    if (promoActive) 'Outlet'
  ];
  print('4.cllection if (true): nav.length = ${nav.length}');
  promoActive = false;
  var nav1 = [if (promoActive) 'Outlet'];
  print('  cllection if (false): nav.length = ${nav.length} \n nav1.length = ${nav1.length}');

  // 5.collection for
  var listOfInts = [1, 2, 3];
  var listOfString = [
    "#0",
    for (var i in listOfInts) '#$i',
  ];
  print('5.collection for: listOfString = $listOfString');
}
