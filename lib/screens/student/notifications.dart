import 'package:beam/components/appbar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Notifications extends StatefulWidget {
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: const BeamAppBar(name: "Notifications"),
        body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
                child: ListView(
                  children: [
                    for (var i = 0; i < 10; i++) const Notification(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Notification extends StatelessWidget {
  const Notification({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color.fromARGB(71, 123, 97, 255),
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: const ButtonStyle(
          shadowColor: MaterialStatePropertyAll(Colors.transparent),
          overlayColor: MaterialStatePropertyAll(Colors.transparent),
          backgroundColor:
              MaterialStatePropertyAll(Color.fromARGB(0, 123, 97, 255)),
          padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 10, vertical: 10)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "JNTUK B.Tech 4-1 Sem (R20) Regular Question Papers Aug/Sept 2021",
              style: GoogleFonts.manrope(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff23262f)),
            ),
            Text(
              "02 April, 2021",
              style: GoogleFonts.manrope(
                  fontSize: 10,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff708099)),
            )
          ],
        ),
      ),
    );
  }
}
