import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 50, bottom: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(180),
                  child: Image.asset(
                    "assets/img/img_profile.jpeg",
                    width: 160,
                    height: 160,
                  ),
                ),
              ),
            ),
            Center(
              child: Text("Ramdan Nurul",
                  style: Theme.of(context).textTheme.headline5?.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Nama Panggilan",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text("Ramdan",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.black)),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Email",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text("Ramdannur12@gmail.com",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.black)),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Pekerjaan",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text("Software Engineer",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.black)),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Hobi",
                    textAlign: TextAlign.left,
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        color: Colors.black, fontWeight: FontWeight.bold)),
                Text("Travelling",
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Colors.black)),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }

  void redirectToHome(context) {
    Get.back();
  }
}
