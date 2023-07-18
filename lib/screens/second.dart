import 'package:dodofoodie/widgets/orders.dart';
import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({
    super.key,
    required this.title,
    required this.imagePath,
    required this.rating,
    required this.desc,
  });

  final String title;
  final String imagePath;
  final double rating;
  final String desc;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Place Order Sharply"),
        icon: const Icon(Icons.card_giftcard),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        elevation: 20,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Hero(
              tag: "Iconic",
              child: Container(
                height: 400,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(25),
                    bottomRight: Radius.circular(25),
                  ),
                ),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Card(
                    margin: const EdgeInsets.only(
                      top: 60,
                      left: 20,
                    ),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 30,
                        weight: 700,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            //
            // The titles below
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                right: 10,
                top: 15,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Flexible(
                    flex: 4,
                    child: Text(
                      title,
                      style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Flexible(
                    flex: 2,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(.8),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const OrderedQuantity(),
                    ),
                  )
                ],
              ),
            ),
            //The Ratings comes under
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
                top: 4,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/images/rating.png",
                    width: 16,
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    '$rating Rating',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            //space
            const SizedBox(
              height: 30,
            ),
            //The description
            const Padding(
              padding: EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                "Description",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            //The actal description
            Padding(
              padding: const EdgeInsets.only(
                left: 10,
              ),
              child: Text(
                desc,
                style: const TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            //Map To Location
            //CTA whch will float on the page
            const SizedBox(
              height: 150,
            )
          ],
        ),
      ),
    );
  }
}
// const Padding(padding: EdgeInsets.only(
//   left: 10,
// ),
// child: ,
// )