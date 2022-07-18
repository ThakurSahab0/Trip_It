// ignore_for_file: prefer_typing_uninitialized_variables, avoid_print

import 'package:bloc/bloc.dart';
import 'package:Trip_app/cubit/app_cubit_states.dart';
import 'package:Trip_app/model/data_model.dart';
import 'package:Trip_app/services/data_services.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final DataServices data;
  late final places;
  Future<void> getData() async {
    try {
      emit(LoadingState());
      places = await data.getInfo();
      emit(LoadedState(places));
    } catch (e) {
      print(e);
    }
  }

  detailPage(DataModel data) {
    emit(DetailState(data));
  }

  goHome() {
    emit(LoadedState(places));
  }

  getSignIn() {
    emit(SignInState());
  }

  getWelcomePage() {
    emit(MyWelcomeState());
  }

  getSignUp() {
    emit(SignUpState());
  }

  getBooking() {
    emit(BookingState(places));
  }

  goDetail() {
    emit(DetailState(places));
  }
}
