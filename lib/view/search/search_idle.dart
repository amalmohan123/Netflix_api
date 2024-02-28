import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix/helpers/colors.dart';
import 'package:netflix/helpers/constants.dart';
import 'package:netflix/view/search/widgets/search_result.dart';


class SearchIdleWidget extends StatelessWidget {
  const SearchIdleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
                child: CupertinoSearchTextField(
                  style: const TextStyle(color: whiteColor),
                  backgroundColor: Colors.grey.shade900,
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.grey.shade600,
                    size: 25,
                  ),
                  suffixIcon: const Icon(
                    CupertinoIcons.xmark_circle,
                    color: Colors.grey,
                    size: 25,
                  ),
                ),
              ),
              height10,
              const Expanded(
                  child:
                      // SearchWidget(),
                      SearchResult()),
            ],
          ),
        ),
      ),
    );
  }
}
