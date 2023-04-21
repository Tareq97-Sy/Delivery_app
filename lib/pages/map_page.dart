import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:get/get.dart';
import 'package:golden_soft_test/models/marker.dart';
import 'package:golden_soft_test/widgets/second_page/marker.dart';
import 'package:latlong2/latlong.dart';

import '../widgets/second_page/drawer.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() {
    return _MapPageState();
  }
}

class _MapPageState extends State<MapPage> {
  late AnchorPos<dynamic> anchorPos;
  late List<Marker> markersWidgets;

  @override
  void initState() {
    super.initState();
    anchorPos = AnchorPos.align(AnchorAlign.center);
    generateList();
  }

  void _setAnchorAlignPos(AnchorAlign alignOpt) {
    setState(() {
      anchorPos = AnchorPos.align(alignOpt);
    });
  }

  void _setAnchorExactlyPos(Anchor anchor) {
    setState(() {
      anchorPos = AnchorPos.exactly(anchor);
    });
  }

  void generateList() => markersWidgets = List.generate(
      markers.length,
      (index) => Marker(
          point: LatLng(markers[index].point.x, markers[index].point.y),
          builder: (cnt) =>
              MarkerWidget(press: () => Get.toNamed("/orders-page")),
          anchorPos: anchorPos));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('مواقع الطلبات'),
        leading: IconButton(
          icon: Icon(Icons.notifications),
          onPressed: () {},
        ),
      ),
      drawer: buildDrawer(context, '/map-page'),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: Flexible(
            child: FlutterMap(
              options: MapOptions(
                center: LatLng(51.5, -0.09),
                zoom: 5,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'dev.fleaflet.flutter_map.example',
                ),
                MarkerLayer(markers: markersWidgets),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
