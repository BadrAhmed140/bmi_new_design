import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'calculte_state.dart';

class BmiCubit extends Cubit<BmiState> {
  BmiCubit() : super(BmiInitial());

  static BmiCubit get(context) => BlocProvider.of(context);
  int hight = 150;
  int weight =50;
  int result = 0;
  int age = 50;
  String gender= '';

  void hightincrement() {
    hight++;
    emit(hightStateincreament());
  }
  void weightincrement() {
    weight++;
    emit(weightStateincrement());
  }
  void ageincrement() {
    age++;
    emit(ageStateincrement());
  }
  void hightdecrement() {
    hight--;
    emit(hightStatedecrement());
  }
  void weightdecrement() {
    weight--;
    emit(weightStatedecrement());
  }
  void agedecrement() {
    age--;
    emit(ageStatedecrement());
  }
  void resultcul() {
     result = (weight / pow( (hight / 100), 2)).round();
    emit(resultState());
  }
}
