import 'package:d4_8_1/models/user_model.dart';
import 'package:d4_8_1/services/network_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;
  List<UserModel> users = [];

  @override
  void initState() {
    load();
    super.initState();
  }

  Future<void> load() async {
    isLoading = true;
    setState(() {});
    users = await NetworkService.getUsers();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final user = users[index];
              return Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.symmetric(vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.yellow,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Text("ID: ${user.id}"),
                    Text("Name: ${user.name}"),
                    Text("Username: ${user.username}"),
                    Text("Email: ${user.email}"),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
