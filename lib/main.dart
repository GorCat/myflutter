// import 'package:flutter/material.dart';

void main() {
  maps();
}

// === 3.maps ===
void maps() {
  // map: key-value 无序集合

  // 1.init
  var gifts = {
    // key: value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 'golen rings'
  }; // Map<String: String>

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  }; // Map<Int: String>

  // 2.add a key-value pair
  gifts['first'] = 'partridge';
  nobleGases[2] = 'neon';

  // 3.if you look for a key that isn't in a map, you get a null in return.
  var gifts1 = {'first': 'partiridge'};
  assert(gifts1['fifth'] == null);

  // 4.use length to get the number of key-value pairs in the map:
  print('4.length = ${gifts1.length}');

  // 5.const map
  final constantMap = const {
    2: 'helium',
    10: 'neon'
  };
  // constantMap[2] = 'Helium'l // Uncommenting this causes an error

  // 6.spread operator (...) & null-aware spread operator (...?)
  var elements = {0: 'spread operator', ...constantMap};
  print('6.$elements');

  var nullMap;
  elements = {0: 'null-aware spread operator', ...?nullMap};
  print('6.$elements');

  // 7. collection if
  elements = {
    0: 'collection if',
    if (constantMap[2] == 'helium') 1: 'helium',
  };
  print('7.$elements');

  // 8. collection for
  var array = [1, 2, 3, 4];
  elements = {
    0: 'colleciton for',
    for (var i in array) i : '$i',
  };
  print('8.$elements');

}

// === 2.sets ===
void sets() {
  // set：无序且唯一值的集合

  // 1.init
  var halogens = {'fluorine', 'chlorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  var names = <String>{};
  var numbers = {1, 2, 3};
  // Set<String> halogens = {}; // dThis works, too.

  // {} defaults to the Map type, Map<dynamic: dynamic>.
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

  // 4.spread operator (...) and null-aware spread operator (...?)
  elements = {'spread operator', ...constantSet};
  print('4.$elements');

  var nullsets;
  names = {'null-aware spread operator', ...?nullsets};
  print('4.$names');

  // 5.collection if
  numbers = {
    1,
    2,
    if (numbers.contains(3)) 4,
    if (numbers.contains(4)) 5,
  };
  print('5.$numbers');

  // 6.collection for
  var array = [1, 2, 3, 4];
  numbers = {
    for (var i in array) i,
    10,
  };
  print('6.$numbers');
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
