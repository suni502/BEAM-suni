import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import '../color_schemes.g.dart';

class BeamAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? name;
  const BeamAppBar({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(20),
      )),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(116.0), // here the desired height
        child: Container(
          
          width: double.infinity,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          color: lightColorScheme.primary,

          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 15),
            child: Text(
              name!,
              style: GoogleFonts.inter(
                fontSize: 32,
                fontWeight: FontWeight.w600,
                color: lightColorScheme.onPrimary,
              ),
            ),
          ),
        ),
      ),
      foregroundColor: const Color.fromARGB(255, 0, 0, 0),
      backgroundColor: lightColorScheme.primary,
      shadowColor: const Color.fromARGB(0, 0, 0, 0),
      leading: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GestureDetector(
          onTap: ((() {
            GoRouter.of(context).pushNamed('profile');
          })),
          child: Icon(
            Icons.account_circle_outlined,
            size: 30,
            color: lightColorScheme.onPrimary,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: (() {
            GoRouter.of(context).pop();
          }),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Icon(
              Icons.home_outlined,
              size: 30,
              color: lightColorScheme.onPrimary,
            ),
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(116);
}
