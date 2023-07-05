import 'package:auth_test/core/theme/app_colors.dart';
import 'package:auth_test/core/theme/app_icons.dart';
import 'package:auth_test/core/theme/app_string.dart';
import 'package:auth_test/di.dart';
import 'package:auth_test/presentation/cubit/bottom_nav/bottom_bar_cubit.dart';
import 'package:auth_test/presentation/view/tabs/favorite/favorite_screen.dart';
import 'package:auth_test/presentation/view/tabs/map/map_screen.dart';
import 'package:auth_test/presentation/view/tabs/profile/profile_screen.dart';
import 'package:auth_test/presentation/view/tabs/ribbon/ribbon_screen.dart';
import 'package:auth_test/presentation/view/tabs/widgets/bottom_tab_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => inject<BottomNavBarCubit>(),
        child: BlocBuilder<BottomNavBarCubit, BottomNavBarState>(
            builder: (context, state) {
          return Scaffold(
              body: IndexedStack(index: state.currentIndex, children: const [
                RibbonScreen(),
                FavoriteScreen(),
                MapScreen(),
                ProfileScreen(),
              ]),
              bottomNavigationBar: Container(
                decoration: const BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.only(),
                ),
                child: SafeArea(
                  child: Row(
                    children: [
                      BottomTabItem(
                        currentIndex: state.currentIndex,
                        icon: AppIcons.icRibbon,
                        onTap: () =>
                            context.read<BottomNavBarCubit>().changeIndex(0),
                        index: 0,
                        label: AppString.strRibbon,
                      ),
                      BottomTabItem(
                        currentIndex: state.currentIndex,
                        icon: AppIcons.icMap,
                        onTap: () =>
                            context.read<BottomNavBarCubit>().changeIndex(1),
                        index: 1,
                        label: AppString.strMap,
                      ),
                      BottomTabItem(
                          currentIndex: state.currentIndex,
                          icon: AppIcons.icFavorite,
                          onTap: () =>
                              context.read<BottomNavBarCubit>().changeIndex(2),
                          index: 2,
                          label: AppString.strFavorite),
                      BottomTabItem(
                          currentIndex: state.currentIndex,
                          icon: AppIcons.icProfile,
                          onTap: () =>
                              context.read<BottomNavBarCubit>().changeIndex(3),
                          index: 3,
                          label: AppString.strProfile),
                    ],
                  ),
                ),
              ));
        }));
  }
}
