import 'package:jobber/models/jobseeker.dart';
import 'package:jobber/models/language.dart';

class Languagespoken {
  int _id;
  Jobseeker _jobseeker;
  Language _language;
  String _languageLevel;

  Languagespoken(this._id);

  Languagespoken.name(
      this._id, this._jobseeker, this._language, this._languageLevel);

  String get languageLevel => _languageLevel;

  set languageLevel(String value) {
    _languageLevel = value;
  }

  Language get language => _language;

  set language(Language value) {
    _language = value;
  }

  Jobseeker get jobseeker => _jobseeker;

  set jobseeker(Jobseeker value) {
    _jobseeker = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
