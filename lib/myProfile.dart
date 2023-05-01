import 'package:a/Header/headerProfile.dart';
import 'package:a/body/bodyInformation.dart';
import 'package:a/body/bodyPayMethod.dart';
import 'package:a/footer/btnFooter.dart';

import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      left: false,
      right: false,
      bottom: false,
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: buildHeader(),
      ),
    );
  }

  Widget buildHeader() {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Column(
            children: [buildHeaderMyProfile()],
          ),
        ),
      ),
    );
  }

  Widget buildHeaderMyProfile() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        SizedBox(
          height: 100,
        ),
        HeaderWidget(),
        SizedBox(
          height: 50,
        ),
        BodyInformation(),
        SizedBox(
          height: 50,
        ),
        BodyPayMethod(),
        SizedBox(
          height: 120,
        ),
        BtnFooter()
      ],
    );
  }
}
