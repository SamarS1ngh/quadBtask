import 'package:fluttemp/Utils/colors.dart';
import 'package:fluttemp/Utils/texts.dart';
import 'package:fluttemp/View/Pages/Details%20Screen/details_screen.dart';
import 'package:fluttemp/ViewModel/Provider/showsVM.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  String searched = '';
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<ShowsViewModel>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: .05.sh,
                width: .9.sw,
                decoration: BoxDecoration(
                    color: AppColors.accentColor,
                    borderRadius: BorderRadius.circular(5)),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      searched = _searchController.text;
                    });

                    prov.getSearchedShows(value);
                    prov.notifyListeners();
                  },
                  controller: _searchController,
                  style: const TextStyle(
                      fontSize: 15, color: AppColors.textPrimary),
                  cursorWidth: 1,
                  cursorColor: AppColors.primaryColor,
                  decoration: InputDecoration(
                    enabledBorder:
                        const OutlineInputBorder(borderSide: BorderSide.none),
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 1)),
                    suffixIcon: _searchController.text.isNotEmpty
                        ? IconButton(
                            onPressed: () {
                              _searchController.clear();
                              setState(() {
                                searched = _searchController.text;
                              });
                            },
                            icon: const Icon(
                              Icons.clear,
                              size: 20,
                              color: AppColors.textSecondary,
                            ))
                        : null,
                    hintText: 'Search...',
                    hintStyle: const TextStyle(
                        fontWeight: FontWeight.w400, color: Colors.grey),
                    contentPadding: EdgeInsets.symmetric(vertical: .01.sh),
                    prefixIcon: const Icon(
                      Icons.search,
                      size: 27,
                      color: AppColors.textSecondary,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)),
                  ),
                ),
              ),
            ),
            searched.isEmpty
                ? Center(
                    child: Text('Search something'),
                  )
                : Consumer<ShowsViewModel>(
                    builder: (context, value, child) {
                      print('priting $searched');
                      final res = value.searchedShows;
                      if (res.isEmpty) {
                        return const Center(child: CircularProgressIndicator());
                      }

                      return ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: res.length,
                        itemBuilder: (context, index) {
                          final show = res[index];
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              onTap: () {
                                context.push('/details', extra: show);
                              },
                              child: Card(
                                color: AppColors.accentColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: .5,
                                child: Container(
                                  padding: const EdgeInsets.all(8),
                                  height: 1.sw / 5.5,
                                  width: 1.sw,
                                  child: Row(
                                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Image.network(
                                          show.image?.medium ??
                                              'https://imgs.search.brave.com/CVm-5INAaGheoD5qdKJNbN6ZNdirgiJT-_TIF_LTLG8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pLnBp/bmltZy5jb20vb3Jp/Z2luYWxzL2JmL2Yz/LzY2L2JmZjM2NmU3/YjNkNzJjN2MwMTNm/MzBjOTM5NGQ1Mjc4/LmpwZw',
                                          height: 1.sh,
                                          width: 1.sw / 3.5,
                                          fit: BoxFit.fitHeight,
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text(
                                                  show.name!,
                                                  maxLines: 1,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: AppFonts.bodyText
                                                      .copyWith(fontSize: 15),
                                                ),
                                              ),
                                              Text(
                                                //  textAlign: TextAlign.center,
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 2,
                                                show.summary ?? "",
                                                style: TextStyle(fontSize: 12),
                                              )
                                            ],
                                          ),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  )
          ],
        ),
      ),
    );
  }
}
