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
    '39p9a49o': {
      'ar': 'مرحبًا بعودتك',
      'en': 'Welcome Back',
    },
    'pstykokm': {
      'ar': 'البريد الالكتروني ',
      'en': 'Email',
    },
    'jxc0aohu': {
      'ar': 'ادخل الايميل الخاص بك',
      'en': ' Enter your email here...',
    },
    'h0adoj0g': {
      'ar': '',
      'en': '',
    },
    '3h481amo': {
      'ar': 'كلمة المرور',
      'en': 'Password',
    },
    'za0mg4i1': {
      'ar': 'ادخل كلمة المرور ...',
      'en': 'Enter your password here...',
    },
    'e51aq7vc': {
      'ar': '',
      'en': '',
    },
    'rx04m40z': {
      'ar': 'هل نسيت كلمة السر؟',
      'en': 'Forgot Password?',
    },
    'myne6c2l': {
      'ar': 'تسجيل الدخول ',
      'en': 'Login',
    },
    'gpzx2mar': {
      'ar': 'ليس لديك حساب؟',
      'en': 'Don\'t have  an account ?',
    },
    '38akft11': {
      'ar': 'أنشئ حساب',
      'en': 'Sign Up',
    },
    'r7f2rfge': {
      'ar': 'Email is required',
      'en': '',
    },
    'mmagg0f3': {
      'ar': 'يجب أن يكون عنوان بريد إلكتروني صالحًا',
      'en': 'Should be a valid email address',
    },
    'bhx8fux8': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'gcbmhlrp': {
      'ar': 'Field is required',
      'en': '',
    },
    'bocjdwxb': {
      'ar': 'يجب ألا يقل عدد الأحرف عن 6 أحرف',
      'en': 'Should be lest 6 characters',
    },
    '1n82v10c': {
      'ar': 'يجب أن يكون أقل من 15 حرفًا',
      'en': 'Should be lest then 15 characters',
    },
    'imsbutcj': {
      'ar': 'يجب أن يحتوي على رقم واحد وحرف خاص واحد',
      'en': 'Should have one number and 1 aspcial character',
    },
    'pen0qdd9': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'hwccov5i': {
      'ar': 'Home',
      'en': '',
    },
  },
  // MAINHomeCustomer
  {
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
    'dsq91la7': {
      'ar': 'الأعمال قيد التنفيذ',
      'en': 'Works in progress',
    },
    'evf1hwrj': {
      'ar': 'الدفع وانهاء العمل ',
      'en': '',
    },
    'h25lrbj2': {
      'ar': ' ',
      'en': '',
    },
  },
  // MAIN_ProfileCustomer
  {
    'b9l8kjh7': {
      'ar': ' قم بالتبديل إلى الوضع المظلم',
      'en': 'Switch to dark mode',
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
      'en': 'المحادثات',
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
    '4ct895p5': {
      'ar': 'Button',
      'en': '',
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
      'ar': 'هل نسيت كلمة السر',
      'en': 'Forgot your password',
    },
    'x5k1qfme': {
      'ar': 'بريدك الالكتروني',
      'en': 'Your Email',
    },
    'yt16eqya': {
      'ar': 'يرجى إدخال البريد الإلكتروني الصحيح...',
      'en': 'Please enter a valid email...',
    },
    '2lo0yv4r': {
      'ar':
          'سنرسل لك بريدًا إلكترونيًا يحتوي على رابط لإعادة تعيين كلمة المرور الخاصة بك ، يرجى إدخال البريد الإلكتروني المرتبط بحسابك أعلاه.',
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account above.',
    },
    'mhyb8d2x': {
      'ar': 'إرسال إعادة تعيين كلمة المرور',
      'en': 'Send Reset Password',
    },
    'lkkdbwnt': {
      'ar': 'البريد الالكتروني مطلوب',
      'en': 'Email is required',
    },
    'an8p149a': {
      'ar': 'يجب أن يكون عنوان بريد إلكتروني صالحًا',
      'en': 'Should be a valid email address',
    },
    'fl553gx7': {
      'ar': 'Please choose an option from the dropdown',
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
    '8grdgmgd': {
      'ar': '',
      'en': '',
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
    '22aqfxf1': {
      'ar': ' عربي  ',
      'en': ' AR   ',
    },
    'hhpegmuj': {
      'ar': 'انجليزي',
      'en': 'ENG',
    },
    'khzspjr2': {
      'ar': ' إنشاء حساب',
      'en': 'Create an account',
    },
    'x2e1bx3v': {
      'ar': 'املأ النموذج أدناه للبدء.',
      'en': 'Use the form below to get started.',
    },
    '6lkmgosl': {
      'ar': 'البريد الالكتروني',
      'en': 'Email Address',
    },
    '81ps77f6': {
      'ar': 'ادخل البريد الإلكتروني',
      'en': 'Enter your email here...',
    },
    'mzupag41': {
      'ar': 'كلمة المرور',
      'en': 'Password',
    },
    'iy7gni9e': {
      'ar': 'كلمة المرور',
      'en': 'password',
    },
    '9n5zsa5a': {
      'ar': 'تأكيد كلمة المرور',
      'en': 'Confirm Password',
    },
    '1cu6vixh': {
      'ar': 'تأكيد كلمة المرور',
      'en': 'Confirm Password',
    },
    'b9cz3hiv': {
      'ar': 'إنشاء حساب ',
      'en': 'Create Account',
    },
    've2zy4vm': {
      'ar': 'Use a social platform to continue',
      'en': '',
    },
    'phcb2n1x': {
      'ar': 'Already have an account?',
      'en': '',
    },
    '1bl7wnow': {
      'ar': 'Log In',
      'en': '',
    },
    '4vwjis2u': {
      'ar': 'البريد الالكتروني مطلوب',
      'en': 'Email is required',
    },
    'j8qon7bu': {
      'ar': 'يجب أن يكون عنوان بريد إلكتروني صالحًا',
      'en': 'Should be a valid email address',
    },
    's85qgokq': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'bx7lyow2': {
      'ar': 'كلمة المرور مطلوبة',
      'en': 'password is required',
    },
    '6jhd0064': {
      'ar': 'يجب ألا يقل عدد الأحرف عن 6 أحرف',
      'en': 'Should be lest 6 characters',
    },
    'h6x0aj3w': {
      'ar': 'يجب أن يكون أقل من 15 حرفًا',
      'en': 'Should be lest then 15 characters',
    },
    '0025rc92': {
      'ar': 'يجب أن يحتوي على رقم واحد وحرف خاص واحد',
      'en': 'Should have one number and 1 aspcial character',
    },
    'fo8wxsdy': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'gpyud16l': {
      'ar': 'كلمة المرور مطلوبة',
      'en': 'password is required',
    },
    'ahvpevy8': {
      'ar': 'يجب ألا يقل عن 6 أحرف',
      'en': 'Shoulda be lest 6 characters',
    },
    'd6n7cpja': {
      'ar': 'يجب أن يكون أقل من 15 حرفًا',
      'en': 'Should be lest then 15 characters',
    },
    's69gs540': {
      'ar': 'يجب أن يحتوي على رقم واحد وحرف خاص واحد',
      'en': 'Should have one number and 1 aspcial character',
    },
    'xo4muwj2': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'z08teily': {
      'ar': 'Home',
      'en': '',
    },
  },
  // createProfileNameStepOne
  {
    'z23r1o6a': {
      'ar': 'الخطوة 1 من 3:  قم بتحميل صورة لك\n واسمك الكامل',
      'en': 'Step 1  of  3 : upload photo  for you\n ,  and your name ',
    },
    'fp6p66g9': {
      'ar': 'الاسم الاول',
      'en': 'first name',
    },
    '52413umc': {
      'ar': 'الاسم الاول',
      'en': 'First Name',
    },
    'fketoiqo': {
      'ar': 'اسم الاب',
      'en': 'Name of the Father',
    },
    '5q9cgpvp': {
      'ar': 'اسم الأب',
      'en': 'Name of the Father',
    },
    'fni5hg1g': {
      'ar': 'اسم الجد',
      'en': 'Grandfather name',
    },
    'enkl9kxs': {
      'ar': 'اسم الجد',
      'en': 'Grandfather name',
    },
    'oct0lhox': {
      'ar': 'اسم العائلة',
      'en': 'Family name',
    },
    'y5t21zcr': {
      'ar': 'اسم العائلة',
      'en': 'family name',
    },
    'y2myw9mq': {
      'ar': 'التالي',
      'en': 'continue',
    },
    'dnd6xtun': {
      'ar': 'مطلوب ادخال الاسم',
      'en': 'Name is required',
    },
    '9xyu4bkh': {
      'ar': 'يجب أن يكون الاسم الأصغر حرفين',
      'en': 'The smallest name must be two letters',
    },
    'hdpsa53a': {
      'ar': 'يجب أن يحتوي الاسم الأكبر على 15 حرفًا',
      'en': 'The largest name must contain 15 letters',
    },
    'kw8ffdps': {
      'ar': 'يجبل ان يكون الاسم يتراوح بين حرفين الى 15 حرف',
      'en': 'The name must be between 2 and 15 letters',
    },
    'y9qqjv44': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'w19i9yxf': {
      'ar': 'مطلوب ادخال الاسم',
      'en': 'Name is required',
    },
    'e1apd3bf': {
      'ar': 'يجب أن يكون الاسم الأصغر حرفين',
      'en': 'The smallest name must be two letters',
    },
    'uve6knjj': {
      'ar': 'يجب أن يحتوي الاسم الأكبر على 15 حرفًا',
      'en': 'The largest name must contain 15 letters',
    },
    'joadpexv': {
      'ar': 'يجبل ان يكون الاسم يتراوح بين حرفين الى 15 حرف',
      'en': 'The name must be between 2 and 15 letters',
    },
    'x333dgcc': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'mjnte8bi': {
      'ar': 'مطلوب ادخال الاسم',
      'en': 'Name is required',
    },
    'gyohfqda': {
      'ar': 'يجب أن يكون الاسم الأصغر حرفين',
      'en': 'The smallest name must be two letters',
    },
    'l1qijlf7': {
      'ar': 'يجب أن يحتوي الاسم الأكبر على 15 حرفًا',
      'en': 'The largest name must contain 15 letters',
    },
    '1q33c8tk': {
      'ar': 'يجبل ان يكون الاسم يتراوح بين حرفين الى 15 حرف',
      'en': 'The name must be between 2 and 15 letters',
    },
    'r2bql6st': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    '73tff2v3': {
      'ar': 'مطلوب ادخال الاسم',
      'en': 'Name is required',
    },
    'va5ylzaf': {
      'ar': 'يجب أن يكون الاسم الأصغر حرفين',
      'en': 'The smallest name must be two letters',
    },
    'ath6kyry': {
      'ar': 'يجب أن يحتوي الاسم الأكبر على 15 حرفًا',
      'en': 'The largest name must contain 15 letters',
    },
    '5y1v241d': {
      'ar': 'يجبل ان يكون الاسم يتراوح بين حرفين الى 15 حرف',
      'en': 'The name must be between 2 and 15 letters',
    },
    'i4m617qx': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'gdrznog6': {
      'ar': 'Home',
      'en': '',
    },
  },
  // createProfileNameAddresStepTwo
  {
    'typsv17x': {
      'ar': '',
      'en': '',
    },
    'c5ny5mbu': {
      'ar': 'رقم الهوية ',
      'en': 'Id number',
    },
    'u4zkv50f': {
      'ar': 'Option 1',
      'en': '',
    },
    'm2tyro30': {
      'ar': 'رام الله ',
      'en': 'Ramlallah',
    },
    'kkbps1sg': {
      'ar': 'بيت لحم',
      'en': 'Bethlehem',
    },
    '01559g06': {
      'ar': 'القدس ',
      'en': 'Jerusalem ',
    },
    'm26qjtdu': {
      'ar': 'الخليل',
      'en': 'Hebron  ',
    },
    '4pfax65t': {
      'ar': 'نابلس',
      'en': 'Nablus ',
    },
    'rirxyhht': {
      'ar': 'سلفيت ',
      'en': 'Salfit ',
    },
    '71el0i8n': {
      'ar': 'قلقيلية ',
      'en': 'Qalqilya ',
    },
    'l3aukg6s': {
      'ar': 'طولكرم',
      'en': 'Tulkarm ',
    },
    '19pvdhu8': {
      'ar': 'جنين ',
      'en': 'Jenin  ',
    },
    'k886uz8i': {
      'ar': 'طوباس ',
      'en': 'Tubas  ',
    },
    'ocu9tr1f': {
      'ar': 'اريحا ',
      'en': 'Jericho ',
    },
    '80q07kxp': {
      'ar': 'البيرة ',
      'en': 'Beer ',
    },
    'f8jtk8nd': {
      'ar': 'بيت جالا',
      'en': 'Beit Jala',
    },
    '7ii2fb1b': {
      'ar': 'بيت ساحور',
      'en': 'Beit Sahour',
    },
    'gvcqell8': {
      'ar': 'الظاهرية',
      'en': 'Dhahria ',
    },
    'vvb8vm9d': {
      'ar': 'دورا',
      'en': 'Role ',
    },
    '3zgqo6j8': {
      'ar': ' الرجاء الاختيار المدينة',
      'en': 'Please select in the city',
    },
    'wh67g5q2': {
      'ar': 'Search for an item...',
      'en': '',
    },
    'wega6lg8': {
      'ar': '',
      'en': '',
    },
    '089rqcz3': {
      'ar': 'العنوان',
      'en': 'Your address',
    },
    'qahuna4t': {
      'ar': 'Option 1',
      'en': '',
    },
    'dk672j2g': {
      'ar': 'البنود وشروط الخدمة',
      'en': 'Terms and Conditions of Service',
    },
    '3smy14gh': {
      'ar': 'التالي',
      'en': 'continue',
    },
    'iw1hpfnc': {
      'ar': ' الخطوة الثانية ',
      'en': '\nStep 2  of  4 :Upload address and place of residence',
    },
    'j0hv1wkr': {
      'ar': 'رقم الهوية مطلوب',
      'en': 'id number is required',
    },
    'qtpqfssd': {
      'ar': 'الحد الأقصى لرقم الهوية 9',
      'en': 'The maximum ID number 9',
    },
    '5bdnd8dt': {
      'ar': 'الرقم التعريفي الأقصى 9 ، الرقم فقط',
      'en': 'The maximum ID number 9,only number',
    },
    'r75guw8g': {
      'ar': 'الرجاء إدخال رقم الهوية',
      'en': 'Please enter the ID number',
    },
    's7c3j1ss': {
      'ar': 'Field is required',
      'en': '',
    },
    '2vjkk4at': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
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
      'ar': 'الخطوة 4 من 4: قم بتحميل سيرتك الذاتية',
      'en': '\nStep 4 of  4 : Upload your bio ',
    },
    'szm92mme': {
      'ar': 'Home',
      'en': '',
    },
  },
  // createProfileNameStepOne_customar
  {
    '53baebxn': {
      'ar': 'الخطوة 1 من 3:  قم بتحميل صورة لك\n واسمك الكامل',
      'en': 'Step 1  of  3 : upload photo  for you\n ,  and your name ',
    },
    '5lppelbg': {
      'ar': 'الاسم الاول',
      'en': 'first name',
    },
    'eqoptg76': {
      'ar': 'الاسم الاول',
      'en': 'First Name',
    },
    'zermctsu': {
      'ar': 'اسم الاب',
      'en': 'Name of the Father',
    },
    '8d0wsddz': {
      'ar': 'اسم الأب',
      'en': 'Name of the Father',
    },
    'ckr6niu7': {
      'ar': 'اسم الجد',
      'en': 'Grandfather name',
    },
    'xmoqsr9w': {
      'ar': 'اسم الجد',
      'en': 'Grandfather name',
    },
    'liulrkle': {
      'ar': 'اسم العائلة',
      'en': 'Family name',
    },
    'm9lb4t2u': {
      'ar': 'اسم العائلة',
      'en': 'family name',
    },
    'yxhxrrxs': {
      'ar': 'التالي',
      'en': 'continue',
    },
    '9mduiyjx': {
      'ar': 'مطلوب ادخال الاسم',
      'en': 'Name is required',
    },
    'p5g588iu': {
      'ar': 'يجب أن يكون الاسم الأصغر حرفين',
      'en': 'The smallest name must be two letters',
    },
    'xasig2f2': {
      'ar': 'يجب أن يحتوي الاسم الأكبر على 15 حرفًا',
      'en': 'The largest name must contain 15 letters',
    },
    'fegllspw': {
      'ar': 'يجبل ان يكون الاسم يتراوح بين حرفين الى 15 حرف',
      'en': 'The name must be between 2 and 15 letters',
    },
    '54tbpvlh': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'vrd7epmz': {
      'ar': 'مطلوب ادخال الاسم',
      'en': 'Name is required',
    },
    'tuxl4mc4': {
      'ar': 'يجب أن يكون الاسم الأصغر حرفين',
      'en': 'The smallest name must be two letters',
    },
    'cw0u0fuf': {
      'ar': 'يجب أن يحتوي الاسم الأكبر على 15 حرفًا',
      'en': 'The largest name must contain 15 letters',
    },
    'a5wdx2zo': {
      'ar': 'يجبل ان يكون الاسم يتراوح بين حرفين الى 15 حرف',
      'en': 'The name must be between 2 and 15 letters',
    },
    'g6gpn8gg': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'kg687u74': {
      'ar': 'مطلوب ادخال الاسم',
      'en': 'Name is required',
    },
    'zk0eki9x': {
      'ar': 'يجب أن يكون الاسم الأصغر حرفين',
      'en': 'The smallest name must be two letters',
    },
    'r22ttmhs': {
      'ar': 'يجب أن يحتوي الاسم الأكبر على 15 حرفًا',
      'en': 'The largest name must contain 15 letters',
    },
    '8vb5mli0': {
      'ar': 'يجبل ان يكون الاسم يتراوح بين حرفين الى 15 حرف',
      'en': 'The name must be between 2 and 15 letters',
    },
    '7ekc0kci': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
    },
    'q2hru9a6': {
      'ar': 'مطلوب ادخال الاسم',
      'en': 'Name is required',
    },
    'g8jxq8dv': {
      'ar': 'يجب أن يكون الاسم الأصغر حرفين',
      'en': 'The smallest name must be two letters',
    },
    'y4folasj': {
      'ar': 'يجب أن يحتوي الاسم الأكبر على 15 حرفًا',
      'en': 'The largest name must contain 15 letters',
    },
    'j032ar1c': {
      'ar': 'يجبل ان يكون الاسم يتراوح بين حرفين الى 15 حرف',
      'en': 'The name must be between 2 and 15 letters',
    },
    'b75fiqq8': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
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
      'ar': 'رام الله',
      'en': 'Ramallah ',
    },
    'zqo8bibn': {
      'ar': 'بيت لحم',
      'en': 'Bethlehem ',
    },
    'fi77vrkf': {
      'ar': 'القدس ',
      'en': 'Jerusalem ',
    },
    '951o2ch3': {
      'ar': 'الخليل',
      'en': 'Hebron  ',
    },
    'mawp5dkn': {
      'ar': 'نابلس',
      'en': 'Nablus ',
    },
    'vt8rb4jf': {
      'ar': 'سلفيت ',
      'en': 'Salfit ',
    },
    'vy8gwqly': {
      'ar': 'قلقيلية ',
      'en': 'Qalqilya ',
    },
    'taxfjgqo': {
      'ar': 'طولكرم',
      'en': 'Tulkarm ',
    },
    'e8ls7er2': {
      'ar': 'جنين ',
      'en': 'Jenin  ',
    },
    'xzhnjqyr': {
      'ar': 'طوباس ',
      'en': 'Tubas  ',
    },
    '6wghlha6': {
      'ar': 'اريحا ',
      'en': 'Jericho ',
    },
    '9xgy6zxu': {
      'ar': 'البيرة ',
      'en': 'Beer ',
    },
    '4hzv6m8l': {
      'ar': 'بيت جالا',
      'en': 'Beit Jala',
    },
    'uwbftzij': {
      'ar': 'بيت ساحور',
      'en': 'Beit Sahour',
    },
    '3nyfezmd': {
      'ar': 'الظاهرية',
      'en': 'Dhahria ',
    },
    'vyabxndq': {
      'ar': 'دورا',
      'en': 'Role ',
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
    'pbwvn9uy': {
      'ar': 'ادخل رقم هويتك ',
      'en': 'Enter your ID number',
    },
    'ius5bqtn': {
      'ar': 'رقم الهوية',
      'en': 'id number',
    },
    'dc06yvi9': {
      'ar': 'انشاء حساب',
      'en': 'Create an account',
    },
    '23yfr90d': {
      'ar': 'رقم الهوية مطلوب',
      'en': 'id number is required',
    },
    'tsnydcl9': {
      'ar': ' الحد الأقصى لرقم الهوية 9',
      'en': 'The maximum ID number 9',
    },
    'ml0csbtk': {
      'ar': 'الرقم التعريفي الأقصى 9 ، الرقم فقط',
      'en': 'The maximum ID number9, only numbers',
    },
    's54ej40p': {
      'ar': 'Please choose an option from the dropdown',
      'en': '',
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
      'ar': 'بيت لحم',
      'en': 'Bethlehem ',
    },
    'pd5sx7xc': {
      'ar': 'القدس ',
      'en': 'Jerusalem ',
    },
    'zxth8qg0': {
      'ar': 'الخليل',
      'en': 'Hebron  ',
    },
    '0nyl9b2x': {
      'ar': 'نابلس',
      'en': 'Nablus ',
    },
    '7h40s0yu': {
      'ar': 'سلفيت ',
      'en': 'Salfit ',
    },
    '6jeuq42n': {
      'ar': 'قلقيلية ',
      'en': 'Qalqilya ',
    },
    'yqa07cz2': {
      'ar': 'طولكرم',
      'en': 'Tulkarm ',
    },
    '7stmat34': {
      'ar': 'جنين ',
      'en': 'Jenin  ',
    },
    '5kb8sc4d': {
      'ar': 'طوباس ',
      'en': 'Tubas  ',
    },
    'hk4rqzng': {
      'ar': 'اريحا ',
      'en': 'Jericho ',
    },
    'p4free5u': {
      'ar': 'البيرة ',
      'en': 'Beer ',
    },
    '9nh524kj': {
      'ar': 'بيت جالا',
      'en': 'Beit Jala',
    },
    '4kiy3v6i': {
      'ar': 'بيت ساحور',
      'en': 'Beit Sahour',
    },
    'klb2f1ya': {
      'ar': 'الظاهرية',
      'en': 'Dhahria ',
    },
    'pmoy7xk0': {
      'ar': 'دورا',
      'en': 'Role ',
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
      'ar': 'بيت لحم',
      'en': 'Bethlehem',
    },
    'in9pdjfj': {
      'ar': 'القدس ',
      'en': 'Jerusalem ',
    },
    'c8kjnv13': {
      'ar': 'الخليل',
      'en': 'Hebron  ',
    },
    'upshgnb7': {
      'ar': 'نابلس',
      'en': 'Nablus ',
    },
    'pqmqmqfd': {
      'ar': 'سلفيت ',
      'en': 'Salfit ',
    },
    'qsyvvu76': {
      'ar': 'قلقيلية ',
      'en': 'Qalqilya ',
    },
    'zwd7hhsx': {
      'ar': 'طولكرم',
      'en': 'Tulkarm ',
    },
    '8e5s5gi2': {
      'ar': 'جنين ',
      'en': 'Jenin  ',
    },
    '2ojog1ys': {
      'ar': 'طوباس ',
      'en': 'Tubas  ',
    },
    '84brt96j': {
      'ar': 'اريحا ',
      'en': 'Jericho ',
    },
    '725i9ml2': {
      'ar': 'البيرة ',
      'en': 'Beer ',
    },
    '1ilogogy': {
      'ar': 'بيت جالا',
      'en': 'Beit Jala',
    },
    'm6h53wtd': {
      'ar': 'بيت ساحور',
      'en': 'Beit Sahour',
    },
    'uoyf6i31': {
      'ar': 'الظاهرية',
      'en': 'Dhahria ',
    },
    '8rjsqeco': {
      'ar': 'دورا',
      'en': 'Role ',
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
  // RateCraftsman
  {
    'cqar90ql': {
      'ar': 'قيم الحرفي    🤗 🤗 🤗 ',
      'en': 'Rate the craftsman 🤗 🤗 🤗',
    },
    'fxqxtvbp': {
      'ar': 'قيم الحرفي وادخل تعليقك على عمله...',
      'en': '',
    },
    'nncrdhoq': {
      'ar': '',
      'en': '',
    },
    'cm7pefeo': {
      'ar': 'حفظ وارسال ',
      'en': 'Save and send',
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
