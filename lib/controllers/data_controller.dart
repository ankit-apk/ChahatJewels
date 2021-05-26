import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class DataController extends GetxController {
  var bannerRef = List.empty(growable: true).obs;
  var message1 = List.empty(growable: true).obs;
  var message2 = List.empty(growable: true).obs;
  var rateRef = List.empty(growable: true).obs;
  var galleryRef = List.empty(growable: true).obs;
  var contactsRef = List.empty(growable: true).obs;

  @override
  void onInit() {
    super.onInit();
    getBanner();
    getMessage1();
    getMessage2();
    getRates();
    getGallery();
    getContacts();
  }

  getBanner() async {
    CollectionReference c = FirebaseFirestore.instance.collection('bannerRef');
    c.snapshots().listen((banners) {
      bannerRef.value = banners.docs;
    });
  }

  getMessage1() async {
    CollectionReference c =
        FirebaseFirestore.instance.collection('message1Ref');
    c.snapshots().listen((messages) {
      message1.value = messages.docs;
    });
  }

  getMessage2() async {
    CollectionReference c =
        FirebaseFirestore.instance.collection('message2Ref');
    c.snapshots().listen((messages) {
      message2.value = messages.docs;
    });
  }

  getRates() async {
    CollectionReference c = FirebaseFirestore.instance.collection('rateRef');
    c.snapshots().listen((rates) {
      rateRef.value = rates.docs;
    });
  }

  getGallery() async {
    CollectionReference c = FirebaseFirestore.instance.collection('galleryRef');
    c.snapshots().listen((galleryref) {
      galleryRef.value = galleryref.docs;
    });
  }

  getContacts() async {
    CollectionReference c = FirebaseFirestore.instance.collection('contactRef');
    c.snapshots().listen((contactref) {
      contactsRef.value = contactref.docs;
    });
  }

  launchWhatsapp(String contact) async {
    await canLaunch("https://api.whatsapp.com/send?phone=91$contact")
        ? await launch("https://api.whatsapp.com/send?phone=91$contact")
        : throw 'Could not launch';
  }

  launchPhone(String contact) async {
    await canLaunch('tel:$contact')
        ? await launch('tel:$contact')
        : throw 'Could not launch';
  }
}
