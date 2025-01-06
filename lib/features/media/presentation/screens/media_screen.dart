import 'package:flutter/material.dart';
import 'package:luccy_onboarding/contants/color_constants.dart';
import 'package:luccy_onboarding/features/media/data/video_services.dart';
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
              onTap: () {
                final call = makeCall();
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => CallScreen(call: call),
                ));
              },
            ),
          )
        ],
      ),
    );
  }
}
