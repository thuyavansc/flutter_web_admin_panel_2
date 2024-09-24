
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Dashboard', style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.white,),),
        Spacer(flex: 2,),
        Expanded(
          child: CustomSearchField(),
        ),
        CustomProfileCard()
      ],
    );
  }
}

class CustomProfileCard extends StatelessWidget {
  const CustomProfileCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: AppStyles.defaultPadding),
      padding: EdgeInsets.symmetric(
          horizontal: AppStyles.defaultPadding,
          vertical: AppStyles.defaultPadding/2
      ),
      decoration: BoxDecoration(
        color: AppStyles.secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10),),
        border: Border.all(color: Colors.white10),
      ),
      child: Row(
        children: [
          Image.asset('images/profile_pic.png', height:38),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: AppStyles.defaultPadding/2,),
            child: Text('Mark Mohan'),
          ),
          Icon(Icons.keyboard_arrow_down),

        ],
      ),
    );
  }
}

class CustomSearchField extends StatelessWidget {
  const CustomSearchField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          hintText: "Search",
          fillColor: AppStyles.secondaryColor,
          filled: true,
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          suffixIcon: InkWell(
            onTap: (){},
            child: Container(
              padding: EdgeInsets.all(AppStyles.defaultPadding*0.75),
              margin: EdgeInsets.symmetric(horizontal: AppStyles.defaultPadding/2, ),
              decoration: BoxDecoration(
                  color: AppStyles.primaryColor,
                  borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: SvgPicture.asset('icons/Search.svg'),
            ),
          )
      ),
    );
  }
}