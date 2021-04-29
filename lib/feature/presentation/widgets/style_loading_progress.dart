import 'package:covid19_bloc/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class StyledLoadingProgress extends StatefulWidget {
  final Color color;

  StyledLoadingProgress({this.color = AppColors.darkGray});

  @override
  RotateImageState createState() => RotateImageState();
}

class RotateImageState extends State<StyledLoadingProgress> with SingleTickerProviderStateMixin {
  late AnimationController animationController;

  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 1500),
    );

    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
      Container(
          alignment: Alignment.center,
          child: AnimatedBuilder(
            animation: animationController,
            child: Icon(MdiIcons.refresh),
            builder: (context, _widget) {
              return Transform.rotate(
                angle: animationController.value * 6.3,
                child: _widget,
              );
            },
          )),
    ]);
  }

  void stopRotation() {
    animationController.stop();
  }

  void startRotation() {
    animationController.repeat();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
}
