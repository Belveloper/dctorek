import 'package:bloc/bloc.dart';
import 'package:doctorek/models/login/login_model.dart';
import 'package:doctorek/web-services/doctorek-api/dio_helper.dart';
import 'package:meta/meta.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  LoginModel? loginStatus;
  void loginUser({@required String? username, @required String? password}) {
    emit(LoginLoadingState());
    DioHelper.postData(url: 'https://doctorek-api.mocklab.io/login', data: {
      'username': username,
      'password': password,
    }).then((value) {
      loginStatus = LoginModel.fromJson(value.data);
      emit(LoginSuccessState());
    }).catchError((onError) {
      print('ki maymshish cubit:$onError');

      emit(LoginErrorState(error: onError.toString()));
    });
  }
}
