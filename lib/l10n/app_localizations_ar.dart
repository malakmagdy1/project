// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get welcomeTitle => 'اهلاً بك في MoveEZ';

  @override
  String get loginButton => 'تسجيل';

  @override
  String get firstName => 'الاسم الأول';

  @override
  String get lastName => 'الاسم الأخير';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String get password => 'كلمة المرور';

  @override
  String get phoneNumber => 'رقم الهاتف';

  @override
  String get selectPackageTitle => 'اختر الباقة';

  @override
  String get floorFrom => 'من طابق';

  @override
  String get floorTo => 'إلى طابق';

  @override
  String get elevator => 'المصعد';

  @override
  String get numRooms => 'عدد الغرف';

  @override
  String get numBoxes => 'عدد الصناديق';

  @override
  String get nextButton => 'متابعة';

  @override
  String get setupTripTitle => 'إعداد الرحلة';

  @override
  String get pickupAddress => 'عنوان الاستلام';

  @override
  String get deliveryAddress => 'عنوان التسليم';

  @override
  String get street => 'الشارع';

  @override
  String get city => 'المدينة';

  @override
  String get state => 'المنطقة / الولاية';

  @override
  String get zipCode => 'الرمز البريدي';

  @override
  String get confirmLocation => 'تأكيد الموقع';

  @override
  String get selectDateTitle => 'اختر التاريخ';

  @override
  String get today => 'اليوم';

  @override
  String get tomorrow => 'غداً';

  @override
  String get chooseTime => 'اختر الوقت';

  @override
  String get searchOffers => 'ابحث عن عرض';

  @override
  String get offersTitle => 'العروض';

  @override
  String get acceptOffer => 'قبول العرض';

  @override
  String get viewDetails => 'عرض التفاصيل';

  @override
  String get priceCurrency => 'دولار';

  @override
  String get chatTitle => 'الدردشة مع شركة النقل السريع';

  @override
  String get paymentMethodTitle => 'اختر طريقة الدفع';

  @override
  String get paymentMethodSubtitle => 'اختر كيف تحب أن تدفع مقابل الخدمة.';

  @override
  String get creditCardOption => 'بطاقة ائتمان/خصم';

  @override
  String get creditCardSubtitle => 'ادفع بأمان عبر الإنترنت باستخدام فيزا أو ماستركارد أو بطاقات أخرى.';

  @override
  String get cashPaymentOption => 'الدفع نقدًا';

  @override
  String get cashPaymentSubtitle => 'ادفع للسائق مباشرةً نقدًا بعد اكتمال الخدمة.';

  @override
  String get continueToSummary => 'متابعة إلى الملخص';

  @override
  String get addCardTitle => 'أضف تفاصيل بطاقتك';

  @override
  String get addCardSubtitle => 'يتم تشفير معلومات الدفع الخاصة بك وتخزينها بأمان.';

  @override
  String get cardNumber => 'رقم البطاقة';

  @override
  String get cardholderName => 'اسم حامل البطاقة';

  @override
  String get cardholderHint => 'الاسم كما يظهر على البطاقة';

  @override
  String get expiryDate => 'تاريخ الانتهاء';

  @override
  String get cvv => 'رمز CVV';

  @override
  String get saveCard => 'احفظ هذه البطاقة لمدفوعات أسرع في المستقبل';

  @override
  String get addCardButton => 'إضافة البطاقة';

  @override
  String get reviewTitle => 'مراجعة وتأكيد الحجز';

  @override
  String get bookingSummary => 'ملخص الحجز';

  @override
  String get serviceFee => 'رسوم الخدمة';

  @override
  String get serviceTax => 'ضريبة الخدمة';

  @override
  String get totalAmountDue => 'المبلغ الإجمالي المستحق';

  @override
  String get paymentMethod => 'طريقة الدفع';

  @override
  String get change => 'تغيير';

  @override
  String confirmPayment(Object amount) {
    return 'ادفع $amount و أكد';
  }
}
