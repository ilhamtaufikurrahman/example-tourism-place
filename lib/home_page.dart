import 'package:flutter/material.dart';
import 'package:flutter_application_example/detail_page.dart';
import 'place.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Wisata Bandung',
        ),
      ),
      body: ListView.builder(
        itemCount: tourismPlaceList.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailPage(
                  place: tourismPlaceList[index],
                );
              }));
            },
            child: Card(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Image.asset(tourismPlaceList[index].imageAsset!),
                  ),
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tourismPlaceList[index].name!,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                          ),
                          Text(
                            tourismPlaceList[index].location!,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
