part of 'basektball_cubit.dart';

@immutable
abstract class BasektballState {}

class BasektballInitial extends BasektballState {}

class Add1PointSuccess extends BasektballState {}

class Add2PointsSuccess extends BasektballState {}

class Add3PointsSuccess extends BasektballState {}

class PointsReset extends BasektballState {}
