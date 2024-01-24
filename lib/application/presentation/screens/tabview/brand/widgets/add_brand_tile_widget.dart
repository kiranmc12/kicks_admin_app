import 'package:flutter/material.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';
import 'package:kicks_sneakerapp/application/presentation/widgets/custom_textfield_widget.dart';

class AddBrandTileWidget extends StatelessWidget {
  const AddBrandTileWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: sWidth * 0.45,
      width: sWidth,
      child: Card(
        color: kGrey,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Brand Name",
                style: tektur(fontWeight: FontWeight.bold),
              ),
              CustomTextField(
                hintText: "Add brand name",
                color: kWhite,
                width: sWidth * 0.50,
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(
                    onPressed: () {},
                    child: TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.add,
                          color: kBlack,
                        ),
                        label: Text(
                          "Add Brand",
                          style: roboto(
                              fontWeight: FontWeight.bold, fontSize: 0.05),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
