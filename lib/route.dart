import 'package:get/get.dart';
import 'package:test_test/view/screen/home_branche_page/talk_with_us_page.dart';

import 'core/middelware/my_middelware.dart';
import 'view/screen/auth/forget_password.dart';
import 'view/screen/auth/rest_password_page.dart';
import 'view/screen/auth/sign_up_page.dart';
import 'view/screen/auth/verifiy_code_page.dart';
import 'view/screen/home_branche_page/add_offers_page.dart';
import 'view/screen/home_branche_page/cards_page.dart';
import 'view/screen/home_branche_page/cities_pages.dart';
import 'view/screen/home_branche_page/edit_personal_data.dart';
import 'view/screen/home_branche_page/menu_page.dart';
import 'view/screen/home_branche_page/offers_page.dart';
import 'view/screen/home_branche_page/payment_way_page.dart';
import 'core/constant/app_route.dart';
import 'view/screen/auth/change_password_page.dart';
import 'view/screen/auth/login_page.dart';
import 'view/screen/choose_user_type.dart';
import 'view/screen/home/nav_home_screen_page.dart';
import 'view/screen/home_branche_page/cards_details_page.dart';
import 'view/screen/home_branche_page/logout_page.dart';
import 'view/screen/home_branche_page/notification_page.dart';
import 'view/screen/home_branche_page/product_details.dart';
import 'view/screen/home_branche_page/rating_page.dart';
import 'view/screen/products/add_new_product.dart';

List<GetPage<dynamic>>? routes = <GetPage<dynamic>>[
  GetPage<dynamic>(
    name: "/",
    page: () => const ChooseUserType(),
    middlewares: [
      MyMiddleware(),
    ],
  ),
  GetPage<dynamic>(
    name: AppRoute.chooseUserType,
    page: () => const ChooseUserType(),
  ),
  //auth
  GetPage<dynamic>(
    name: AppRoute.loginPage,
    page: () => const LoginPage(),
  ),
  GetPage<dynamic>(
    name: AppRoute.signUpPage,
    page: () => const SignUpPage(),
  ),
  GetPage<dynamic>(
    name: AppRoute.forgetPassword,
    page: () => const ForgetPassword(),
  ),
  GetPage<dynamic>(
    name: AppRoute.verifyCode,
    page: () => const VerifiyCodePage(),
  ),
  GetPage<dynamic>(
    name: AppRoute.restPasswordPage,
    page: () => const RestPasswordPage(),
  ),
  //home
  GetPage<dynamic>(
    name: AppRoute.navHomeScreenPage,
    page: () => const NavHomeScreenPage(),
  ),
  GetPage<dynamic>(
    name: AppRoute.offersPage,
    page: () => const OffersPage(),
  ),
  GetPage<dynamic>(
    name: AppRoute.menuPage,
    page: () => const MenuPage(),
  ),
  GetPage<dynamic>(
    name: AppRoute.logoutPage,
    page: () => const LogoutPage(),
  ),
  GetPage<dynamic>(
    name: AppRoute.productDetails,
    page: () => const ProductDetails(),
  ),
  GetPage<dynamic>(
    name: AppRoute.notificationPage,
    page: () => const NotificationPage(),
  ),
  GetPage<dynamic>(
    name: AppRoute.ratingPage,
    page: () => const RatingPage(),
  ),
  GetPage<dynamic>(
    name: AppRoute.changePassword,
    page: () => const ChangePasswordPage(),
  ),
  GetPage<dynamic>(
    name: AppRoute.cardsPage,
    page: () => const CardsPages(),
  ),
  GetPage<dynamic>(
    name: AppRoute.cardsDetailsPage,
    page: () => const CardsDetailsPage(),
  ),
  GetPage<dynamic>(
    name: AppRoute.paymentWayPage,
    page: () => const PaymentWayPage(),
  ),
  GetPage<dynamic>(
    name: AppRoute.editPersonalData,
    page: () => const EditPersonalData(),
  ),
  GetPage<dynamic>(
    name: AppRoute.talkWithUsPage,
    page: () => const TalkWithUsPage(),
  ),
  GetPage<dynamic>(
    name: AppRoute.addOffers,
    page: () => const AddOffersPage(),
  ),
  GetPage<dynamic>(
    name: AppRoute.addNewProduct,
    page: () => const AddNewProduct(),
  ),
  GetPage<dynamic>(
    name: AppRoute.citiesPages,
    page: () => const CitiesPages(),
  ),
];
