import 'package:covid19_bloc/core/utils/app_colors.dart';
import 'package:covid19_bloc/core/utils/app_strings.dart';
import 'package:covid19_bloc/feature/domain/entities/world.dart';
import 'package:covid19_bloc/feature/presentation/bloc/covid_world_bloc/world_bloc.dart';
import 'package:covid19_bloc/feature/presentation/widgets/covid_tile_custom.dart';
import 'package:covid19_bloc/feature/presentation/widgets/styled_loading.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import '../bloc/covid_world_bloc/world_bloc_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageWorld extends StatefulWidget {
  @override
  _HomePageWorldState createState() => _HomePageWorldState();
}

class _HomePageWorldState extends State<HomePageWorld> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorldBloc, WorldState>(
      listener: (context, state) {
        switch (state.status) {
          case WorldStatus.error:
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

  Widget buildBodyWorld(WorldState state) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildHeader(state.worldEntity!),
          SizedBox(height: 20),
          CovidTileCustom(
            color: AppColors.redLight,
            icon: Icons.person_pin,
            title: AppStrings.homePageDeaths,
            result: state.worldEntity!.deaths.toString(),
          ),
          SizedBox(height: 16),
          CovidTileCustom(
            color: AppColors.orangeGray,
            icon: Icons.person_outline,
            title: AppStrings.homePageInfecteds,
            result: state.worldEntity!.critical.toString(),
          ),
          SizedBox(height: 16),
          CovidTileCustom(
            color: AppColors.greenLight,
            icon: Icons.person_add,
            title: AppStrings.homePageRecovery,
            result: state.worldEntity!.recovered.toString(),
          ),
        ],
      ),
    );
  }

  Widget _resultBuilder(WorldState state) {
    switch (state.status) {
      case WorldStatus.loading:
        return StyledLoading(
          messenger: AppStrings.homePageLoading,
        );
      case WorldStatus.ready:
        return buildBodyWorld(state);
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
            child: Icon(
              MdiIcons.stethoscope,
              color: AppColors.darkGray,
            ),
          ),
          SizedBox(
            height: 32,
          ),
          Text(
            AppStrings.homePageErrorTitle,
            style: GoogleFonts.roboto(
              fontSize: 20,
              color: AppColors.darkGray,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildHeader(World world) {
    return Container(
      margin: EdgeInsets.only(top: 20),
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
              AppStrings.worldPageHeaderTitle,
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(height: 5),
        ],
      ),
    );
  }
}
