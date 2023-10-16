// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';

class VideoManageMentHomeScreen extends StatelessWidget {
  const VideoManageMentHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 850,
      color: cGrey.withOpacity(0.1),
      child: Column(
        children: [
          SizedBox(
            height: 100,
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 20, left: 20),
                      child: GooglePoppinsWidgets(
                          text: 'Videos Details',
                          fontsize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20, top: 10),
                      child: GestureDetector(
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: cBlue),
                          height: 40,
                          width: 140,
                          child: Center(
                            child: GooglePoppinsWidgets(
                              text: 'Create Video',
                              fontsize: 12,
                              color: cWhite,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                color: cWhite,
                child: const Column(
                  children: [
                    VideoListHeaderWidget(), // DropDown --- Active List / In Active
                    ListOFVideoScreen()
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class VideoListHeaderWidget extends StatelessWidget {
  const VideoListHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 45,
          decoration: BoxDecoration(
              color: Colors.blue.withOpacity(0.1),
              border: Border.all(color: cGrey)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              HeaderRowTextWidgetVideo(
                title: 'No',
              ),
              HeaderRowTextWidgetVideo(
                title: clientSecTe[0],
              ),
              HeaderRowTextWidgetVideo(
                title: clientSecTe[1],
              ),
              HeaderRowTextWidgetVideo(
                title: clientSecTe[2],
              ),
              HeaderRowTextWidgetVideo(
                title: clientSecTe[3],
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: HeaderRowTextWidgetVideo(
                  title: clientSecTe[4],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

List<String> clientSecTe = [
  'Thumbnail',
  'Title',
  'Subtitle',
  'Description',
  'Uploaded Date',
];

class ListOFVideoScreen extends StatelessWidget {
  const ListOFVideoScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
          itemBuilder: (context, index) {
            return SizedBox(
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ListDataContainerWidgetVideo(
                    text: '1',
                    height: 40,
                  ),
                  ListDataContainerWidgetVideo(
                    text: '952627',
                    height: 40,
                  ),
                  ListDataContainerWidgetVideo(
                    text: 'Abinjohn',
                    height: 40,
                  ),
                  ListDataContainerWidgetVideo(
                    text: 'Manger post',
                    height: 40,
                  ),
                  ListDataContainerWidgetVideo(
                    text: '+91 8089262564',
                    height: 40,
                  ),
                  ListDataContainerWidgetVideo(
                    text: '23-05-2000',
                    height: 40,
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              height: 05,
            );
          },
          itemCount: 10),
    );
  }
}

class ListDataContainerWidgetVideo extends StatelessWidget {
  String text;
  double height;
  ListDataContainerWidgetVideo({
    required this.text,
    required this.height,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: 200,
      child: Center(
        child: GooglePoppinsWidgets(
          text: text,
          textAlign: TextAlign.center,
          fontsize: 12,
        ),
      ),
    );
  }
}

class HeaderRowTextWidgetVideo extends StatelessWidget {
  String title;

  HeaderRowTextWidgetVideo({
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      width: 200,
      child: Center(
          child: GooglePoppinsWidgets(
        text: title,
        textAlign: TextAlign.center,
        fontsize: 12,
        fontWeight: FontWeight.w600,
      )),
    );
  }
}
