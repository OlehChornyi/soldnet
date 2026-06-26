import 'package:flutter/widgets.dart';

class HomeContainer extends StatefulWidget {
  const HomeContainer({super.key});

  @override
  State<HomeContainer> createState() => _HomeContainerState();
}

class _HomeContainerState extends State<HomeContainer> {
  final _scrollController = ScrollController();
  bool _isUserReachedPageBottom = false;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      if (_scrollController.position.atEdge) {
        if (_scrollController.position.pixels ==
            _scrollController.position.maxScrollExtent) {
          setState(() => _isUserReachedPageBottom = true);
        }
        if (_scrollController.position.pixels ==
            _scrollController.position.minScrollExtent) {
          setState(() => _isUserReachedPageBottom = false);
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;
    final screenWidth = MediaQuery.of(context).size.width;

    return SingleChildScrollView(
      controller: _scrollController,
      child: Column(
        children: [
          SizedBox(
            height: paddingTop + 12,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: homeItems.length,
            separatorBuilder: (context, index) => const SizedBox(
              height: 12,
            ),
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: screenWidth - 32,
                  height: (screenWidth - 32) / 4,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(
                          image: AssetImage(homeItems[index].bgImage))),
                ),
              );
            },
          ),
          AnimatedOpacity(
            duration: Duration(milliseconds: 500),
            opacity: _isUserReachedPageBottom ? 1 : 0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, top: 100),
              child: Image.asset(
                'assets/images/redirection_page/kitty.png',
                height: 200,
              ),
            ),
          ),
          const SizedBox(
            height: 200,
          ),
        ],
      ),
    );
  }
}

typedef HomeItemRecord = ({String label, String bgImage});

List<HomeItemRecord> get homeItems => [
      (label: 'Blah', bgImage: 'assets/images/prints/snake.png'),
      (label: 'Blah2', bgImage: 'assets/images/prints/zebra.png'),
      (label: 'Blah3', bgImage: 'assets/images/prints/tiger.png'),
      (label: 'Blah4', bgImage: 'assets/images/prints/cheeta.png'),
      (label: 'Blah5', bgImage: 'assets/images/prints/leopard.png'),
      (label: 'Blah6', bgImage: 'assets/images/prints/leaves.png'),
    ];
