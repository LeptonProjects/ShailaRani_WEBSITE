import 'package:flutter/material.dart';
import 'package:shaila_rani_website/view/colors/colors.dart';
import 'package:shaila_rani_website/view/fonts/google_poppins.dart';
import 'package:shaila_rani_website/view/widgets/responsive/responsive.dart';

class OurPracticesContainerWidget extends StatelessWidget {
  const OurPracticesContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Center(
          child: SizedBox(
            height: 80,
            width: 200,
            child: Center(
              child: GooglePoppinsWidgets(
                text: 'OUR PRACTICES',
                fontsize: 25,
                fontWeight: FontWeight.w800,
                color: cWhite,
              ),
            ),
          ),
        ),
        ResponsiveWebSite.isTablet(context)
            ? const Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SquareContainer(
                        squareContainerHeading: "Domestic Violence",
                        squareContainerbody:
                            "Domestic violence makes no distinctions. It affects people of all sexes, ages, and socioeconomic backgrounds. The home should be a place of safety, not dread and violence. Don't suffer in silence.",
                        imageUrl: 'assests/images/dom_violance.jpg',
                      ),
                      SquareContainer(
                        squareContainerHeading: "Contested Divorce",
                        squareContainerbody:
                            "Contested divorce is about more than simply defending your rights; it's also about building a brighter future for you. Keep your eyes on that goal and remain focused.",
                        imageUrl: 'assests/images/divorce.jpg',
                      ),
                      SquareContainer(
                        squareContainerHeading: "Child Custody",
                        squareContainerbody:
                            "Child custody is much more than just legal rights; it's about providing your child with a secure and supportive environment. Maintain your focus to get the finest results, and remember that you are not alone.",
                        imageUrl: 'assests/images/child_custody.jpg',
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SquareContainer(
                          squareContainerHeading: "Marriage",
                          squareContainerbody:
                              "We help couples from start to finish in their quest for court marriage-from preparing notice of marriage to file for an order for police protection.",
                          imageUrl: 'assests/images/marrage_pic.jpg',
                        ),
                        SquareContainer(
                          squareContainerHeading: "Family Court",
                          squareContainerbody:
                              "The appeal from family courts lies directly to the High Court within 30 days of passing the order or the judgement. Such The appeal can be on both question of law and question of fact. No appeal lies against an order which is passed with the consent of the parties",
                          imageUrl: 'assests/images/family_court.jpeg',
                        ),
                        SquareContainer(
                          squareContainerHeading: "Mediation",
                          squareContainerbody:
                              "Mediation is an excellent choice for matrimonial disputes, especially those involving child custody, support, and other issues. Section 914 of the Family Courts Act allows the Family Court to make fair efforts to settle matrimonial disputes, and Counselors' assist the Family Court in this effort.",
                          imageUrl: 'assests/images/mediation.jpg',
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SquareContainer(
                          squareContainerHeading: "Maintanance",
                          squareContainerbody:
                              "The couple must decide by the agreement whether maintenance will be paid to or received by any spouse in case of a divorce by mutual consent. In these situations, the husband may give alimony or maintenance to the wife or vice versa, depending on the agreement. By the couple's contract, the court grants a divorce.",
                          imageUrl: 'assests/images/maintanance.jpg',
                        ),
                        SquareContainer(
                          squareContainerHeading: "Family Councelling",
                          squareContainerbody:
                              "Family counselling is a type of social work that helps families address and resolve issues. It can be useful for couples who are struggling, or for families with children who are experiencing behavioural or emotional problems. Family counselling can also help to improve communication within the family unit.",
                          imageUrl: 'assests/images/family_counceling.jpg',
                        )
                      ],
                    ),
                  ),
                ],
              )
            : ResponsiveWebSite.isMobile(context)
                ? const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SquareContainer(
                            squareContainerHeading: "Domestic Violence",
                            squareContainerbody:
                                "Domestic violence makes no distinctions. It affects people of all sexes, ages, and socioeconomic backgrounds. The home should be a place of safety, not dread and violence. Don't suffer in silence.",
                            imageUrl: 'assests/images/dom_violance.jpg',
                          ),
                          SquareContainer(
                            squareContainerHeading: "Contested Divorce",
                            squareContainerbody:
                                "Contested divorce is about more than simply defending your rights; it's also about building a brighter future for you. Keep your eyes on that goal and remain focused.",
                            imageUrl: 'assests/images/divorce.jpg',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SquareContainer(
                            squareContainerHeading: "Child Custody",
                            squareContainerbody:
                                "Child custody is much more than just legal rights; it's about providing your child with a secure and supportive environment. Maintain your focus to get the finest results, and remember that you are not alone.",
                            imageUrl: 'assests/images/child_custody.jpg',
                          ),
                          SquareContainer(
                            squareContainerHeading: "Marriage",
                            squareContainerbody:
                                "We help couples from start to finish in their quest for court marriage-from preparing notice of marriage to file for an order for police protection.",
                            imageUrl: 'assests/images/marrage_pic.jpg',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SquareContainer(
                            squareContainerHeading: "Family Court",
                            squareContainerbody:
                                "The appeal from family courts lies directly to the High Court within 30 days of passing the order or the judgement. Such The appeal can be on both question of law and question of fact. No appeal lies against an order which is passed with the consent of the parties",
                            imageUrl: 'assests/images/family_court.jpeg',
                          ),
                          SquareContainer(
                            squareContainerHeading: "Mediation",
                            squareContainerbody:
                                "Mediation is an excellent choice for matrimonial disputes, especially those involving child custody, support, and other issues. Section 914 of the Family Courts Act allows the Family Court to make fair efforts to settle matrimonial disputes, and Counselors' assist the Family Court in this effort.",
                            imageUrl: 'assests/images/mediation.jpg',
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SquareContainer(
                            squareContainerHeading: "Maintanance",
                            squareContainerbody:
                                "The couple must decide by the agreement whether maintenance will be paid to or received by any spouse in case of a divorce by mutual consent. In these situations, the husband may give alimony or maintenance to the wife or vice versa, depending on the agreement. By the couple's contract, the court grants a divorce.",
                            imageUrl: 'assests/images/maintanance.jpg',
                          ),
                          SquareContainer(
                            squareContainerHeading: "Family Councelling",
                            squareContainerbody:
                                "Family counselling is a type of social work that helps families address and resolve issues. It can be useful for couples who are struggling, or for families with children who are experiencing behavioural or emotional problems. Family counselling can also help to improve communication within the family unit.",
                            imageUrl: 'assests/images/family_counceling.jpg',
                          )
                        ],
                      ),
                    ],
                  )
                : const Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SquareContainer(
                            squareContainerHeading: "Domestic Violence",
                            squareContainerbody:
                                "Domestic violence makes no distinctions. It affects people of all sexes, ages, and socioeconomic backgrounds. The home should be a place of safety, not dread and violence. Don't suffer in silence.",
                            imageUrl: 'assests/images/dom_violance.jpg',
                          ),
                          SquareContainer(
                            squareContainerHeading: "Contested Divorce",
                            squareContainerbody:
                                "Contested divorce is about more than simply defending your rights; it's also about building a brighter future for you. Keep your eyes on that goal and remain focused.",
                            imageUrl: 'assests/images/divorce.jpg',
                          ),
                          SquareContainer(
                            squareContainerHeading: "Child Custody",
                            squareContainerbody:
                                "Child custody is much more than just legal rights; it's about providing your child with a secure and supportive environment. Maintain your focus to get the finest results, and remember that you are not alone.",
                            imageUrl: 'assests/images/child_custody.jpg',
                          ),
                          SquareContainer(
                            squareContainerHeading: "Marriage",
                            squareContainerbody:
                                "We help couples from start to finish in their quest for court marriage-from preparing notice of marriage to file for an order for police protection.",
                            imageUrl: 'assests/images/marrage_pic.jpg',
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SquareContainer(
                              squareContainerHeading: "Family Court",
                              squareContainerbody:
                                  "The appeal from family courts lies directly to the High Court within 30 days of passing the order or the judgement. Such The appeal can be on both question of law and question of fact. No appeal lies against an order which is passed with the consent of the parties",
                              imageUrl: 'assests/images/family_court.jpeg',
                            ),
                            SquareContainer(
                              squareContainerHeading: "Mediation",
                              squareContainerbody:
                                  "Mediation is an excellent choice for matrimonial disputes, especially those involving child custody, support, and other issues. Section 914 of the Family Courts Act allows the Family Court to make fair efforts to settle matrimonial disputes, and Counselors' assist the Family Court in this effort.",
                              imageUrl: 'assests/images/mediation.jpg',
                            ),
                            SquareContainer(
                              squareContainerHeading: "Maintanance",
                              squareContainerbody:
                                  "The couple must decide by the agreement whether maintenance will be paid to or received by any spouse in case of a divorce by mutual consent. In these situations, the husband may give alimony or maintenance to the wife or vice versa, depending on the agreement. By the couple's contract, the court grants a divorce.",
                              imageUrl: 'assests/images/maintanance.jpg',
                            ),
                            SquareContainer(
                              squareContainerHeading: "Family Councelling",
                              squareContainerbody:
                                  "Family counselling is a type of social work that helps families address and resolve issues. It can be useful for couples who are struggling, or for families with children who are experiencing behavioural or emotional problems. Family counselling can also help to improve communication within the family unit.",
                              imageUrl: 'assests/images/family_counceling.jpg',
                            )
                          ],
                        ),
                      ),
                    ],
                  )
      ],
    );
  }
}

class SquareContainer extends StatelessWidget {
  final String imageUrl;
  final String squareContainerHeading;
  final String squareContainerbody;
  const SquareContainer(
      {super.key,
      required this.imageUrl,
      required this.squareContainerHeading,
      required this.squareContainerbody});

  @override
  Widget build(BuildContext context) {
    var screenSizeWidth = MediaQuery.of(context).size.width;
    // var screeSizeHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.only(top: 0),
      child: Container(
          width: ResponsiveWebSite.isTablet(context)
              ? screenSizeWidth / 3.6
              : ResponsiveWebSite.isMobile(context)
                  ? screenSizeWidth / 2
                  : 280,
          height: ResponsiveWebSite.isTablet(context)
              ? screenSizeWidth / 1.9
              : ResponsiveWebSite.isMobile(context)
                  ? 400
                  : 400,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(0),
            border: Border.all(width: 1, color: Colors.transparent),
            boxShadow: const [
              BoxShadow(
                color: Colors.black38,
                offset: Offset(
                  10.0,
                  2.0,
                ),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.black38,
                offset: Offset(5.0, 5.0),
                blurRadius: 10.0,
                spreadRadius: 2.0,
              ), //BoxShadow
            ],
          ),
          child: Column(
            children: [
              Image.asset(imageUrl),
              Center(
                  child: Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 10.0),
                child: GooglePoppinsWidgets(
                  text: squareContainerHeading,
                  fontsize: ResponsiveWebSite.isMobile(context)
                      ? 12
                      : ResponsiveWebSite.isDesktop(context)
                          ? 14
                          : screenSizeWidth / 70,
                  fontWeight: FontWeight.bold,
                ),
              )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GooglePoppinsWidgets(
                  text: squareContainerbody,
                  fontsize: ResponsiveWebSite.isMobile(context)
                      ? 10
                      : ResponsiveWebSite.isDesktop(context)
                          ? 11
                          : screenSizeWidth / 70,
                ),
              ),
            ],
          )),
    );
  }
}
