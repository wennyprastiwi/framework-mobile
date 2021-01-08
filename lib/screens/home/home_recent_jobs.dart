import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:job_listing_app_ui/constants.dart';
import 'package:job_listing_app_ui/mock_data.dart';
import 'package:job_listing_app_ui/widgets/job_card.dart';
import 'package:sp_util/sp_util.dart';
import 'package:http/http.dart' as http;
import 'package:job_listing_app_ui/model/LowonganModel.dart';


class HomeRecentJobs extends StatelessWidget {
  const HomeRecentJobs({
    Key key,
  }) : super(key: key);

  Future<List<Theme>> getLoker() async {
    var url = 'http://golekerjo.hidevindonesia.my.id/api/lowongan';
    String token = SpUtil.getString("token");
    final response = await http.get(url, headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'Authorization': 'Bearer $token',
    });

    if (response.statusCode == 200) {
     final lowonganModel = lowonganModelFromJson(response.body);
    } else {
      throw Exception('Failed to load lowongan');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: recentJobs
            .asMap()
            .entries
            .map(
              (item) => Container(
                margin: EdgeInsets.symmetric(horizontal: kSpacingUnit * 3).copyWith(
                  top: item.key == 0 ? kSpacingUnit * 2 : 0,
                  bottom: kSpacingUnit * 2,
                ),
                child: JobCard(data: item.value),
              ),
            )
            .toList(),
      ),
    );
  }
}
