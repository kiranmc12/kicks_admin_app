import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/brands/brands_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/tabview/brand/widgets/brand_list_view.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/snackbar.dart';

class BrandView extends StatelessWidget {
  const BrandView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child:
            BlocConsumer<BrandsBloc, BrandsState>(listener: (context, state) {
      if (state.hasError || state.isDone) {
        showSnack(
            context: context,
            message: state.message ?? 'error',
            color: state.isDone ? kGreen : kRed);
      }
    }, builder: (context, state) {
      if (state.isLoading) {
        return const LoadingAnimation(width: 0.20);
      } else if (state.hasError || state.getBrandModel!.data == null) {
        return const Text("Nothing to show");
      } else if (state.getBrandModel!.data!.isEmpty) {
        return const Text("Add Brand");
      }
      return BrandListViewWidget(
        state: state,
      );
    }));
  }
}
