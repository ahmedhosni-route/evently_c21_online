// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get startTitle => 'خصص تجربتك';

  @override
  String get startDesc =>
      'اختر المظهر واللغة المفضلة لديك للبدء بتجربة مريحة ومخصصة تناسب أسلوبك.';

  @override
  String get language => 'اللغة';

  @override
  String get english => 'الإنجليزي';

  @override
  String get arabic => 'العربي';

  @override
  String get theme => 'المظهر';

  @override
  String get loginTitle => 'تسجيل الدخول إلى حسابك';

  @override
  String get emailHint => 'أدخل بريدك الإلكتروني';

  @override
  String get emailRequired => 'البريد الإلكتروني مطلوب';

  @override
  String get emailInvalid => 'أدخل بريد إلكتروني صالح';

  @override
  String get passwordHint => 'أدخل كلمة المرور الخاصة بك';

  @override
  String get passwordRequired => 'كلمة المرور مطلوبة';

  @override
  String get passwordMinLength =>
      'يجب أن تكون كلمة المرور 6 أحرف أو أرقام على الأقل';

  @override
  String get forgetPassword => 'نسيت كلمة المرور؟';

  @override
  String get dontHaveAccount => 'ليس لديك حساب ؟ ';

  @override
  String get signup => 'إنشاء حساب';

  @override
  String get registerTitle => 'إنشاء حساب جديد';

  @override
  String get nameHint => 'أدخل اسمك';

  @override
  String get nameRequired => 'الاسم مطلوب';

  @override
  String get confirmPasswordHint => 'تأكيد كلمة المرور';

  @override
  String get passwordNotMatch => 'كلمة المرور غير متطابقة';

  @override
  String get signUp => 'إنشاء حساب';

  @override
  String get alreadyHaveAccount => 'لديك حساب بالفعل؟ ';

  @override
  String get login => 'تسجيل الدخول';
}
