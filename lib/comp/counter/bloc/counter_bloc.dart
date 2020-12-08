import 'dart:async';

import 'package:bloc/bloc.dart';

//part 'counter_event.dart';
//part 'counter_state.dart';

enum CounterEvent {
  /// Notifies bloc to increment state.
  increment,

  /// Notifies bloc to decrement state.
  decrement
}

class CounterBloc extends Bloc<CounterEvent, int> {
  /// {@macro counter_bloc}
  CounterBloc() : super(0);

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.decrement:
        yield state - 1;
        break;
      case CounterEvent.increment:
        yield state + 1;
        break;
      default:
        addError(Exception('unsupported event'));
    }
  }
}
