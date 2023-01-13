import 'package:flutter/material.dart';
import 'package:pet_adoption_app_ui/views/model/pets_model.dart';
import 'package:pet_adoption_app_ui/views/widgets/new_pets_card.dart';
import 'package:pet_adoption_app_ui/views/widgets/top_pets_card.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({super.key});

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  int sectedCategory = 0;
  List categories = [
    "Dogs",
    "Cats",
    "Rabbits",
  ];

  List images = [
    "assets/images/pup.jpg",
    "assets/images/cat1.jpg",
    "assets/images/rabbit.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        toolbarHeight: 70,
        leading: const Icon(
          Icons.menu_outlined,
          color: Colors.black,
        ),
        title: RichText(
          text: TextSpan(
            style: theme.bodySmall,
            children: [
              const WidgetSpan(
                  child: Icon(
                Icons.location_on_sharp,
                color: Colors.red,
                size: 14,
              )),
              TextSpan(
                  text: " Lagos, ",
                  style:
                      theme.bodySmall!.copyWith(fontWeight: FontWeight.bold)),
              const TextSpan(text: "Nigeria"),
            ],
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              backgroundImage: AssetImage("assets/images/profilepic.jpg"),
              radius: 16,
            ),
          )
        ],
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
        children: [
          Text(
            "Find a new friend",
            style: theme.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 50,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  Text(
                    " Search for pets",
                    style: theme.bodySmall,
                  ),
                  const Spacer(),
                  const Icon(
                    Icons.display_settings_sharp,
                    color: Colors.grey,
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Text(
            "Pet Categories",
            style: theme.titleMedium,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: List.generate(
                categories.length,
                (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        sectedCategory = index;
                      });
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      height: 55,
                      width: 110,
                      decoration: BoxDecoration(
                          color: sectedCategory == index
                              ? Colors.red
                              : Colors.white,
                          borderRadius: BorderRadius.circular(25)),
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(images[index]),
                            ),
                            Text(
                              categories[index],
                              style: TextStyle(
                                  fontSize: 13,
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w500,
                                  color: sectedCategory == index
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              height: 200,
              child: ListView.separated(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: topPets.length,
                itemBuilder: (context, index) {
                  final myPetDetails = topPets[index];
                  return TopPetsCard(
                    petName: myPetDetails.petName,
                    petBreed: myPetDetails.petBreed,
                    year: myPetDetails.age.toString(),
                    imageUrl: myPetDetails.petImage,
                    iD: myPetDetails.id,
                    likes: myPetDetails.likes,
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    width: 10,
                  );
                },
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "Newest pets",
            style: theme.titleMedium,
          ),
          const SizedBox(
            height: 10,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: newPets.length,
            itemBuilder: (context, index) {
              final myPetDetails = newPets[index];
              return NewPetsCard(
                petName: myPetDetails.petName,
                petBreed: myPetDetails.petBreed,
                year: myPetDetails.age.toString(),
                imageUrl: myPetDetails.petImage,
                iD: myPetDetails.id,
                likes: myPetDetails.likes,
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 10,
              );
            },
          ),
        ],
      ),
    );
  }
}
