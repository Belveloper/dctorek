part of 'forgot_password_cubit.dart';

@immutable
abstract class ForgotPasswordState {}

class ForgotPasswordInitial extends ForgotPasswordState {}

class SelectedPassMethodToggle extends ForgotPasswordState {}

class GoNextPageViewPage extends ForgotPasswordState {}
