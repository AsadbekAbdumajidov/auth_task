import 'package:auth_test/core/error/error.dart';
import 'package:auth_test/core/usecase/usecase.dart';
import 'package:auth_test/core/utils/utils.dart';
import 'package:auth_test/domain/usecases/main/profile_uscase.dart';
import 'package:auth_test/models/profile/profile_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'profile_state.dart';
part 'profile_cubit.freezed.dart';

class ProfileCubit extends Cubit<ProfileState> {
  ProfileCubit(this._authUsCase) : super(const ProfileState());
  final ProfileUseCase _authUsCase;

  void profileGet() async {
    emit(state.copyWith(status: Status.LOADING));
    var result = await _authUsCase.call(NoParams());
    result.fold(
        (failure) =>
            emit(state.copyWith(failure: failure, status: Status.ERROR)),
        (profileResponse) async {
      emit(state.copyWith(
          profileResponseModel: profileResponse, status: Status.SUCCESS));
    });
  }
}
