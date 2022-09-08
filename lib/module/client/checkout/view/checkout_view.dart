import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/checkout_controller.dart';

class CheckoutView extends ConsumerWidget {
  const CheckoutView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    CheckoutController controller = ref.watch(checkoutController);
    controller.view = this;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 60.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.brown[50],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      20.0,
                    ),
                  ),
                ),
                child: Center(
                  child: ListTile(
                    title: Text(
                      "Im Cashier",
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      "Irfan Syahputra",
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: Icon(
                      Icons.notifications_active_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    leading: Container(
                      height: 40.0,
                      width: 40,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            "https://images.unsplash.com/photo-1570295999919-56ceb5ecca61?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            5.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "Bills",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              ListView.builder(
                itemCount: controller.checkoutItem.length,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  var item = controller.checkoutItem[index];
                  return ListTile(
                    title: Text(
                      item['title'],
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Row(
                      children: [
                        Text(
                          "x ${item['qty'].toString()}",
                          style: TextStyle(fontSize: 10.0, color: Colors.black),
                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          width: 40,
                          height: 15,
                          color: Colors.orange[100],
                          child: Text(
                            "Notes",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 10.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    leading: Container(
                      height: 50.0,
                      width: 40,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: NetworkImage(
                            item['img'],
                          ),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(
                            5.0,
                          ),
                        ),
                      ),
                    ),
                    trailing: Text(
                      item['price'],
                      style: TextStyle(
                        fontSize: 10.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  );
                },
              ),
              Container(
                height: 50.0,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "Subtotal",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "Rp. 50.000",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 12.0,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 0.2,
                color: Colors.black,
              ),
              Container(
                height: 50.0,
                child: Row(
                  children: [
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "Total",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: const Text(
                          "Rp. 50.000",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          height: 150.0,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(
              Radius.circular(
                16.0,
              ),
            ),
          ),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                width: MediaQuery.of(context).size.width,
                child: const Text(
                  "Payment Method",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.payment.length,
                  itemBuilder: (BuildContext context, int index) {
                    var item = controller.payment[index];
                    return Padding(
                      padding: EdgeInsets.only(left: 20, right: 10),
                      child: Flexible(
                        flex: 2,
                        child: Container(
                          height: 30.0,
                          width: 60,
                          decoration: BoxDecoration(
                            color: Color(0xffF6EFEF),
                            borderRadius: const BorderRadius.all(
                              Radius.circular(
                                10.0,
                              ),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                item['icon'],
                                size: 30,
                              ),
                              Text(
                                item['title'],
                                style: TextStyle(
                                  fontSize: 10.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                
                height: 40.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      16.0,
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                    "Print Bills",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
