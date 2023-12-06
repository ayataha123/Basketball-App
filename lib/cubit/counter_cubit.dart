// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:basketball_app/cubit/counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  

  int teamAPoints = 0;

  int teamBPoints = 0;

  CounterCubit():super (CounterAIncrementState());
  

  void teamIncrement(String team, int button) {
    if (team == 'A') {
      teamAPoints += button;
      emit(CounterAIncrementState());
    } else if(team=='B') {
      teamBPoints += button;
      emit(CounterBIncrementState());
    }else{
      teamAPoints=button;
      teamBPoints=button;
      emit(ResetCounter());
    }
  }
}
