import 'package:covid19_bloc/core/utils/app_colors.dart';
import 'package:covid19_bloc/feature/presentation/widgets/style_loading_progress.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StyledLoading extends StatelessWidget {
  final String messenger;
  final Color? color;
  const StyledLoading({
    Key? key,
    required this.messenger,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
        ),
        StyledLoadingProgress(
          color: AppColors.darkGray,
        ),
        SizedBox(
          height: 8,
        ),
        Text(
          messenger,
          style: GoogleFonts.openSansCondensed(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ));
  }
}
