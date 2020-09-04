class Education {
  int _id;
  String _institution;
  String _major;
  String _degree;
  String _country;
  String _town;
  String _street;
  String _description;
  DateTime _startDate;
  DateTime _endDate;

  Education(this._id);

  Education.name(
      this._id,
      this._institution,
      this._major,
      this._degree,
      this._country,
      this._town,
      this._street,
      this._description,
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

  String get description => _description;

  set description(String value) {
    _description = value;
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

  String get degree => _degree;

  set degree(String value) {
    _degree = value;
  }

  String get major => _major;

  set major(String value) {
    _major = value;
  }

  String get institution => _institution;

  set institution(String value) {
    _institution = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
