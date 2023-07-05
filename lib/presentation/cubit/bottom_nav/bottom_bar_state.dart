part of 'bottom_bar_cubit.dart';

@freezed
class BottomNavBarState with _$BottomNavBarState {
  const factory BottomNavBarState({
    @Default(0) int currentIndex,
  }) = _BottomNavBarState;
}
