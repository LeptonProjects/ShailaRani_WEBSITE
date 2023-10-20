import 'package:flutter/widgets.dart';
import 'package:shaila_rani_website/view/pages/client_management/client/details_client_show.dart';
import 'package:shaila_rani_website/view/pages/staff_management/widget/list_dataContainer.dart';



class ListOFClientScreen extends StatelessWidget {
  const ListOFClientScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
            left: 10, right: 10, top: 10, bottom: 10),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return SizedBox(
                height: 50,
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    ListDataContainerWidget(
                        text: '1', height: 40, width: 50),
                    // ListDataContainerWidget(
                    //     text: '952627', height: 40, width: 200),
                    GestureDetector(
                      onTap: () {
                        clientDetailsShowingFunction(context);
                      },
                      child: ListDataContainerWidget(
                          text: 'Anakha',
                          height: 40,
                          width: 200),
                    ),
                    ListDataContainerWidget(
                      text: 'Mutual',
                      height: 40,
                      width: 100,
                    ),
                    ListDataContainerWidget(
                        text: '+91 1234567890',
                        height: 40,
                        width: 200),
                    ListDataContainerWidget(
                        text: 'anakha123@gmail.com',
                        height: 40,
                        width: 200),
                    ListDataContainerWidget(
                        text: '23-05-2022',
                        height: 40,
                        width: 100),
                          ListDataContainerWidget(
                        text: 'CSE4520',
                        height: 40,
                        width: 100),
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
      ),
    );
  }
}