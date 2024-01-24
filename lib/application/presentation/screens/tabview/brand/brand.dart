import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/tabview/brand/widgets/add_brand_tile_widget.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class BrandsTab extends StatelessWidget {
  const BrandsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("Add a Brand"),
        const AddBrandTileWidget(),
        const Divider(),
        Text(
          "Available Brands",
          style: tektur(fontSize: 0.04),
        ),
        Expanded(
            child: ListView.separated(
                itemBuilder: (context, index) =>  ListTile(
                      title:  Text(
                        "Brand Name",style: roboto(fontSize: 0.04),
                      ),
                      trailing: IconButton(
                        onPressed: () {},
                         icon:  Icon(Icons.delete,size: sWidth *0.07,)),
                    ),
                separatorBuilder: (context, index) => const Divider(),
                itemCount: 4))
      ],
    );
  }
}
