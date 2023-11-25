import 'package:fluttemp/Utils/colors.dart';

import 'package:fluttemp/Utils/texts.dart';

import 'package:fluttemp/ViewModel/Provider/showsVM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Provider.of<ShowsViewModel>(context, listen: false).getAllShows();
    return Scaffold(
      appBar: AppBar(
          title: RichText(
              text: TextSpan(children: [
        TextSpan(
            text: 'Film',
            style: AppFonts.titleText.copyWith(color: AppColors.primaryColor),
            children: [
              TextSpan(
                text: 'Cube',
                style: AppFonts.titleText,
              ),
            ])
      ]))),
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: Consumer<ShowsViewModel>(
              builder: (_, model, __) {
                final list = model.allShows;
                //  log((list[9].image).toString());
                return !model.isLoading
                    ? Center(child: CircularProgressIndicator())
                    : Column(
                        children: [
                          Expanded(
                            child: GridView.builder(
                                physics: const BouncingScrollPhysics(),
                                itemCount: model.allShows.length,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                        crossAxisCount: 2,
                                        mainAxisSpacing: 0.02.sh,
                                        crossAxisSpacing: 0.02.sh,
                                        childAspectRatio: 0.8),
                                itemBuilder: (context, index) {
                                  return !model.isLoading
                                      ? Container(
                                          decoration: const BoxDecoration(
                                              color: AppColors.accentColor,
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8),
                                                  topRight:
                                                      Radius.circular(8))),
                                          clipBehavior: Clip.antiAlias,
                                          child: CircularProgressIndicator(
                                            color: Colors.grey,
                                          ))
                                      : GestureDetector(
                                          onTap: () {
                                            final selectedShow = list[index];
                                            context.push('/details',
                                                extra: selectedShow);
                                            // Navigator.of(context).push(
                                            //     MaterialPageRoute(
                                            //         builder: (BuildContext context) {
                                            //   return DetailScreen(
                                            //     showDetails: selectedShow,
                                            //   );
                                            // }));
                                          },
                                          child: Stack(children: [
                                            Container(
                                              decoration: const BoxDecoration(
                                                  color: AppColors.accentColor,
                                                  borderRadius:
                                                      BorderRadius.only(
                                                          topLeft:
                                                              Radius.circular(
                                                                  8),
                                                          topRight:
                                                              Radius.circular(
                                                                  8))),
                                              clipBehavior: Clip.antiAlias,
                                              child: list[index].image != null
                                                  ? Image.network(
                                                      (list[index]
                                                              .image
                                                              ?.medium)
                                                          .toString(),
                                                      fit: BoxFit.fill,
                                                      width: 1.sw,
                                                    )
                                                  : Image.asset(
                                                      'assets/filmcube_new.png',
                                                      fit: BoxFit.fill,
                                                      width: 1.sw,
                                                    ),
                                            ),
                                            Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Container(
                                                width: 1.sw,
                                                height: 0.05.sh,
                                                color: const Color(0xFF171717),
                                                child: Center(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            left: 8.0,
                                                            top: 2,
                                                            right: 1,
                                                            bottom: 1),
                                                    child: Text(
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      maxLines: 1,
                                                      list[index]
                                                          .name
                                                          .toString(),
                                                      style: GoogleFonts
                                                          .montserrat(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              color: AppColors
                                                                  .textPrimary,
                                                              fontSize: 12),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ]),
                                        );
                                }),
                          ),
                        ],
                      );
              },
            ),
          ),
        ],
      ),
    );
  }
}
