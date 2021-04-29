import 'package:covid19_bloc/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CovidTileCustom extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String title;
  final String result;

  const CovidTileCustom({
    Key? key,
    required this.color,
    required this.icon,
    required this.title,
    required this.result,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 32,
      ),
      padding: EdgeInsets.all(8),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: color,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ListTile(
            leading: Icon(
              icon,
              color: AppColors.lightest,
            ),
            title: Text(
              title,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
              ),
            ),
            trailing: Text(
              result,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
