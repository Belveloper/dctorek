part of 'on_boarding_cubit.dart';

@immutable
abstract class OnBoardingState {}

class OnBoardingInitial extends OnBoardingState {}
class OnBoardingGoNext extends OnBoardingState {}
class OnBoardingIndexSelection extends OnBoardingState {}
