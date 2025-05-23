import 'package:flutter/material.dart';
import '../../presentation/theme/app_theme.dart';

class AppConstants {
  //----------------------------------------------------------------
  // Margin and Padding

  // Margin
  static const double marginZero = 0.0;
  static const double marginXS = 3.0;
  static const double marginS = 5.0;
  static const double marginM = 8.0;
  static const double marginL = 10.0;
  static const double marginXL = 15.0;
  static const double marginXXL = 20.0;

  // Padding
  static const double paddingZero = 0.0;
  static const double paddingXS = 3.0;
  static const double paddingS = 5.0;
  static const double paddingM = 8.0;
  static const double paddingL = 10.0;
  static const double paddingXL = 15.0;
  static const double paddingXXL = 20.0;
  static const double paddingXXXL = 30.0;

  // Custom Padding
  static const EdgeInsets paddingSearchBar = EdgeInsets.fromLTRB(10, 8, 10, 12);
  static const EdgeInsets paddingSearchBarRow = EdgeInsets.fromLTRB(
    12,
    0,
    8,
    0,
  );
  static const EdgeInsets paddingSearchBarField = EdgeInsets.fromLTRB(
    4,
    0,
    0,
    0,
  );
  static const EdgeInsets paddingListTile = EdgeInsets.symmetric(
    horizontal: 10,
  );
  static const EdgeInsets paddingListTileName = EdgeInsets.fromLTRB(
    12,
    0,
    0,
    0,
  );
  static const EdgeInsets paddingListTileContact = EdgeInsets.fromLTRB(
    10,
    5,
    0,
    0,
  );
  static const EdgeInsets paddingListTileRow = EdgeInsets.all(8);
  static const EdgeInsets paddingChip = EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 10,
  );

  // Separators
  static const double separatorXS = 3.0;
  static const double separatorS = 5.0;
  static const double separatorM = 8.0;
  static const double separatorL = 10.0;
  static const double separatorXL = 20.0;
  static const double separatorXXL = 30.0;

  //----------------------------------------------------------------
  // Text Sizes

  static const double textXS = 10.0;
  static const double textS = 12.0;
  static const double textM = 14.0;
  static const double textL = 16.0;
  static const double textXL = 18.0;
  static const double textXXL = 20.0;
  static const double textXXXL = 25.0;

  //----------------------------------------------------------------
  // Icon Sizes

  static const double iconXS = 20.0;
  static const double iconS = 25.0;
  static const double iconM = 30.0;
  static const double iconL = 40.0;

  //----------------------------------------------------------------
  // Dimensions

  //----------------------------------------------------------------
  // Elevation
  static const double elevationCard10 = 10.0;

  //----------------------------------------------------------------
  // TabBar Controller Length
  static const int tabBarControllerLength = 2;

  // Width
  static const double width40 = 40.0;
  static const double width60 = 60.0;
  static const double width250 = 250.0;
  static const double width800 = 800.0;

  // Height
  static const double height10 = 10.0;
  static const double height150 = 150.0;
  static const double heightSearchBar = 50.0;
  static const double heightImage = 60.0;
  static const double heightModalSheet = 400.0;

  //----------------------------------------------------------------
  // Shadows

  static const double blurRadius = 2.0;
  static const Offset shadowOffset = Offset(0, 1);

  //----------------------------------------------------------------
  // Border Radius

  static const BorderRadius radiusS = BorderRadius.all(Radius.circular(8));
  static const BorderRadius radiusM = BorderRadius.all(Radius.circular(10));
  static const BorderRadius radiusL = BorderRadius.all(Radius.circular(12));
  static const BorderRadius radiusXL = BorderRadius.all(Radius.circular(15));

  //----------------------------------------------------------------
  // Circle Radius
  static const double circleRadius80 = 80.0;

  //----------------------------------------------------------------
  // Assets

  static const String defaultUserImage = "assets/images/user.png";

  //----------------------------------------------------------------
  // Labels

  static const String searchHint = "Search...";
  static const String verifyUsers = "Verify Users";
  static const String searchUser = "Search User";
  static const String verified = "Verified";
  static const String pending = "Pending";
  static const String declined = "Declined";
  static const String sortNameAsc = "Name Ascending";
  static const String sortNameDesc = "Name Descending";
  static const String sortDateAsc = "Date Ascending";
  static const String sortDateDesc = "Date Descending";
  static const String sortNone = "None";
  static const String studentManagement = "Student Management";
  static const String scanYourFinger = "Scan your finger";

  //----------------------------------------------------------------
  // Keys

  static const String keyImage = "image";
  static const String keyPrice = "price";
  static const String keyName = "name";

  //----------------------------------------------------------------
  // Icons

  static const Icon iconSearch = Icon(Icons.search);
  static const Icon iconPeople = Icon(Icons.people, color: AppColors.secondary);
  static const Icon iconFingerPrint = Icon(Icons.fingerprint);
  static const Icon iconPersonAdd = Icon(
    Icons.person_add,
    color: AppColors.secondary,
  );

  //----------------------------------------------------------------
  // Booleans

  static const bool isTrue = true;
  static const bool isFalse = false;
}
