
import 'video_widgets.dart';

class ListOfVideoWidget extends StatelessWidget {
  const ListOfVideoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<VideoManagerBloc, VideoManagerState>(
        builder: (context, state) {
          if (state is VideoManagerLoading) {
            return AppWidgets.loadinWidget;
          }
          if (state is VideoManagerLoaded) {
            if (state.videos.isEmpty) {
              return const Center(
                child: Text("No Data Found"),
              );
            }
            return ListView.separated(
                itemBuilder: (context, index) {
                  return SizedBox(
                    height: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ListDataContainerWidgetVideo(
                          text: (index + 1).toString(),
                          height: 40,
                        ),
                        ListDataContainerWidgetVideo(
                          text: state.videos[index].thumbnailurl,
                          height: 40,
                        ),
                        ListDataContainerWidgetVideo(
                          text: state.videos[index].title,
                          height: 40,
                        ),
                        ListDataContainerWidgetVideo(
                          text: state.videos[index].subtitle,
                          height: 40,
                        ),
                        ListDataContainerWidgetVideo(
                          text: state.videos[index].description,
                          height: 40,
                        ),
                        ListDataContainerWidgetVideo(
                          text: state.videos[index].uploadedDate.toString(),
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
                itemCount: state.videos.length);
          } else {
            return const SizedBox();
          }
        },
      ),
    );
  }
}