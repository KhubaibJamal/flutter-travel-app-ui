import 'package:flutter/material.dart';
import 'package:travel_app_ui/components/section_title.dart';
import 'package:travel_app_ui/models/User.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class TopTravelers extends StatelessWidget {
  const TopTravelers({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Top Travelers on Spark", press: () {}),
        const VerticalSpacing(of: 20),
        Container(
          margin: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
          ),
          padding: EdgeInsets.all(getProportionateScreenWidth(24)),
          // height: getProportionateScreenWidth(143),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.white,
            boxShadow: [kDefualtShadow],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ...List.generate(
                topTravelers.length,
                (index) => UserCard(
                  user: topTravelers[index],
                  press: () {},
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class UserCard extends StatelessWidget {
  const UserCard({
    super.key,
    required this.user,
    required this.press,
  });
  final User user;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              user.image,
              height: getProportionateScreenWidth(55),
              width: getProportionateScreenWidth(55),
              fit: BoxFit.cover,
            ),
          ),
          const VerticalSpacing(of: 10),
          Text(
            user.name,
            style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 11),
          ),
        ],
      ),
    );
  }
}
