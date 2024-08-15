import 'package:ecommerce/config/route_path.dart';
import 'package:ecommerce/widgets/custom_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.surface,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          //drawer header
          Column(
            children: [
              Theme(
                data: Theme.of(context).copyWith(
                  dividerTheme:
                      const DividerThemeData(color: Colors.transparent),
                ),
                child: DrawerHeader(
                    child: Center(
                  child: Icon(
                    Icons.shopping_bag,
                    size: 72,
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                )),
              ),

              //shop tile
              CustomListTile(
                  text: "Shop",
                  icon: Icons.home,
                  onTap: () => Navigator.pop(context)),
              //cart tile
              CustomListTile(
                  text: "Cart",
                  icon: Icons.shopping_cart,
                  onTap: () => {
                        context.push(RoutePath.cartPage),
                      }),
            ],
          ),

          //exit shop
          Padding(
            padding: const EdgeInsets.only(bottom: 25.0),
            child: CustomListTile(
                text: "Exit",
                icon: Icons.exit_to_app,
                onTap: () => {
                      context.go(RoutePath.introPage),
                    }),
          ),
        ],
      ),
    );
  }
}
