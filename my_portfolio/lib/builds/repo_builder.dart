import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio/designs/container_design.dart';
import 'package:my_portfolio/designs/font_styles.dart';
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
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("⭐ ${widget.repo.stars}"),
              Row(
                children: [
                  FaIcon(FontAwesomeIcons.codeFork),
                  Text("${widget.repo.forks}"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
