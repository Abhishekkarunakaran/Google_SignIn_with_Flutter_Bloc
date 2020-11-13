import 'package:flutter_bloc/flutter_bloc.dart';

part 'sign_in_state.dart';
part 'sign_in_events.dart';

class SignInBloc extends Bloc<Events,States>{
  // ignore: non_constant_identifier_names
  SignInBloc() : super(InitialState());

  @override
  Stream<States> mapEventToState(Events event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }

}