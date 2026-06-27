import 'package:flip_card/flip_card.dart';
import 'package:flutter/widgets.dart';
import 'package:soldnet/presentation/theme/app_colors.dart';
import 'package:soldnet/presentation/theme/app_text_styles.dart';
import 'package:soldnet/presentation/widgets/app/animations/app_animations_fade_in_list.dart';

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
          AppFadeInList<HomeItemRecord>(
            padding: EdgeInsets.zero,
            items: homeItems,
            itemBuilder: (context, item, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: FlipCard(
                  back: Container(
                      width: screenWidth - 32,
                      height: (screenWidth - 32) / 4,
                      decoration: BoxDecoration(
                        color: AppColors.black,
                        borderRadius: BorderRadius.circular(12),
                      )),
                  front: Container(
                    width: screenWidth - 32,
                    height: (screenWidth - 32) / 4,
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                            image: AssetImage(homeItems[index].bgImage))),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                        decoration: BoxDecoration(
                            color: AppColors.black.withAlpha(150),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          homeItems[index].label,
                          style: AppTextStyles.s20w600(color: AppColors.white),
                        ),
                      ),
                    ),
                  ),
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
