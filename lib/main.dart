import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/brands/brands_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/add_inventory/add_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/edit_inventory/edit_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/get_inventory/get_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/route_generator.dart';
import 'package:kicks_sneakerapp/data/services/auth/auth.dart';
import 'package:kicks_sneakerapp/data/services/brands/brands.dart';
import 'package:kicks_sneakerapp/data/services/inventory/inventory.dart';

import 'application/presentation/routes/routes.dart';

void main() {
  runApp(KicksAdmin());
}

class KicksAdmin extends StatelessWidget {
  KicksAdmin({super.key});

  final RouteGenerator routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc(ApiAuth())),
        BlocProvider(create: (context) => BrandsBloc(BrandApi())),
        BlocProvider(create: (context) => AddInventoryBloc(InventoryApi())),
        BlocProvider(create: (context) => GetInventoryBloc(InventoryApi())),
        BlocProvider(create: (context) => EditInventoryBloc(InventoryApi())),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: GoogleFonts.tektur().fontFamily,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: Routes.initial,
        onGenerateRoute: routeGenerator.onGenerateRoute,
      ),
    );
  }
}
