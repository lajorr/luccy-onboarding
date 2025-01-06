import 'package:flutter/material.dart';
import 'package:luccy_onboarding/contants/color_constants.dart';
import 'package:luccy_onboarding/features/media/data/image_picker_services.dart';
import 'package:luccy_onboarding/features/media/data/video_call_services.dart';
import 'package:luccy_onboarding/features/media/presentation/screens/call_screen.dart';

class MediaScreen extends StatelessWidget {
  const MediaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorConstants.primaryColor,
        title: const Text(
          "Media",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Card(
            child: ListTile(
              title: const Text("Video Call"),
              onTap: () async {
                final call = await VideoCallServices.makeCall();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CallScreen(call: call),
                ));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Take Photo"),
              onTap: () async {
                await ImagePickerServices.takePhoto(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Photo has been saved to gallery"),
                  ),
                );
              },
            ),
          ),
          Card(
            child: ListTile(
              title: const Text("Take Video"),
              onTap: () async {
                await ImagePickerServices.takeVideo();
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Video has been saved to gallery"),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
