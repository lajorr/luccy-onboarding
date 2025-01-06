import 'dart:developer';

import 'package:stream_video/stream_video.dart';

class VideoCallServices {
  static StreamVideo getVideoClient() {
    final client = StreamVideo(
      'mmhfdzb5evj2',
      user:
          User.regular(userId: 'Bastila_Shan', role: 'admin', name: 'John Doe'),
      userToken:
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Byb250by5nZXRzdHJlYW0uaW8iLCJzdWIiOiJ1c2VyL0Jhc3RpbGFfU2hhbiIsInVzZXJfaWQiOiJCYXN0aWxhX1NoYW4iLCJ2YWxpZGl0eV9pbl9zZWNvbmRzIjo2MDQ4MDAsImlhdCI6MTczNjE3Nzc4OCwiZXhwIjoxNzM2NzgyNTg4fQ.QFrlm4sA9NEPPw5VpX_sV2yFTkTu-UV5GBmSz026EMo',
    );
    return client;
  }

  static Future<Call> makeCall() async {
    try {
      StreamVideo.instance.connect();
      var call = StreamVideo.instance.makeCall(
        callType: StreamCallType.defaultType(),
        id: 'Q3mWfU5Hn6fi',
      );
      await call.getOrCreate();
      return call;
    } catch (e) {
      log(e.toString());
      throw UnimplementedError();
    }
  }
}
