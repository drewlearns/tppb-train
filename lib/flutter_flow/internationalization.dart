import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() =>
      ['en', 'es', 'fr', 'tl', 'zh_Hans', 'zh_Hant', 'ru'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
    String? frText = '',
    String? tlText = '',
    String? zh_HansText = '',
    String? zh_HantText = '',
    String? ruText = '',
  }) =>
      [
        enText,
        esText,
        frText,
        tlText,
        zh_HansText,
        zh_HantText,
        ruText
      ][languageIndex] ??
      '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Login
  {
    '6zhemcqt': {
      'en': 'Sign Up',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'tlf7yiuz': {
      'en': 'Welcome,\nSign up below to start budgeting like a Pro!',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'iawuw28l': {
      'en': 'Email Address',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'gakmsl2l': {
      'en': 'First Name',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'df5wa8q3': {
      'en': 'Last Name',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'ctiju6eq': {
      'en': 'New Password',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'pwbg6n4g': {
      'en': 'Confirm Password',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'bwxngpq0': {
      'en': 'Marketing',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'h0ovelqk': {
      'en': 'Opt-In to pigs and marketing in your inbox!',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'ble29zwu': {
      'en': 'Sign Up',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'k4qxkjcy': {
      'en': 'Terms',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '88nldcqd': {
      'en': 'Privacy',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'j424s7ln': {
      'en': 'Legal',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'aiqn1km5': {
      'en': 'Disclaimer: The Purple Piggy Bank LLC Is Not A Bank',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'm1x0c8eo': {
      'en': 'Sign In',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'wap3zbs6': {
      'en': 'Welcome Back! \nSign In below to get started',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '6nskejwt': {
      'en': 'Email Address',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'ms6j5kyn': {
      'en': 'Password',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'ca8eqzrn': {
      'en': 'Sign In',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'vop441t3': {
      'en': 'Terms',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'm0gm5avj': {
      'en': 'Privacy',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'c0yvqsyg': {
      'en': 'Legal',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'lpr4l9ey': {
      'en': 'Disclaimer: The Purple Piggy Bank LLC Is Not A Bank',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '7v1ncahg': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
  },
  // Ledger
  {
    'jgzyzv29': {
      'en': 'Please select...',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '8s3qeceg': {
      'en': 'Search for an item...',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'gglezfk1': {
      'en': 'Budget',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '39hyuua5': {
      'en': 'Description',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'ejtj56hb': {
      'en': '07-23-2024',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'ziifs50j': {
      'en': '-',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'wo6zryqs': {
      'en': '\$99,999.99',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '3y2e7uw4': {
      'en': 'Hello World',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'r7hgej1f': {
      'en': 'Ledger',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '73lkrwlj': {
      'en': 'Ledger',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
  },
  // Bills
  {
    'zuxkjjxf': {
      'en': 'Bills',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
  },
  // Incomes
  {
    'jm9ucla1': {
      'en': 'Income',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
  },
  // More
  {
    '7h8gopcv': {
      'en': 'More',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '6mrnu68q': {
      'en': 'More',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
  },
  // Threshold
  {
    'xrno1jb9': {
      'en': 'Threshold',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
  },
  // SalesPage
  {
    'qqz4s1wh': {
      'en': 'Silly Name, Serious Budgeting',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'ide3jysl': {
      'en': 'Share and Collaborate on your Budget',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    's1tjrz0e': {
      'en': 'Export Reports to CSV and QBB',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'fez1nrmg': {
      'en': 'Easily keep your ledger up to date',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'f1few2ma': {
      'en': 'Never miss a bill! Get bill reminders!',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'dk1yaqrh': {
      'en': 'Bill Password Manager',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'cffzoh25': {
      'en': 'Monthly',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'htpc9bto': {
      'en': 'Full Access \$2.99/Month',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'w05zpioh': {
      'en': 'Annual',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'j69lzulh': {
      'en': 'Full Access \$29.99/Year - 2 Months Free',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'c6yc0uex': {
      'en': 'Continue',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'hmhu8zt6': {
      'en': 'Restore',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'jydlwx7d': {
      'en': 'Terms',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '1qo0zdkn': {
      'en': 'Privacy',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'qe088kia': {
      'en': 'Home',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
  },
  // Miscellaneous
  {
    '0vgxcamc': {
      'en':
          'In order to take a picture of a receipt, this app requires permissions for camera access',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '9xgeywo0': {
      'en':
          'In order to add a picture of a receipt from your photo library, this app requires permissions to your photo library.',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'by5u3r2k': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'ero1sm01': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'g7ntb2hh': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '6upbbx5y': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'va57impl': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'xxhu6go8': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '4to612do': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '6ko7tmcw': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'kjw0xu08': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '8ug73h94': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'yp33rmps': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'ccjyrpwd': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'sycgo71p': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '36ab0wbi': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'mrx29hyd': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'rkxari8d': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'jc1aoajd': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'hp2k3ef9': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '2psfuflt': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'gw3uu1bb': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    '0n1z5jy9': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'uwjt06wq': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'qzmhfpp3': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'rudz437g': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
    'ti8mv0di': {
      'en': '',
      'es': '',
      'fr': '',
      'ru': '',
      'tl': '',
      'zh_Hans': '',
      'zh_Hant': '',
    },
  },
].reduce((a, b) => a..addAll(b));
