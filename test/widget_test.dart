// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:TestApp/pages/LoginPage.dart';


void main() {
  test('empty email return error string', () {
  var result = EmailFieldValidator.validate('');
  expect(result, 'Email can\'t be empty');

  });
  test('non empty email return null', () {
  var result = EmailFieldValidator.validate('email');
  expect(result, null);

  });
}
