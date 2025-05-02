// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `First Lesson: introduction to artificial intelligence world from zero to hero 2025`
  String get lessonTitle {
    return Intl.message(
      'First Lesson: introduction to artificial intelligence world from zero to hero 2025',
      name: 'lessonTitle',
      desc: '',
      args: [],
    );
  }

  /// `1h 30min`
  String get lessonDuration {
    return Intl.message('1h 30min', name: 'lessonDuration', desc: '', args: []);
  }

  /// `Search for a course`
  String get courseSearch {
    return Intl.message(
      'Search for a course',
      name: 'courseSearch',
      desc: '',
      args: [],
    );
  }

  /// `Enroll now`
  String get enrollButtton {
    return Intl.message(
      'Enroll now',
      name: 'enrollButtton',
      desc: '',
      args: [],
    );
  }

  /// `What do you\nwant to learn \nToday?`
  String get homeWidgetTitle {
    return Intl.message(
      'What do you\nwant to learn \nToday?',
      name: 'homeWidgetTitle',
      desc: '',
      args: [],
    );
  }

  /// `Discover courses`
  String get discovreButton {
    return Intl.message(
      'Discover courses',
      name: 'discovreButton',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
