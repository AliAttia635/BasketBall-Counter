part of 'basektball_cubit.dart';

@immutable
abstract class BasektballState {}

class BasektballInitial extends BasektballState {}

class AddPointsTeamA extends BasektballState {}

class AddPointsTeamB extends BasektballState {}

class PointsReset extends BasektballState {}
