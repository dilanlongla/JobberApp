class Language {
  int _id;
  int _name;

  Language(this._name);

  Language.name(this._id, this._name);

  int get name => _name;

  set name(int value) {
    _name = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
