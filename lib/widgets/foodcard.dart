import 'package:dodofoodie/screens/second.dart';
import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard(this.allMeals, this.controller, {super.key});

  final List<Map<String, Object>> allMeals;
  final PageController controller;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 335,
      width: double.infinity,
      child: PageView.builder(
        controller: controller,
        itemCount: allMeals.length,
        itemBuilder: (ctx, index) {
          return Padding(
            padding: const EdgeInsets.only(
              right: 30,
              left: 10,
            ),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(
                      title: allMeals[index]["name"] as String,
                      imagePath: allMeals[index]["image_path"] as String,
                      rating: allMeals[index]["ratings"] as double,
                      desc: allMeals[index]["desc"] as String,
                    ),
                  ),
                );
              },
              child: Card(
                clipBehavior: Clip.hardEdge,
                child: Column(
                  children: [
                    Hero(
                      tag: "Iconic",
                      child: Container(
                        height: 240,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          image: DecorationImage(
                            image: AssetImage(
                              allMeals[index]["image_path"] as String,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: const EdgeInsets.only(
                              right: 20,
                              top: 20,
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white.withOpacity(.9),
                            ),
                            height: 50,
                            width: 100,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Image.asset(
                                    "assets/images/rating.png",
                                    width: 30,
                                    fit: BoxFit.cover,
                                  ),
                                  Text(
                                    allMeals[index]["ratings"].toString(),
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                    ),
                    //the labeling
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 5,
                      ),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              allMeals[index]["name"] as String,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                            ),
                            const SizedBox(
                              height: 6,
                            ),
                            Text(
                              allMeals[index]["price"] as String,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                color: Colors.green,
                              ),
                            )
                          ]),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
