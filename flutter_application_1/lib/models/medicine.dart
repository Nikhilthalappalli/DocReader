class MedicineDataModel {
  int id;
  String imgUrl;
  String name;
  String desc;
  double Price;
  MedicineDataModel(this.id, this.Price, this.desc, this.imgUrl, this.name);
}

List<MedicineDataModel> mediData = [
  MedicineDataModel(
      1, 2, "Used for fevers", "assets/images/dolo650.jpg", "Dolo 650"),
  MedicineDataModel(
      2, 5, "Used to treat ADHD", "assets/images/img1.jpg", "Adderall"),
  MedicineDataModel(3, 20, "Used to treat cervical dystonia",
      "assets/images/img2.jpg", "Botox"),
  MedicineDataModel(
      4, 5, "Used to treat headache", "assets/images/img3.jpg", "Paracetamol "),
  MedicineDataModel(5, 10, "Used to relieve coughing", "assets/images/img4.jpg",
      "Benzonatate "),
];
