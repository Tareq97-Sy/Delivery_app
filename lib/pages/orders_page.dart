import 'package:flutter/material.dart';
import 'package:golden_soft_test/widgets/Third_page_widgets/order_card.dart';
import '../models/order.dart';
import '../widgets/second_page/drawer.dart';

class OrdersPage extends StatefulWidget {
  OrdersPage({super.key});

  @override
  State<OrdersPage> createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      drawer: buildDrawer(context, "/orders-page"),
      backgroundColor: Color.fromARGB(255, 246, 246, 246),
      appBar: buildAppBar(),
      body: Center(
          child: ListView.separated(
        separatorBuilder: (context, index) => Divider(),
        itemBuilder: (context, index) {
          Order o = orders[index];
          return OrderCard(order: o);
        },
        itemCount: orders.length,
      )),
    ));
  }

  AppBar buildAppBar() {
    return AppBar(
      title: Text("الطلبات"),
      centerTitle: true,
      leading:
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_rounded)),
    );
  }
}
