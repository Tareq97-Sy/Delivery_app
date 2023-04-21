enum VehicleType { car, bus }

class Vehicle {
  final String number;
  final VehicleType type;
  final String model;
  final DateTime factoryYear;
  late List<String> img;
  final String driverLicenseImg;
  final String carLicenseImg;
  Vehicle({
    required this.number,
    required this.type,
    required this.model,
    required this.factoryYear,
    required this.driverLicenseImg,
    required this.carLicenseImg,
  }) {
    img = [];
  }
  void addImage(String imgPath) {
    img.add(imgPath);
  }
}
