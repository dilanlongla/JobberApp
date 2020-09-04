import 'package:jobber/models/company.dart';
import 'package:jobber/models/joboffer.dart';
import 'package:jobber/models/operation.dart';

class Recruiter {
  String _id;
  Company _company;
  Recruiter _recruiter;
  String _firstName;
  String _lastName;
  int _tel;
  String _email;
  String _role;
  List<Joboffer> _joboffers;
  List<Recruiter> _recruiters;
  List<Operation> _operation;

  Recruiter(this._company);

  Recruiter.name(
      this._id,
      this._company,
      this._recruiter,
      this._firstName,
      this._lastName,
      this._tel,
      this._email,
      this._role,
      this._joboffers,
      this._recruiters,
      this._operation);

  List<Operation> get operation => _operation;

  set operation(List<Operation> value) {
    _operation = value;
  }

  List<Recruiter> get recruiters => _recruiters;

  set recruiters(List<Recruiter> value) {
    _recruiters = value;
  }

  List<Joboffer> get joboffers => _joboffers;

  set joboffers(List<Joboffer> value) {
    _joboffers = value;
  }

  String get role => _role;

  set role(String value) {
    _role = value;
  }

  String get email => _email;

  set email(String value) {
    _email = value;
  }

  int get tel => _tel;

  set tel(int value) {
    _tel = value;
  }

  String get lastName => _lastName;

  set lastName(String value) {
    _lastName = value;
  }

  String get firstName => _firstName;

  set firstName(String value) {
    _firstName = value;
  }

  Recruiter get recruiter => _recruiter;

  set recruiter(Recruiter value) {
    _recruiter = value;
  }

  Company get company => _company;

  set company(Company value) {
    _company = value;
  }

  String get id => _id;

  set id(String value) {
    _id = value;
  }
}
