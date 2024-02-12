import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/get_inventory/get_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/home/widgets/custom_search_field_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/home/widgets/inventory_grid_view.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class ScreenHome extends StatefulWidget {
  const ScreenHome({Key? key});

  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  final scrollController = ScrollController();

  @override
  void initState() {
    scrollController.addListener(() {
      _scrollCallBack();
    });
    super.initState();
  }

  _scrollCallBack() {
    if (scrollController.position.pixels ==
            scrollController.position.maxScrollExtent &&
        !context.read<GetInventoryBloc>().isScrollLoading) {
      context.read<GetInventoryBloc>().add(const GetInventoryEvent.nextPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      context
          .read<GetInventoryBloc>()
          .add(const GetInventoryEvent.getInventoryCall());
    });
    return Scaffold(
      body: SingleChildScrollView(
        controller: scrollController,
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              kHeight20,
              const InventoryGridViewWidget(),
              SizedBox(height: sWidth * 0.30)
            ],
          ),
        ),
      ),
    );
  }
}
