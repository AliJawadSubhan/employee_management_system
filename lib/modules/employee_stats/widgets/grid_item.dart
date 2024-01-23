import 'package:employee_management_system/core/core_widgets/core_text.dart';
import 'package:employee_management_system/core/core_widgets/spaces.dart';
import 'package:employee_management_system/modules/employee_stats/model/item_model.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            CircleAvatar(
              radius: 35,
              backgroundColor: items[index].color1!.withOpacity(0.6),
              child: Center(
                child: customTextWidget(
                    text: items[index].text,
                    color: items[index].color2!,
                    fontSize: 17),
              ),
            ),
            Spaces.smallh,
            customTextWidget(text: items[index].btmtext, fontSize: 12)
          ],
        );
      },
    );
  }
}
