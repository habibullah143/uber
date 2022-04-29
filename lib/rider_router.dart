import 'package:flutter/material.dart';
import 'package:uberr/screens/Driver/chat_rider.dart';
import 'package:uberr/screens/Rider/Delivery/delivery_location.dart';
import 'package:uberr/screens/Rider/Delivery/order_sumary.dart';
import 'package:uberr/screens/Rider/Delivery/select_Category.dart';
import 'package:uberr/screens/Rider/Delivery/select_vehicle.dart';
import 'package:uberr/screens/Rider/Delivery/select_weight.dart';
import 'package:uberr/screens/Rider/Map%20Screens/destination_view.dart';
import 'package:uberr/screens/Rider/Map%20Screens/home.dart';
import 'package:uberr/screens/Rider/Settings/change_password.dart';
import 'package:uberr/screens/Rider/Settings/edit_profile.dart';
import 'package:uberr/screens/Rider/Settings/language.dart';
import 'package:uberr/screens/Rider/Settings/saved_address.dart';
import 'package:uberr/screens/Rider/Settings/settings.dart';
import 'package:uberr/screens/Rider/Settings/touch_id.dart';
import 'package:uberr/screens/Rider/payments/payment_selection.dart';
import 'package:uberr/screens/Rider/Drawer%20Screens/refer_earn.dart';
import 'package:uberr/screens/Rider/payments/add_card.dart';
import 'package:uberr/screens/Rider/Settings/country_select.dart';
import 'package:uberr/screens/Other%20Screens/favorites.dart';
import 'package:uberr/screens/Other%20Screens/login.dart';
import 'package:uberr/screens/Rider/Drawer%20Screens/my_rides.dart';
import 'package:uberr/screens/Other%20Screens/otp_verification.dart';
import 'package:uberr/screens/Rider/payments/payment.dart';
import 'package:uberr/screens/Rider/Authentication/phone_registration.dart';
import 'package:uberr/screens/Other%20Screens/profile.dart';
import 'package:uberr/screens/Rider/Drawer%20Screens/promotions.dart';
import 'package:uberr/screens/Other%20Screens/register.dart';
import 'package:uberr/screens/Other%20Screens/suggested_rides.dart';
import 'package:uberr/screens/Other%20Screens/unauth.dart';
import 'package:uberr/screens/Other%20Screens/update_favorite.dart';
import 'package:uberr/screens/Other%20Screens/update_information.dart';
import 'package:uberr/screens/Other%20Screens/walkthrough.dart';

import 'screens/Rider/Authentication/login_demo.dart.dart';
import 'screens/Rider/Map Screens/homescreen3.dart';

Map<String, Widget Function(BuildContext)> router = {
  WalkThrough.walkThrough: (context) => WalkThrough(),
  Register.register: (context) => const Register(),
  Login.login: (context) => const Login(),
  PhoneRegistration.phoneRegister: (context) => const PhoneRegistration(),
  OtpVerification.otpVerification: (context) => const OtpVerification(),
  UpdateInformation.updateInfo: (context) => const UpdateInformation(),
  SelectCountry.selectCountry: (context) => const SelectCountry(),
  Homepage.home: (context) => const Homepage(),
  DestinationView.destination: (context) => const DestinationView(),
  UnAuth.unAuth: (context) => const UnAuth(),
  Profile.profile: (context) => const Profile(),
  Payment.payment: (context) => const Payment(),
  AddCard.addCart: (context) => const AddCard(),
  ChatRider.chatRider: (context) => const ChatRider(),
  Favourites.favourities: (context) => Favourites(),
  Promotions.promotions: (context) => const Promotions(),
  UpdateFavorite.updateFavourite: (context) => const UpdateFavorite(),
  SuggestedRides.suggestedRides: (context) => const SuggestedRides(),
  MyRides.myRides: (context) => const MyRides(),
  Settings.settings: (context) => const Settings(),
  ChangePassword.changePassword: (context) => const ChangePassword(),
  EditProfile.editProofile: (context) => EditProfile(),
  LanguageSelection.languageSelection: (context) => const LanguageSelection(),
  SavedAddress.savedAddress: (context) => const SavedAddress(),
  TouchId.touchId: (context) => const TouchId(),
  LoginDemo.loginDemo: (context) => LoginDemo(),
  ReferEarn.referEarn: (context) => const ReferEarn(),
  PaymentSelection.paymentSelection: (context) => const PaymentSelection(),
  SelectCategory.selectCategory: (context) => const SelectCategory(),
  DeliveryLocation.deliveryLocation: (context) => const DeliveryLocation(),
  OrderSummary.orderSummary: (context) => const OrderSummary(),
  SelectVehicle.selectVehicle: (context) => const SelectVehicle(),
  SelectWeight.selectWeight: (context) => const SelectWeight(),
  Homes3.homes3: (context) => const Homes3(),
};
