import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/order/order_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/loading_indicator/loading_indicator.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/snackbar/snackbar.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/custom_appbar_widget.dart';
import 'package:kicks_sneakerapp/domain/models/orders/order_details_model/product.dart';
import 'package:kicks_sneakerapp/domain/models/orders/update_order_status_model.dart/update_order_status_model.dart';

class ScreenOrderDetail extends StatelessWidget {
  const ScreenOrderDetail({
    super.key,
    required this.orderId,
  });

  final int orderId;

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<OrderBloc>().add(OrderEvent.getOrderById(id: orderId));
    });
    return Scaffold(
      appBar: appbarMaker(title: 'Order Detail'),
      body: SafeArea(
        child: Padding(
            padding: const EdgeInsets.all(25),
            child: BlocConsumer<OrderBloc, OrderState>(
              listener: (context, state) {
                if (state.hasError || state.isDone) {
                  showSnack(
                    context: context,
                    message: state.message!,
                    color: state.hasError ? kRed : kGreen,
                  );
                }
              },
              buildWhen: (p, c) =>
                  p.isDone != true ||
                  p.hasError != true ||
                  c.isDone != true ||
                  c.hasError != true,
              builder: (context, state) {
                if (state.isLoading) {
                  return const LoadingAnimation(width: 0.20);
                } else if (state.orderDetail == null) {
                  return const Center(
                      child: Text('Network Error Occured,Please try again'));
                } else {
                  final order = state.orderDetail;
                  return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          itemCount: order!.products!.length,
                          itemBuilder: (context, index) => OrderDetailItemTile(
                              product: order.products![index]),
                          separatorBuilder: (context, index) => kHeight5,
                        ),
                        const Divider(),
                        Text(
                          'TOTAL AMOUNT : ₹ ${order.totalAmount}',
                          style:  tektur(fontWeight: FontWeight.w700),
                        ),
                        kHeight10,
                        Text(
                          order.paymentStatus!,
                          style:  tektur(fontWeight: FontWeight.w700),
                        ),
                        Text(order.address ?? ''),
                        kHeight10,
                        Row(children: [
                          const Text('phone : '),
                          Text(
                            order.phone!,
                            style:  tektur(fontWeight: FontWeight.w600),
                          ),
                        ]),
                        Row(children: [
                           Text('Update Order Status : ',style: tektur(),),
                          DropdownButton(
                              value: context.read<OrderBloc>().currentStatus,
                              items: context
                                  .read<OrderBloc>()
                                  .status
                                  .map((e) => DropdownMenuItem(
                                      value: e,
                                      child: Text(e,
                                          style:
                                              const TextStyle(color: kBlue))))
                                  .toList(),
                              onChanged: (value) {
                                context.read<OrderBloc>().add(
                                      OrderEvent.updateOrderStatus(
                                        updateOrderStatusModel:
                                            UpdateOrderStatusModel(
                                          orderId: order.orderId,
                                          orderStatus: value,
                                        ),
                                      ),
                                    );
                              })
                        ]),
                        Row(children: [
                          const Text('Paymnet Status : '),
                          Text(
                            order.paymentStatus!,
                            style: const TextStyle(color: kRed),
                          ),
                        ]),
                        kHeight10,
                        state.isLoading
                            ? const LoadingAnimation(width: 0.10)
                            : order.paymentStatus == 'PAID'
                                ? kWidth5
                                : ElevatedButton(
                                    onPressed: () {
                                      context.read<OrderBloc>().add(
                                          OrderEvent.updatePaymentStatus(
                                              id: orderId));
                                    },
                                    child:
                                        Text('Update Payment Status as PAID',style: tektur(),))
                      ]);
                }
              },
            )),
      ),
    );
  }
}

class OrderDetailItemTile extends StatelessWidget {
  const OrderDetailItemTile({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: sWidth * 0.22,
          width: sWidth * 0.18,
          decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(product.image!)),
              boxShadow: [
                BoxShadow(
                    color: kBlack.withOpacity(0.8),
                    blurRadius: 1.5,
                    offset: const Offset(0, 2))
              ],
              color: kWhite,
              borderRadius: const BorderRadius.all(kRadius10)),
        ),
        kWidth20,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: sWidth * 0.60,
              child: Text(
                product.productName!,
                overflow: TextOverflow.ellipsis,
                style:
                    const TextStyle(fontWeight: FontWeight.w400, fontSize: 18),
              ),
            ),
            kHeight10,
            Text('Quantity - ${product.quantity}'),
            Row(
              children: [
                const Text('Amount : '),
                Text(
                  '₹ ${product.amount}',
                  style: const TextStyle(
                      fontWeight: FontWeight.w500, fontSize: 18),
                )
              ],
            ),
            kHeight5,
          ],
        ),
      ],
    );
  }
}
