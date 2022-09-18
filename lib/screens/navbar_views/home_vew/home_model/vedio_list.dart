import 'package:a24_skeleton/screens/base_landing/model/vediolist_m.dart';
import 'package:a24_skeleton/screens/sign_in/sign_in.dart';
import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';

class VedioList extends StatelessWidget {
/*  final String vedio;
  final String text;*/
  VedioList({
    Key? key,
    /*required this.vedio, required this.text*/
  }) : super(key: key);

  final vediolist_m = Vediolist_model.fetchAll();
  @override
  Widget build(BuildContext context) {
    return vediolist_m.isNotEmpty
        ? ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: vediolist_m.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (_) => SignIn()));
                },
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 190,
                        decoration: BoxDecoration(
                            color: app_Bluecolor,
                            borderRadius: BorderRadius.circular(5),
                            image: DecorationImage(
                              image: AssetImage(
                                  vediolist_m[index].vedio.toString()),
                              fit: BoxFit.cover,
                            )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          child: Text(
                            vediolist_m[index].text.toString(),
                            style: vedio_text,
                            textAlign: TextAlign.right,
                          )),
                      const SizedBox(
                        height: 10,
                      )
                    ]),
              );
            })
        : Center(
            child: Text('No Vedios is posted!!!',
                style: TextStyle(color: Colors.white)),
          );
  }
}
