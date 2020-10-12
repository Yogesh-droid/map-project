import 'package:map_projects/ArrangeDelivery/UI/arrange_delivery.dart';
import 'package:map_projects/BottomNavigation/Account/saved_address_page.dart';
import 'package:map_projects/BottomNavigation/Account/contact_us_page.dart';
import 'package:map_projects/BottomNavigation/Account/my_profile_page.dart';
import 'package:map_projects/BottomNavigation/Account/tnc_page.dart';
import 'package:map_projects/BottomNavigation/bottom_navigation.dart';
import 'package:map_projects/GetFoodDelivered/UI/get_food_delivered.dart';
import 'package:map_projects/GetGroceryDelivered/UI/get_grocery_delivered.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:map_projects/ArrangeDelivery/UI/measurement.dart';
import 'package:map_projects/Payment/payment.dart';
import 'package:map_projects/Payment/pickup_assigned.dart';
import 'package:map_projects/BottomNavigation/MyDeliveries/my_deliveries.dart';
import 'package:map_projects/Pages/track_delivery.dart';

class PageRoutes {
  static const String trackDelivery = 'track_delivery';
  static const String savedAddressesPage = 'saved_addresses_page';
  static const String contactUsPage = 'contact_us_page';
  static const String tncPage = 'Terms&Condition';
  static const String bottomNavigation = 'bottom_navigation';
  static const String deliverypickupLocation = 'deliverypickup_location';
  static const String deliverydropLocation = 'deliverydrop_location';
  static const String courierInfo = 'courier_info';
  static const String deliveryconfirmInfo = 'deliveryconfirm_info';
  static const String measurement = 'measurement';
  static const String payment = 'payment';
  static const String pickupAssigned = 'pickup_assigned';
  static const String deliveries = 'my_deliveries';
  static const String myProfilePage = 'my_profile_page';
  static const String arrangeDeliveryPage = 'arrange_delivery_page';
  static const String getFoodDeliveredPage = 'get_food_delivered_page';
  static const String getGroceryDeliveredPage = 'get_grocery_delivered_page';

  Map<String, WidgetBuilder> routes() {
    return {
      trackDelivery: (context) => TrackDelivery(),
      savedAddressesPage: (context) => SavedAddressesPage(),
      contactUsPage: (context) => ContactUsPage(),
      tncPage: (context) => TncPage(),
      deliveries: (context) => MyDeliveriesPage(),
      bottomNavigation: (context) => BottomNavigation(),
      measurement: (context) => Measurement(),
      payment: (context) => Payment(),
      pickupAssigned: (context) => PickupAssigned(),
      myProfilePage: (context) => MyProfilePage(),
      arrangeDeliveryPage: (context) => ArrangeDeliveryPage(),
      getFoodDeliveredPage: (context) => GetFoodDeliveredPage(),
      getGroceryDeliveredPage: (context) => GetGroceryDeliveredPage(),
    };
  }
}
