import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:hotels/core/constants/resources/routes_manger.dart';
import 'package:hotels/data/remote/model/hotel.dart';

abstract class HomeController extends GetxController {
  getData();
}

class HomeControllerImp extends HomeController {
  List<QueryDocumentSnapshot> data = [];

  List<HotelModel> popularHotels = [];
  List<HotelModel> allHotels = [];
  bool isData = true;
  goToHotelMainView() {
    Get.toNamed(Routes.hotelMainView);
  }

  getPopularHotels() async {
    for (var element in data) {
      if (element['isPopular'] == true) {
        HotelModel hotel = HotelModel(
            images: element['images'],
            mainImage: element['mainImage'],
            name: element['name'],
            price: element['pricePerDay']);
        popularHotels.add(hotel);
        update();
      }
    }
  }

  getAllHotels() async {
    for (var element in data) {
      HotelModel hotel = HotelModel(
          images: element['images'],
          mainImage: element['mainImage'],
          name: element['name'],
          price: element['pricePerDay']);
      allHotels.add(hotel);
      allHotels = List.of(allHotels);
      allHotels.shuffle();
      update();
    }
  }

  @override
  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('Hotels').get();
    data.addAll(querySnapshot.docs);
    update();
  }

  @override
  void onInit() async {
    await getData();
    isData = false;
    await getAllHotels();
    await getPopularHotels();

    super.onInit();
  }
}
