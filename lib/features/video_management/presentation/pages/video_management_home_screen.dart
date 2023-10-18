import 'widgets/video_widgets.dart';

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
                        onTap: () => createVideoDialogue(
                          context: context,
                          video: VideoEntity.empty(),
                        ),
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
                    ListOfVideoWidget()
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

class ListDataContainerWidgetVideo extends StatelessWidget {
  final String text;
  final double height;
  const ListDataContainerWidgetVideo({
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