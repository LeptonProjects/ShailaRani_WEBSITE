import '../../../../../core/utils/utils.dart';
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
                        ThumbnailImageBox(
                          imageUrl: state.videos[index].thumbnailurl,
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
                          
                          text: AppUtils.timeStampToDateString(
                            timeStamp: state.videos[index].uploadedDate,
                          ),
                          
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

class ThumbnailImageBox extends StatelessWidget {
  final String imageUrl;
  final double imageSize;
  final double borderRadius;

  const ThumbnailImageBox({
    super.key,
    required this.imageUrl,
    this.imageSize = 100.0, // Adjust the size as needed
    this.borderRadius = 10.0, // Adjust the border radius as needed
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: imageSize,
      height: imageSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(
          color: Colors.grey[300]!, // You can change the border color
          width: 1.0,
        ),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: imageUrl.isEmpty
            ? Image.asset(
                "assests/images/imagenotfound.png",
                fit: BoxFit.cover,
              )
            : Image.network(
                imageUrl,
                fit: BoxFit.cover,
              ),
      ),
    );
  }
}
