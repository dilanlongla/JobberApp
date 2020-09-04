import 'package:jobber/models/recruiter.dart';

class Operation {
  int _id;
  Recruiter _recruiter;
  String _action;
  String _target;
  DateTime dateTime;

  Operation(this.dateTime);

  Operation.name(
      this._id, this._recruiter, this._action, this._target, this.dateTime);

  String get target => _target;

  set target(String value) {
    _target = value;
  }

  String get action => _action;

  set action(String value) {
    _action = value;
  }

  Recruiter get recruiter => _recruiter;

  set recruiter(Recruiter value) {
    _recruiter = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
