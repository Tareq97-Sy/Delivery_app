import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:golden_soft_test/fixed_ui/constants.dart';
import 'package:golden_soft_test/pages/map_page.dart';
import 'package:golden_soft_test/widgets/second_page/drawer.dart';

import '../widgets/first_page_widgets/add_image_box.dart';
import '../widgets/first_page_widgets/drop_down_menu.dart';
import '../widgets/first_page_widgets/image_square.dart';
import '../widgets/first_page_widgets/primary_button.dart';
import '../widgets/first_page_widgets/text_field.dart';
import 'package:image_picker/image_picker.dart';
import 'package:justino_icons/justino_icons.dart';

class SignUpAccountPage extends StatefulWidget {
  SignUpAccountPage({super.key});

  @override
  State<SignUpAccountPage> createState() => _SignUpAccountPageState();
}

class _SignUpAccountPageState extends State<SignUpAccountPage> {
  final TextEditingController numberController = TextEditingController();

  final TextEditingController modelController = TextEditingController();

  final List<String> items = [
    "",
    "assets/images/car.jpg",
    "assets/images/car2.jpg",
    "assets/images/car3.jpg",
  ];
  JustinoIconData _selected = JustinoIcons.getByName('steeringWheel')!;
  final imgFiles = [File('assets/images/car.jpg')];
  late File? imgFile = null;
  late File? driverImg = null;
  late File? licenceImg = null;
  @override
  void oninit() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Color.fromARGB(255, 246, 246, 246),
          appBar: buildAppBar(),
          drawer: buildDrawer(context, '/sign-up'),
          body: Padding(
            padding: const EdgeInsets.only(top: 25.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  TextFieldWidget(
                    controller: numberController,
                    label: "رقم المركبة",
                    hint: "رجاء أدخل رقم المركبة",
                    icon: Icons.directions_car_rounded,
                  ),
                  DropDownMenuList(
                    items: ["car", "bus", "min-track"],
                    hint: "نوع المركبة",
                    icon: _selected,
                  ),
                  TextFieldWidget(
                    controller: modelController,
                    label: "موديل المركبة",
                    hint: "رجاء أدخل موديل المركبة",
                    icon: Icons.drive_file_rename_outline_outlined,
                  ),
                  DropDownMenuList(
                    items: ['2000', '2010', '2020'],
                    hint: "سنة الصنع",
                    isFactoryYear: true,
                    icon: _selected,
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: imgFiles.length,
                      separatorBuilder: (context, index) => SizedBox(
                        width: 1.5,
                      ),
                      itemBuilder: (context, index) {
                        File file = imgFiles[index];
                        if (index == 0) {
                          return AddImageBox(
                            press: () => pickImage(),
                          );
                        } else {
                          return ImageSquare(
                            imgFile: file,
                          );
                        }
                      },
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 30, vertical: 1),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        driverImg == null
                            ? Column(
                                children: [
                                  Text("رخصة القيادة"),
                                  AddImageBox(
                                    press: () {
                                      pickImage(
                                          isOneImage: true, imgType: 'dimage');
                                    },
                                    paddingHorizantal: 40,
                                  )
                                ],
                              )
                            : SizedBox(
                                height: 145,
                                child: ImageSquare(imgFile: driverImg)),
                        SizedBox(
                          width: 2,
                        ),
                        licenceImg == null
                            ? Column(
                                children: [
                                  Text("رخصة السيارة"),
                                  AddImageBox(
                                    press: () {
                                      pickImage(
                                          isOneImage: true, imgType: 'limage');
                                    },
                                    paddingHorizantal: 40,
                                  ),
                                ],
                              )
                            : SizedBox(
                                height: 145,
                                child: ImageSquare(imgFile: licenceImg)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PrimaryButton(
                      press: () => Get.to(MapPage()),
                      text: 'تأكيد انشاء الحساب',
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }

  void pickImage({bool isOneImage = false, String imgType = ''}) async {
    XFile? file = await ImagePicker().pickImage(source: ImageSource.gallery);
    setState(() {
      if (file != null) {
        imgFile = File(file.path);
        !isOneImage ? imgFiles.add(imgFile!) : null;
      }
    });
    imgType == "dimage" ? driverImg = imgFile : licenceImg = imgFile;
  }

  AppBar buildAppBar() => AppBar(
        title: Text(
          "استكمال بيانات التسجيل",
          style: TextStyle(color: kSecondryColorText),
        ),
        centerTitle: true,
        backgroundColor: kContentColorLightTheme,
      );
}
