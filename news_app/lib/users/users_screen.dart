import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/users/users_controller.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder(
        init: UsersController(),
        builder: (UsersController controller) {
          return controller.isLoading == true
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView.separated(
                  itemCount: controller.listSource.length,
                  itemBuilder: (context, index) => ListTile(
                    leading: Container(
                      width: 40,
                      height: 40,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.green),
                      child: Text(
                        (index + 1).toString(),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    title: Text(controller.listSource[index].name ?? ""),
                  ),
                  separatorBuilder: (context, index) => Divider(),
                );
        });
  }
}
