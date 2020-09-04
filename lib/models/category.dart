import 'package:flutter/foundation.dart';

class Category {
  int _id;
  String _name;

  Category(this._id);

  Category.name(this._id, this._name);

  int get id => _id;

  set id(int value) {
    _id = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}
