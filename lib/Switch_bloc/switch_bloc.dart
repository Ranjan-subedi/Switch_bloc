import 'package:bloc/bloc.dart';
import 'package:switchbloc_class/Switch_bloc/switch_event.dart';
import 'package:switchbloc_class/Switch_bloc/switch_state.dart';

class SwitchBloc extends Bloc<SwitchEvent,SwitchState>{
  SwitchBloc () : super(SwitchState(false)){
    on<SwitchChangeEvent>((event, emit) {
      return emit(SwitchState(state.value = !state.value));
    },);
  }
 }