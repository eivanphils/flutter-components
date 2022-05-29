import 'package:flutter/material.dart';

import 'package:flutter_components/theme/app_theme.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesId = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();

    scrollController.addListener(() {
      // print('${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if (scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent) {
        // loadPhotos();
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;

    isLoading = true;
    setState(() {});

    // Future.delayed(const Duration(seconds: 3)).then((value) {
    //   loadPhotos();
    // });

    await Future.delayed(const Duration(seconds: 3));
    loadPhotos();

    isLoading = false;
    setState(() {});
  }

  void loadPhotos() {
    final int lastId = imagesId.last;
    imagesId.addAll([1, 2, 3, 4, 5].map((n) => lastId + n));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        removeTop: true,
        removeBottom: true,
        context: context,
        child: Stack(
          children: [
            ListView.builder(
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

            // * One way to show/hide a widget
            // if (isLoading)
            //   Positioned(
            //     left: size.width * 0.5 - 30,
            //     bottom: 30,
            //     child: const _LoadingIcon(),
            //   ),


            // * Another way to show/hide a widget
            Visibility(
              visible: isLoading,
              child: Positioned(
                left: size.width * 0.5 - 30,
                bottom: 30,
                child: const _LoadingIcon(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.8), shape: BoxShape.circle),
      height: 60,
      width: 60,
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
