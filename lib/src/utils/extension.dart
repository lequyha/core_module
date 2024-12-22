import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';

extension BuildContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => theme.textTheme;

  ColorScheme get colorScheme => theme.colorScheme;

  DefaultTextStyle get defaultTextStyle => DefaultTextStyle.of(this);

  MediaQueryData get mediaQuery => MediaQuery.of(this);

  NavigatorState get navigator => Navigator.of(this);

  FocusScopeNode get focusScope => FocusScope.of(this);

  ScaffoldState get scaffold => Scaffold.of(this);

  ScaffoldMessengerState get scaffoldMessenger => ScaffoldMessenger.of(this);

  AppLocalizations? get appLocalizations => AppLocalizations.of(this);
}

extension ListExtensions<T> on List<T> {
  /// Returns the first element that satisfies the [test], or null if none is found.
  T? firstWhereOrNull(bool Function(T element) test) {
    for (T element in this) {
      if (test(element)) {
        return element;
      }
    }
    return null;
  }
}

extension StringDateTimeExtension on String {
  /// Convert string to DateTime based on the provided [inputFormat].
  /// Throws a [FormatException] if parsing fails.
  DateTime? toDateTime({String inputFormat = 'yyyy-MM-dd HH:mm:ss'}) {
    try {
      final formatter = DateFormat(inputFormat);
      return formatter.parse(this);
    } catch (_) {
      return null;
    }
  }

  /// Convert string to a formatted date string based on [inputFormat] and [outputFormat].
  /// Returns `null` if parsing fails.
  String? toFormattedDate({
    String inputFormat = 'yyyy-MM-dd HH:mm:ss',
    String outputFormat = 'HH:mm dd/MM/yyyy',
  }) {
    try {
      final dateTime = toDateTime(inputFormat: inputFormat);
      if (dateTime != null) {
        return DateFormat(outputFormat).format(dateTime);
      }
      return null;
    } catch (_) {
      return null;
    }
  }
}

extension IndexedIterable<E> on Iterable<E> {
  Iterable<T> mapIndexed<T>(T Function(E e, int i) f) {
    var i = 0;
    return map((e) => f(e, i++));
  }
}
