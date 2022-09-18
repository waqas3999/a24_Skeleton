import 'package:a24_skeleton/screens/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

class NewsTicker extends StatelessWidget {
  NewsTicker({Key? key}) : super(key: key);
  bool _useRtlText = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            color: app_redcolor,
            borderRadius: BorderRadius.circular(
                10)) // constrain the parent width so the child overflows and scrolling takes effect
        ,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
                child: Marquee(
              scrollAxis: Axis.horizontal,
              blankSpace: 20,
              velocity: 40,
              accelerationCurve: Curves.linear,
              decelerationDuration: Duration(milliseconds: 800),
              decelerationCurve: Curves.easeOut,
              /*This will first bakcward  for 0.1 sec and then move forworad */
              //      text:  'رحل قرار وزير الموارد البشرية والتنمية الاجتماعية.المهندس أحمد الراجحي، بالموافقة على تعديل وتحديث دليلي التوطين لمهنتي طب الأسنان',style: home_heading2,textDirection: TextDirection.rtl,

              text: !_useRtlText
                  ? 'رحل قرار وزير الموارد البشرية والتنمية الاجتماعية.المهندس أحمد الراجحي، بالموافقة على تعديل وتحديث دليلي التوطين لمهنتي طب الأسنان'
                  : 'رحل قرار وزير الموارد البشرية والتنمية الاجتماعية.المهندس أحمد الراجحي، بالموافقة على تعديل وتحديث دليلي التوطين لمهنتي طب الأسنان',
              style: home_heading2,
              textDirection: TextDirection.rtl,
            )),
            const SizedBox(
              width: 20,
            ),
            Text(
              "| خبر عجل",
              style: listtile_text,
              textAlign: TextAlign.right,
            ),
            const SizedBox(
              width: 20,
            ),
          ],
        ));
  }
}
