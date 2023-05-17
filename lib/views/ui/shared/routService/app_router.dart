import 'package:doctorek/views/ui/views/appearence/appearence_view.dart';
import 'package:doctorek/views/ui/views/appointement_booking/appointement_booking_view.dart';
import 'package:doctorek/views/ui/views/doctor_page/doctor_page_view.dart';
import 'package:doctorek/views/ui/views/favorites/favorites_view.dart';
import 'package:doctorek/views/ui/views/forget_password/forget_password_view.dart';
import 'package:doctorek/views/ui/views/help/help_view.dart';
import 'package:doctorek/views/ui/views/home/home_view.dart';
import 'package:doctorek/views/ui/views/invite_freinds/invite_freinds_view.dart';
import 'package:doctorek/views/ui/views/landing_page/landing_page_view.dart';
import 'package:doctorek/views/ui/views/notifications/notifications_view.dart';
import 'package:doctorek/views/ui/views/onboarding/onboarding_view.dart';
import 'package:doctorek/views/ui/views/principal/principal_view.dart';
import 'package:doctorek/views/ui/views/profile/profile_view.dart';
import 'package:doctorek/views/ui/views/profile_details/profile_details_view.dart';
import 'package:doctorek/views/ui/views/search_screen/search_screen_view.dart';
import 'package:doctorek/views/ui/views/security/securite_view.dart';
import 'package:doctorek/views/ui/views/sing_in/sing_in_view.dart';
import 'package:doctorek/views/ui/views/sing_up/sing_up_view.dart';
import 'package:doctorek/views/ui/views/specialisties/specialisties_view.dart';
import 'package:doctorek/views/ui/views/startup/startup_view.dart';
import 'package:doctorek/views/ui/views/top_doctors/top_doctors_view.dart';
import 'package:flutter/material.dart';

class Routes {
  static const String splashRoute = '/';
  static const String onBoarding = '/onboarding';
  static const String home = '/home';
  static const String notifications = '/notifications';
  static const String favDoctors = '/favDoctors';
  static const String specialDocs = '/specialDocs';
  static const String topRatedDocs = '/topRatedDocs';
  static const String search = '/search';
  static const String doctorDetails = '/doctorDetails';
  static const String appointementBooking = '/appointementBooking';
  static const String signIn = '/signIn';
  static const String signUp = '/signUp';
  static const String profile = '/profile';
  static const String forgotPassword = '/forgotPassword';
  static const String profileDetails = '/profileDetails';
  static const String landing = '/landing';
  static const String main = '/main';
  static const String security = '/security';
  static const String appearance = '/appearance';
  static const String help = '/help';
  static const String invite = '/invite';
}

class RouteGenerator {
  static Route<dynamic> goToRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBoardingView());
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.notifications:
        return MaterialPageRoute(builder: (_) => const NotificationsView());
      case Routes.favDoctors:
        return MaterialPageRoute(builder: (_) => const FavouritesView());
      case Routes.specialDocs:
        return MaterialPageRoute(builder: (_) => const SpecialitiesView());
      case Routes.topRatedDocs:
        return MaterialPageRoute(builder: (_) => const TopRatedDocsView());
      case Routes.search:
        return MaterialPageRoute(builder: (_) => const SearchScreenView());
      case Routes.doctorDetails:
        return MaterialPageRoute(builder: (_) => const DoctorPageView());
      case Routes.appointementBooking:
        return MaterialPageRoute(builder: (_) => const BookAppointement());
      case Routes.signIn:
        return MaterialPageRoute(builder: (_) => const SignInView());
      case Routes.invite:
        return MaterialPageRoute(builder: (_) => const InvitationView());
      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => const SignUpView());
      case Routes.profileDetails:
        return MaterialPageRoute(builder: (_) => const ProfileDetailsView());
      case Routes.forgotPassword:
        return MaterialPageRoute(builder: (_) => const ForgotPassView());
      case Routes.main:
        return MaterialPageRoute(builder: (_) => const MainView());
      case Routes.profile:
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case Routes.security:
        return MaterialPageRoute(builder: (_) => const SecurityView());
      case Routes.appearance:
        return MaterialPageRoute(builder: (_) => const ApperanceView());
      case Routes.help:
        return MaterialPageRoute(builder: (_) => const HelpView());
      case Routes.landing:
        return MaterialPageRoute(builder: (_) => const LandingView());

      default:
        return MaterialPageRoute(builder: (_) => const Scaffold());
    }
  }
}
