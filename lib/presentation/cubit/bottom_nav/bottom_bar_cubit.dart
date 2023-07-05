import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'bottom_bar_state.dart';
part 'bottom_bar_cubit.freezed.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  BottomNavBarCubit() : super(const BottomNavBarState());

  void changeIndex(int index) async {
    emit(state.copyWith(currentIndex: index));
  }
}
