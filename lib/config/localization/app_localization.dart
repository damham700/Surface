import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;

class AppLocalization {
  static const LocalizationsDelegate<AppLocalization> delegate = _AppLocalizationDelegate();
  
  static const List<Locale> supportedLocales = [
    Locale('en'),
    Locale('ar'),
  ];
  
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = [
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];
  
  final Locale locale;
  
  AppLocalization(this.locale);
  
  static AppLocalization of(BuildContext context) {
    return Localizations.of<AppLocalization>(context, AppLocalization) ?? AppLocalization(const Locale('en'));
  }
  
  late Map<String, String> _localizedStrings;
  
  Future<bool> load() async {
    _localizedStrings = _getTranslations(locale.languageCode);
    return true;
  }
  
  String translate(String key) {
    return _localizedStrings[key] ?? key;
  }
  
  Map<String, String> _getTranslations(String languageCode) {
    if (languageCode == 'ar') {
      return _arTranslations;
    }
    return _enTranslations;
  }
  
  static const Map<String, String> _enTranslations = {
    'app_name': 'Surface',
    'login': 'Login',
    'register': 'Register',
    'email': 'Email',
    'password': 'Password',
    'forgot_password': 'Forgot Password?',
    'netflix': 'Netflix',
    'disney': 'Disney+',
    'subscription': 'Subscription',
    'payment': 'Payment',
    'settings': 'Settings',
    'profile': 'Profile',
    'logout': 'Logout',
    'language': 'Language',
    'dark_mode': 'Dark Mode',
    'notifications': 'Notifications',
    'support': 'Support',
  };
  
  static const Map<String, String> _arTranslations = {
    'app_name': 'سرفيس',
    'login': 'دخول',
    'register': 'تسجيل',
    'email': 'البريد الإلكتروني',
    'password': 'كلمة المرور',
    'forgot_password': 'هل نسيت كلمة المرور؟',
    'netflix': 'نتفليكس',
    'disney': 'ديزني+',
    'subscription': 'الاشتراك',
    'payment': 'الدفع',
    'settings': 'الإعدادات',
    'profile': 'الملف الشخصي',
    'logout': 'تسجيل خروج',
    'language': 'اللغة',
    'dark_mode': 'الوضع الداكن',
    'notifications': 'الإشعارات',
    'support': 'الدعم',
  };
}

class _AppLocalizationDelegate extends LocalizationsDelegate<AppLocalization> {
  const _AppLocalizationDelegate();
  
  @override
  bool isSupported(Locale locale) {
    return AppLocalization.supportedLocales.contains(locale);
  }
  
  @override
  Future<AppLocalization> load(Locale locale) async {
    AppLocalization localization = AppLocalization(locale);
    await localization.load();
    return localization;
  }
  
  @override
  bool shouldReload(LocalizationsDelegate<AppLocalization> old) => false;
}
