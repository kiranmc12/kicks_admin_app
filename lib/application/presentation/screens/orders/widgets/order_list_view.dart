import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/domain/models/orders/get_all_orders_response_model/order.dart';

class OrderListView extends StatelessWidget {
  const OrderListView({super.key, this.orderList});
  final List<Order>? orderList;

  @override
  Widget build(BuildContext context) {
    return orderList == null || orderList!.isEmpty
        ? const Center(
            child: Text("Nothing to show"),
          )
        : ListView.builder(
            itemCount: orderList!.length,
            itemBuilder: (context, index) {
              final data = orderList![index];
              return ListTile(
                leading: CircleAvatar(
                  child: Text(
                    data.id.toString(),
                  ),
                ),
                title: Text(data.name!),
                trailing: Text(
                  '₹ ${data.total!.round().toString()}',
                  style: roboto(),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Routes.orderDetailScreen,
                      arguments: orderList![index].id);
                },
              );
            });
  }
}
