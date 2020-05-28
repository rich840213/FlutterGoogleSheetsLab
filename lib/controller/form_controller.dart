import 'dart:convert';

import 'package:fluttergooglesheetslab/model/form.dart';
import 'package:http/http.dart' as http;

class FormController {
  // Callback function to give response of status of current request.
  final void Function(String) _callback;

  // Google App Script Web URL.
  static const String URL =
      "https://script.google.com/macros/s/AKfycbxle7sk-E1Zk3jTVGUunwEc-oA__bJ0vbiOVGS_4DqGd4hzfwY/exec";

  // Success Status Message
  static const STATUS_SUCCESS = "SUCCESS";

  FormController(this._callback);

// Async function which saves feedback, parses [feedbackForm] parameters
// and sends HTTP GET request on [URL]. On successful response, [callback] is called.
  void submitForm(FeedbackForm feedbackForm) async {
    try {
      await http.get(URL + feedbackForm.toParams()).then((value) {
        _callback(jsonDecode(value.body)['status']);
      });
    } catch (e) {
      print(e);
    }
  }
}
