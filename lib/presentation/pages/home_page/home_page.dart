import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:slask_exercise/core/const/consts.dart';
import 'package:slask_exercise/presentation/widgets/blue_container.dart';
import 'package:slask_exercise/presentation/widgets/floating_action_button_custom_location.dart';
import 'package:slask_exercise/presentation/pages/home_page/model/trip_item.dart';
import 'package:slask_exercise/presentation/widgets/green_container.dart';
import 'package:slask_exercise/presentation/widgets/option_button.dart';
import 'package:slask_exercise/presentation/widgets/recomendation_tile.dart';
import 'package:slask_exercise/presentation/widgets/transparent_icon_button.dart';
import 'package:slask_exercise/presentation/widgets/video_player/video_player.dart';

import 'bloc/home_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final screenHeight = size.height;
    final screenWidth = size.width;
    return BlocProvider(
      create: (_) => GetIt.I.get<HomeBloc>()..add(const HomeEvent.initial()),
      child: Scaffold(
        floatingActionButton: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) => AnimatedOpacity(
            opacity: state.isFloatingButtonVisible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            child: FloatingActionButton(
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              onPressed: () {},
              backgroundColor: Colors.greenAccent,
              child: const Icon(
                Icons.keyboard_arrow_up,
                color: Colors.white,
              ),
            ),
          ),
        ),
        floatingActionButtonLocation: CustomFloatingActionButtonLocation(
          offsetX: screenWidth * 0.1,
          offsetY: screenHeight * 0.15,
        ),
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            // Split the recommendations into two lists
            final leftColumnItems = <TripItem>[];
            final rightColumnItems = <TripItem>[];

            for (int i = 0; i < state.tripItems.length; i++) {
              if (i % 2 == 0) {
                leftColumnItems.add(state.tripItems[i]);
              } else {
                rightColumnItems.add(state.tripItems[i]);
              }
            }

            return Column(
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      // Video Player Section
                      Stack(
                        children: [
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            height: screenHeight *
                                0.5, // Restore the video player size
                            child: const VideoMediaPlayer(
                              assetDirectoryPath: Constants.videoAssetsPath,
                            ),
                          ),
                          Positioned(
                            top: 0,
                            left: 0,
                            right: 0,
                            child: AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              height: state.isExpandedAppBar ? 80 : 60,
                              color: state.isExpandedAppBar
                                  ? Colors.grey.shade200
                                  : Colors.transparent,
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 8.0, vertical: 10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  TransparentIconButton(
                                    iconData: Icons.menu,
                                    isTransparent: state.isExpandedAppBar,
                                  ),
                                  Row(
                                    children: [
                                      TransparentIconButton(
                                        isTransparent: state.isExpandedAppBar,
                                        iconData: Icons.favorite_outline,
                                      ),
                                      TransparentIconButton(
                                        iconData: Icons.search,
                                        isTransparent: state.isExpandedAppBar,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          AnimatedPositioned(
                            top: !state.isExpandedAppBar ? 100 : -20,
                            left: 0,
                            right: 0,
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.linear,
                            child: Image.asset(
                                '${Constants.imagesPath}/${state.isExpandedAppBar ? 'logo_slaskie.png' : 'logo_white.png'}'),
                          ),
                        ],
                      ),
                      // Draggable Scrollable Sheet
                      NotificationListener<DraggableScrollableNotification>(
                        onNotification: (notification) {
                          final extent = notification.extent;
                          // Check if the bottom sheet is fully extended
                          if (extent > 0.6 && !state.isExpandedAppBar) {
                            context
                                .read<HomeBloc>()
                                .add(const HomeEvent.bottomSheetChanged(0.0));
                          } else if (extent < 0.7 && state.isExpandedAppBar) {
                            context
                                .read<HomeBloc>()
                                .add(const HomeEvent.bottomSheetChanged(1.0));
                          }
                          return true;
                        },
                        child: DraggableScrollableSheet(
                          initialChildSize: 0.5,
                          minChildSize: 0.5,
                          maxChildSize: 0.889, // Allow full extension
                          builder: (context, scrollController) {
                            scrollController.addListener(() {
                              if (scrollController.offset > 0.0 &&
                                  !state.isFloatingButtonVisible &&
                                  state.isExpandedAppBar) {
                                context.read<HomeBloc>().add(const HomeEvent
                                    .floatingButtonVisibilityChanged());
                              } else if (scrollController.offset == 0.0 &&
                                  state.isFloatingButtonVisible &&
                                  state.isExpandedAppBar) {
                                context.read<HomeBloc>().add(const HomeEvent
                                    .floatingButtonVisibilityChanged());
                              }
                            });
                            return Container(
                              decoration: const BoxDecoration(
                                color: Colors.white,
                              ),
                              child: SingleChildScrollView(
                                controller: scrollController,
                                padding: const EdgeInsets.all(16.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Pull Handle
                                    Center(
                                      child: Container(
                                        width: 40,
                                        height: 5,
                                        margin:
                                            const EdgeInsets.only(bottom: 16.0),
                                        decoration: BoxDecoration(
                                          color: Colors.grey[300],
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                    const Text(
                                      Constants.recommendationLabel,
                                      style: TextStyle(
                                        fontSize: 26,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(height: 8.0),
                                    const Row(
                                      children: [
                                        OptionButton(
                                          text: Constants.buttonCheckedLabel,
                                          isCurrentFilter: true,
                                        ),
                                        SizedBox(width: 6.0),
                                        OptionButton(
                                            text:
                                                Constants.buttonUncheckedLabel,
                                            isCurrentFilter: false),
                                      ],
                                    ),
                                    const SizedBox(height: 8.0),
                                    // Two Columns for Recommendations
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Column(
                                            children: leftColumnItems
                                                .asMap()
                                                .entries
                                                .map((entry) {
                                              final index = entry.key;
                                              final item = entry.value;
                                              if (index == 0) {
                                                // Special case for the first item in the right column
                                                return const GreenContainer();
                                              } else if (index == 1) {
                                                // Special case for the second item in the right column
                                                return const BlueContainer();
                                              }
                                              // Default Recommendation Tile
                                              return RecommendationTile(
                                                title: item.title,
                                                imagePath: item.imageUrl,
                                                isFavorite: item.isFavorite,
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                        const SizedBox(width: 8.0),
                                        Expanded(
                                          child: Column(
                                            children:
                                            rightColumnItems.map((item) {
                                              return RecommendationTile(
                                                title: item.title,
                                                imagePath: item.imageUrl,
                                                isFavorite: item.isFavorite,
                                              );
                                            }).toList(),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: state.bottomItems.map((item) {
                      return Column(
                        children: [
                          Icon(
                            item.iconData,
                          ),
                          const SizedBox(height: 4.0),
                          Text(item.title),
                        ],
                      );
                    }).toList(),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
