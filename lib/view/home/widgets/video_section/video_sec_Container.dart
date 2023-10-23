import 'package:shaila_rani_website/features/video_management/presentation/pages/widgets/video_widgets.dart';
import 'package:shaila_rani_website/view/widgets/responsive/responsive.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoSectionContainer extends StatelessWidget {
  const VideoSectionContainer({
    super.key,
    required this.sscrollcontroller,
  });

  final ScrollController sscrollcontroller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: BlocBuilder<VideoManagerBloc, VideoManagerState>(
        builder: (context, state) {
          if (state is VideoManagerLoaded) {
            return Column(
              children: [
                SizedBox(
                  //................................. OUR TEAM
                  height: ResponsiveWebSite.isDesktop(context)
                      ? 300
                      : ResponsiveWebSite.isMobile(context)
                          ? 150
                          : 400,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: ResponsiveWebSite.isMobile(context)
                        ? Column(
                            children: [
                              SizedBox(
                                  height: 40,
                                  width: double.infinity,
                                  child: Column(
                                    children: [
                                      SizedBox(
                                        height: 40,
                                        width: 200,
                                        child: Center(
                                          child: GestureDetector(
                                            onTap: () => launchUrl(Uri.parse(
                                                'https://www.youtube.com/@AdvShailaRani')),
                                            child: Image.asset(
                                                 'assests/images/you_tube_png.png',
                                              fit: BoxFit.fill,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: SizedBox(
                                    height: 80,
                                    width: double.infinity,
                                    child: Image.network(
                                      'https://yt3.googleusercontent.com/EyPUsmFj4rk9BYwtSy0EACxupxD89a_zJR5vw7_fWiNqifvEKjPDWXNfqfivn6a5NL8ES3-LC4o=w2120-fcrop64=1,00005a57ffffa5a8-k-c0xffffffff-no-nd-rj',
                                      fit: BoxFit.fitWidth,
                                    )),
                              )
                            ],
                          )
                        : ResponsiveWebSite.isTablet(context)
                            ? Column(
                                children: [
                                  SizedBox(
                                      height: 110,
                                      width: double.infinity,
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 100,
                                            width: 150,
                                            child: Center(
                                              child: GestureDetector(
                                                onTap: () => launchUrl(
                                                    Uri.parse(
                                                        state.videos[0].url)),
                                                child: Image.asset(
                                                  'assests/images/you_tube_png.png',
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsets.only(top: 00),
                                            child: Container(
                                                color: Colors.amber,
                                                height: 01,
                                                width: 60),
                                          ),
                                        ],
                                      )),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: SizedBox(
                                        height: 200,
                                        width: double.infinity,
                                        child: Image.network(
                                          'https://yt3.googleusercontent.com/EyPUsmFj4rk9BYwtSy0EACxupxD89a_zJR5vw7_fWiNqifvEKjPDWXNfqfivn6a5NL8ES3-LC4o=w2120-fcrop64=1,00005a57ffffa5a8-k-c0xffffffff-no-nd-rj',
                                          fit: BoxFit.fitHeight,
                                        )),
                                  )
                                ],
                              )
                            : Row(
                                // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: SizedBox(
                                        height: 400,
                                        width: 150,
                                        child: GestureDetector(
                                          onTap: () => launchUrl(Uri.parse(
                                              'https://www.youtube.com/@AdvShailaRani')),
                                          child: Center(
                                            child: Image.asset(
                                              'assests/images/you_tube_png.png',
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        )),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 30),
                                    child: Container(
                                      color: Colors.amber,
                                      height: 300,
                                      width: 01,
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 20),
                                      child: GestureDetector(
                                        onTap: () => launchUrl(Uri.parse(
                                            'https://www.youtube.com/@AdvShailaRani')),
                                        child: SizedBox(
                                          // color: Colors.amber,
                                          height: ResponsiveWebSite.isTablet(
                                                  context)
                                              ? 280
                                              : 600,
                                          // width:  ResponsiveWebSite.isTablet(context)
                                          // ? 280
                                          // : 1000,
                                          child: Image.network(
                                            'https://yt3.googleusercontent.com/EyPUsmFj4rk9BYwtSy0EACxupxD89a_zJR5vw7_fWiNqifvEKjPDWXNfqfivn6a5NL8ES3-LC4o=w2120-fcrop64=1,00005a57ffffa5a8-k-c0xffffffff-no-nd-rj',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                  ),
                ),
                SizedBox(
                    // color: Colors.black,
                    height: ResponsiveWebSite.isMobile(context) ? 500 : 350,
                    // width: 600,
                    child: ResponsiveWebSite.isDesktop(context)
                        ? ListView.separated(
                            physics: const AlwaysScrollableScrollPhysics(),
                            // shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            controller: sscrollcontroller,
                            itemBuilder: (context, index) {
                              return SizedBox(
                                height: 400,
                                width: 400,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: GestureDetector(
                                        onTap: () => launchUrl(
                                            Uri.parse(state.videos[index].url)),
                                        child: Image.network(
                                          state.videos[index].thumbnailurl,
                                          fit: BoxFit.fitWidth,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 05),
                                      child: Text(
                                        state.videos[index].title,
                                        style: const TextStyle(
                                            color: cWhite,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(bottom: 20),
                                      child: GooglePoppinsWidgets(
                                        text: state.videos[index].subtitle,
                                        fontsize: 10,
                                        color: cWhite,
                                        fontWeight: FontWeight.w200,
                                      ),
                                    )
                                  ],
                                ),
                              );
                            },
                            separatorBuilder: (context, index) {
                              return const SizedBox(
                                width: 20,
                              );
                            },
                            itemCount: state.videos.length)
                        : GridView.count(
                            crossAxisCount: 2,
                            padding: const EdgeInsets.all(20),
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10,
                            primary: false,
                            children:
                                List.generate(state.videos.length, (index) {
                              return SizedBox(
                                // margin: ,
                                height: 100,
                                width: 100,
                                // color: Colors.amber,
                                child: Column(
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: GestureDetector(
                                          onTap: () => launchUrl(Uri.parse(
                                              state.videos[index].url)),
                                          child: Image.network(
                                            state.videos[index].thumbnailurl,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Text(
                                      state.videos[index].title,
                                      style: const TextStyle(
                                          color: cWhite,
                                          fontWeight: FontWeight.w400),
                                    ),
                                    GooglePoppinsWidgets(
                                      text: state.videos[index].subtitle,
                                      fontsize: 10,
                                      color: cWhite,
                                      fontWeight: FontWeight.w200,
                                    )
                                  ],
                                ),
                              );
                            }),
                          ))
              ],
            );
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}
