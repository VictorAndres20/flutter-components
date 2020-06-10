import 'package:flutter/material.dart';

// You can change Object Type for items ans used
Widget buildListViewBuilder({List<int> items, ScrollController controller}){
  return ListView.builder(
    controller: controller,
    itemCount: items.length,
    itemBuilder: (BuildContext context, int index) {
      int image = items[index];

      return FadeInImage(
        placeholder: AssetImage("resources/images/loading.gif"), 
        image: NetworkImage("https://i.picsum.photos/id/$image/200/200.jpg")
      );
    }
  );
}

Widget buildListViewWithRefreshIndicator({List<int> items, ScrollController controller, Function onRefreshFunc}){
  return RefreshIndicator(
    onRefresh: () => onRefreshFunc(),
    child: buildListViewBuilder(
      items: items,
      controller: controller
    ),
  );
}