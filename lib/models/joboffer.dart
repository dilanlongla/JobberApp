import 'package:jobber/models/category.dart';
import 'package:jobber/models/offerseeker.dart';

class Joboffer {
  int _id;
  DateTime _startDate;
  DateTime _endDate;
  DateTime _postedDate;
  String _description;
  BigInt _salary;
  String _skill;
  bool _offerStatus;
  BigInt _longitude;
  BigInt _latitude;
  String _code;
  String _country;
  String _town;
  String _street;
  List<Category> _categories;
  List<Offerseeker> _offerseekers;

  Joboffer(this._latitude);

  Joboffer.name(
      this._id,
      this._startDate,
      this._endDate,
      this._postedDate,
      this._description,
      this._salary,
      this._skill,
      this._offerStatus,
      this._longitude,
      this._latitude,
      this._code,
      this._country,
      this._town,
      this._street,
      this._categories,
      this._offerseekers);

  List<Offerseeker> get offerseekers => _offerseekers;

  set offerseekers(List<Offerseeker> value) {
    _offerseekers = value;
  }

  List<Category> get categories => _categories;

  set categories(List<Category> value) {
    _categories = value;
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

  String get code => _code;

  set code(String value) {
    _code = value;
  }

  BigInt get latitude => _latitude;

  set latitude(BigInt value) {
    _latitude = value;
  }

  BigInt get longitude => _longitude;

  set longitude(BigInt value) {
    _longitude = value;
  }

  bool get offerStatus => _offerStatus;

  set offerStatus(bool value) {
    _offerStatus = value;
  }

  String get skill => _skill;

  set skill(String value) {
    _skill = value;
  }

  BigInt get salary => _salary;

  set salary(BigInt value) {
    _salary = value;
  }

  String get description => _description;

  set description(String value) {
    _description = value;
  }

  DateTime get postedDate => _postedDate;

  set postedDate(DateTime value) {
    _postedDate = value;
  }

  DateTime get endDate => _endDate;

  set endDate(DateTime value) {
    _endDate = value;
  }

  DateTime get startDate => _startDate;

  set startDate(DateTime value) {
    _startDate = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
