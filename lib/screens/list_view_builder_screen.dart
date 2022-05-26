import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesId = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      // print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        loadPhotos();
      }
    });
  }

  void loadPhotos() {
    final int lastId = imagesId.last;
    imagesId.addAll([1, 2, 3, 4, 5].map((n) => lastId + n));

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        removeTop: true,
        removeBottom: true,
        context: context,
        child: ListView.builder(
          controller: scrollController,
          itemCount: imagesId.length,
          itemBuilder: (BuildContext context, int index) {
            return FadeInImage(
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://picsum.photos/500/300?image=${imagesId[index]}'),
              width: double.infinity,
              height: 300,
              fit: BoxFit.cover,
              fadeInDuration: const Duration(milliseconds: 300),
            );
          },
        ),
      ),
    );
  }
}
