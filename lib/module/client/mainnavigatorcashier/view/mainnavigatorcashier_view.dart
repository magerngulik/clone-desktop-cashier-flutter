import 'package:desktop_cashier/core.dart';
import 'package:desktop_cashier/module/client/menu/view/menu_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/mainnavigatorcashier_controller.dart';

class MainnavigatorcashierView extends ConsumerWidget {
  const MainnavigatorcashierView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    MainnavigatorcashierController controller =
        ref.watch(mainnavigatorcashierController);
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Container(
              width: 80,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/icon/coffee-beans.png",
                        ),
                        fit: BoxFit.fill,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          16.0,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.manu.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = controller.manu[index];
                    return Padding(
                      padding:
                          const EdgeInsets.only(top: 10.0, left: 12, right: 12),
                      child: Container(
                        height: 60,
                        decoration: BoxDecoration(
                          color: item['selected'] == true
                              ? Colors.brown
                              : Colors.transparent,
                          borderRadius: const BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  item['icon'],
                                  color: item['selected'] == true
                                      ? Colors.white
                                      : Colors.grey,
                                )),
                            Text(
                              item['name'],
                              style: TextStyle(
                                color: item['selected'] == true
                                    ? Colors.white
                                    : Colors.grey,
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ]),
            ),
            //AKHIT TUTUP
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.7,
              child: MenuView(),
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width * 0.2,
              child: CheckoutView(),
            )
          ],
        ),
      ),
    );
  }
}
