import 'package:a24_skeleton/screens/base_landing/model/football_match_list.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class FootballMatchList extends StatelessWidget {
  FootballMatchList({
    Key? key,
    /*required this.team1, required this.team2, required this.teamscore1, required this.teamscore2, required this.date, required this.time, required this.team_flag1, required this.team_flag2,*/
  }) : super(key: key);
/*final String team1,team2;
final int  teamscore1,teamscore2;
final String date,time;
final String team_flag1,team_flag2;*/
  final matchmodel = Football_matchList.fetchAll();
  @override
  Widget build(BuildContext context) {
    return matchmodel.isNotEmpty
        ? ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: matchmodel.length,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Container(
                    height: 70,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: botttombar_color),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          matchmodel[index].team1,
                          style: matchlist_text,
                        ),
                        //    SizedBox(width: 5,)                     ,
                        Text(matchmodel[index].teamscore1.toString(),
                            style: hottest_text),
                        Image.asset(
                          matchmodel[index].team_flag1,
                          // scale: 10,
                          width: 40,
                        ),

                        /// SizedBox(width: 5,),
                        Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                matchmodel[index].time,
                                style: txtfield_menu,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                matchmodel[index].date,
                                style: textfield_style,
                              )
                            ]),
                        //  SizedBox(width: 5,),
                        Image.asset(
                          matchmodel[index].team_flag2,
                          //scale: 10,
                          width: 40,
                        ),
                        //   SizedBox(width: 5,),
                        Text(
                          matchmodel[index].teamscore2.toString(),
                          style: red_text,
                        ),
                        Text(
                          matchmodel[index].team2,
                          style: matchlist_text,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              );
            })
        : Center(
            child: Text('No Editors Post available!',
                style: TextStyle(color: Colors.white)),
          );
  }
}
