import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hng_task_2/data.dart';
import 'package:hng_task_2/view/cv_edit_page.dart';
import 'package:hng_task_2/widget/name_card.dart';

class CvViewPage extends StatefulWidget {
  const CvViewPage({super.key});

  @override
  State<CvViewPage> createState() => _CvViewPageState();
}

class _CvViewPageState extends State<CvViewPage> {
  // late String userFullName;
  // late String slackUserName;
  // late String userHandle;
  // late String bio;

  // late TextEditingController nameController;
  // late TextEditingController slackNameController;
  // late TextEditingController githubHandleController;
  // late TextEditingController bioController;

  // @override
  // void initState() {
  //   nameController = TextEditingController(text: fullName);
  //   slackNameController = TextEditingController(text: slackName);
  //   githubHandleController = TextEditingController(text: githubHandle);
  //   bioController = TextEditingController(text: personalBio);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // setState(() {});
    // userFullName = fullName;
    // slackUserName = slackName;
    // userHandle = githubHandle;
    // bio = personalBio;
    return Scaffold(
      appBar: AppBar(
        title: const Text('View CV'),
        flexibleSpace: Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.purple,
                Colors.blue.shade900,
              ],
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NameCard(
                label: 'Name',
                // detail: nameController.text,
                detail: fullName,
              ),
              NameCard(
                label: 'Slack Username',
                // detail: slackNameController.text,
                detail: slackName,
              ),
              NameCard(
                label: 'Github Handle',
                // detail: githubHandleController.text,
                detail: githubHandle,
              ),
              NameCard(
                label: 'Bio',
                // detail: bioController.text,
                detail: personalBio,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.of(context).push(
            CupertinoPageRoute(
              builder: (context) => CvEditPage(
                // nameController: nameController,
                // githubHandleController: githubHandleController,
                // slackNameController: slackNameController,
                // bioController: bioController,
              ),
            ),
          );
        },
        label: const Text('Edit CV'),
        icon: const Icon(Icons.edit_outlined),
      ),
    );
  }
}


