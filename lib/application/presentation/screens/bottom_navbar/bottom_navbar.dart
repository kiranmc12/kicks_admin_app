import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/add_sneakers/add_sneakers.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/all_users/all_users.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/home/home_screen.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/sign_in/sign_in.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/splash_screen/splash_screen.dart';
import 'package:kicks_sneakerapp/application/presentation/screens/tabview/tabview.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/constants.dart';

class ScreenBottombar extends StatefulWidget {
  const ScreenBottombar({Key? key}) : super(key: key);

  @override
  _ScreenBottombarState createState() => _ScreenBottombarState();
}

class _ScreenBottombarState extends State<ScreenBottombar>
    with SingleTickerProviderStateMixin {
  late int currentPage;
  late TabController tabController;

  @override
  void initState() {
    currentPage = 0;
    tabController = TabController(length: 4, vsync: this);
    tabController.animation!.addListener(
      () {
        final value = tabController.animation!.value.round();
        if (value != currentPage && mounted) {
          changePage(value);
        }
      },
    );
    super.initState();
  }

  void changePage(int newPage) {
    setState(() {
      currentPage = newPage;
    });
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            systemOverlayStyle: const SystemUiOverlayStyle(statusBarColor:kWhite,systemNavigationBarColor: kWhite),
            title: const Text("Kicks",
            style: TextStyle(fontWeight: FontWeight.bold),),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {},
                 icon: const Icon(EvaIcons.shopping_cart))
            ],
          ),
          body: BottomBar(
            borderRadius: BorderRadius.circular(500),
            body: (context, controller) => Padding(
              padding:  EdgeInsets.fromLTRB(20, 5, 20, 0),
              child: TabBarView(
                  controller: tabController,
                  dragStartBehavior: DragStartBehavior.down,
                  physics: const BouncingScrollPhysics(),
                  children: const [
                    ScreenHome(),
                    ScreenTabView(),
                    ScreenAddSneakers(),
                    ScreenUsers()
                  ]),
            ),
            child: SizedBox(
              height: sWidth * 0.17,
              child: TabBar(
                controller: tabController,
                unselectedLabelColor: kGrey,
                indicatorColor: Colors.transparent,
                tabs: [
                  Tab(
                    icon: currentPage == 0
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(EvaIcons.home),
                          )
                        : const Icon(Icons.home),
                  ),
                  Tab(
                    icon: currentPage == 1
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(EvaIcons.percent_outline),
                          )
                        : const Icon(EvaIcons.percent_outline),
                  ),
                  Tab(
                    icon: currentPage == 2
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(Icons.add),
                          )
                        : const Icon(Icons.add),
                  ),
                  Tab(
                    icon: currentPage == 3
                        ? const CircleAvatar(
                            backgroundColor: kWhite,
                            child: Icon(FontAwesome.user,),
                          )
                        : const Icon(FontAwesome.user),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
