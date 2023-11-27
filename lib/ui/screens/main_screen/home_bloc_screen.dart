import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
import 'package:weather/ui/functions.dart';
import 'package:weather/ui/screens/main_screen/bloc/home_bloc.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather/ui/screens/main_screen/home_screen.dart';
import 'package:weather/ui/widgets/loading_widget.dart';

class HomeBlocScreen extends StatefulWidget {
  const HomeBlocScreen({
    super.key,
  });

  @override
  State<HomeBlocScreen> createState() => _HomeBlocScreenState();
}

class _HomeBlocScreenState extends State<HomeBlocScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _scaleAnimation = Tween<double>(begin: 1.5,end: 1.0).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<HomeBloc>(
      create: (context) => HomeBloc()
        ..add(
          const HomeEvent.initial(),
        ),
      child: BlocConsumer<HomeBloc, HomeState>(
        listener: (context, state) {
          state.mapOrNull(
            info: (info) {
              showMessage(
                message: info.message,
              );

            },
            loading: (value) {
              _animationController.forward(from: 0.0);
            },
            initial: (value) {
              _animationController.forward(from: 0.0);
            },

          );
        },
        builder: (context, state) {
          return ScaleTransition(
            scale: _scaleAnimation,
            child:state.maybeWhen(
              loading: () => const LoadingWidget(),
              initial: (data, forecast) {
                return HomeScreen(data, forecast);
              },
              searchLoading: () => SafeArea(
                child: Scaffold(
                  backgroundColor: Colors.black,
                  extendBodyBehindAppBar: true,
                  appBar: AppBar(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    systemOverlayStyle: const SystemUiOverlayStyle(
                        statusBarBrightness: Brightness.dark),
                  ),
                  body: Stack(
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(3, -0.3),
                        child: Container(
                          height: 300,
                          width: 300,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.deepPurple),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-3, -0.3),
                        child: Container(
                          height: 300,
                          width: 300,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color(0xFF673AB7)),
                        ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0, -1.2),
                        child: Container(
                          height: 300,
                          width: 600,
                          decoration:
                              const BoxDecoration(color: Color(0xFFFFAB40)),
                        ),
                      ),
                      BackdropFilter(
                        filter:
                            ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                        child: Container(
                          decoration:
                              const BoxDecoration(color: Colors.transparent),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Lottie.asset(
                          'assets/lottie/planeLoading.json',
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              orElse: () => const SizedBox(),
            ),
          );
        },
      ),
    );
  }
}
