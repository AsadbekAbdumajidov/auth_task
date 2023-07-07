import 'package:auth_test/core/error/error.dart';
import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';


abstract class UseCase<Type, Params> {
  Future<Either<Failure, Type>> call(Params params);
}

class NoParams extends Equatable {
  @override
  List<Object> get props => [];
}
