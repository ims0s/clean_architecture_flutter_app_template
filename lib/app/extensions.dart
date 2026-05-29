// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

extension NonNullString on String? {
  String orEmpty() {
    if (this == null)
      return "";
    else
      return this!;
  }
}

extension NonNullDynamic on dynamic {
  String orEmpty() {
    if (this == null)
      return {}.orEmpty();
    else
      return this!;
  }
}

extension NonNullInteger on int? {
  int orZero() {
    if (this == null)
      return 0;
    else
      return this!;
  }
}

extension NonNullNum on num? {
  num orZero() {
    if (this == null)
      return 0;
    else
      return this!;
  }
}

extension NonNullDouble on double? {
  double orDoubleZero() {
    if (this == null)
      return 0.0;
    else
      return this!;
  }
}

extension NonNullBoolean on bool? {
  bool orFalse() {
    if (this == null)
      return false;
    else
      return this!;
  }
}

extension NonNullBooleanTrue on bool? {
  bool orTrue() {
    if (this == null)
      return true;
    else
      return this!;
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}

extension PhoneNumberValidation on String {
  bool isMobileNumberValid() {
    String regexPattern = r'^(?:[+0][1-9])?[0-9]{10,12}$';
    var regExp = RegExp(regexPattern);

    if (length == 0) {
      return false;
    } else if (regExp.hasMatch(this)) {
      return true;
    }
    return false;
  }
}

extension FirstWhereExt<T> on List<T> {
  /// The first element satisfying [test], or `null` if there are none.
  T? firstWhereOrNull(bool Function(T element) test) {
    for (final element in this) {
      if (test(element)) return element;
    }
    return null;
  }
}

//select all text in field when clicked
extension TextEditingControllerExt on TextEditingController {
  void selectAll() {
    if (text.isEmpty) return;
    selection = TextSelection(baseOffset: 0, extentOffset: text.length);
  }
}

//DateTime
extension DateTimeExt on DateTime {
  String convertToApiFormat() {
    return DateFormat('yyyy-MM-ddTHH:mm:ss').format(this);
  }

  String convertToString() {
    var formatted = DateFormat('yyyy-MM-ddTHH:mm:ss').format(this);
    return formatted.converDatetimeString();
  }
}

extension StringDateTimeExt on String? {
  String converDatetimeString() {
    if (this == null || this == '') {
      return '';
    }
    try {
      var parsed = DateFormat('yyyy-MM-ddTHH:mm:ss').parse(this!);
      // var stringVal = DateFormat('yMd').format(parsed);
      // var stringVal = DateFormat('dd/MM/yyyy').format(parsed);
      var stringVal = DateFormat('d/M/yyyy').format(parsed);
      return stringVal;
    } catch (ex) {
      return 'Error';
    }
  }

  DateTime convertToDateTime() {
    var parsed = DateFormat('yyyy-MM-ddTHH:mm:ss').parse(this!);
    return parsed;
  }

  String formatToChatTime() {
    if (this == null || this == '') {
      return '';
    }
    try {
      DateTime parsed;
      try {
        parsed = DateTime.parse(this!);
      } catch (_) {
        parsed = DateFormat('yyyy-MM-dd HH:mm:ss').parse(this!);
      }
      return DateFormat('hh:mm a').format(parsed);
    } catch (ex) {
      return this!;
    }
  }
}

extension NthOccurrenceOfSubstring on String {
  int nThIndexOf(String stringToFind, int n) {
    if (indexOf(stringToFind) == -1) return -1;
    if (n == 1) return indexOf(stringToFind);
    int subIndex = -1;
    while (n > 0) {
      subIndex = indexOf(stringToFind, subIndex + 1);
      n -= 1;
    }
    return subIndex;
  }

  bool hasNthOccurrence(String stringToFind, int n) {
    return nThIndexOf(stringToFind, n) != -1;
  }
}
