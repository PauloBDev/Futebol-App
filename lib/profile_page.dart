import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final double backgroundHeight = 280;
  final double profileHeight = 144;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContent(),
        ],
      ),
    );
  }
}

Widget buildbackgroundProfile() => Container(
      color: Colors.grey,
      child: Image.asset(
        'images/einstein.jpg',
        width: double.infinity,
        height: 280,
        fit: BoxFit.cover,
      ),
    );

Widget buildImageProfile() => CircleAvatar(
      radius: 77,
      backgroundColor: Colors.grey.shade800,
      child: Image.asset(
        'images/lpfp_logo.png',
      ),
    );

Widget buildTop() {
  final top = _ProfilePageState().backgroundHeight -
      (_ProfilePageState().profileHeight / 2);
  final bottom = _ProfilePageState().profileHeight / 2;

  return Stack(
    clipBehavior: Clip.none,
    alignment: Alignment.center,
    children: [
      Container(
        margin: EdgeInsets.only(bottom: bottom),
        child: buildbackgroundProfile(),
      ),
      Positioned(
        top: top,
        child: buildImageProfile(),
      ),
    ],
  );
}

Widget buildContent() => Column(
      children: [
        const SizedBox(
          height: 15,
        ),
        const Text(
          'First Last Name',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'Profession!',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            buildSocialIcon(FontAwesomeIcons.slack),
            const SizedBox(
              width: 12,
            ),
            buildSocialIcon(FontAwesomeIcons.github),
            const SizedBox(
              width: 12,
            ),
            buildSocialIcon(FontAwesomeIcons.twitter),
            const SizedBox(
              width: 12,
            ),
            buildSocialIcon(FontAwesomeIcons.linkedin),
            const SizedBox(
              width: 12,
            ),
          ],
        ),
        const Divider(),
        const SizedBox(
          height: 16,
        ),
        buildAbout(),
        const SizedBox(
          height: 32,
        ),
      ],
    );

Widget buildAbout() => Container(
      padding: const EdgeInsets.symmetric(horizontal: 48),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'About',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'bla bla bla bla bla bla bla bla bla bla bla bla',
            style: TextStyle(
              fontSize: 18,
              height: 1.4,
            ),
          ),
        ],
      ),
    );

Widget buildSocialIcon(IconData icon) => CircleAvatar(
      radius: 25,
      child: Center(
        child: Icon(
          icon,
          size: 32,
        ),
      ),
    );
