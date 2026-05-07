import 'package:fading_edge_scrollview/fading_edge_scrollview.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/designs/container_design.dart';
import 'package:my_portfolio/designs/font_styles.dart';
import 'package:my_portfolio/models/technology.dart';

class TechnologyBuilder extends StatefulWidget {
  const TechnologyBuilder({super.key, required this.techs});
  final List<Technology> techs;

  @override
  State<TechnologyBuilder> createState() => _TechnologyBuilderState();
}

class _TechnologyBuilderState extends State<TechnologyBuilder> {
  ScrollController mainScroll = ScrollController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 500,
      child: FadingEdgeScrollView.fromScrollView(
        gradientFractionOnEnd: 0.3,
        gradientFractionOnStart: 0.3,
        child: ListView.builder(
          controller: mainScroll,
          itemCount: widget.techs.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
              decoration: ContainerDesign.languageContainer,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(10),
                    child: Image.network(
                      widget.techs[index].image,
                      fit: BoxFit.fill,
                      height: 50,
                      width: 50,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      widget.techs[index].name,
                      style: FontStyles.skillTitles,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
