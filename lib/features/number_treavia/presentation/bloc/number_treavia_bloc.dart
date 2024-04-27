import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'number_treavia_event.dart';
part 'number_treavia_state.dart';

class NumberTreaviaBloc extends Bloc<NumberTreaviaEvent, NumberTreaviaState> {
  NumberTreaviaBloc() : super(NumberTreaviaInitial()) {
    on<NumberTreaviaEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
