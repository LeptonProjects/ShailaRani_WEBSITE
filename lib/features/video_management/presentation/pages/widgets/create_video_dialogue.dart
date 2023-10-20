import 'package:shaila_rani_website/core/utils/utils.dart';
import 'package:shaila_rani_website/features/video_management/presentation/bloc/video_creator/video_creator_bloc.dart';

import 'video_widgets.dart';

Future<void> createVideoDialogue({
  required BuildContext context,
  required VideoEntity video,
}) async {
  TextEditingController videoUrlController = TextEditingController();
  TextEditingController videoTitleController = TextEditingController();
  TextEditingController videoSubTitleController = TextEditingController();
  TextEditingController videoDescriptionController = TextEditingController();
  TextEditingController videoDateController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  int? timeStamp;

  videoUrlController.text = video.url;
  videoTitleController.text = video.title;
  videoSubTitleController.text = video.subtitle;
  videoDescriptionController.text = video.description;
  videoDateController.text =
      video.uploadedDate == -1 ? "" : ""; //todo timestamp convertor function

  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return BlocConsumer<VideoCreatorBloc, VideoCreatorState>(
        listener: (context, state) {
          if (state is VideoManagerCreatedSuccess) {
            formKey.currentState?.reset();
            ToastWidgets.successFullyCreated;
            context.read<VideoManagerBloc>().add(VideoManagerFetchEvent());
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AlertDialog(
            title: SizedBox(
              width: 500,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GooglePoppinsWidgets(
                    text: 'Create Video',
                    fontsize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: BackButtonContainerWidget(),
                  ),
                ],
              ),
            ),
            content: state is VideoCreatorLoading
                ? const SizedBox(
                    height: 300,
                    child: AppWidgets.loadinWidget,
                  )
                : SingleChildScrollView(
                    child: Form(
                      key: formKey,
                      child: Column(
                        children: [
                          if (state is! ImagePickerState)
                            TextButton(
                              onPressed: () {
                                context
                                    .read<VideoCreatorBloc>()
                                    .add(ImagePickerEvent());
                              },
                              child: const Text("Add Thumbnail"),
                            )
                          else
                            GestureDetector(
                              onTap: () => context
                                  .read<VideoCreatorBloc>()
                                  .add(ImagePickerEvent()),
                              child: CircleAvatar(
                                radius: 30,
                                child: ClipOval(
                                  child: Image.memory(
                                    state.webImage,
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormFieldVideoWidget(
                            controller: videoUrlController,
                            hintText: "Enter Video Url",
                            title: "Url",
                            validator: FormFieldValidation.isValidUrl,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormFieldVideoWidget(
                            controller: videoTitleController,
                            hintText: "Enter Video Title",
                            title: "Title",
                            validator: FormFieldValidation.validateInput,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormFieldVideoWidget(
                            controller: videoSubTitleController,
                            hintText: "Enter Video Subtitle",
                            title: "Subtitle",
                            validator: FormFieldValidation.validateInput,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormFieldVideoWidget(
                            controller: videoDescriptionController,
                            hintText: "Enter Video Description",
                            title: "Description",
                            validator: FormFieldValidation.validateInput,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormFieldVideoWidget(
                            controller: videoDateController,
                            hintText: "Uploaded Date",
                            title: "Uploaded Date",
                            validator: FormFieldValidation.isDateValid,
                            onTap: () async {
                              timeStamp = await AppUtils.selectDate(context);
                              final String date =
                                  AppUtils.timeStampToDateString(
                                      timeStamp: timeStamp ?? -1);
                              videoDateController.text = date;
                            },
                            readOnly: true,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: themeColorBlue,
                            ),
                            onPressed: () async {
                              if (formKey.currentState?.validate() ?? false) {
                                String imageUrl = "";
                                //if image picked
                                if (state is ImagePickerState) {
                                  final bloc = context.read<VideoCreatorBloc>()
                                    ..add(ImageUploadEvent(
                                        image: state.webImage));
                                  //uploading to firebase and waiting for image upload
                                  await bloc.stream.firstWhere((state) {
                                    if (state is ImageUploadedSuccessState) {
                                      imageUrl = state.imageUrl;
                                      return true;
                                    } else {
                                      return false;
                                    }
                                  });
                                }

                                VideoEntity videoEntity = VideoEntity(
                                  url: videoUrlController.text,
                                  title: videoTitleController.text,
                                  subtitle: videoSubTitleController.text,
                                  description: videoDescriptionController.text,
                                  uploadedDate: timeStamp ?? -1,
                                  thumbnailurl: imageUrl,
                                  createdAt: -1,
                                  id: "",
                                );
                                if (context.mounted) {
                                  context.read<VideoCreatorBloc>().add(
                                        VideoMangagerCreateEvent(
                                            videoEntity: videoEntity),
                                      );
                                }
                              }
                            },
                            child: const Text("Create Video"),
                          )
                        ],
                      ),
                    ),
                  ),
          );
        },
      );
    },
  );
}
