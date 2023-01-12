import 'package:flutter/material.dart';

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
    "assets/images/dog5.jpg",
    "assets/images/cat.jpg",
    "assets/images/squirel.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        toolbarHeight: 80,
        leading: const Icon(
          Icons.menu_outlined,
          color: Colors.black,
        ),
        title: RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.black, wordSpacing: 5),
            children: [
              WidgetSpan(
                  child: Icon(
                Icons.location_on_sharp,
                color: Colors.red,
                size: 15,
              )),
              TextSpan(
                  text: " Accra, ",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: "Ghana"),
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
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Find a new friend",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 45,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Pet Categories",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          setState(() {
                            sectedCategory = index;
                          });
                         
                        },
                        child: AnimatedContainer(
                          margin: const EdgeInsets.all(7),
                          duration: const Duration(
                            milliseconds: 300,
                          ),
                          height: 40,
                          width: 85,
                          decoration: BoxDecoration(
                            color: sectedCategory == index
                                ? Colors.red
                                : Colors.white,
                            borderRadius: sectedCategory == index
                                ? BorderRadius.circular(15)
                                : BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              categories[index],
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: sectedCategory == index
                                      ? Colors.white
                                      : Colors.black),
                            ),
                          ),
                        ),
                      );
                    },),
              ),
              //      Text(images[sectedCategory])

              // Container(
              //   height: 50,
              //   width: 60,
              //   decoration: const BoxDecoration(
              //     color: Colors.white,
              //     borderRadius: BorderRadius.all(
              //       Radius.circular(10),
              //     ),
              //   ),
              // )
            ],
          ),
        ],

        // Container(
        //     width: 100,
        //     height: double.infinity,
        //     margin: const EdgeInsets.all(10),
        //     child: Column(
        //       children: [
        //         SizedBox(
        //           width: double.infinity,
        //           height: 60,
        //           child: ListView.builder(
        //               shrinkWrap: true,
        //               physics: const BouncingScrollPhysics(),
        //               scrollDirection: Axis.horizontal,
        //               itemCount: categories.length,
        //               itemBuilder: (context, index) {
        //                 return Column(
        //                   children: [
        //                     GestureDetector(
        //                       onTap: () {
        //                         setState(() {
        //                           sectedCategory = index;
        //                         });
        //                       },
        //                       child: AnimatedContainer(
        //                         margin: const EdgeInsets.all(7),
        //                         duration: const Duration(
        //                           milliseconds: 300,
        //                         ),
        //                         height: 80,
        //                         width: 45,
        //                         decoration: BoxDecoration(
        //                           color: sectedCategory == index
        //                               ? Colors.red
        //                               : Colors.blue,
        //                           borderRadius: sectedCategory == index
        //                               ? BorderRadius.circular(15)
        //                               : BorderRadius.circular(10),
        //                           border: sectedCategory == index
        //                               ? Border.all(
        //                                   color: Colors.deepPurpleAccent,
        //                                   width: 2)
        //                               : null,
        //                         ),
        //                         child: Center(
        //                           child: Text(
        //                             categories[index],
        //                             style: TextStyle(
        //                                 fontWeight: FontWeight.w500,
        //                                 color: sectedCategory == index
        //                                     ? Colors.black
        //                                     : Colors.grey),
        //                           ),
        //                         ),
        //                       ),
        //                     ),
        //                     Visibility(
        //                       visible: sectedCategory == index,
        //                       child: Container(
        //                         width: 5,
        //                         height: 5,
        //                         decoration: const BoxDecoration(
        //                             color: Colors.deepPurpleAccent,
        //                             shape: BoxShape.circle),
        //                       ),
        //                     )
        //                   ],
        //                 );
        //               }),
        //         ),
        //         Container(
        //           margin: const EdgeInsets.only(top: 30),
        //           width: double.infinity,
        //           height: 550,
        //           child: Column(
        //             mainAxisAlignment: MainAxisAlignment.center,
        //             children: [
        //               Text(
        //                 categories[sectedCategory],
        //               ),
        //               const SizedBox(
        //                 height: 10,
        //               ),
        //               Text(images[sectedCategory],
        //                   style: const TextStyle(
        //                       fontWeight: FontWeight.w500,
        //                       fontSize: 30,
        //                       color: Colors.deepPurple)),
        //             ],
        //           ),
        //         ),
        //       ],
        //     ))
      ),
    );
  }
}
