import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';

abstract class HomeController extends GetxController {
  getData();
}

class HomeControllerImp extends HomeController {
  List<QueryDocumentSnapshot> data = [];

  @override
  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection('homeImages').get();
    data.addAll(querySnapshot.docs);

    update();
  }

  @override
  void onInit() {
    getData();
    super.onInit();
  }
}
