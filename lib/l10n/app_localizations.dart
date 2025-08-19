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

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

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
