class PetsModel {
  final int id;
  final String petName;
  final String petImage;
  final int age;
  final String petBreed;
  final List likes;

  PetsModel(
      {required this.petName,
      required this.petImage,
      required this.age,
      required this.petBreed,
      required this.likes,
      required this.id});
}

List<PetsModel> topPets = [
  PetsModel(
    petName: "George",
    petImage: "assets/images/maltese.jpg",
    age: 4,
    petBreed: "	Maltese",
    likes: [],
    id: 1,
  ),
  PetsModel(
    petName: "Patrick",
    petImage: "assets/images/shepherd.jpg",
    age: 7,
    petBreed: "German Shepherd",
    likes: [],
    id: 2,
  ),
  PetsModel(
    petName: "Lucifer",
    petImage: "assets/images/siberian.jpg",
    age: 13,
    petBreed: "Siberian Husky",
    likes: [],
    id: 2,
  ),
];

List<PetsModel> newPets = [
  PetsModel(
    petName: "Chris",
    petImage: "assets/images/bulldog.jpg",
    age: 2,
    petBreed: "Bulldog",
    likes: [],
    id: 1,
  ),
  PetsModel(
    petName: "Anthony",
    petImage: "assets/images/rottweiler.jpg",
    age: 5,
    petBreed: "Rottweiler",
    likes: [],
    id: 2,
  ),
  PetsModel(
    petName: "Lucifer",
    petImage: "assets/images/hound.jpg",
    age: 13,
    petBreed: "Basset Hound",
    likes: [],
    id: 2,
  ),
];
