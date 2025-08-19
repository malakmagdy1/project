// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get welcomeTitle => 'Welcome to MoveEZ';

  @override
  String get loginButton => 'Login';

  @override
  String get firstName => 'First Name';

  @override
  String get lastName => 'Last Name';

  @override
  String get email => 'Email';

  @override
  String get password => 'Password';

  @override
  String get phoneNumber => 'Phone Number';

  @override
  String get selectPackageTitle => 'Choose Your Package';

  @override
  String get floorFrom => 'From Floor';

  @override
  String get floorTo => 'To Floor';

  @override
  String get elevator => 'Elevator';

  @override
  String get numRooms => 'Number of Rooms';

  @override
  String get numBoxes => 'Number of Boxes';

  @override
  String get nextButton => 'Next';

  @override
  String get setupTripTitle => 'Setup Your Trip';

  @override
  String get pickupAddress => 'Pickup Address';

  @override
  String get deliveryAddress => 'Delivery Address';

  @override
  String get street => 'Street';

  @override
  String get city => 'City';

  @override
  String get state => 'State / Province';

  @override
  String get zipCode => 'Postal Code';

  @override
  String get confirmLocation => 'Confirm Location';

  @override
  String get selectDateTitle => 'Select Date';

  @override
  String get today => 'Today';

  @override
  String get tomorrow => 'Tomorrow';

  @override
  String get chooseTime => 'Choose Time';

  @override
  String get searchOffers => 'Search for Offers';

  @override
  String get offersTitle => 'Offers';

  @override
  String get acceptOffer => 'Accept Offer';

  @override
  String get viewDetails => 'View Details';

  @override
  String get priceCurrency => 'USD';

  @override
  String get chatTitle => 'Chat with Fast Transport Company';

  @override
  String get paymentMethodTitle => 'Select Payment Method';

  @override
  String get paymentMethodSubtitle => 'Choose how you\'d like to pay for the service.';

  @override
  String get creditCardOption => 'Credit/Debit Card';

  @override
  String get creditCardSubtitle => 'Pay securely online with Visa, Mastercard, and other major cards.';

  @override
  String get cashPaymentOption => 'Cash Payment';

  @override
  String get cashPaymentSubtitle => 'Pay the driver directly in cash after the service is completed.';

  @override
  String get continueToSummary => 'Continue to Summary';

  @override
  String get addCardTitle => 'Add Your Card Details';

  @override
  String get addCardSubtitle => 'Your payment information is encrypted and stored securely.';

  @override
  String get cardNumber => 'Card Number';

  @override
  String get cardholderName => 'Cardholder Name';

  @override
  String get cardholderHint => 'Name as it appears on the card';

  @override
  String get expiryDate => 'Expiry Date';

  @override
  String get cvv => 'CVV';

  @override
  String get saveCard => 'Save this card for faster payments in the future';

  @override
  String get addCardButton => 'Add Card';

  @override
  String get reviewTitle => 'Review & Confirm Your Booking';

  @override
  String get bookingSummary => 'Booking Summary';

  @override
  String get serviceFee => 'Service Fee';

  @override
  String get serviceTax => 'Service Tax';

  @override
  String get totalAmountDue => 'Total Amount Due';

  @override
  String get paymentMethod => 'Payment Method';

  @override
  String get change => 'Change';

  @override
  String confirmPayment(Object amount) {
    return 'Pay $amount and Confirm';
  }
}
