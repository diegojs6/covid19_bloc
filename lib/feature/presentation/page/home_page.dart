import 'package:covid19_bloc/core/navigations/routes.dart';
import 'package:covid19_bloc/core/utils/app_colors.dart';
import 'package:covid19_bloc/core/utils/app_strings.dart';
import 'package:covid19_bloc/feature/domain/entities/countries.dart';
import 'package:covid19_bloc/feature/presentation/bloc/covid_countries_bloc/covid_bloc.dart';
import '../bloc/covid_countries_bloc/covid_state.dart';
import 'package:covid19_bloc/feature/presentation/widgets/covid_tile_custom.dart';
import 'package:covid19_bloc/feature/presentation/widgets/styled_loading.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CovidBloc, CovidState>(
      listener: (context, state) {
        switch (state.status) {
          case CovidStatus.error:
            Center(
              child: Text('${state.message}'),
            );
            break;
          default:
            break;
        }
      },
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: _resultBuilder(state),
          ),
        );
      },
    );
  }

  Widget buildBodyPais(CovidState state) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(state.paisEntity!),
          SizedBox(height: 20),
          CovidTileCustom(
            color: AppColors.orangeGray,
            title: AppStrings.homePageInfecteds,
            result: state.paisEntity!.critical.toString(),
            icon: Icons.person_outline,
          ),
          SizedBox(height: 16),
          CovidTileCustom(
            color: AppColors.redLight,
            icon: Icons.person_pin,
            title: AppStrings.homePageDeaths,
            result: state.paisEntity!.deathsToday.toString(),
          ),
          SizedBox(height: 16),
          CovidTileCustom(
            color: AppColors.greenLight,
            icon: Icons.person_add,
            title: AppStrings.homePageRecovery,
            result: state.paisEntity!.recovered.toString(),
          ),
          SizedBox(height: 16),
          GestureDetector(
            child: CovidTileCustom(
              color: AppColors.blueWorld,
              icon: MdiIcons.earth,
              title: AppStrings.homePageWorld,
              result: '',
            ),
            onTap: () => Navigator.pushNamed(context, Routes.worldPage),
          ),
        ],
      ),
    );
  }

  Widget _resultBuilder(CovidState state) {
    switch (state.status) {
      case CovidStatus.loading:
        return StyledLoading(
          messenger: AppStrings.homePageLoading,
        );
      case CovidStatus.ready:
        return buildBodyPais(state);
      default:
        return _error(context);
    }
  }

  Widget _error(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(MdiIcons.stethoscope, color: AppColors.darkGray),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            AppStrings.homePageErrorTitle,
            style: GoogleFonts.roboto(fontSize: 20, color: AppColors.darkGray),
          ),
        ],
      ),
    );
  }

  Widget buildHeader(Countries pais) {
    return Container(
      margin: EdgeInsets.only(
        top: 20,
        left: 32,
        right: 32,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ListTile(
            title: Text(
              AppStrings.homePageHeaderTitle,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Center(
            child: Image.network(
              pais.countryInfo.flag,
              width: 150,
            ),
          ),
        ],
      ),
    );
  }
}
