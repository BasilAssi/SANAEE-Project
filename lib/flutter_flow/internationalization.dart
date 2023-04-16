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
    '5c2vlcdh': {
      'ar': 'Continue as Guest',
      'en': '',
    },
    'hwccov5i': {
      'ar': 'Home',
      'en': '',
    },
  },
  // CreateProfile
  {
    '16kqlmhb': {
      'ar': 'Create Profile',
      'en': '',
    },
    '9cxxqp6a': {
      'ar': 'Full Name',
      'en': '',
    },
    'bzvy9n1f': {
      'ar': 'Postition Title',
      'en': '',
    },
    'kqq76t54': {
      'ar': 'Short Description',
      'en': '',
    },
    'vjwgllst': {
      'ar': '< 6 Months',
      'en': '',
    },
    '4afzu4uv': {
      'ar': '6m - 1y',
      'en': '',
    },
    'awm0qeje': {
      'ar': '1y - 3y',
      'en': '',
    },
    'vfn9v4of': {
      'ar': '+3 years',
      'en': '',
    },
    'jdztguln': {
      'ar': '+5 years',
      'en': '',
    },
    'du97ujp9': {
      'ar': '+8 years',
      'en': '',
    },
    '8j4bktnh': {
      'ar': 'Experience Level',
      'en': '',
    },
    'otxb705y': {
      'ar': 'Company',
      'en': '',
    },
    'tgyak4ap': {
      'ar': 'Salary',
      'en': '',
    },
    'qa9z2iig': {
      'ar': '\$40,000',
      'en': '',
    },
    'dok3j0cl': {
      'ar': '\$150,000+',
      'en': '',
    },
    'wk05zvzs': {
      'ar': 'Continue as a(n)',
      'en': '',
    },
    'k9lfniw4': {
      'ar': 'Choose an option below to continue.',
      'en': '',
    },
    'zhq28egp': {
      'ar': 'As an Individual',
      'en': '',
    },
    'bxzzpwnh': {
      'ar': 'As a Company',
      'en': '',
    },
    'uj0rkdlw': {
      'ar': 'Skip for Now',
      'en': '',
    },
    '4c68ji2a': {
      'ar': 'Home',
      'en': '',
    },
  },
  // CompanyProfile
  {
    'w8rqbwcg': {
      'ar': 'Company Profile',
      'en': '',
    },
    'gi3n8oe0': {
      'ar': 'Company Name',
      'en': '',
    },
    'x078dny3': {
      'ar': 'Website',
      'en': '',
    },
    'qnn9x3d9': {
      'ar': 'A little bit about your company',
      'en': '',
    },
    'ecssdba2': {
      'ar': 'Company Size',
      'en': '',
    },
    'pnlgitlt': {
      'ar': 'Company Size',
      'en': '',
    },
    '8dohjd7e': {
      'ar': '1-10',
      'en': '',
    },
    'xc9ecefm': {
      'ar': '11-50',
      'en': '',
    },
    'uvvscd2i': {
      'ar': '51-100',
      'en': '',
    },
    'ulxnq47c': {
      'ar': '100+',
      'en': '',
    },
    '9406m4l6': {
      'ar': 'Location',
      'en': '',
    },
    'k3pg613c': {
      'ar': 'Skip for Now',
      'en': '',
    },
    'f1wkumya': {
      'ar': 'Continue',
      'en': '',
    },
    'xowv4bby': {
      'ar': 'Home',
      'en': '',
    },
  },
  // AddWorkExp
  {
    'v61spjfq': {
      'ar': 'Work History',
      'en': '',
    },
    'zebn83g1': {
      'ar': 'Job Title',
      'en': '',
    },
    'dnm7v2xn': {
      'ar': 'Add Work Experience',
      'en': '',
    },
    'ocvpznwh': {
      'ar': 'Continue',
      'en': '',
    },
    '3bg84h8t': {
      'ar': 'Home',
      'en': '',
    },
  },
  // MAINHome
  {
    'r4mqbyug': {
      'ar': 'Welcome',
      'en': '',
    },
    'hxlzbffs': {
      'ar': 'Posted On:',
      'en': '',
    },
    'taeeoz0g': {
      'ar': ' ',
      'en': '',
    },
  },
  // SEARCH_Jobs
  {
    '3egeehjp': {
      'ar': 'Search jobs...',
      'en': '',
    },
    'qw8giei3': {
      'ar': 'Posted On:',
      'en': '',
    },
    'h5bwicn9': {
      'ar': ' ',
      'en': '',
    },
  },
  // MAINSavedJobs
  {
    'a211198f': {
      'ar': 'My Jobs',
      'en': '',
    },
    'ilubw22a': {
      'ar': 'Applied',
      'en': '',
    },
    'dsq91la7': {
      'ar': 'Posted',
      'en': '',
    },
    'h25lrbj2': {
      'ar': ' ',
      'en': '',
    },
  },
  // MAIN_Candidates
  {
    '22f2lnxe': {
      'ar': 'Candidates',
      'en': '',
    },
    'fo50w9kj': {
      'ar': ' ',
      'en': '',
    },
  },
  // SEARCH_Candidates
  {
    'ncs8gl9m': {
      'ar': 'Search candidates...',
      'en': '',
    },
    '22f61etz': {
      'ar': ' ',
      'en': '',
    },
  },
  // MAIN_MyProfile
  {
    'd4ei0voa': {
      'ar': 'Add Job',
      'en': '',
    },
    'b9l8kjh7': {
      'ar': 'Switch to Dark Mode',
      'en': '',
    },
    'ehmwoa5b': {
      'ar': 'Switch to Light Mode',
      'en': '',
    },
    'qlu9nvs1': {
      'ar': 'Short Description',
      'en': '',
    },
    'jjmx2lgp': {
      'ar': 'Experience Level',
      'en': '',
    },
    'wpg67ray': {
      'ar': 'Company',
      'en': '',
    },
    '7dx2fv4u': {
      'ar': 'Salary',
      'en': '',
    },
    'stqo2ism': {
      'ar': 'Company Profile',
      'en': '',
    },
    'prqswg7t': {
      'ar': 'Work Experience',
      'en': '',
    },
  },
  // MAIN_Chat
  {
    'zm1cme8s': {
      'ar': 'Messages',
      'en': '',
    },
    'fr498yys': {
      'ar': 'Chats',
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
    'bg3qn8cc': {
      'ar': 'Description',
      'en': '',
    },
    'qcgryrl0': {
      'ar': 'Requirements',
      'en': '',
    },
    'zkgs1nv6': {
      'ar': 'Preferred Skills & Expertise',
      'en': '',
    },
    'uenl02ze': {
      'ar': 'APPLY NOW',
      'en': '',
    },
    'lfzwt8x5': {
      'ar': 'Home',
      'en': '',
    },
  },
  // JobPost_submitApplication
  {
    '8at6kuin': {
      'ar': 'Submit your prosoal below',
      'en': '',
    },
    'v2rixpmp': {
      'ar': 'Start typing here....',
      'en': '',
    },
    'm5j8txd7': {
      'ar': 'Add Attachments',
      'en': '',
    },
    '6lye9riv': {
      'ar': 'Submit Application',
      'en': '',
    },
    't5pxlbic': {
      'ar': 'Home',
      'en': '',
    },
  },
  // JobPost_Applied
  {
    'yc9zvkkj': {
      'ar': 'Description',
      'en': '',
    },
    'wnal7u1s': {
      'ar': 'Requirements',
      'en': '',
    },
    '76cy1d8m': {
      'ar': 'Preferred Skills & Expertise',
      'en': '',
    },
    'dzipi1m7': {
      'ar': 'Your proposal',
      'en': '',
    },
    'yibdxnjq': {
      'ar': 'Submitted',
      'en': '',
    },
    'kx1677tg': {
      'ar': 'Home',
      'en': '',
    },
  },
  // JobPost_MyJob_Applicants
  {
    'c9stbgea': {
      'ar': 'Description',
      'en': '',
    },
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
  // editProfile
  {
    '4pai4xr4': {
      'ar': 'Edit Profile',
      'en': '',
    },
    'yanyvndh': {
      'ar': 'Full Name',
      'en': '',
    },
    '1ejz2wdg': {
      'ar': 'Postition Title',
      'en': '',
    },
    '4zfowfio': {
      'ar': 'Email',
      'en': '',
    },
    'jfk984fo': {
      'ar': 'Short Description',
      'en': '',
    },
    'le45mzl5': {
      'ar': 'Experience Level',
      'en': '',
    },
    'r9v6scp8': {
      'ar': '< 6 Months',
      'en': '',
    },
    'gnflp2zd': {
      'ar': '6m - 1y',
      'en': '',
    },
    'baiz0hn0': {
      'ar': '1y - 3y',
      'en': '',
    },
    '7o83b55n': {
      'ar': '+3 years',
      'en': '',
    },
    'w8bcz6je': {
      'ar': '+5 years',
      'en': '',
    },
    'ijdbw94t': {
      'ar': '+8 years',
      'en': '',
    },
    '5436q785': {
      'ar': 'Experience LEvel',
      'en': '',
    },
    '5zsud1z2': {
      'ar': 'Company',
      'en': '',
    },
    '0ppfcbrs': {
      'ar': 'Salary',
      'en': '',
    },
    'i83330fp': {
      'ar': '\$40,000',
      'en': '',
    },
    '1o8i3mmm': {
      'ar': '\$150,000+',
      'en': '',
    },
    '1l6u81jm': {
      'ar': 'Save Changes',
      'en': '',
    },
    '9hr4xb2e': {
      'ar': 'Home',
      'en': '',
    },
  },
  // createJob
  {
    'ukzz8bd8': {
      'ar': 'Create Job Post',
      'en': '',
    },
    '8lw3hi06': {
      'ar': 'Position Title',
      'en': '',
    },
    'pap7cb69': {
      'ar': 'Short Description',
      'en': '',
    },
    'gh9w3gm6': {
      'ar': 'Requirements',
      'en': '',
    },
    '5u0gqynx': {
      'ar': 'Have to have x many years of experience, education, etc...',
      'en': '',
    },
    'a5gr4a26': {
      'ar': 'Preferred Skills & Experiences',
      'en': '',
    },
    'c1xeu5hd': {
      'ar': 'Knowledge of software or processes...',
      'en': '',
    },
    'f8hlklae': {
      'ar': '< 6 Months',
      'en': '',
    },
    'ilhz9ik4': {
      'ar': '6m - 1y',
      'en': '',
    },
    '4ive5b1q': {
      'ar': '1y - 3y',
      'en': '',
    },
    'i66yxmwy': {
      'ar': '+3 years',
      'en': '',
    },
    'bohmm3kp': {
      'ar': '+5 years',
      'en': '',
    },
    'dxq6o4rl': {
      'ar': '+8 years',
      'en': '',
    },
    'dqojfllq': {
      'ar': 'Experience Level',
      'en': '',
    },
    'pdxr2c8v': {
      'ar': 'Salary',
      'en': '',
    },
    'n60zdd0q': {
      'ar': '\$40,000',
      'en': '',
    },
    '4ficbfr6': {
      'ar': '\$150,000+',
      'en': '',
    },
    '1t54fz83': {
      'ar': 'Location',
      'en': '',
    },
    'px1bkt5b': {
      'ar': 'Create Post',
      'en': '',
    },
    'qlzqz4zr': {
      'ar': 'Home',
      'en': '',
    },
  },
  // candidateDetails
  {
    'eglsg18o': {
      'ar': 'Short Description',
      'en': '',
    },
    'zu8yah2m': {
      'ar': 'Experience Level',
      'en': '',
    },
    'dthb7o9n': {
      'ar': 'Company',
      'en': '',
    },
    'rnzvi6y6': {
      'ar': 'Salary',
      'en': '',
    },
    'p0z90s05': {
      'ar': 'Message Candidate',
      'en': '',
    },
  },
  // JobPost_Details
  {
    'f3rwmlwq': {
      'ar': 'Job Post',
      'en': '',
    },
    '2kyy06uy': {
      'ar': 'SpaceX',
      'en': '',
    },
    'd0qvqnft': {
      'ar': '\$60k-\$70k',
      'en': '',
    },
    '2hu13qn7': {
      'ar': 'Description',
      'en': '',
    },
    '0q083037': {
      'ar':
          'I think from our end -- a run through of test accounts, staging environment access. And a deep dive into current layout, reasoning, exploration. I have read through the document Alexis sent over and have been doing some preliminary research for the & after we get some test accounts we can complete the audit which I have put the deadline as next Tuesday as I feel that will be helpful to be thorough in our audit.',
      'en': '',
    },
    '8g6i2608': {
      'ar': 'Requirements',
      'en': '',
    },
    'otamshvi': {
      'ar':
          'I think from our end -- a run through of test accounts, staging environment access. And a deep dive into current layout, reasoning, exploration. I have read through the document Alexis sent over and have been doing some preliminary research for the & after we get some test accounts we can complete the audit which I have put the deadline as next Tuesday as I feel that will be helpful to be thorough in our audit.\n I think from our end -- a run through of test accounts, staging environment access. And a deep dive into current layout, reasoning, exploration. I have read through the document Alexis sent over and have been doing some preliminary research for the & after we get some test accounts we can complete the audit which I have put the deadline as next Tuesday as I feel that will be helpful to be thorough in our audit.',
      'en': '',
    },
    '1nkaoo51': {
      'ar': 'Preferred Skills & Expertise',
      'en': '',
    },
    'vkk1elhl': {
      'ar':
          'I think from our end -- a run through of test accounts, staging environment access. And a deep dive into current layout, reasoning, exploration. I have read through the document Alexis sent over and have been doing some preliminary research for the & after we get some test accounts we can complete the audit which I have put the deadline as next Tuesday as I feel that will be helpful to be thorough in our audit.\n I think from our end -- a run through of test accounts, staging environment access. And a deep dive into current layout, reasoning, exploration. I have read through the document Alexis sent over and have been doing some preliminary research for the & after we get some test accounts we can complete the audit which I have put the deadline as next Tuesday as I feel that will be helpful to be thorough in our audit.',
      'en': '',
    },
    'kv1tom07': {
      'ar': 'Submit Application',
      'en': '',
    },
    'qee3cfca': {
      'ar': 'Home',
      'en': '',
    },
  },
  // companyDetails
  {
    'ynar0mch': {
      'ar': 'Description',
      'en': '',
    },
    'uwmiqvi3': {
      'ar': 'Home',
      'en': '',
    },
  },
  // HomePage_OLD
  {
    'rgafq5jb': {
      'ar': 'Welcome',
      'en': '',
    },
    '5z5qixic': {
      'ar': 'Featured Jobs',
      'en': '',
    },
    '7ajh8oxq': {
      'ar': 'Job Title',
      'en': '',
    },
    'tbusjhyo': {
      'ar': '[Company Name]',
      'en': '',
    },
    'gekzp668': {
      'ar': '\$50k-\$60k',
      'en': '',
    },
    'j33y9uds': {
      'ar': 'Job Title',
      'en': '',
    },
    'rr8eqgds': {
      'ar': '[Company Name]',
      'en': '',
    },
    'n6iqlh2a': {
      'ar': '\$50k-\$60k',
      'en': '',
    },
    's0auqm42': {
      'ar': 'Job Title',
      'en': '',
    },
    '86205zki': {
      'ar': '[Company Name]',
      'en': '',
    },
    '4oadu0pl': {
      'ar': '\$50k-\$60k',
      'en': '',
    },
    'rbiei8sg': {
      'ar': 'Search Jobs',
      'en': '',
    },
    '738fppcz': {
      'ar': 'Search jobs here...',
      'en': '',
    },
    's9apykbc': {
      'ar': 'Posted On:',
      'en': '',
    },
    'rcx42jql': {
      'ar': ' ',
      'en': '',
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
  // verifyMobile
  {
    'khq0cada': {
      'ar': 'صفحة التاكيد',
      'en': 'Verify',
    },
    '7e3eh0cm': {
      'ar': 'رقم غير صحيح ؟',
      'en': 'Wrong number?',
    },
    'dmnfvu22': {
      'ar': 'الاستمرار',
      'en': 'Continue',
    },
    'djir74pf': {
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
  // PhoneSignUp
  {
    'j9emr6b2': {
      'ar': 'تسجيل الدخول',
      'en': 'Sign Up',
    },
    'kke6hb3o': {
      'ar': 'الرجاء ادخال رقم الهاتف لاكمال مرحلة انشاء الحساب ',
      'en': 'Please enter your phone number to complete the sign up stage ',
    },
    'kp9xikjy': {
      'ar': '+970',
      'en': '+970',
    },
    'va9y9lhi': {
      'ar': 'أدخل رقم هاتفك ...',
      'en': 'Enter your phone number...',
    },
    'iavulzck': {
      'ar': 'أوافق على جميع التعليمات \nبناءً على البرنامج',
      'en': 'I agree to all instructions based on \nthe program',
    },
    'tgvhc3xt': {
      'ar': 'الاستمرار',
      'en': 'Continue',
    },
    'mz87zvdr': {
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
    'ar38z3j3': {
      'ar': '',
      'en': '',
    },
    'qppalhqq': {
      'ar': 'اسم الاب',
      'en': 'Name of the Father',
    },
    'hcdvvtn0': {
      'ar': 'اسم الأب',
      'en': 'Name of the Father',
    },
    'siwp4rqi': {
      'ar': '',
      'en': '',
    },
    '2abshufy': {
      'ar': 'اسم الجد',
      'en': 'Grandfather name',
    },
    '9bpppzbx': {
      'ar': 'اسم الجد',
      'en': 'Grandfather name',
    },
    'cowh0wov': {
      'ar': '',
      'en': '',
    },
    'j1xausqc': {
      'ar': 'اسم العائلة',
      'en': 'Family name',
    },
    '3t0a6bly': {
      'ar': 'اسم العائلة',
      'en': 'family name',
    },
    '5m1e0d95': {
      'ar': '',
      'en': '',
    },
    'wk7dq0gn': {
      'ar': 'التالي',
      'en': 'continue',
    },
    'r53cjzi7': {
      'ar': ' الخطوة الاولى ',
      'en':
          '\nStep 1  of  4 : upload photo  for you , \nusername and date of birth',
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
      'ar': 'تحميل مستندات الشهادة أو الصور التي تفيد بأنه\n صاحب المهنة',
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
      'ar': 'لا توجد أي ملفات  تم تحميلها',
      'en': 'no any uploaded file',
    },
    'mzwdvw7k': {
      'ar': '    لا توجد أي صور تم تحميلها',
      'en': 'no any uploaded photos',
    },
    'y7hzsrmy': {
      'ar': 'التالي',
      'en': 'continue',
    },
    'gamxhpe4': {
      'ar': ' الخطوة الثالثة ',
      'en':
          '\nStep 3  of  4 : Upload certificate documents or photos that he is the owner of the profession',
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
    'qg5tlean': {
      'ar': '',
      'en':
          '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n',
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
      'en': '\nStep 3  of  4 : Upload your bio ',
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
    'c4e1qka2': {
      'ar': '',
      'en': '',
    },
    'jgbxb53x': {
      'ar': 'اسم الاب',
      'en': 'Name of the Father',
    },
    'yasi11u1': {
      'ar': 'اسم الأب',
      'en': 'Name of the Father',
    },
    'rsi2n32x': {
      'ar': '',
      'en': '',
    },
    'yqytkyhi': {
      'ar': 'اسم الجد',
      'en': 'Grandfather name',
    },
    'bnt6ewuu': {
      'ar': 'اسم الجد',
      'en': 'Grandfather name',
    },
    'lah638as': {
      'ar': '',
      'en': '',
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
      'ar': ' الخطوة الاولى ',
      'en':
          '\nStep 1  of  4 : upload photo  for you , \nusername and date of birth',
    },
    '213vtn7i': {
      'ar': 'Home',
      'en': '',
    },
  },
  // createProfileNameAddresStepTwo_customar
  {
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
    '3esq324e': {
      'ar': 'Please select...',
      'en': '',
    },
    'h79z13lh': {
      'ar': 'Search for an item...',
      'en': '',
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
    'dfzg7bo9': {
      'ar': 'البنود وشروط الخدمة',
      'en': 'Terms and Conditions of Service',
    },
    'xja3aoj4': {
      'ar': 'التالي',
      'en': 'continue',
    },
    'z43x8hh9': {
      'ar': ' الخطوة الثانية ',
      'en': '\nStep 2  of  4 :Upload address and place of residence',
    },
    'gmrwmaa6': {
      'ar': 'Home',
      'en': '',
    },
  },
  // createProfileBioStepThree_customar
  {
    'y3rxb9c3': {
      'ar': 'رقم الهوية',
      'en': 'ID Number',
    },
    'vvgw7imm': {
      'ar': '[Some hint text...]',
      'en': '',
    },
    'u5yjoclt': {
      'ar': ' اكتب السيرة الذاتية الخاصة بك',
      'en': 'Write your Bio',
    },
    'v2zyleky': {
      'ar': '[Some hint text...]',
      'en': '',
    },
    'l40ka9y6': {
      'ar': 'ذكر',
      'en': 'male',
    },
    'bffennrn': {
      'ar': 'أنثى',
      'en': 'feminine',
    },
    'ie5jweyk': {
      'ar': 'انشاء حساب',
      'en': 'Create an account',
    },
    'yqh7vg7v': {
      'ar': ' الخطوة الرابعة ',
      'en': '\nStep 3  of  4 : Upload your bio ',
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
      'en': ' Please verify your personal information',
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
      'ar': 'تسجيل ملف شخصي  جديدة',
      'en': 'Register a new profile page',
    },
    'rd0ypprn': {
      'ar': 'Home',
      'en': '',
    },
  },
  // WorkExpBottomSheet
  {
    'dnp3ulb4': {
      'ar': 'Work Experience',
      'en': '',
    },
    'e6n92fzq': {
      'ar': 'Add Credentials below.',
      'en': '',
    },
    'xz14f82k': {
      'ar': 'Position Title',
      'en': '',
    },
    '7qbyrkuy': {
      'ar': 'Company',
      'en': '',
    },
    '70fjjqtv': {
      'ar': 'Start Date',
      'en': '',
    },
    't16bvu82': {
      'ar': 'End Date',
      'en': '',
    },
    'lclkf38l': {
      'ar': 'What did you do here?',
      'en': '',
    },
    'ekvc2gv5': {
      'ar': 'Save Work Experience',
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
