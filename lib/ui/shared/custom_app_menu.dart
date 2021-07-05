import 'package:bases_web/services/navigation_service.dart';
import 'package:bases_web/ui/shared/custom_flat_buttom.dart';
import 'package:flutter/material.dart';

import '../../locator.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, BoxConstraints constraints) {
        return (constraints.maxWidth > 520)
            ? _TabletDesktopMenu()
            : _MobileMenu();
      },
    );
  }
}

class _TabletDesktopMenu extends StatelessWidget {
  const _TabletDesktopMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Row(
        children: [
          CustomFlatButton(
              text: 'Contador Stateful',
              onPressed: () =>
                  locator<NavigationService>().navigateTo('/stateful'),
              color: Colors.black),
          SizedBox(width: 10),
          CustomFlatButton(
              text: 'Contador Provider',
              onPressed: () =>
                  locator<NavigationService>().navigateTo('/provider'),
              color: Colors.black),
          SizedBox(width: 10),
          CustomFlatButton(
              text: 'Otra Página',
              onPressed: () => locator<NavigationService>().navigateTo('/abc'),
              color: Colors.black)
        ],
      ),
    );
  }
}

class _MobileMenu extends StatelessWidget {
  const _MobileMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      width: double.infinity,
      child: Column(
        children: [
          CustomFlatButton(
              text: 'Contador Stateful',
              onPressed: () =>
                  locator<NavigationService>().navigateTo('/stateful'),
              color: Colors.black),
          SizedBox(width: 10),
          CustomFlatButton(
              text: 'Contador Provider',
              onPressed: () =>
                  locator<NavigationService>().navigateTo('/provider'),
              color: Colors.black),
          SizedBox(width: 10),
          CustomFlatButton(
              text: 'Otra Página',
              onPressed: () => locator<NavigationService>().navigateTo('/abc'),
              color: Colors.black)
        ],
      ),
    );
  }
}
