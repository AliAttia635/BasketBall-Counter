import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'basektball_state.dart';

class BasektballCubit extends Cubit<BasektballState> {
  BasektballCubit() : super(BasektballInitial());
  int scoreA = 0;
  int scoreB = 0;
  add1PointA() {
    scoreA++;
    emit(Add1PointSuccess());
  }

  add2PointsA() {
    scoreA += 2;
    emit(Add2PointsSuccess());
  }

  add3PointsA() {
    scoreA += 3;
    emit(Add3PointsSuccess());
  }

  add1PointB() {
    scoreB++;
    emit(Add1PointSuccess());
  }

  add2PointsB() {
    scoreB += 2;
    emit(Add2PointsSuccess());
  }

  add3PointsB() {
    scoreB += 3;
    emit(Add3PointsSuccess());
  }

  resetPoints() {
    scoreA = 0;
    scoreB = 0;
    emit(PointsReset());
  }
}
