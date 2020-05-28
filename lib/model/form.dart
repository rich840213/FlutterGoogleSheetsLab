/// FeedbackForm is a data class which stores data fields of Feedback.
class FeedbackForm {
  final String _name;
  final String _email;
  final String _phoneNo;
  final String _feedback;
  final String _sex;

  FeedbackForm(
      this._name, this._email, this._phoneNo, this._feedback, this._sex);

  // Method to make GET parameters.
  String toParams() =>
      "?name=$_name&email=$_email&phoneNo=$_phoneNo&feedback=$_feedback&sex=$_sex";
}
