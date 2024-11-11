import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'basektball_state.dart';

class BasektballCubit extends Cubit<BasektballState> {
  BasektballCubit() : super(BasektballInitial());
  int scoreA = 0;
  int scoreB = 0;
  add1PointA() {
    scoreA++;
    emit(AddPointsTeamA());
  }

  add2PointsA() {
    scoreA += 2;
    emit(AddPointsTeamA());
  }

  add3PointsA() {
    scoreA += 3;
    emit(AddPointsTeamA());
  }

  add1PointB() {
    scoreB++;
    emit(AddPointsTeamB());
  }

  add2PointsB() {
    scoreB += 2;
    emit(AddPointsTeamB());
  }

  add3PointsB() {
    scoreB += 3;
    emit(AddPointsTeamB());
  }

  resetPoints() {
    scoreA = 0;
    scoreB = 0;
    emit(PointsReset());
  }
}
