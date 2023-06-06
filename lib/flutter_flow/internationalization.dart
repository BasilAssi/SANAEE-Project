import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['ar', 'en'];

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
    String? arText = '',
    String? enText = '',
  }) =>
      [arText, enText][languageIndex] ?? '';

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
    'gri19u31': {
      'ar': 'مرحبًا بعودتك',
      'en': 'Welcome Back',
    },
    '7vwo3gsa': {
      'ar': 'البريد الالكتروني ',
      'en': 'Email',
    },
    '6o89q7ja': {
      'ar': 'ادخل الايميل الخاص بك',
      'en': ' Enter your email here...',
    },
    '34tidz7y': {
      'ar': '',
      'en': '',
    },
    'ea9rckya': {
      'ar': 'كلمة المرور',
      'en': 'Password',
    },
    '8f46nx1d': {
      'ar': 'ادخل كلمة المرور ...',
      'en': 'Enter your password here...',
    },
    'ipd564oo': {
      'ar': '',
      'en': '',
    },
    '7ukcu0z9': {
      'ar': 'هل نسيت كلمة السر؟',
      'en': 'Forgot Password?',
    },
    '5vjc9znt': {
      'ar': 'تسجيل الدخول ',
      'en': 'Login',
    },
    '9ca5005i': {
      'ar': 'أو',
      'en': 'or',
    },
    'pqy3sthk': {
      'ar': 'تسجيل الدخول  بواسطة جوجل',
      'en': 'sign in with Google',
    },
    'o42qqman': {
      'ar': 'ليس لديك حساب؟',
      'en': 'Don\'t have  an account ?',
    },
    'r6pmbkj8': {
      'ar': 'أنشئ حساب',
      'en': 'Create Account',
    },
    'hwccov5i': {
      'ar': 'Home',
      'en': '',
    },
  },
  // MAINHomeCustomer
  {
    'vsaeov29': {
      'ar': 'Welcome',
      'en': '',
    },
    'taeeoz0g': {
      'ar': ' ',
      'en': '',
    },
  },
  // MAINSavedJobs
  {
    'a211198f': {
      'ar': 'الأعمال الخاصة بي',
      'en': 'My Jobs',
    },
    'ilubw22a': {
      'ar': 'الوظائف المقبولة',
      'en': 'Accepted jobs',
    },
    'dsq91la7': {
      'ar': 'الأعمال المنجزة ',
      'en': 'Work Performed',
    },
    'h25lrbj2': {
      'ar': ' ',
      'en': '',
    },
  },
  // MAIN_ProfileCustomer
  {
    'b9l8kjh7': {
      'ar': 'Switch to Dark Mode',
      'en': '',
    },
    'ehmwoa5b': {
      'ar': 'Switch to Light Mode',
      'en': '',
    },
    'qlu9nvs1': {
      'ar': 'السيرة الذاتية',
      'en': 'Bio',
    },
    'jjmx2lgp': {
      'ar': 'الايميل ',
      'en': 'Email',
    },
    'wpg67ray': {
      'ar': 'المدينة',
      'en': 'City',
    },
    '1vh063zf': {
      'ar': 'العنوان',
      'en': 'Address',
    },
  },
  // MAIN_Chat
  {
    'zm1cme8s': {
      'ar': 'Messages',
      'en': '',
    },
    'fr498yys': {
      'ar': '',
      'en': '',
    },
  },
  // DETAILS_Chat
  {
    'x3pb4o9n': {
      'ar': 'Home',
      'en': '',
    },
  },
  // JobPost_DetailsActual
  {
    'uenl02ze': {
      'ar': 'قدم للعمل ',
      'en': 'Apply to work',
    },
    'lfzwt8x5': {
      'ar': 'Home',
      'en': '',
    },
  },
  // JobPost_MyJob_Applicants
  {
    'wma7kda9': {
      'ar': 'Your Applicants',
      'en': '',
    },
    'hg9zia7x': {
      'ar': 'Home',
      'en': '',
    },
  },
  // forgotPassword
  {
    'kjwltbio': {
      'ar': 'Forgot Password',
      'en': '',
    },
    'ihpphlie': {
      'ar': 'Your Email',
      'en': '',
    },
    '7uq2lba4': {
      'ar': 'Please enter a valid email...',
      'en': '',
    },
    'ifxx3yld': {
      'ar':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
      'en': '',
    },
    '6tzetzky': {
      'ar': 'Send Reset Password',
      'en': '',
    },
    'xz7h2g8g': {
      'ar': 'Home',
      'en': '',
    },
  },
  // CreateJobCustomer
  {
    'ukzz8bd8': {
      'ar': 'إنشاء وظيفة',
      'en': 'Create Job Post',
    },
    'f8hlklae': {
      'ar': 'البلاط',
      'en': 'tiles',
    },
    'ilhz9ik4': {
      'ar': 'الكهرباء',
      'en': 'electrical',
    },
    '4ive5b1q': {
      'ar': 'حداد',
      'en': 'Smith',
    },
    'i66yxmwy': {
      'ar': 'نجار',
      'en': 'Carpenter',
    },
    'bohmm3kp': {
      'ar': 'سباك',
      'en': 'plumber',
    },
    'dxq6o4rl': {
      'ar': 'اعمال الالمنيوم',
      'en': 'Aluminum works',
    },
    'dqojfllq': {
      'ar': 'نوع الوظيفة',
      'en': 'Job Type',
    },
    'pw41jc3d': {
      'ar': '',
      'en': 'jhgfdsadfg',
    },
    'xkp861i0': {
      'ar': 'مسمى وظيفي',
      'en': 'Job title',
    },
    'u85bc950': {
      'ar': 'عنوان العمل ',
      'en': 'address',
    },
    'j2lianoh': {
      'ar': '',
      'en': '',
    },
    'pap7cb69': {
      'ar': 'وصف قصير للمنشور',
      'en': 'Short Description',
    },
    'pdxr2c8v': {
      'ar': 'السعر المقدر لإتمام العمل:',
      'en': 'Estimated price to complete the work',
    },
    'n60zdd0q': {
      'ar': '₪00,100',
      'en': '100,00₪',
    },
    '4ficbfr6': {
      'ar': '₪00,5000',
      'en': '5000,00₪',
    },
    'vd6abmr5': {
      'ar': 'إضافة صور للعمل ',
      'en': 'Add photos to work',
    },
    'px1bkt5b': {
      'ar': 'إنشاء منشور',
      'en': 'Create Post',
    },
    'qlzqz4zr': {
      'ar': 'Home',
      'en': '',
    },
  },
  // CraftsmanDetails
  {
    'z0so3i7x': {
      'ar': 'السيرة الذاتية',
      'en': 'Bio',
    },
    'lo9pu30k': {
      'ar': 'الايميل ',
      'en': 'Email',
    },
    'ehpn914b': {
      'ar': 'المدينة',
      'en': 'City',
    },
    '2jpip3s6': {
      'ar': 'العنوان',
      'en': 'Address',
    },
    'd9z7pjs8': {
      'ar': 'اقبل او ارفض  هذا الحرفي للعمل ',
      'en': 'Accept or reject this craftsman\n to work',
    },
    'dr2wx4gg': {
      'ar': 'قبول',
      'en': 'Accept',
    },
    'tk8wzu1t': {
      'ar': 'رفض',
      'en': ' Reject',
    },
    'p0z90s05': {
      'ar': 'مراسلة الحرفي ',
      'en': 'Message Craftsman',
    },
  },
  // SplashScreen
  {
    '1y336fcz': {
      'ar': '      مرحبا بك في صنايعي             ',
      'en':
          '    Welcome                                                                                 \n                    to  SANAEE ',
    },
    'twizprbt': {
      'ar': 'Home',
      'en': '',
    },
  },
  // Onboarding_Screens
  {
    '52ramgz3': {
      'ar': 'انجاز الاعمال باستخدام الهاتف',
      'en': 'Doing the work using Mobile',
    },
    '8pwxetwc': {
      'ar': 'تواصل مع الحرفي وتتبع العمل  \n            وانجز المزيد',
      'en': 'Connect with the craftsman, track the work and get more done',
    },
    'ls2yrw5x': {
      'ar': 'انشر الأعمال التي تحتاجها \nواحصل  على عروض عمل.',
      'en': 'Post projects and \nget proposals.',
    },
    'zefttcqs': {
      'ar': '    ابحث عن الافضل\nوقم باختياره لأداء العمل.',
      'en': 'Look for the best and choose it to perform the work.',
    },
    'f97m5tno': {
      'ar': 'انجاز الاعمال باستخدام الهاتف',
      'en': 'Doing the work using Mobile',
    },
    '24183xx4': {
      'ar': 'تواصل مع الحرفي وتتبع العمل \nوانجز المزيد',
      'en': 'Connect with the craftsman, track the work and get more done',
    },
    'izmkirho': {
      'ar': 'تسجيل الدخول',
      'en': 'Login',
    },
    'fjm217dc': {
      'ar': 'إنشاء حساب',
      'en': 'Register',
    },
    '5x86z4oh': {
      'ar': 'Home',
      'en': '',
    },
  },
  // select_your_role
  {
    'pmafikm6': {
      'ar': 'صنايعي',
      'en': '    SANAEE      ',
    },
    '892plwty': {
      'ar': 'حدد دورك داخل البرنامج',
      'en': 'select your role',
    },
    'mr7moivz': {
      'ar': 'الحرفي',
      'en': 'craftsman',
    },
    'p4kqkvet': {
      'ar': 'العميل',
      'en': 'customer',
    },
    'e4f99234': {
      'ar': 'Home',
      'en': '',
    },
  },
  // SignUp
  {
    'rwqq1oce': {
      'ar': 'Get Started',
      'en': '',
    },
    'a2k11ccq': {
      'ar': 'Use the form below to get started.',
      'en': '',
    },
    '85nurq4z': {
      'ar': 'البريد الالكتروني',
      'en': 'Email Address',
    },
    'anulj3b0': {
      'ar': 'ادخل البريد الإلكتروني',
      'en': 'Enter your email here...',
    },
    'bx5gqjwl': {
      'ar': 'كلمة المرور',
      'en': 'Password',
    },
    'eu199w5n': {
      'ar': 'كلمة المرور',
      'en': 'password',
    },
    'sezquagb': {
      'ar': 'تأكيد كلمة المرور',
      'en': 'Confirm Password',
    },
    'hib5iskd': {
      'ar': 'تأكيد كلمة المرور',
      'en': 'Confirm Password',
    },
    'hyweexye': {
      'ar': 'إنشاء حساب ',
      'en': 'Create Account',
    },
    'yl8038ku': {
      'ar': 'Use a social platform to continue',
      'en': '',
    },
    'vvjlhj4m': {
      'ar': 'Already have an account?',
      'en': '',
    },
    'ii7xq6ca': {
      'ar': 'Log In',
      'en': '',
    },
    'z08teily': {
      'ar': 'Home',
      'en': '',
    },
  },
  // createProfileNameStepOne
  {
    'b0muce5a': {
      'ar': 'الاسم الاول',
      'en': 'first name',
    },
    'w0w0vgpe': {
      'ar': 'الاسم الاول',
      'en': 'First Name',
    },
    'qppalhqq': {
      'ar': 'اسم الاب',
      'en': 'Name of the Father',
    },
    'hcdvvtn0': {
      'ar': 'اسم الأب',
      'en': 'Name of the Father',
    },
    '2abshufy': {
      'ar': 'اسم الجد',
      'en': 'Grandfather name',
    },
    '9bpppzbx': {
      'ar': 'اسم الجد',
      'en': 'Grandfather name',
    },
    'j1xausqc': {
      'ar': 'اسم العائلة',
      'en': 'Family name',
    },
    '3t0a6bly': {
      'ar': 'اسم العائلة',
      'en': 'family name',
    },
    'wk7dq0gn': {
      'ar': 'التالي',
      'en': 'continue',
    },
    'gdrznog6': {
      'ar': 'Home',
      'en': '',
    },
  },
  // createProfileNameAddresStepTwo
  {
    'pgn98b0i': {
      'ar': '',
      'en': '',
    },
    'na619d65': {
      'ar': 'رقم الهوية ',
      'en': 'Id number',
    },
    'a3rqbla0': {
      'ar': 'Option 1',
      'en': '',
    },
    'e1y9f93g': {
      'ar': 'رام الله ',
      'en': 'Ramlallah',
    },
    '38d42beq': {
      'ar': 'الأردن',
      'en': 'Jordan',
    },
    'w3fzmffj': {
      'ar': ' الرجاء الاختيار المدينة',
      'en': 'Please select in the city',
    },
    'z9sheoib': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'wk8x1w5l': {
      'ar': '',
      'en': '',
    },
    '9dhlrjdm': {
      'ar': 'العنوان',
      'en': 'Your address',
    },
    'u5nlt5ra': {
      'ar': 'Option 1',
      'en': '',
    },
    'x8nbvq57': {
      'ar': 'البنود وشروط الخدمة',
      'en': 'Terms and Conditions of Service',
    },
    '3a80eaym': {
      'ar': 'التالي',
      'en': 'continue',
    },
    'uz77ammc': {
      'ar': ' الخطوة الثانية ',
      'en': '\nStep 2  of  4 :Upload address and place of residence',
    },
    '4wz4578f': {
      'ar': 'Home',
      'en': '',
    },
  },
  // createProfileSelectTypeJobStepThree
  {
    'b5rpqhxs': {
      'ar': 'البلاط',
      'en': 'tiles',
    },
    'idsywi99': {
      'ar': 'الكهرباء',
      'en': 'electrical',
    },
    '0sv4st4m': {
      'ar': 'حداد',
      'en': 'Smith',
    },
    '55dp19wk': {
      'ar': 'نجار',
      'en': 'Carpenter',
    },
    '3yyg9i1y': {
      'ar': 'سباك',
      'en': 'plumber',
    },
    '6ukdbdl2': {
      'ar': 'دهان',
      'en': 'paint',
    },
    's1qnetcg': {
      'ar': 'الرجاء اختيار حرفتك',
      'en': 'Please choose your craft',
    },
    'w9d9y2pf': {
      'ar': 'Search for an item...',
      'en': '',
    },
    '79zxv3dw': {
      'ar': 'تحميل مستندات الشهادة أو الصور التي\n تفيد بأنه صاحب المهنة',
      'en':
          'Upload certificate documents or photos \nthat he is the owner of the profession\n',
    },
    'hr1x8djm': {
      'ar': 'ملف',
      'en': 'File',
    },
    'g8ggath2': {
      'ar': 'صورة',
      'en': 'photo',
    },
    'blnwkx7a': {
      'ar': ' ملفات  تم تحميلها',
      'en': ' uploaded file',
    },
    'mzwdvw7k': {
      'ar': '   صور تم تحميلها',
      'en': ' uploaded\n photo',
    },
    'y7hzsrmy': {
      'ar': 'التالي',
      'en': 'continue',
    },
    'gamxhpe4': {
      'ar':
          'الخطوة الثالثة: اختر مهنتك وقم بتحميل مستندات\n الشهادة أو الصور التي تفيد بأنك صاحب المهنة ',
      'en':
          '\nStep 3  of  4 :Choose your profession \nand  Upload certificate documents \nor photos that he is the owner of the profession',
    },
    '1w6g3gmg': {
      'ar': 'Home',
      'en': '',
    },
  },
  // createProfileBioStepFour
  {
    '2b4bqlbk': {
      'ar': ' اكتب السيرة الذاتية الخاصة بك',
      'en': 'Write your Bio',
    },
    '14lgq1gt': {
      'ar': 'اكتب سيرتك الذاتية',
      'en': 'Write your Bio',
    },
    'sczg2ach': {
      'ar':
          '\nاكتب سيرتك الذاتية                                                                                                \n\n\n\n ',
      'en': '\nWrite your Bio\n\n\n\n\n',
    },
    'fcgz39qd': {
      'ar': 'Option 1',
      'en': '',
    },
    'r1vey8xo': {
      'ar': 'التالي',
      'en': 'Continue',
    },
    'ehod4dxi': {
      'ar': ' الخطوة الرابعة ',
      'en': '\nStep 4 of  4 : Upload your bio ',
    },
    'szm92mme': {
      'ar': 'Home',
      'en': '',
    },
  },
  // createProfileNameStepOne_customar
  {
    'hmgve1rn': {
      'ar': 'الاسم الاول',
      'en': 'first name',
    },
    'id8z0n1r': {
      'ar': 'الاسم الاول',
      'en': 'First Name',
    },
    'jgbxb53x': {
      'ar': 'اسم الاب',
      'en': 'Name of the Father',
    },
    'yasi11u1': {
      'ar': 'اسم الأب',
      'en': 'Name of the Father',
    },
    'yqytkyhi': {
      'ar': 'اسم الجد',
      'en': 'Grandfather name',
    },
    'bnt6ewuu': {
      'ar': 'اسم الجد',
      'en': 'Grandfather name',
    },
    'hb8rtx80': {
      'ar': 'اسم العائلة',
      'en': 'Family name',
    },
    'urrh194s': {
      'ar': 'اسم العائلة',
      'en': 'family name',
    },
    '0vimo8q1': {
      'ar': 'التالي',
      'en': 'continue',
    },
    'gs7vuc2w': {
      'ar': 'الخطوة 1 من 3:  قم بتحميل صورة لك\n واسمك الكامل',
      'en': 'Step 1  of  3 : upload photo  for you , \nand your full name',
    },
    '213vtn7i': {
      'ar': 'Home',
      'en': '',
    },
  },
  // createProfileNameAddresStepTwo_customar
  {
    '16050tsr': {
      'ar': 'الرجاء اختيار المدينة',
      'en': 'Please select the city',
    },
    '1zx12yeb': {
      'ar': 'Option 1',
      'en': '',
    },
    'w5xi6fg3': {
      'ar': ' الرجاء الاختيار المدينة',
      'en': 'Please select in the city',
    },
    'ky3aclvj': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'iu90dri3': {
      'ar': 'الرجاء ادخال العنوان',
      'en': 'Please eneter your address',
    },
    'c284o8hu': {
      'ar': '',
      'en': '',
    },
    '55arvmpm': {
      'ar': 'العنوان',
      'en': 'the address',
    },
    'ab3ez11s': {
      'ar': 'Option 1',
      'en': '',
    },
    'xja3aoj4': {
      'ar': 'التالي',
      'en': 'continue',
    },
    'z43x8hh9': {
      'ar': 'الخطوة الثانية : اختيار المدينة وعنوان السكن ',
      'en': 'Second Step: Choose the city and address of residence',
    },
    'gmrwmaa6': {
      'ar': 'Home',
      'en': '',
    },
  },
  // createAccountThreeCustomer
  {
    '3jh43xqn': {
      'ar': 'ادخل رقم هويتك ',
      'en': 'Enter your ID number',
    },
    'lgniwzlx': {
      'ar': 'رقم الهوية',
      'en': 'id number',
    },
    'ie5jweyk': {
      'ar': 'انشاء حساب',
      'en': 'Create an account',
    },
    'io5fdh0i': {
      'ar': 'Home',
      'en': '',
    },
  },
  // ReviewCreateProfileCraftman
  {
    'mxyjwnr3': {
      'ar': 'ايرجى التحقق من معلوماتك الشخصية',
      'en': ' Please verify your personal\n information',
    },
    '6fjpr7m5': {
      'ar': '',
      'en': '',
    },
    '7smuol0j': {
      'ar': '',
      'en': '',
    },
    'n8b74rgu': {
      'ar': '',
      'en': '',
    },
    '86ri0ehc': {
      'ar': '',
      'en': '',
    },
    'rlmq61f8': {
      'ar': '',
      'en': '',
    },
    '0rf7eqd8': {
      'ar': 'إنشاء ملف شخصي',
      'en': 'create profile ',
    },
    'fc087gox': {
      'ar': 'تسجيل ملف شخصي  جديد',
      'en': 'Register a new profile page',
    },
    'rd0ypprn': {
      'ar': 'Home',
      'en': '',
    },
  },
  // MAIN_ProfileCraftsman
  {
    'ekzd45vf': {
      'ar': 'Switch to Dark Mode',
      'en': '',
    },
    'wg6vumnn': {
      'ar': 'Switch to Light Mode',
      'en': '',
    },
    'wsh65opx': {
      'ar': 'السيرة الذاتية',
      'en': 'Bio',
    },
    '8rj9agv3': {
      'ar': 'الايميل ',
      'en': 'Email',
    },
    'jbftr24m': {
      'ar': 'المدينة',
      'en': 'City',
    },
    'lc33a0yu': {
      'ar': 'العنوان',
      'en': 'Address',
    },
    'xog3be4m': {
      'ar': 'Work Experience',
      'en': '',
    },
  },
  // MAIN_ChatCraftsman
  {
    'rhzabwn4': {
      'ar': 'Messages',
      'en': '',
    },
    's4lcz0un': {
      'ar': 'Chats',
      'en': '',
    },
  },
  // MAINSavedJobsCraftsman
  {
    'ncsx1r98': {
      'ar': 'وظائفي ',
      'en': 'My Jobs',
    },
    'kq9pvrta': {
      'ar': 'الوظائف المقبولة ',
      'en': 'Accepted Jobs',
    },
    'pgqoqm4o': {
      'ar': 'قيد الانتظار',
      'en': 'Pending',
    },
    '9qojjn9o': {
      'ar': ' ',
      'en': '',
    },
  },
  // MAINHomeCraftsman
  {
    'kgnt2lxe': {
      'ar': ' ',
      'en': '',
    },
  },
  // editProfileForCustomer
  {
    'jpfut087': {
      'ar': 'Edit Profile',
      'en': '',
    },
    'u3mjqy5a': {
      'ar': 'Full Name',
      'en': '',
    },
    'clzntux0': {
      'ar': 'Postition Title',
      'en': '',
    },
    'h1uozzfx': {
      'ar': 'Email',
      'en': '',
    },
    'z0zwlc21': {
      'ar': 'Short Description',
      'en': '',
    },
    '0ydbx1hy': {
      'ar': 'Experience Level',
      'en': '',
    },
    'ixi1stxz': {
      'ar': '< 6 Months',
      'en': '',
    },
    'iipim0v4': {
      'ar': '6m - 1y',
      'en': '',
    },
    'ngqyz33e': {
      'ar': '1y - 3y',
      'en': '',
    },
    'hr297c0t': {
      'ar': '+3 years',
      'en': '',
    },
    '46tymedl': {
      'ar': '+5 years',
      'en': '',
    },
    'gx726o2n': {
      'ar': '+8 years',
      'en': '',
    },
    'l8u3sybu': {
      'ar': 'Experience LEvel',
      'en': '',
    },
    '6rp8qdhq': {
      'ar': 'Company',
      'en': '',
    },
    'bec95w9t': {
      'ar': 'Salary',
      'en': '',
    },
    'v3zgqvcm': {
      'ar': '\$40,000',
      'en': '',
    },
    'eh7227zx': {
      'ar': '\$150,000+',
      'en': '',
    },
    'wle8rhwa': {
      'ar': 'Save Changes',
      'en': '',
    },
    'ziudyova': {
      'ar': 'Home',
      'en': '',
    },
  },
  // editProfileCraftsman
  {
    'en6e0w1p': {
      'ar': 'تعديل الملف الشخصي',
      'en': 'Modify profile',
    },
    'r3ql3q26': {
      'ar': '',
      'en': '',
    },
    'xnoa3u0m': {
      'ar': 'السيرة الذاتية',
      'en': 'Bio',
    },
    '8kuhhcuu': {
      'ar': 'العنوان',
      'en': 'ِAddress',
    },
    'kayofzwf': {
      'ar': 'رام الله ',
      'en': 'Ramlallah',
    },
    're3rbj6p': {
      'ar': 'الأردن',
      'en': 'Jordan',
    },
    'ui1uh09m': {
      'ar': ' الرجاء الاختيار المدينة',
      'en': 'Please select in the city',
    },
    'y0w64wdj': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'n4j767op': {
      'ar': 'نوع العمل:',
      'en': 'type of employment:',
    },
    'suygf57l': {
      'ar': 'Home',
      'en': '',
    },
  },
  // CustomarEditProfile
  {
    '5qjrl1nq': {
      'ar': 'تعديل الملف الشخصي',
      'en': 'Modify profile',
    },
    'yupz19ue': {
      'ar': '',
      'en': '',
    },
    '1vj1gzu0': {
      'ar': 'العنوان',
      'en': 'ِAddress',
    },
    '37akoyco': {
      'ar': 'رام الله ',
      'en': 'Ramlallah',
    },
    '99g20peh': {
      'ar': 'الأردن',
      'en': 'Jordan',
    },
    'p58bl21n': {
      'ar': ' الرجاء الاختيار المدينة',
      'en': 'Please select in the city',
    },
    '58lnoqhs': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'kexsyo01': {
      'ar': 'Home',
      'en': '',
    },
  },
  // JobPost_Accepted
  {
    'q27y733t': {
      'ar': 'الوظيفة مقبولة',
      'en': 'Job Accepted',
    },
    'wu0v2e7a': {
      'ar': 'حالة الوظيفة:  مقبولة',
      'en': 'Job Status :  Accepted',
    },
    'i3id9au7': {
      'ar': 'Home',
      'en': '',
    },
  },
  // JobPost_Pending
  {
    'lfugsafo': {
      'ar': 'حالة الوظيفة:  قيد الانتظار',
      'en': 'Job status: Pending',
    },
    '6fs9fy85': {
      'ar': 'Home',
      'en': '',
    },
  },
  // SuccessPage
  {
    'p6ximpgw': {
      'ar': 'مرحبا ',
      'en': 'Welcome',
    },
    'xwyjsd2y': {
      'ar': 'اهلا بك في صنايعي ',
      'en': 'Welcome to SANAEE',
    },
    'fo2zru40': {
      'ar': 'Home',
      'en': '',
    },
  },
  // WorkExp_Edit
  {
    '2pw221ef': {
      'ar': 'Work Experience',
      'en': '',
    },
    'zqanj86y': {
      'ar': 'Add Credentials below.',
      'en': '',
    },
    'q2g2iswb': {
      'ar': 'Position Title',
      'en': '',
    },
    '8ts48khk': {
      'ar': 'Company',
      'en': '',
    },
    'kpji1lye': {
      'ar': 'Start Date',
      'en': '',
    },
    'zqo3nhd7': {
      'ar': 'End Date',
      'en': '',
    },
    '257ox33z': {
      'ar': 'What did you do here?',
      'en': '',
    },
    'f879az5k': {
      'ar': 'Save Work Experience',
      'en': '',
    },
  },
  // ChangPhoto
  {
    'l6dk16qo': {
      'ar': 'غير الصوره',
      'en': 'Change Photo',
    },
    'fd6dgg7o': {
      'ar':
          'قم بتحميل صورة جديدة أدناه لتغيير الصورة الرمزية التي يراها الآخرون.',
      'en':
          'Upload a new photo below in order to change your avatar seen by others.',
    },
    'z5lpfu29': {
      'ar': 'تحميل الصور',
      'en': 'Upload Image',
    },
    'enb8vg4e': {
      'ar': 'حفظ التغييرات',
      'en': 'Save Changes',
    },
  },
  // Miscellaneous
  {
    '054sr7z6': {
      'ar': '',
      'en': '',
    },
    '610t8e2s': {
      'ar': '',
      'en': '',
    },
    'ytr88yhr': {
      'ar': '',
      'en': '',
    },
    'ta5kly1y': {
      'ar': '',
      'en': '',
    },
    'o5nn9l9p': {
      'ar': '',
      'en': '',
    },
    '0l0mx8py': {
      'ar': '',
      'en': '',
    },
    'p36fvdli': {
      'ar': '',
      'en': '',
    },
    '263n7io1': {
      'ar': '',
      'en': '',
    },
    'c65jg8b1': {
      'ar': '',
      'en': '',
    },
    '5czp9gvs': {
      'ar': '',
      'en': '',
    },
    'ntludjxr': {
      'ar': '',
      'en': '',
    },
    'yoqnvphg': {
      'ar': '',
      'en': '',
    },
    'afdkbryv': {
      'ar': '',
      'en': '',
    },
    '2isijnya': {
      'ar': '',
      'en': '',
    },
    '6ou6ejjc': {
      'ar': '',
      'en': '',
    },
    'pxusnuia': {
      'ar': '',
      'en': '',
    },
    'wkb4ltzg': {
      'ar': '',
      'en': '',
    },
    'xkozptie': {
      'ar': '',
      'en': '',
    },
    'l5t9rqty': {
      'ar': '',
      'en': '',
    },
    'lfm4h3lz': {
      'ar': '',
      'en': '',
    },
    'ze923l0g': {
      'ar': '',
      'en': '',
    },
    'uka39ds6': {
      'ar': '',
      'en': '',
    },
    '0m4wd7nf': {
      'ar': '',
      'en': '',
    },
  },
].reduce((a, b) => a..addAll(b));
