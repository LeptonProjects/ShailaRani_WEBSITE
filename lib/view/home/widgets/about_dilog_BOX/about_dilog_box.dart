
import 'package:shaila_rani_website/features/video_management/presentation/pages/widgets/video_widgets.dart';
import 'package:shaila_rani_website/view/widgets/responsive/responsive.dart';

showAboutPage(BuildContext context) async {
  // https://img.freepik.com/premium-photo/statue-justice-lady-justice-iustitia-justitia-roman-goddess-justice_157125-18202.jpg
  return showDialog(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        // backgroundColor: Colors.grey,
        title: Row(
          children: [
            const BackButtonContainerWidget(),
            Padding(
              padding: EdgeInsets.only(
                  left: ResponsiveWebSite.isMobile(context) ? 20 : 50),
              child: GooglePoppinsWidgets(
                text: 'A B O U T ',
                fontsize: ResponsiveWebSite.isMobile(context) ? 11 : 15,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              SizedBox(
                  height: 700,
                  width: 1000,
                  child: ResponsiveWebSite.isDesktop(context)
                      ? Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 300,
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assests/images/law_justics.jpeg'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 200),
                                  child: SizedBox(
                                    height: 400,
                                    width: double.infinity,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          decoration: const BoxDecoration(
                                            boxShadow: [
                                              BoxShadow(
                                                color: Color.fromARGB(
                                                    255, 148, 89, 144),
                                                blurRadius: 8,
                                                spreadRadius: 2,
                                                offset: Offset(4, 4),
                                              ),
                                            ],
                                            gradient: LinearGradient(
                                                colors: [
                                                  Color.fromARGB(
                                                      255, 148, 89, 144),
                                                  Color.fromARGB(
                                                      255, 101, 43, 97)
                                                ],
                                                begin: Alignment.centerLeft,
                                                end: Alignment.centerRight),
                                          ),
                                          height: 400,
                                          width: 300,
                                          child: SingleChildScrollView(
                                            child: Column(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 95),
                                                  child: GooglePoppinsWidgets(
                                                    text: "Adv. ShailaRani",
                                                    fontsize: 16,
                                                    fontWeight: FontWeight.w500,
                                                    color: cWhite,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          top: 0),
                                                  child: GooglePoppinsWidgets(
                                                    text: "Managing Director",
                                                    fontsize: 12,
                                                    fontWeight: FontWeight.w300,
                                                    color: cWhite,
                                                  ),
                                                ),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(10),
                                                  child: GooglePoppinsWidgets(
                                                      text:
                                                          '''Advocate Shaila Rani is a highly esteemed and seasoned legal professional with over two decades of dedicated experience in the field of Family Law in India. With a profound understanding of the complexities and sensitivities involved in family matters, Shaila Rani has established a stellar reputation for providing expert legal counsel and representation to individuals and families facing diverse legal challenges within the Family Court system.\nAdv.ShailaRani is known for her empathetic and client-focused approach, understanding the emotional and financial toll that family legal matters can take.She is dedicated to providing personalized legal strategies that align with the unique circumstances of each client, striving for amicable resolutions when possible but fiercely advocating for clients' rights and interests when necessary.Throughout her career, Adv.ShailaRani has successfully represented numerous clients in Family Courts across India, earning a reputation for achieving favorable outcomes in even the most challenging cases. Her extensive experience, combined with an in-depth knowledge of Indian family laws, makes her a sought-after authority in the field. With an unwavering commitment to upholding the principles of justice, Adv.Shaila Rani remains dedicated to providing comprehensive legal support to individuals and families in their times of need.Adv.ShailaRani  is a trusted legal advocate, dedicated to providing ethical and effective representation in the realm of Family Law.Her years of experience, coupled with a compassionate and client-centered approach, make her the ideal choice for those seeking expert guidance and representation in family-related legal matters in India. ''',
                                                      fontsize: 11),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                            child: Padding(
                                          padding:
                                              const EdgeInsets.only(top: 110),
                                          child: Column(
                                            children: [
                                              GooglePoppinsWidgets(
                                                text: "About Company",
                                                fontsize: 15,
                                                fontWeight: FontWeight.bold,
                                                color: const Color.fromARGB(
                                                    255, 101, 43, 97),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.all(10),
                                                child: GooglePoppinsWidgets(
                                                  text:
                                                      "Shaila Rani & Associates is a prestigious multinational law firm specializing in family and divorce law. Founded and led by Advocate Shaila Rani, the firm has established itself as a leading authority in the field, providing expert legal services to individuals and families facing complex family and divorce-related issues worldwide. With a commitment to excellence, compassion, and professionalism, Rani & Associates has gained a reputation for resolving even the most intricate family law matters. "
                                                      "Advocate Shaila Rani is a renowned legal expert with over two decades of experience in family and divorce law. She is widely recognized for her dedication to her clients and her deep understanding of the emotional and legal complexities involved in family disputes. Shaila Rani's leadership has been instrumental in shaping the firm's values and guiding it to international prominence.",
                                                  fontsize: 11,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              )
                                            ],
                                          ),
                                        )),
                                        Container(
                                            decoration: const BoxDecoration(
                                              boxShadow: [
                                                BoxShadow(
                                                  color: Color.fromARGB(
                                                      255, 148, 89, 144),
                                                  blurRadius: 8,
                                                  spreadRadius: 2,
                                                  offset: Offset(4, 4),
                                                ),
                                              ],
                                              gradient: LinearGradient(
                                                  colors: [
                                                    Color.fromARGB(
                                                        255, 148, 89, 144),
                                                    Color.fromARGB(
                                                        255, 101, 43, 97)
                                                  ],
                                                  begin: Alignment.centerLeft,
                                                  end: Alignment.centerRight),
                                            ),
                                            height: 400,
                                            width: 300,
                                            child: SingleChildScrollView(
                                              child: Column(
                                                children: [
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 95),
                                                    child: GooglePoppinsWidgets(
                                                      text: "Anjali  Roy",
                                                      fontsize: 16,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                      color: cWhite,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 0),
                                                    child: GooglePoppinsWidgets(
                                                      text: "Director",
                                                      fontsize: 12,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: cWhite,
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10),
                                                    child: SizedBox(
                                                      height: 310,
                                                      child:
                                                          GooglePoppinsWidgets(
                                                        text:
                                                            "Ms. Anjali Roy is the director of Adv. ShailaRani Associates. She holds a degree in management and is currently pursuing studies in law. Additionally, she has completed courses in child psychology. Ms. Roy is responsible for developing the firm's strategic vision, establishing organizational goals and objectives, and guiding the firm toward successful outcomes. She oversees the overall functioning of the firm and supervises the performance of various departments, including legal, divorce, HR, quality, safety, and technology. Ms. Roy has played a pivotal role in the successful integration of family, civil, and criminal law, and she possesses expert knowledge in child psychology.",
                                                        fontsize: 11,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    height: 10,
                                                  ),
                                                ],
                                              ),
                                            ))
                                      ],
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 150, left: 70),
                                  child: CircleAvatar(
                                    backgroundColor: cWhite,
                                    radius: 70,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assests/images/shai_solo.png'),
                                      radius: 68,
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 150, left: 780),
                                  child: CircleAvatar(
                                    backgroundColor: cWhite,
                                    radius: 70,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                        'assests/images/shila_dau--photo.jpeg',
                                      ),
                                      radius: 68,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      : ListView(
                          children: [
                            Container(
                              width: double.infinity,
                              height: ResponsiveWebSite.isMobile(context)
                                  ? 100
                                  : 200,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: const AssetImage(
                                      'assests/images/law_justics.jpeg'),
                                  fit: ResponsiveWebSite.isMobile(context)
                                      ? BoxFit.fitWidth
                                      : BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: ResponsiveWebSite.isMobile(context)
                                  ? 554
                                  : 220,
                              child: Column(
                                children: [
                                  GooglePoppinsWidgets(
                                    text: "About Company",
                                    fontsize: 15,
                                    fontWeight: FontWeight.bold,
                                    color:
                                        const Color.fromARGB(255, 101, 43, 97),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: GooglePoppinsWidgets(
                                      text:
                                          "Shaila Rani & Associates is a prestigious multinational law firm specializing in family and divorce law. Founded and led by Advocate Shaila Rani, the firm has established itself as a leading authority in the field, providing expert legal services to individuals and families facing complex family and divorce-related issues worldwide. With a commitment to excellence, compassion, and professionalism, Rani & Associates has gained a reputation for resolving even the most intricate family law matters. "
                                          "Advocate Shaila Rani is a renowned legal expert with over two decades of experience in family and divorce law. She is widely recognized for her dedication to her clients and her deep understanding of the emotional and legal complexities involved in family disputes. Shaila Rani's leadership has been instrumental in shaping the firm's values and guiding it to international prominence.",
                                      fontsize: 11,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 148, 89, 144),
                                    blurRadius: 8,
                                    spreadRadius: 2,
                                    offset: Offset(4, 4),
                                  ),
                                ],
                                gradient: LinearGradient(
                                    colors: [
                                      Color.fromARGB(255, 148, 89, 144),
                                      Color.fromARGB(255, 101, 43, 97)
                                    ],
                                    begin: Alignment.centerLeft,
                                    end: Alignment.centerRight),
                              ),
                              height: 1200,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  const CircleAvatar(
                                    backgroundColor: cWhite,
                                    radius: 70,
                                    child: CircleAvatar(
                                      backgroundImage: AssetImage(
                                          'assests/images/shai_solo.png'),
                                      radius: 68,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: GooglePoppinsWidgets(
                                      text: "Adv. ShailaRani",
                                      fontsize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: cWhite,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 0),
                                    child: GooglePoppinsWidgets(
                                      text: "Managing Director",
                                      fontsize: 12,
                                      fontWeight: FontWeight.w300,
                                      color: cWhite,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: GooglePoppinsWidgets(
                                        text:
                                            '''Advocate Shaila Rani is a highly esteemed and seasoned legal professional with over two decades of dedicated experience in the field of Family Law in India. With a profound understanding of the complexities and sensitivities involved in family matters, Shaila Rani has established a stellar reputation for providing expert legal counsel and representation to individuals and families facing diverse legal challenges within the Family Court system.\nAdv.ShailaRani is known for her empathetic and client-focused approach, understanding the emotional and financial toll that family legal matters can take.She is dedicated to providing personalized legal strategies that align with the unique circumstances of each client, striving for amicable resolutions when possible but fiercely advocating for clients' rights and interests when necessary.Throughout her career, Adv.ShailaRani has successfully represented numerous clients in Family Courts across India, earning a reputation for achieving favorable outcomes in even the most challenging cases. Her extensive experience, combined with an in-depth knowledge of Indian family laws, makes her a sought-after authority in the field. With an unwavering commitment to upholding the principles of justice, Adv.Shaila Rani remains dedicated to providing comprehensive legal support to individuals and families in their times of need.Adv.ShailaRani  is a trusted legal advocate, dedicated to providing ethical and effective representation in the realm of Family Law.Her years of experience, coupled with a compassionate and client-centered approach, make her the ideal choice for those seeking expert guidance and representation in family-related legal matters in India. ''',
                                        fontsize: 11),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromARGB(255, 148, 89, 144),
                                      blurRadius: 8,
                                      spreadRadius: 2,
                                      offset: Offset(4, 4),
                                    ),
                                  ],
                                  gradient: LinearGradient(
                                      colors: [
                                        Color.fromARGB(255, 148, 89, 144),
                                        Color.fromARGB(255, 101, 43, 97)
                                      ],
                                      begin: Alignment.centerLeft,
                                      end: Alignment.centerRight),
                                ),
                                height: 650,
                                width: double.infinity,
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const CircleAvatar(
                                      backgroundColor: cWhite,
                                      radius: 70,
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage(
                                          'assests/images/shila_dau--photo.jpeg',
                                        ),
                                        radius: 68,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: GooglePoppinsWidgets(
                                        text: "Anjali  Roy",
                                        fontsize: 16,
                                        fontWeight: FontWeight.w500,
                                        color: cWhite,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 0),
                                      child: GooglePoppinsWidgets(
                                        text: "Director",
                                        fontsize: 12,
                                        fontWeight: FontWeight.w300,
                                        color: cWhite,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(10),
                                      child: GooglePoppinsWidgets(
                                        text:
                                            "Ms. Anjali Roy is the director of Adv. ShailaRani Associates. She holds a degree in management and is currently pursuing studies in law. Additionally, she has completed courses in child psychology. Ms. Roy is responsible for developing the firm's strategic vision, establishing organizational goals and objectives, and guiding the firm toward successful outcomes. She oversees the overall functioning of the firm and supervises the performance of various departments, including legal, divorce, HR, quality, safety, and technology. Ms. Roy has played a pivotal role in the successful integration of family, civil, and criminal law, and she possesses expert knowledge in child psychology.",
                                        fontsize: 11,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ))
            ],
          ),
        ),
      );
    },
  );
}
