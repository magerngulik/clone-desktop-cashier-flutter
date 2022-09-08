import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../controller/menu_controller.dart';

class MenuView extends ConsumerWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(context, ref) {
    MenuController controller = ref.watch(menuController);
    controller.view = this;

    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Container(
          // color: Color(0xFFF9F7FA),
          child: Column(
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    "Choose Category",
                    style:
                        TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    width: 40.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: const BorderRadius.all(
                        Radius.circular(25),
                      ),
                      border: Border.all(
                        width: 0.4,
                        color: Colors.grey[400]!,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                        ),
                        Container(
                          width: 300,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.1,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    var menuItem = controller.categories[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10.0,
                      ),
                      child: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 3,
                              color: menuItem['pilih'] == true
                                  ? Colors.brown
                                  : Colors.transparent,
                            ),
                            color: menuItem['pilih'] == true
                                ? Color(0xffF5EFEF)
                                : Colors.white,
                            borderRadius: const BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 30,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(menuItem['icon']),
                                      fit: BoxFit.fitHeight),
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Text(
                                menuItem['categories'],
                                style: TextStyle(fontSize: 12),
                              ),
                            ],
                          )),
                    );
                  },
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: 200 / 240),
                  itemCount: controller.manu.length,
                  itemBuilder: (BuildContext context, int index) {
                    var itemproduct = controller.product[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 20),
                      child: Container(
                        height: 500,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              16.0,
                            ),
                          ),
                        ),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20.0,
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 25),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 180.0,
                                    width: 135,
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: NetworkImage(
                                          itemproduct['img'],
                                        ),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                        Radius.circular(
                                          16.0,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10.0,
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                6,
                                        child: Text(
                                          itemproduct['name'],
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                              fontSize: 25.0,
                                              fontWeight: FontWeight.w500,
                                              color: Colors.black),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                6,
                                        child: Text(
                                          itemproduct['deskripsi'],
                                          maxLines: 2,
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: Colors.grey,
                                            fontSize: 15.0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 20.0,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                6,
                                        child: Text(
                                          itemproduct['price'] ?? "Rp. 10.000",
                                          maxLines: 2,
                                          textAlign: TextAlign.start,
                                          overflow: TextOverflow.ellipsis,
                                          style: const TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                height: 100.0,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Mood",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        Row(
                                          children: [
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor:
                                                  Color(0xFFF9F8FB),
                                              child: Image.asset(
                                                'assets/icon/fire.png',
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10.0,
                                            ),
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor:
                                                  Color(0xFFF9F8FB),
                                              child: Image.asset(
                                                'assets/icon/frost.png',
                                                fit: BoxFit.fitWidth,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 10.0,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Size",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        Row(
                                          children: const [
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor:
                                                  Color(0xFFF9F8FB),
                                              child: Text(
                                                "S",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor:
                                                  Color(0xFFF9F8FB),
                                              child: Text(
                                                "M",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor:
                                                  Color(0xFFF9F8FB),
                                              child: Text(
                                                "L",
                                                style: TextStyle(
                                                  color: Colors.black,
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Container(
                                height: 100.0,
                                decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(
                                      16.0,
                                    ),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Sugar",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        Row(
                                          children: const [
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor:
                                                  Color(0xFFF9F8FB),
                                              child: Text(
                                                "30%",
                                                style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Colors.orange),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor:
                                                  Color(0xFFF9F8FB),
                                              child: Text(
                                                "50%",
                                                style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Colors.brown),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor:
                                                  Color(0xFFF9F8FB),
                                              child: Text(
                                                "70%",
                                                style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Colors.red),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    Spacer(),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Ice",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        Row(
                                          children: const [
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor:
                                                  Color(0xFFF9F8FB),
                                              child: Text(
                                                "30%",
                                                style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Colors.orange),
                                              ),
                                            ),
                                            SizedBox(
                                              width: 10.0,
                                            ),
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor:
                                                  Color(0xFFF9F8FB),
                                              child: Text(
                                                "50%",
                                                style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Colors.brown),
                                              ),
                                            ),
                                            SizedBox(
                                              height: 10.0,
                                            ),
                                            CircleAvatar(
                                              radius: 18,
                                              backgroundColor:
                                                  Color(0xFFF9F8FB),
                                              child: Text(
                                                "70%",
                                                style: TextStyle(
                                                    fontSize: 13.0,
                                                    color: Colors.red),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 40.0,
                              width: MediaQuery.of(context).size.width / 4,
                              decoration: const BoxDecoration(
                                color: Colors.brown,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(
                                    16.0,
                                  ),
                                ),
                              ),
                              child: const Center(
                                child: Text(
                                  "Add to Billing",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                      color: Colors.white),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20.0,
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
