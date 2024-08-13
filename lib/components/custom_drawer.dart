import 'package:ecommerce/components/custom_list_tile.dart';
import 'package:flutter/material.dart';

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
                        Navigator.pop(context),
                        Navigator.pushNamed(context, '/cart_page'),
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
                      Navigator.pop(context),
                      Navigator.pushNamed(context, "/intro_page")
                    }),
          ),
        ],
      ),
    );
  }
}
