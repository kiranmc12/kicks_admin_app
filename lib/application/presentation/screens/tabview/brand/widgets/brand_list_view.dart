import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/brands/brands_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/show_dialog/show_dialog.dart';
import 'package:kicks_sneakerapp/domain/models/brand/delete_brand_model/delete_brand_model.dart';

class BrandListViewWidget extends StatelessWidget {
  final BrandsState state;
  const BrandListViewWidget({
    super.key,
    required this.state,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (context, index) => ListTile(
        title: Text(
          state.getBrandModel!.data![index].category!,
          style: roboto(fontSize: 0.04),
        ),
        onTap: () {
          context.read<BrandsBloc>().add(BrandsEvent.tapEdit(
              category: state.getBrandModel!.data![index].category!));
        },
        trailing: IconButton(
            onPressed: () async {
              void onDeletePressed() async {
                context.read<BrandsBloc>().add(BrandsEvent.deleteBrand(
                    deleteBrandModel: DeleteBrandModel(
                        id: state.getBrandModel!.data![index].id!)));
              }

              await customShowDialog(
                  context: context,
                   onPress: onDeletePressed);
            },
            icon: Icon(
              Icons.delete,
              size: sWidth * 0.07,
            )),
      ),
      separatorBuilder: (context, index) => const Divider(),
      itemCount: state.getBrandModel!.data!.length,
    );
  }
}
