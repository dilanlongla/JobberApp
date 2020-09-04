class Experience {
  int _id;
  String _title;
  int _tel;
  String _email;
  String _company;
  String _description;
  String _country;
  String _town;
  String _street;
  DateTime _startDate;
  DateTime _endDate;

  Experience(this._id);

  Experience.name(
      this._id,
      this._title,
      this._tel,
      this._email,
      this._company,
      this._description,
      this._country,
      this._town,
      this._street,
      this._startDate,
      this._endDate);

  DateTime get endDate => _endDate;

  set endDate(DateTime value) {
    _endDate = value;
  }

  DateTime get startDate => _startDate;

  set startDate(DateTime value) {
    _startDate = value;
  }

  String get street => _street;

  set street(String value) {
    _street = value;
  }

  String get town => _town;

  set town(String value) {
    _town = value;
  }

  String get country => _country;

  set country(String value) {
    _country = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  String get company => _company;

  set company(String value) {
    _company = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  int get tel => _tel;

  set tel(int value) {
    _tel = value;
  }

  String get title => _title;

  set title(String value) {
    _title = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
