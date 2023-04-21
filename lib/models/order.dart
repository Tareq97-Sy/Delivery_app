class Order {
  final String? imgRestaurant;
  final String nameRestaurant;
  final String location;
  final String orderNumber;
  final String? imgCustomer;
  final String nameCustomer;
  final String dateTime;
  final String order;

  Order({
    this.imgRestaurant = "assets/images/restaurant.jpg",
    required this.nameRestaurant,
    required this.location,
    required this.orderNumber,
    this.imgCustomer = "assets/images/person.png",
    required this.nameCustomer,
    required this.dateTime,
    required this.order,
  });
}

List get orders => _orders;

List _orders = [
  Order(
      nameRestaurant: "مطاعم ليمونة",
      location: "3.2كم",
      orderNumber: "123123123",
      nameCustomer: "أحمد محمد",
      dateTime: "2/2/2023",
      order: "وجبة الفراخ المشوية, البيبسي كولا, كل الإضافات المطلوبة"),
  Order(
      nameRestaurant: "مطاعم الزين",
      location: "3.2كم",
      orderNumber: "3454535211",
      nameCustomer: "قاسم فرحان",
      dateTime: "2/2/2023",
      order: "وجبة الفراخ المشوية, البيبسي كولا, كل الإضافات المطلوبة"),
  Order(
      nameRestaurant: "مطاعم الحمراء",
      location: "3.2كم",
      orderNumber: "23155654",
      nameCustomer: "علي حسن",
      dateTime: "2/2/2023",
      order: "وجبة الفراخ المشوية, البيبسي كولا, كل الإضافات المطلوبة"),
  Order(
      nameRestaurant: "مطاعم قاسيون مول",
      location: "3.2كم",
      orderNumber: "5662312455",
      nameCustomer: "طارق أحمد",
      dateTime: "2/2/2023",
      order: "وجبة الفراخ المشوية, البيبسي كولا, كل الإضافات المطلوبة"),
];
