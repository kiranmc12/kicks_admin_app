import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/order/order_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/orders/widgets/order_list_view.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class ScreenOrders extends StatelessWidget {
  const ScreenOrders({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<OrderBloc>().add(const OrderEvent.getOrders());

    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Orders",
              style: tektur(),
            ),
            centerTitle: true,
            bottom: const TabBar(
                labelStyle:
                    TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
                indicatorColor: kBlack,
                tabs: [
                  Tab(child: Text('Pending')),
                  Tab(child: Text('Shipped')),
                  Tab(child: Text('Deliverd')),
                  Tab(child: Text('Returned')),
                  Tab(child: Text('Canceled'))
                ]),
          ),
          body: BlocBuilder<OrderBloc, OrderState>(
            builder: (context, state) {
              return TabBarView(children: [
                OrderListView(
                  orderList: state.pending,
                ),
                OrderListView(orderList: state.shipped,),
                OrderListView(orderList: state.delivered,),
                OrderListView(orderList: state.returned,),
                OrderListView(orderList: state.canceled,),
              ]);
            },
          ),
        ));
  }
}
