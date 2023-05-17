import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'doctors_state.dart';

class DoctorsCubit extends Cubit<DoctorsState> {
  DoctorsCubit() : super(DoctorsInitial());
}
