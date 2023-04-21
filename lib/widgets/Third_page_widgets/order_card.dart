import 'package:flutter/material.dart';
import 'package:golden_soft_test/fixed_ui/constants.dart';
import 'package:golden_soft_test/widgets/first_page_widgets/primary_button.dart';

import '../../models/order.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
    required this.order,
  });
  final Order order;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: kDefaultIconLightColor,
          border: Border.all(color: kDefaultIconLightColor),
          borderRadius: BorderRadius.circular(15)),
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Row(
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.zero,
                    child: Image.asset(
                      order.imgRestaurant!,
                      width: 50,
                      height: 50,
                    )),
                Expanded(
                    child: ListTile(
                  title: Text(order.nameRestaurant),
                  subtitle: Row(
                    children: [
                      Text(order.location),
                      Icon(Icons.location_pin),
                    ],
                  ),
                )),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(order.orderNumber + "رقم الطلب"),
              ],
            ),
            Divider(),
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(order.imgCustomer!),
                ),
                // SizedBox(
                //   width: ,
                // ),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Text(order.nameCustomer),
                ),
              ],
            ),
            Divider(),
            Row(
              children: [
                Icon(
                  Icons.event_note_sharp,
                  color: kDefaultIconLightColor,
                ),
                Text("تاريخ الطلب" + order.dateTime),
              ],
            ),
            Divider(),
            Row(
              children: [
                Text(order.order),
              ],
            ),
            Row(
              children: [
                PrimaryButton(
                  text: "تأكيد الطلب",
                  press: () {},
                  paddingHorizantal: 10,
                  paddingVertical: 10,
                ),
                PrimaryButton(
                  text: "كل التفاصيل",
                  press: () {},
                  paddingHorizantal: 10,
                  paddingVertical: 10,
                  color: Color.fromARGB(255, 226, 226, 226),
                  colorText: kSecondryColorText,
                )
              ],
            ),
          ])),
    );
  }
}
