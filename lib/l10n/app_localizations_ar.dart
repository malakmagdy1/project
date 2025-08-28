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
  String get phoneNumber => 'رقم الهاتف';

  @override
  String get id_upload => 'رفع الهوية';

  @override
  String get id_upload_desc => 'اسحب وأفلت أو اضغط للتحميل';

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

  @override
  String get register_as => 'سجّل كـ...';

  @override
  String get choose_your_path => 'اختر مسارك';

  @override
  String get independent_vehicle_owner => 'مالك مركبة مستقل';

  @override
  String get independent_vehicle_owner_desc => 'أدِر أسطولك، حدّد أسعارك، واقبل الطلبات مباشرةً.';

  @override
  String get registered_transport_company => 'شركة نقل مسجّلة';

  @override
  String get registered_transport_company_desc => 'سجّل شركتك، عرّف خدماتك، ووسّع نطاق وصولك.';

  @override
  String get select_vehicles => 'اختيار المركبات';

  @override
  String get choose_vehicle_types => 'اختر أنواع المركبات';

  @override
  String get select_vehicles_desc => 'اختر المركبات والكميات المطلوبة لنقلك.';

  @override
  String get small_transport => 'نص نقل (بيك أب / فان)';

  @override
  String get small_transport_desc => 'مثالية لنقل شقق صغيرة أو عنصر واحد.';

  @override
  String get small_transport_capacity => 'حتى 1.5 طن';

  @override
  String get medium_transport => 'متوسطة النقل (شاحنة صندوقية)';

  @override
  String get medium_transport_desc => 'مناسبة لشقق 1-2 غرفة نوم أو معدات مكتبية.';

  @override
  String get medium_transport_capacity => 'حتى 3 أطنان';

  @override
  String get heavy_transport => 'شاحنة كبيرة (صندوقية كبيرة)';

  @override
  String get heavy_transport_desc => 'مثالية للمنازل الكبيرة أو النقل التجاري أو البضائع الثقيلة.';

  @override
  String get heavy_transport_capacity => 'أكثر من 5 أطنان';

  @override
  String get next => 'التالي';

  @override
  String get company_registration => 'تسجيل الشركة';

  @override
  String get select_services_offered => 'اختر الخدمات المقدمة';

  @override
  String get furniture_moving => 'نقل الأثاث';

  @override
  String get general_goods_cargo => 'البضائع والشحن العام';

  @override
  String get company_details => 'تفاصيل الشركة';

  @override
  String get company_name => 'اسم الشركة';

  @override
  String get company_name_value => 'موف فلو لوجستكس';

  @override
  String get company_address => 'عنوان الشركة';

  @override
  String get company_address_value => '123 شارع رئيسي، أي مدينة، الولايات المتحدة 12345';

  @override
  String get phone_number => 'رقم الهاتف';

  @override
  String get phone_number_value => '(123) 456-7890';

  @override
  String get email_address => 'البريد الإلكتروني';

  @override
  String get email_address_value => 'contact@moveflow.com';

  @override
  String get business_license_upload => 'رفع رخصة العمل';

  @override
  String get business_license_upload_desc => 'اسحب وأفلت أو اضغط للتحميل';

  @override
  String get register_company => 'تسجيل الشركة';

  @override
  String get company_profile => 'ملف الشركة';

  @override
  String get owner_name => 'اسم المالك';

  @override
  String get owner_name_value => 'جين دو';

  @override
  String get license_number => 'رقم الترخيص';

  @override
  String get license_number_value => 'MVF-2023-XYZ-123';

  @override
  String get contact_information => 'معلومات الاتصال';

  @override
  String get security => 'الأمان';

  @override
  String get password => 'كلمة المرور';

  @override
  String get edit => 'تعديل';

  @override
  String get save_changes => 'حفظ التغييرات';

  @override
  String get notifications => 'الإشعارات';

  @override
  String new_message(Object clientName) {
    return 'رسالة جديدة من العميل $clientName.';
  }

  @override
  String new_message_desc(Object jobId) {
    return 'بخصوص عرض السعر الأخير الخاص بك للطلب #$jobId';
  }

  @override
  String job_status_update(Object jobId) {
    return 'تم تحديث حالة الطلب #$jobId.';
  }

  @override
  String get job_status_update_desc => 'قام العميل بتأكيد وقت الاستلام. يرجى المراجعة';

  @override
  String price_offer_sent(Object jobId) {
    return 'تم إرسال عرض السعر للطلب #$jobId.';
  }

  @override
  String get price_offer_sent_desc => 'عرض لنقل أثاث المكتب إلى العميل';

  @override
  String get critical_maintenance => 'تم جدولة صيانة نظام حرجة.';

  @override
  String critical_maintenance_desc(Object date, Object time) {
    return 'سيتم إيقاف خدماتنا مؤقتًا في $date الساعة $time';
  }

  @override
  String get request_details => 'تفاصيل الطلب';

  @override
  String get client_name => 'سارة جونسون';

  @override
  String request_id(Object requestId) {
    return 'معرّف الطلب: $requestId';
  }

  @override
  String get new_request => 'طلب جديد';

  @override
  String get pickup => 'الاستلام:';

  @override
  String get pickup_address => '123 شارع مابل، سيتي فيل، كاليفورنيا';

  @override
  String get dropoff => 'التسليم:';

  @override
  String get dropoff_address => '456 شارع أوك، تاونزفيل، كاليفورنيا';

  @override
  String get service_type => 'نوع الخدمة:';

  @override
  String get service_type_value => 'نقل منزل كامل';

  @override
  String get date_time => 'التاريخ / الوقت';

  @override
  String get date_time_value => '15 ديسمبر 2023، 10:00 صباحًا';

  @override
  String get notes => 'ملاحظات:';

  @override
  String get notes_value => 'توجد عناصر قابلة للكسر خاصة الزجاجيات. يحتاج الأمر لعناية إضافية مع الأثاث العتيق.';

  @override
  String get send_offer => 'إرسال العرض';

  @override
  String get manage_job => 'إدارة الطلب';

  @override
  String get financial_summary => 'ملخص مالي';

  @override
  String get overall_performance => 'ملخص الأداء الكلي';

  @override
  String total_amount(Object amount) {
    return '$amount ر.س';
  }

  @override
  String get profit_share => 'نصيب الأرباح';

  @override
  String get original_amount => 'المبلغ الأصلي بعملة ر.س';

  @override
  String get actions => 'الإجراءات';

  @override
  String get view_report => 'عرض التقرير';

  @override
  String order_id(Object date, Object orderId) {
    return 'رقم الطلب $orderId $date';
  }

  @override
  String get order_type => 'نوع الطلب';

  @override
  String get delivery => 'توصيل';

  @override
  String get shipping => 'شحن';

  @override
  String previous_share(Object amount) {
    return 'النصيب السابق: $amount ر.س';
  }

  @override
  String get company_share => 'نصيب الشركة';

  @override
  String get client_share => 'نصيب العميل';

  @override
  String get total_goods => 'إجمالي السلع';

  @override
  String total_amount_value(Object amount) {
    return 'المبلغ الكلي: $amount ر.س';
  }

  @override
  String get payment_invoice => 'دفع الفاتورة';

  @override
  String get order_details => 'الطلبات التفصيلية';
}
