import 'package:flutter/material.dart';

import '../../fixed_ui/constants.dart';

class DropDownMenuList extends StatefulWidget {
  DropDownMenuList(
      {super.key,
      this.isFactoryYear = false,
      required this.items,
      required this.hint,
      required this.icon});
  String? selectedValue;
  final List<dynamic> items;
  final bool isFactoryYear;
  final String hint;
  final IconData icon;

  @override
  State<DropDownMenuList> createState() => _DropDownMenuListState();
}

class _DropDownMenuListState extends State<DropDownMenuList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 8.0,
        ),
        child: DropdownButtonFormField<String>(
          hint: Text(widget.hint),
          decoration: InputDecoration(
            prefixIcon: Icon(widget.icon),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor, width: 2),
              borderRadius: BorderRadius.circular(kRaduisBorder),
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: kPrimaryColor, width: 2),
              borderRadius: BorderRadius.circular(kRaduisBorder),
            ),
          ),
          dropdownColor: kDefaultIconLightColor,
          value: widget.selectedValue,
          onChanged: (String? newValue) {
            setState(() {
              widget.selectedValue = newValue!;
            });
          },
          items: [
            ...widget.items
                .map((item) => DropdownMenuItem(value: item, child: Text(item)))
          ],
        ));
  }
}
