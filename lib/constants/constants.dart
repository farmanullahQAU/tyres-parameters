import 'package:flutter/material.dart';

const homeScaffoldColor = Color.fromRGBO(65, 128, 34, 1);

const String loginHeading = "Welcome";
const String accountExistsText="Already have an account? ";
const String accounDoesnotExistText="Don't have an account? ";



const String signup = "Signup";
const String login = "login";

const String welcomeText = "Sign in to see more features";
const String signuptitle = "Sign up to continue";


const String type = "type";
const String tyreProfile = "tyre Profile";
const String tyreThread = "tyre Thread";
const String tyreYear = "tyre Year";
const String tyreSession = "tyre Session";
const String description = "description";

//wheel
const String rimWidth = "rim Width";
const String rimOffset = "rim Offset";
const String rimBrand = "rim Brand";
const String rimDimeter = "rim Dimeter";
//bottom navigation bar item labels
const String home = "Home";
const String search = "Search";
const String addNew = "New";
const String settings = "Settings";


//entryform  error messages

const String dimeterEmptyErrorMessage = "Select dimeter value";

const String priceEmptyErrorMessage = "Select price";
const String rimWidthEmptyErrorMessage = "Select rim width";
const String rimOffsetEmptyErrorMessage = "Select rim offset";
const String rimBrandEmptyErrorMessage = "Select rim brand";
const String rimDescriptionEmptyErrorMessage = "Add description";
//entryform  hint text

const String dimeterHintText = "Dimeter";

const String pricerHintText = "Price...";

const String rimWidthHintText = "width";

const String offsetHintText = "Offset";
const String brandHintText = "Brand";

const String descriptionHintText = "Descriptions...";
const String continueText = "CONTINUE";



 const Widget columSizedBox= SizedBox(
                height: 20,
              );



const drawerColor = Color.fromARGB(255, 100, 69, 56);

List<double> ORIGNAL = [
  1.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  1.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  1.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  1.0,
  0.0
];
List<double> SEPIA_MATRIX = [
  0.39,
  0.769,
  0.189,
  0.0,
  0.0,
  0.349,
  0.686,
  0.168,
  0.0,
  0.0,
  0.272,
  0.534,
  0.131,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  1.0,
  0.0
];

List<double> GREYSCALE_MATRIX = [
  0.2126,
  0.7152,
  0.0722,
  0.0,
  0.0,
  0.2126,
  0.7152,
  0.0722,
  0.0,
  0.0,
  0.2126,
  0.7152,
  0.0722,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  1.0,
  0.0
];

List<double> VINTAGE_MATRIX = [
  0.9,
  0.5,
  0.1,
  0.0,
  0.0,
  0.3,
  0.8,
  0.1,
  0.0,
  0.0,
  0.2,
  0.3,
  0.5,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  1.0,
  0.0
];

List<double> SWEET_MATRIX = [
  1.0,
  0.0,
  0.2,
  0.0,
  0.0,
  0.0,
  1.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  1.0,
  0.0,
  0.0,
  0.0,
  0.0,
  0.0,
  1.0,
  0.0
];

List<double> BLACKANDWHITE = [
  0.0,
  1.0,
  0.0,
  0.0,
  0.0,
  0.0,
  1.0,
  0.0,
  0.0,
  0.0,
  0.0,
  1.0,
  0.0,
  0.0,
  0.0,
  0.0,
  1.0,
  0.0,
  1.0,
  0.0
];

List<double> STARTERPACK = [
  0.0,
  1.0,
  0.0,
  0.0,
  0.0,
  0.0,
  1.0,
  2.0,
  0.0,
  0.0,
  0.0,
  1.0,
  0.0,
  1.0,
  0.0,
  0.0,
  1.0,
  0.0,
  1.0,
  0.0
];
