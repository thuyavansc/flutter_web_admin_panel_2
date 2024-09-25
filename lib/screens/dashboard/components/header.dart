
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_web_admin_panel_2/controllers/menu_app_controller.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../core/theme/custom_colors.dart';
import '../../../responsive.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final customColors = Theme.of(context).extension<CustomColors>();
    return Row(
      children: [
        if(!Responsive.isDesktop(context))
          IconButton(
            onPressed: context.read<MenuAppController>().controlMenu,
            icon: Icon(Icons.menu)
          ),
        if (Responsive.isDesktop(context))  // For desktop screens, toggle side menu
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              context.read<MenuAppController>().toggleSideMenu();  // Toggles side menu visibility
            },
          ),
        if(!Responsive.isMobile(context))
          //Text('Dashboard', style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.white,),),
          Text('Dashboard', style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: customColors?.headerBackgroundColor,),),
        if(!Responsive.isMobile(context))
          Spacer(flex: Responsive.isDesktop(context) ? 2 :1,),
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
          Image.asset('images/avatar2.png', height:38),
          if(!Responsive.isMobile(context))
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