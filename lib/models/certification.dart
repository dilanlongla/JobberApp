import 'package:jobber/models/jobseeker.dart';

class Certification {
  int _id;
  String _name;
  String _organisation;
  DateTime _issueDate;
  DateTime _expiryDate;
  String _credentialId;
  String _credentialUrl;
  Jobseeker _jobseeker;

  Certification(this._id);

  Certification.name(
      this._id,
      this._name,
      this._organisation,
      this._issueDate,
      this._expiryDate,
      this._credentialId,
      this._credentialUrl,
      this._jobseeker);

  Jobseeker get jobseeker => _jobseeker;

  set jobseeker(Jobseeker value) {
    _jobseeker = value;
  }

  String get credentialUrl => _credentialUrl;

  set credentialUrl(String value) {
    _credentialUrl = value;
  }

  String get credentialId => _credentialId;

  set credentialId(String value) {
    _credentialId = value;
  }

  DateTime get expiryDate => _expiryDate;

  set expiryDate(DateTime value) {
    _expiryDate = value;
  }

  DateTime get issueDate => _issueDate;

  set issueDate(DateTime value) {
    _issueDate = value;
  }

  String get organisation => _organisation;

  set organisation(String value) {
    _organisation = value;
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
