import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/designs/container_design.dart';
import 'package:my_portfolio/designs/font_styles.dart';
import 'package:my_portfolio/functions/identify_technology.dart';
import 'package:my_portfolio/models/repository.dart';

class RepoBuilder extends StatefulWidget {
  const RepoBuilder({super.key, required this.repo});
  final Repository repo;

  @override
  State<RepoBuilder> createState() => _RepoBuilderState();
}

class _RepoBuilderState extends State<RepoBuilder> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      padding: EdgeInsets.all(10),
      decoration: ContainerDesign.repoContainers,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Container(
              height: 80,
              width: 80,
              decoration: ContainerDesign.repoImages,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.circular(15),
                child: widget.repo.imageUrl.length > 2
                    ? Image.asset(
                        widget.repo.imageUrl,
                        fit: BoxFit.fill,
                        height: 50,
                        width: 50,
                      )
                    : Center(
                        child: Text(
                          widget.repo.imageUrl,
                          style: GoogleFonts.unbounded(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                            fontSize: 30,
                          ),
                        ),
                      ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.repo.title, style: FontStyles.titleSections),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Text(
                    widget.repo.description,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: FontStyles.repoDescription,
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  height: 30,
                  child: ListView.separated(
                    separatorBuilder: (context, index) => SizedBox(width: 5),
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: widget.repo.technologies.length,
                    itemBuilder: (context, index) {
                      List<Color> containerColors =
                          IdentifyTechnology.identifyColor(
                            widget.repo.technologies[index],
                          );
                      return Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: containerColors[0],
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Center(
                          child: Text(
                            style: TextStyle(
                              color: containerColors[1],
                              fontWeight: FontWeight.w500,
                              fontSize: 10,
                            ),
                            widget.repo.technologies[index],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              Row(
                spacing: 5,
                children: [
                  Text("⭐ "),
                  Text(
                    widget.repo.stars.toString(),
                    style: FontStyles.repoDescription,
                  ),
                ],
              ),
              Row(
                spacing: 5,
                children: [
                  FaIcon(FontAwesomeIcons.codeFork),
                  Text(
                    "${widget.repo.forks}",
                    style: FontStyles.repoDescription,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
