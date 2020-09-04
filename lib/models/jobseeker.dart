import 'package:jobber/models/certification.dart';
import 'package:jobber/models/education.dart';
import 'package:jobber/models/experience.dart';
import 'package:jobber/models/languagespoken.dart';
import 'package:jobber/models/offerseeker.dart';

class Jobseeker {
  String _id;
  String _firstname;
  String _lastname;
  String _email;
  int _tel;
  String _facebook;
  String _twitter;
  String _website;
  String _resume;
  DateTime _dateOfBirth;
  String _gender;
  String _profilePhoto;
  String _code;
  String _country;
  String _town;
  String _street;
  List<Certification> _certifications;
  List<Offerseeker> _offerseekers;
  List<Education> _educations;
  List<Experience> _experiences;
  List<Languagespoken> _languagespoken;

  Jobseeker(this._id);

  Jobseeker.name(
      this._id,
      this._firstname,
      this._lastname,
      this._email,
      this._tel,
      this._facebook,
      this._twitter,
      this._website,
      this._resume,
      this._dateOfBirth,
      this._gender,
      this._profilePhoto,
      this._code,
      this._country,
      this._town,
      this._street,
      this._certifications,
      this._offerseekers,
      this._educations,
      this._experiences,
      this._languagespoken);

  List<Languagespoken> get languagespoken => _languagespoken;

  set languagespoken(List<Languagespoken> value) {
    _languagespoken = value;
  }

  List<Experience> get experiences => _experiences;

  set experiences(List<Experience> value) {
    _experiences = value;
  }

  List<Education> get educations => _educations;

  set educations(List<Education> value) {
    _educations = value;
  }

  List<Offerseeker> get offerseekers => _offerseekers;

  set offerseekers(List<Offerseeker> value) {
    _offerseekers = value;
  }

  List<Certification> get certifications => _certifications;

  set certifications(List<Certification> value) {
    _certifications = value;
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

  String get profilePhoto => _profilePhoto;

  set profilePhoto(String value) {
    _profilePhoto = value;
  }

  String get gender => _gender;

  set gender(String value) {
    _gender = value;
  }

  DateTime get dateOfBirth => _dateOfBirth;

  set dateOfBirth(DateTime value) {
    _dateOfBirth = value;
  }

  String get resume => _resume;

  set resume(String value) {
    _resume = value;
  }

  String get website => _website;

  set website(String value) {
    _website = value;
  }

  String get twitter => _twitter;

  set twitter(String value) {
    _twitter = value;
  }

  String get facebook => _facebook;

  set facebook(String value) {
    _facebook = value;
  }

  int get tel => _tel;

  set tel(int value) {
    _tel = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  String get lastname => _lastname;

  set lastname(String value) {
    _lastname = value;
  }

  String get firstname => _firstname;

  set firstname(String value) {
    _firstname = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }
}
