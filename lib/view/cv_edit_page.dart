import 'package:flutter/material.dart';
import 'package:hng_task_2/data.dart';
import 'package:hng_task_2/view/cv_view_page.dart';
import 'package:hng_task_2/widget/edit_name_card.dart';

class CvEditPage extends StatefulWidget {
  const CvEditPage({
    super.key,
    // required this.nameController,
    // required this.slackNameController,
    // required this.githubHandleController,
    // required this.bioController,
  });

  // final TextEditingController nameController;
  // final TextEditingController slackNameController;
  // final TextEditingController githubHandleController;
  // final TextEditingController bioController;

  @override
  State<CvEditPage> createState() => _CvEditPageState();
}

class _CvEditPageState extends State<CvEditPage> {
  final TextEditingController nameController =
      TextEditingController(text: fullName);
  final TextEditingController slackNameController =
      TextEditingController(text: slackName);
  final TextEditingController githubHandleController =
      TextEditingController(text: githubHandle);
  final TextEditingController bioController =
      TextEditingController(text: personalBio);

  @override
  void dispose() {
    nameController.dispose();
    slackNameController.dispose();
    githubHandleController.dispose();
    bioController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit CV'),
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
            children: [
              EditNameCard(
                label: 'Name',
                hintText: 'e.g: Philemon',
                contentController: nameController,
              ),
              EditNameCard(
                label: 'Slack Username',
                hintText: 'e.g: pxle-012',
                contentController: slackNameController,
              ),
              EditNameCard(
                label: 'Github Handle',
                hintText: 'e.g: github.com/xxxx',
                contentController: githubHandleController,
              ),
              EditNameCard(
                label: 'Bio',
                hintText: 'I love ...',
                contentController: bioController,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          setState(() {
            fullName = nameController.text;
            slackName = slackNameController.text;
            githubHandle = githubHandleController.text;
            personalBio = bioController.text;
          });
          Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(
                builder: (context) => const CvViewPage(),
              ),
              (route) => false);
        },
        label: const Text(
          'Save',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        icon: const Icon(Icons.save_rounded),
      ),
    );
  }
}

