import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/auth/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/brands/brands_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/coupons/coupons_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/add_inventory/add_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/edit_inventory/edit_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/inventory/get_inventory/get_inventory_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/offers/offers_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/order/order_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/users/users_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/route_generator.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/data/services/auth/auth.dart';
import 'package:kicks_sneakerapp/data/services/brands/brands.dart';
import 'package:kicks_sneakerapp/data/services/coupon/coupons.dart';
import 'package:kicks_sneakerapp/data/services/inventory/inventory.dart';
import 'package:kicks_sneakerapp/data/services/offers/offers.dart';
import 'package:kicks_sneakerapp/data/services/orders/orders.dart';
import 'package:kicks_sneakerapp/data/services/users/users.dart';

import 'application/presentation/routes/routes.dart';

void main() {
  runApp(KicksAdmin());
  
}

class KicksAdmin extends StatelessWidget {
  KicksAdmin({super.key});

  final RouteGenerator routeGenerator = RouteGenerator();

  @override
  Widget build(BuildContext context) {

    return ScreenUtilInit(
      designSize: const Size(411, 891),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => AuthBloc(ApiAuth())),
          BlocProvider(create: (context) => BrandsBloc(BrandApi())),
          BlocProvider(create: (context) => AddInventoryBloc(InventoryApi())),
          BlocProvider(create: (context) => GetInventoryBloc(InventoryApi())),
          BlocProvider(create: (context) => EditInventoryBloc(InventoryApi())),
          BlocProvider(create: (context) => CouponsBloc(CouponApi())),
          BlocProvider(create: (context) => OffersBloc(OfferApi())),
          BlocProvider(create: (context) => UsersBloc(UsersApi())),
          BlocProvider(create: (context) => OrderBloc(OrderApi()))
        ],
        child: MaterialApp(
          title: 'Flutter Demo',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            fontFamily: GoogleFonts.tektur().fontFamily,
            useMaterial3: true,
          ),
          initialRoute: Routes.initial,
          onGenerateRoute: routeGenerator.onGenerateRoute,
        ),
      ),
    );
  }
}
