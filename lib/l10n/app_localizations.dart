import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @welcomeTitle.
  ///
  /// In en, this message translates to:
  /// **'Welcome to MoveEZ'**
  String get welcomeTitle;

  /// No description provided for @loginButton.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get loginButton;

  /// No description provided for @firstName.
  ///
  /// In en, this message translates to:
  /// **'First Name'**
  String get firstName;

  /// No description provided for @lastName.
  ///
  /// In en, this message translates to:
  /// **'Last Name'**
  String get lastName;

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @id_upload.
  ///
  /// In en, this message translates to:
  /// **'ID Upload'**
  String get id_upload;

  /// No description provided for @id_upload_desc.
  ///
  /// In en, this message translates to:
  /// **'Drag & drop or click to upload'**
  String get id_upload_desc;

  /// No description provided for @selectPackageTitle.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Package'**
  String get selectPackageTitle;

  /// No description provided for @floorFrom.
  ///
  /// In en, this message translates to:
  /// **'From Floor'**
  String get floorFrom;

  /// No description provided for @floorTo.
  ///
  /// In en, this message translates to:
  /// **'To Floor'**
  String get floorTo;

  /// No description provided for @elevator.
  ///
  /// In en, this message translates to:
  /// **'Elevator'**
  String get elevator;

  /// No description provided for @numRooms.
  ///
  /// In en, this message translates to:
  /// **'Number of Rooms'**
  String get numRooms;

  /// No description provided for @numBoxes.
  ///
  /// In en, this message translates to:
  /// **'Number of Boxes'**
  String get numBoxes;

  /// No description provided for @nextButton.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get nextButton;

  /// No description provided for @setupTripTitle.
  ///
  /// In en, this message translates to:
  /// **'Setup Your Trip'**
  String get setupTripTitle;

  /// No description provided for @pickupAddress.
  ///
  /// In en, this message translates to:
  /// **'Pickup Address'**
  String get pickupAddress;

  /// No description provided for @deliveryAddress.
  ///
  /// In en, this message translates to:
  /// **'Delivery Address'**
  String get deliveryAddress;

  /// No description provided for @street.
  ///
  /// In en, this message translates to:
  /// **'Street'**
  String get street;

  /// No description provided for @city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get city;

  /// No description provided for @state.
  ///
  /// In en, this message translates to:
  /// **'State / Province'**
  String get state;

  /// No description provided for @zipCode.
  ///
  /// In en, this message translates to:
  /// **'Postal Code'**
  String get zipCode;

  /// No description provided for @confirmLocation.
  ///
  /// In en, this message translates to:
  /// **'Confirm Location'**
  String get confirmLocation;

  /// No description provided for @selectDateTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Date'**
  String get selectDateTitle;

  /// No description provided for @today.
  ///
  /// In en, this message translates to:
  /// **'Today'**
  String get today;

  /// No description provided for @tomorrow.
  ///
  /// In en, this message translates to:
  /// **'Tomorrow'**
  String get tomorrow;

  /// No description provided for @chooseTime.
  ///
  /// In en, this message translates to:
  /// **'Choose Time'**
  String get chooseTime;

  /// No description provided for @searchOffers.
  ///
  /// In en, this message translates to:
  /// **'Search for Offers'**
  String get searchOffers;

  /// No description provided for @offersTitle.
  ///
  /// In en, this message translates to:
  /// **'Offers'**
  String get offersTitle;

  /// No description provided for @acceptOffer.
  ///
  /// In en, this message translates to:
  /// **'Accept Offer'**
  String get acceptOffer;

  /// No description provided for @viewDetails.
  ///
  /// In en, this message translates to:
  /// **'View Details'**
  String get viewDetails;

  /// No description provided for @priceCurrency.
  ///
  /// In en, this message translates to:
  /// **'USD'**
  String get priceCurrency;

  /// No description provided for @chatTitle.
  ///
  /// In en, this message translates to:
  /// **'Chat with Fast Transport Company'**
  String get chatTitle;

  /// No description provided for @paymentMethodTitle.
  ///
  /// In en, this message translates to:
  /// **'Select Payment Method'**
  String get paymentMethodTitle;

  /// No description provided for @paymentMethodSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Choose how you\'d like to pay for the service.'**
  String get paymentMethodSubtitle;

  /// No description provided for @creditCardOption.
  ///
  /// In en, this message translates to:
  /// **'Credit/Debit Card'**
  String get creditCardOption;

  /// No description provided for @creditCardSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Pay securely online with Visa, Mastercard, and other major cards.'**
  String get creditCardSubtitle;

  /// No description provided for @cashPaymentOption.
  ///
  /// In en, this message translates to:
  /// **'Cash Payment'**
  String get cashPaymentOption;

  /// No description provided for @cashPaymentSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Pay the driver directly in cash after the service is completed.'**
  String get cashPaymentSubtitle;

  /// No description provided for @continueToSummary.
  ///
  /// In en, this message translates to:
  /// **'Continue to Summary'**
  String get continueToSummary;

  /// No description provided for @addCardTitle.
  ///
  /// In en, this message translates to:
  /// **'Add Your Card Details'**
  String get addCardTitle;

  /// No description provided for @addCardSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Your payment information is encrypted and stored securely.'**
  String get addCardSubtitle;

  /// No description provided for @cardNumber.
  ///
  /// In en, this message translates to:
  /// **'Card Number'**
  String get cardNumber;

  /// No description provided for @cardholderName.
  ///
  /// In en, this message translates to:
  /// **'Cardholder Name'**
  String get cardholderName;

  /// No description provided for @cardholderHint.
  ///
  /// In en, this message translates to:
  /// **'Name as it appears on the card'**
  String get cardholderHint;

  /// No description provided for @expiryDate.
  ///
  /// In en, this message translates to:
  /// **'Expiry Date'**
  String get expiryDate;

  /// No description provided for @cvv.
  ///
  /// In en, this message translates to:
  /// **'CVV'**
  String get cvv;

  /// No description provided for @saveCard.
  ///
  /// In en, this message translates to:
  /// **'Save this card for faster payments in the future'**
  String get saveCard;

  /// No description provided for @addCardButton.
  ///
  /// In en, this message translates to:
  /// **'Add Card'**
  String get addCardButton;

  /// No description provided for @reviewTitle.
  ///
  /// In en, this message translates to:
  /// **'Review & Confirm Your Booking'**
  String get reviewTitle;

  /// No description provided for @bookingSummary.
  ///
  /// In en, this message translates to:
  /// **'Booking Summary'**
  String get bookingSummary;

  /// No description provided for @serviceFee.
  ///
  /// In en, this message translates to:
  /// **'Service Fee'**
  String get serviceFee;

  /// No description provided for @serviceTax.
  ///
  /// In en, this message translates to:
  /// **'Service Tax'**
  String get serviceTax;

  /// No description provided for @totalAmountDue.
  ///
  /// In en, this message translates to:
  /// **'Total Amount Due'**
  String get totalAmountDue;

  /// No description provided for @paymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Payment Method'**
  String get paymentMethod;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @confirmPayment.
  ///
  /// In en, this message translates to:
  /// **'Pay {amount} and Confirm'**
  String confirmPayment(Object amount);

  /// No description provided for @register_as.
  ///
  /// In en, this message translates to:
  /// **'Register as a...'**
  String get register_as;

  /// No description provided for @choose_your_path.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Path'**
  String get choose_your_path;

  /// No description provided for @independent_vehicle_owner.
  ///
  /// In en, this message translates to:
  /// **'Independent Vehicle Owner'**
  String get independent_vehicle_owner;

  /// No description provided for @independent_vehicle_owner_desc.
  ///
  /// In en, this message translates to:
  /// **'Manage your fleet, set your rates, and accept jobs directly.'**
  String get independent_vehicle_owner_desc;

  /// No description provided for @registered_transport_company.
  ///
  /// In en, this message translates to:
  /// **'Registered Transport Company'**
  String get registered_transport_company;

  /// No description provided for @registered_transport_company_desc.
  ///
  /// In en, this message translates to:
  /// **'Register your company, define your service offerings, and expand your reach.'**
  String get registered_transport_company_desc;

  /// No description provided for @select_vehicles.
  ///
  /// In en, this message translates to:
  /// **'Select Vehicles'**
  String get select_vehicles;

  /// No description provided for @choose_vehicle_types.
  ///
  /// In en, this message translates to:
  /// **'Choose your vehicle types'**
  String get choose_vehicle_types;

  /// No description provided for @select_vehicles_desc.
  ///
  /// In en, this message translates to:
  /// **'Select the vehicles and quantities required for your move.'**
  String get select_vehicles_desc;

  /// No description provided for @small_transport.
  ///
  /// In en, this message translates to:
  /// **'Pickup / Van'**
  String get small_transport;

  /// No description provided for @small_transport_desc.
  ///
  /// In en, this message translates to:
  /// **'Ideal for small apartment moves or single-item transport.'**
  String get small_transport_desc;

  /// No description provided for @small_transport_capacity.
  ///
  /// In en, this message translates to:
  /// **'Up to 1.5 tons'**
  String get small_transport_capacity;

  /// No description provided for @medium_transport.
  ///
  /// In en, this message translates to:
  /// **'Box Truck'**
  String get medium_transport;

  /// No description provided for @medium_transport_desc.
  ///
  /// In en, this message translates to:
  /// **'Suitable for 1-2 bedroom apartments or office equipment.'**
  String get medium_transport_desc;

  /// No description provided for @medium_transport_capacity.
  ///
  /// In en, this message translates to:
  /// **'Up to 3 tons'**
  String get medium_transport_capacity;

  /// No description provided for @heavy_transport.
  ///
  /// In en, this message translates to:
  /// **'Large Box Truck'**
  String get heavy_transport;

  /// No description provided for @heavy_transport_desc.
  ///
  /// In en, this message translates to:
  /// **'Perfect for large homes, commercial moves, or heavy cargo.'**
  String get heavy_transport_desc;

  /// No description provided for @heavy_transport_capacity.
  ///
  /// In en, this message translates to:
  /// **'Over 5 tons'**
  String get heavy_transport_capacity;

  /// No description provided for @next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get next;

  /// No description provided for @company_registration.
  ///
  /// In en, this message translates to:
  /// **'Company Registration'**
  String get company_registration;

  /// No description provided for @select_services_offered.
  ///
  /// In en, this message translates to:
  /// **'Select Services Offered'**
  String get select_services_offered;

  /// No description provided for @furniture_moving.
  ///
  /// In en, this message translates to:
  /// **'Furniture Moving'**
  String get furniture_moving;

  /// No description provided for @general_goods_cargo.
  ///
  /// In en, this message translates to:
  /// **'General Goods & Cargo'**
  String get general_goods_cargo;

  /// No description provided for @company_details.
  ///
  /// In en, this message translates to:
  /// **'Company Details'**
  String get company_details;

  /// No description provided for @company_name.
  ///
  /// In en, this message translates to:
  /// **'Company Name'**
  String get company_name;

  /// No description provided for @company_name_value.
  ///
  /// In en, this message translates to:
  /// **'MoveFlow Logistics'**
  String get company_name_value;

  /// No description provided for @company_address.
  ///
  /// In en, this message translates to:
  /// **'Company Address'**
  String get company_address;

  /// No description provided for @company_address_value.
  ///
  /// In en, this message translates to:
  /// **'123 Main Street, Anytown, USA 12345'**
  String get company_address_value;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phone_number;

  /// No description provided for @phone_number_value.
  ///
  /// In en, this message translates to:
  /// **'(123) 456-7890'**
  String get phone_number_value;

  /// No description provided for @email_address.
  ///
  /// In en, this message translates to:
  /// **'Email Address'**
  String get email_address;

  /// No description provided for @email_address_value.
  ///
  /// In en, this message translates to:
  /// **'contact@moveflow.com'**
  String get email_address_value;

  /// No description provided for @business_license_upload.
  ///
  /// In en, this message translates to:
  /// **'Business License Upload'**
  String get business_license_upload;

  /// No description provided for @business_license_upload_desc.
  ///
  /// In en, this message translates to:
  /// **'Drag & drop or click to upload'**
  String get business_license_upload_desc;

  /// No description provided for @register_company.
  ///
  /// In en, this message translates to:
  /// **'Register Company'**
  String get register_company;

  /// No description provided for @company_profile.
  ///
  /// In en, this message translates to:
  /// **'Company Profile'**
  String get company_profile;

  /// No description provided for @owner_name.
  ///
  /// In en, this message translates to:
  /// **'Owner Name'**
  String get owner_name;

  /// No description provided for @owner_name_value.
  ///
  /// In en, this message translates to:
  /// **'Jane Doe'**
  String get owner_name_value;

  /// No description provided for @license_number.
  ///
  /// In en, this message translates to:
  /// **'License Number'**
  String get license_number;

  /// No description provided for @license_number_value.
  ///
  /// In en, this message translates to:
  /// **'MVF-2023-XYZ-123'**
  String get license_number_value;

  /// No description provided for @contact_information.
  ///
  /// In en, this message translates to:
  /// **'Contact Information'**
  String get contact_information;

  /// No description provided for @security.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @edit.
  ///
  /// In en, this message translates to:
  /// **'Edit'**
  String get edit;

  /// No description provided for @save_changes.
  ///
  /// In en, this message translates to:
  /// **'Save Changes'**
  String get save_changes;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @new_message.
  ///
  /// In en, this message translates to:
  /// **'New message from client {clientName}.'**
  String new_message(Object clientName);

  /// No description provided for @new_message_desc.
  ///
  /// In en, this message translates to:
  /// **'Regarding your recent price offer for job #{jobId}'**
  String new_message_desc(Object jobId);

  /// No description provided for @job_status_update.
  ///
  /// In en, this message translates to:
  /// **'Job #{jobId} status updated.'**
  String job_status_update(Object jobId);

  /// No description provided for @job_status_update_desc.
  ///
  /// In en, this message translates to:
  /// **'The client has confirmed the pickup time. Review'**
  String get job_status_update_desc;

  /// No description provided for @price_offer_sent.
  ///
  /// In en, this message translates to:
  /// **'Price offer sent for job #{jobId}.'**
  String price_offer_sent(Object jobId);

  /// No description provided for @price_offer_sent_desc.
  ///
  /// In en, this message translates to:
  /// **'Offer for transportation of office furniture to client'**
  String get price_offer_sent_desc;

  /// No description provided for @critical_maintenance.
  ///
  /// In en, this message translates to:
  /// **'Critical system maintenance scheduled.'**
  String get critical_maintenance;

  /// No description provided for @critical_maintenance_desc.
  ///
  /// In en, this message translates to:
  /// **'Our services will be briefly interrupted on {date} at {time}'**
  String critical_maintenance_desc(Object date, Object time);

  /// No description provided for @request_details.
  ///
  /// In en, this message translates to:
  /// **'Request Details'**
  String get request_details;

  /// No description provided for @client_name.
  ///
  /// In en, this message translates to:
  /// **'Sarah Johnson'**
  String get client_name;

  /// No description provided for @request_id.
  ///
  /// In en, this message translates to:
  /// **'Request ID: {requestId}'**
  String request_id(Object requestId);

  /// No description provided for @new_request.
  ///
  /// In en, this message translates to:
  /// **'New Request'**
  String get new_request;

  /// No description provided for @pickup.
  ///
  /// In en, this message translates to:
  /// **'Pickup:'**
  String get pickup;

  /// No description provided for @pickup_address.
  ///
  /// In en, this message translates to:
  /// **'123 Maple Ave, Cityville, CA'**
  String get pickup_address;

  /// No description provided for @dropoff.
  ///
  /// In en, this message translates to:
  /// **'Drop-off:'**
  String get dropoff;

  /// No description provided for @dropoff_address.
  ///
  /// In en, this message translates to:
  /// **'456 Oak Blvd, Townsville, CA'**
  String get dropoff_address;

  /// No description provided for @service_type.
  ///
  /// In en, this message translates to:
  /// **'Service Type:'**
  String get service_type;

  /// No description provided for @service_type_value.
  ///
  /// In en, this message translates to:
  /// **'Full Home Move'**
  String get service_type_value;

  /// No description provided for @date_time.
  ///
  /// In en, this message translates to:
  /// **'Date/Time'**
  String get date_time;

  /// No description provided for @date_time_value.
  ///
  /// In en, this message translates to:
  /// **'December 15, 2023, 10:00 AM'**
  String get date_time_value;

  /// No description provided for @notes.
  ///
  /// In en, this message translates to:
  /// **'Notes:'**
  String get notes;

  /// No description provided for @notes_value.
  ///
  /// In en, this message translates to:
  /// **'Fragile items included, especially glassware. Needs extra care with antique furniture.'**
  String get notes_value;

  /// No description provided for @send_offer.
  ///
  /// In en, this message translates to:
  /// **'Send Offer'**
  String get send_offer;

  /// No description provided for @manage_job.
  ///
  /// In en, this message translates to:
  /// **'Manage Job'**
  String get manage_job;

  /// No description provided for @financial_summary.
  ///
  /// In en, this message translates to:
  /// **'Financial Summary'**
  String get financial_summary;

  /// No description provided for @overall_performance.
  ///
  /// In en, this message translates to:
  /// **'Overall Performance'**
  String get overall_performance;

  /// No description provided for @total_amount.
  ///
  /// In en, this message translates to:
  /// **'{amount} SAR'**
  String total_amount(Object amount);

  /// No description provided for @profit_share.
  ///
  /// In en, this message translates to:
  /// **'Profit Share'**
  String get profit_share;

  /// No description provided for @original_amount.
  ///
  /// In en, this message translates to:
  /// **'Original Amount in SAR'**
  String get original_amount;

  /// No description provided for @actions.
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get actions;

  /// No description provided for @view_report.
  ///
  /// In en, this message translates to:
  /// **'View Report'**
  String get view_report;

  /// No description provided for @order_id.
  ///
  /// In en, this message translates to:
  /// **'Order ID {orderId} {date}'**
  String order_id(Object date, Object orderId);

  /// No description provided for @order_type.
  ///
  /// In en, this message translates to:
  /// **'Order Type'**
  String get order_type;

  /// No description provided for @delivery.
  ///
  /// In en, this message translates to:
  /// **'Delivery'**
  String get delivery;

  /// No description provided for @shipping.
  ///
  /// In en, this message translates to:
  /// **'Shipping'**
  String get shipping;

  /// No description provided for @previous_share.
  ///
  /// In en, this message translates to:
  /// **'Previous Share: {amount} SAR'**
  String previous_share(Object amount);

  /// No description provided for @company_share.
  ///
  /// In en, this message translates to:
  /// **'Company Share'**
  String get company_share;

  /// No description provided for @client_share.
  ///
  /// In en, this message translates to:
  /// **'Client Share'**
  String get client_share;

  /// No description provided for @total_goods.
  ///
  /// In en, this message translates to:
  /// **'Total Goods'**
  String get total_goods;

  /// No description provided for @total_amount_value.
  ///
  /// In en, this message translates to:
  /// **'Total Amount: {amount} SAR'**
  String total_amount_value(Object amount);

  /// No description provided for @payment_invoice.
  ///
  /// In en, this message translates to:
  /// **'Pay Invoice'**
  String get payment_invoice;

  /// No description provided for @order_details.
  ///
  /// In en, this message translates to:
  /// **'Order Details'**
  String get order_details;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
