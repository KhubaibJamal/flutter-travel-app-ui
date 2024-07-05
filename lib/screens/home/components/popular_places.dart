import 'package:flutter/material.dart';
import 'package:travel_app_ui/components/place_card.dart';
import 'package:travel_app_ui/components/section_title.dart';
import 'package:travel_app_ui/models/TravelSpot.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Right Now At Spark",
          press: () {},
        ),
        const VerticalSpacing(of: 20),
        SingleChildScrollView(
          clipBehavior: Clip.none,
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                travelSpots.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                      left: getProportionateScreenWidth(kDefaultPadding)),
                  child: PlaceCard(
                    travelSport: travelSpots[index],
                    press: () {},
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(kDefaultPadding),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
