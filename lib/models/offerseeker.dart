import 'package:jobber/models/joboffer.dart';
import 'package:jobber/models/jobseeker.dart';

class Offerseeker {
  int _id;
  Joboffer _joboffer;
  Jobseeker _jobseeker;
  bool _companyReview;
  bool _seekerReview;
  DateTime _interviewDate;

  Offerseeker(this._seekerReview);

  Offerseeker.name(this._id, this._joboffer, this._jobseeker,
      this._companyReview, this._seekerReview, this._interviewDate);

  DateTime get interviewDate => _interviewDate;

  set interviewDate(DateTime value) {
    _interviewDate = value;
  }

  bool get seekerReview => _seekerReview;

  set seekerReview(bool value) {
    _seekerReview = value;
  }

  bool get companyReview => _companyReview;

  set companyReview(bool value) {
    _companyReview = value;
  }

  Jobseeker get jobseeker => _jobseeker;

  set jobseeker(Jobseeker value) {
    _jobseeker = value;
  }

  Joboffer get joboffer => _joboffer;

  set joboffer(Joboffer value) {
    _joboffer = value;
  }

  int get id => _id;

  set id(int value) {
    _id = value;
  }
}
