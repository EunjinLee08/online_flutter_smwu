import 'package:flutter/material.dart';

class HomeShortCut extends StatelessWidget {
  HomeShortCut({super.key});

  final List<IconData> iconList = [
    Icons.people_outline,
    Icons.person_2_outlined,
    Icons.videogame_asset_outlined,
    Icons.map_outlined,
    Icons.threed_rotation,
    Icons.movie_creation_outlined,
    Icons.update
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      crossAxisSpacing: 16,
      mainAxisSpacing: 16,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.symmetric(horizontal: 16),
      children: List.generate(iconList.length, (index) {
        return ElevatedButton(onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(70,70),
              padding: EdgeInsets.all(16),
              backgroundColor: Colors.blueGrey.shade400,
              overlayColor: Colors.black,

            ),
            child: Icon(iconList[index], size: 48, color: Colors.grey.shade300,),);
      }),
    );
  }
}
