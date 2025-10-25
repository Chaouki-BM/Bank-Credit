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

  /// `Home`
  String get Home {
    return Intl.message('Home', name: 'Home', desc: '', args: []);
  }

  /// `Calculate`
  String get Calculate {
    return Intl.message('Calculate', name: 'Calculate', desc: '', args: []);
  }

  /// `Profile`
  String get Profile {
    return Intl.message('Profile', name: 'Profile', desc: '', args: []);
  }

  /// `Account Settings`
  String get account_settings {
    return Intl.message(
      'Account Settings',
      name: 'account_settings',
      desc: '',
      args: [],
    );
  }

  /// `Call the bank`
  String get call_the_bank {
    return Intl.message(
      'Call the bank',
      name: 'call_the_bank',
      desc: '',
      args: [],
    );
  }

  /// `Online support`
  String get online_support {
    return Intl.message(
      'Online support',
      name: 'online_support',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message('Dashboard', name: 'dashboard', desc: '', args: []);
  }

  /// `Profile Information`
  String get profile_information {
    return Intl.message(
      'Profile Information',
      name: 'profile_information',
      desc: '',
      args: [],
    );
  }

  /// `Linked Card`
  String get linked_card {
    return Intl.message('Linked Card', name: 'linked_card', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Log out`
  String get logout {
    return Intl.message('Log out', name: 'logout', desc: '', args: []);
  }

  /// `Guest`
  String get Guest {
    return Intl.message('Guest', name: 'Guest', desc: '', args: []);
  }

  /// `English`
  String get en {
    return Intl.message('English', name: 'en', desc: '', args: []);
  }

  /// `French`
  String get fr {
    return Intl.message('French', name: 'fr', desc: '', args: []);
  }

  /// `Arabic`
  String get ar {
    return Intl.message('Arabic', name: 'ar', desc: '', args: []);
  }

  /// `Loan`
  String get Loan {
    return Intl.message('Loan', name: 'Loan', desc: '', args: []);
  }

  /// `Term`
  String get Term {
    return Intl.message('Term', name: 'Term', desc: '', args: []);
  }

  /// `Interest`
  String get Interest {
    return Intl.message('Interest', name: 'Interest', desc: '', args: []);
  }

  /// `Monthly Payment`
  String get MonthlyP {
    return Intl.message(
      'Monthly Payment',
      name: 'MonthlyP',
      desc: '',
      args: [],
    );
  }

  /// `DT`
  String get DT {
    return Intl.message('DT', name: 'DT', desc: '', args: []);
  }

  /// `per month`
  String get permonth {
    return Intl.message('per month', name: 'permonth', desc: '', args: []);
  }

  /// `Scan`
  String get Scan {
    return Intl.message('Scan', name: 'Scan', desc: '', args: []);
  }

  /// `Your identity and personal data are securely protected.`
  String get Subtitle1Scan {
    return Intl.message(
      'Your identity and personal data are securely protected.',
      name: 'Subtitle1Scan',
      desc: '',
      args: [],
    );
  }

  /// `Fast, simple, and 100% paperless.`
  String get Subtitle2Scan {
    return Intl.message(
      'Fast, simple, and 100% paperless.',
      name: 'Subtitle2Scan',
      desc: '',
      args: [],
    );
  }

  /// `Scan your document`
  String get titelScan {
    return Intl.message(
      'Scan your document',
      name: 'titelScan',
      desc: '',
      args: [],
    );
  }

  /// `Upload`
  String get upload {
    return Intl.message('Upload', name: 'upload', desc: '', args: []);
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
