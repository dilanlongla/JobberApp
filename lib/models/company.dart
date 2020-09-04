class Company {
  int _id;
  String _name;
  String _description;
  String _logo;

  Company(this._id);

  Company.name(this._id, this._name, this._description, this._logo);

  String get logo => _logo;

  set logo(String value) {
    _logo = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
