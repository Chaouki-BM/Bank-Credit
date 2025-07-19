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
    final name = (locale.countryCode?.isEmpty ?? false)
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

  /// `Bank Credit powred by`
  String get splashText {
    return Intl.message(
      'Bank Credit powred by',
      name: 'splashText',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get Skip {
    return Intl.message('Skip', name: 'Skip', desc: '', args: []);
  }

  /// `Get started`
  String get Get_started {
    return Intl.message('Get started', name: 'Get_started', desc: '', args: []);
  }

  /// `next`
  String get next {
    return Intl.message('next', name: 'next', desc: '', args: []);
  }

  /// `Welcome to BankCredit`
  String get SplashT1 {
    return Intl.message(
      'Welcome to BankCredit',
      name: 'SplashT1',
      desc: '',
      args: [],
    );
  }

  /// `Manage your money, credit, and future — all in one secure app.`
  String get SsubT1 {
    return Intl.message(
      'Manage your money, credit, and future — all in one secure app.',
      name: 'SsubT1',
      desc: '',
      args: [],
    );
  }

  /// `Instant Access to Credit`
  String get SplashT2 {
    return Intl.message(
      'Instant Access to Credit',
      name: 'SplashT2',
      desc: '',
      args: [],
    );
  }

  /// `Apply for loans, manage your credit cards, and track limits in real time.`
  String get SsubT2 {
    return Intl.message(
      'Apply for loans, manage your credit cards, and track limits in real time.',
      name: 'SsubT2',
      desc: '',
      args: [],
    );
  }

  /// `Secure. Reliable. Always with You.`
  String get SplashT3 {
    return Intl.message(
      'Secure. Reliable. Always with You.',
      name: 'SplashT3',
      desc: '',
      args: [],
    );
  }

  /// `Your data is protected with bank-grade encryption and real-time notifications keep you informed.`
  String get SsubT3 {
    return Intl.message(
      'Your data is protected with bank-grade encryption and real-time notifications keep you informed.',
      name: 'SsubT3',
      desc: '',
      args: [],
    );
  }

  /// `Bank Credit`
  String get LoginT {
    return Intl.message('Bank Credit', name: 'LoginT', desc: '', args: []);
  }

  /// `Login with`
  String get LoginWith {
    return Intl.message('Login with', name: 'LoginWith', desc: '', args: []);
  }

  /// `Welcome to BankCredit !`
  String get WelcomeLogin {
    return Intl.message(
      'Welcome to BankCredit !',
      name: 'WelcomeLogin',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get balance {
    return Intl.message('Balance', name: 'balance', desc: '', args: []);
  }

  /// `Total Request`
  String get totalRequest {
    return Intl.message(
      'Total Request',
      name: 'totalRequest',
      desc: '',
      args: [],
    );
  }

  /// `Accepted`
  String get accepted {
    return Intl.message('Accepted', name: 'accepted', desc: '', args: []);
  }

  /// `Account Number`
  String get accountNumber {
    return Intl.message(
      'Account Number',
      name: 'accountNumber',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account {
    return Intl.message('Account', name: 'account', desc: '', args: []);
  }

  /// `Enter your number`
  String get enterNumber {
    return Intl.message(
      'Enter your number',
      name: 'enterNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter your address`
  String get enterAddress {
    return Intl.message(
      'Enter your address',
      name: 'enterAddress',
      desc: '',
      args: [],
    );
  }

  /// `Enter your name`
  String get enterName {
    return Intl.message(
      'Enter your name',
      name: 'enterName',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message('Login', name: 'login', desc: '', args: []);
  }

  /// `Refused`
  String get refused {
    return Intl.message('Refused', name: 'refused', desc: '', args: []);
  }

  /// `Pending`
  String get pending {
    return Intl.message('Pending', name: 'pending', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
      Locale.fromSubtags(languageCode: 'fr'),
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
