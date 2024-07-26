/// This class defines the variables used in the [search_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SearchOneModel {
  String? medicineName;
  String? img;
  String? medicineCount;

  SearchOneModel({
    this.img,
    this.medicineName,
    this.medicineCount,
});
}
