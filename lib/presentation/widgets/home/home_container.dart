import 'package:flutter/widgets.dart';

class HomeContainer extends StatelessWidget {
  const HomeContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final paddingTop = MediaQuery.of(context).padding.top;

    return SingleChildScrollView(
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
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Image.asset(homeItems[index].bgImage)),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, top: 100),
            child: Image.asset(
              'assets/images/redirection_page/kitty.png',
              height: 200,
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
