import 'package:equatable/equatable.dart';
import '../model/data_model.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class SignInState extends CubitStates {
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class SignUpState extends CubitStates {
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class MyWelcomeState extends CubitStates {
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class LoadingState extends CubitStates {
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
}

class LoadedState extends CubitStates {
  LoadedState(this.places);
  final List<DataModel> places;
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => [places];
}

class DetailState extends CubitStates {
  DetailState(this.place);
  final DataModel place;
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => [place];
}

class BookingState extends CubitStates {
  BookingState(this.places);
  final List<DataModel> places;
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => [places];
}

class InspState extends CubitStates {
  InspState(this.indx);
  final List indx;
  @override
  // ignore: todo
  // TODO: implement props
  List<Object> get props => [indx];
}
