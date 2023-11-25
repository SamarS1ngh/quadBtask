import 'package:fluttemp/Models/show.dart';
import 'package:fluttemp/Utils/colors.dart';
import 'package:fluttemp/Utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key, required this.showDetails});
  final Show showDetails;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Details',
          style: AppFonts.titleText.copyWith(fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(.06.sw, 25, .06.sw, 50),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.red,
                    child: showDetails.image != null
                        ? Image.network(
                            showDetails.image!.medium,
                            fit: BoxFit.cover,
                            height: .3.sh,
                            width: .42.sw,
                          )
                        : Image.network(
                            'https://imgs.search.brave.com/CVm-5INAaGheoD5qdKJNbN6ZNdirgiJT-_TIF_LTLG8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2JmL2Yz/LzY2L2JmZjM2NmU3/YjNkNzJjN2MwMTNm/MzBjOTM5NGQ1Mjc4/LmpwZw',
                            fit: BoxFit.cover,
                            height: .3.sh,
                            width: .42.sw,
                          ),
                  ),
                  SizedBox(
                    width: .04.sw,
                  ),
                  Expanded(
                    child: SizedBox(
                      height: .3.sh,
                      child: Column(
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Text(
                            showDetails.name!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 2,
                            style: AppFonts.titleText.copyWith(fontSize: 22),
                          ),
                          RichText(
                            text: TextSpan(
                                text: 'RunTime:  ',
                                style: AppFonts.bodyText.copyWith(fontSize: 14),
                                children: [
                                  TextSpan(
                                    text:
                                        showDetails.averageRuntime.toString() +
                                            ' mins',
                                    style: AppFonts.subTitles.copyWith(
                                        fontSize: 20, color: Colors.white),
                                  )
                                ]),
                          ),
                          Row(
                            children: [
                              Text(
                                'Language: ',
                                style: AppFonts.bodyText.copyWith(fontSize: 14),
                              ),
                              Text(
                                showDetails.language.toString(),
                                style: AppFonts.subTitles.copyWith(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0.04.sh,
                          ),
                          Text('Genres:'),
                          SizedBox(
                            height: 8,
                          ),
                          Wrap(
                            runSpacing: 10,
                            spacing: 8,
                            children: (showDetails.genres ?? [])
                                .map<Widget>((category) => Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 15, vertical: 2),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        border: Border.all(
                                            color: AppColors.primaryColor),
                                      ),
                                      child: Text(
                                        category,
                                        textAlign: TextAlign.center,
                                        style: AppFonts.bodyText.copyWith(
                                            fontSize: 12,
                                            color: AppColors.primaryColor),
                                      ),
                                    ))
                                .toList(),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Text(
                                showDetails.rating.toString(),
                                style: AppFonts.subTitles.copyWith(
                                    color: Colors.white, fontSize: 14),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Text("STATUS: "),
                              Text(
                                showDetails.status.toString(),
                                style: AppFonts.bodyText.copyWith(
                                    color: AppColors.primaryColor,
                                    fontSize: 16),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    'Premiered: ',
                    style: AppFonts.bodyText.copyWith(fontSize: 14),
                  ),
                  Text(
                    showDetails.premiered.toString(),
                    style: AppFonts.subTitles
                        .copyWith(fontSize: 15, color: Colors.white),
                  ),
                ],
              ),

              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Channel: ',
                    style: AppFonts.bodyText.copyWith(fontSize: 20),
                  ),
                  Container(
                    width: 0.6.sw,
                    child: Text(
                      showDetails.network?.name ?? 'null',
                      style: AppFonts.titleText.copyWith(
                          color: AppColors.primaryColor, fontSize: 25),
                      overflow: TextOverflow.ellipsis,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              //   alignment: Alignment.centerLeft,
              //   child: Text('Description',
              //       style: AppFonts.highlightedText.copyWith(
              //           fontSize: 22,
              //           fontWeight: FontWeight.bold,
              //           fontFamily: AppFonts.highlightedText.fontFamily)),
              // ),
              // const Divider(
              //   color: Color(0xFF646464),
              // ),
              Text(
                showDetails.summary.toString(),
                style: AppFonts.bodyText.copyWith(fontSize: 15),
              ),
              // const SizedBox(
              //   height: 30,
              // ),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Text(
              //     'More from Author',
              //     style: GoogleFonts.poppins(
              //         color: AppColors.primaryColor,
              //         fontSize: 22,
              //         fontWeight: FontWeight.bold),
              //   ),
              // ),
              // const Divider(
              //   color: Color(0xFF646464),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
