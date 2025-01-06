import 'package:stream_video/stream_video.dart';

class VideoServices {
  static StreamVideo getVideoClient() {
    final client = StreamVideo('mmhfdzb5evj2',
        user: User.regular(
            userId: 'Bastila_Shan', role: 'admin', name: 'John Doe'),
        // user: User.guest(userId: "1", name: 'Guest'),
        userToken:
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Byb250by5nZXRzdHJlYW0uaW8iLCJzdWIiOiJ1c2VyL0Jhc3RpbGFfU2hhbiIsInVzZXJfaWQiOiJCYXN0aWxhX1NoYW4iLCJ2YWxpZGl0eV9pbl9zZWNvbmRzIjo2MDQ4MDAsImlhdCI6MTczNjE3Nzc4OCwiZXhwIjoxNzM2NzgyNTg4fQ.QFrlm4sA9NEPPw5VpX_sV2yFTkTu-UV5GBmSz026EMo',
        options: const StreamVideoOptions(autoConnect: false));
    return client;
  }

  static Call makeCall() {
    final client = getVideoClient();
    client.connect();
    final call = client.makeCall(
      callType: StreamCallType.defaultType(),
      id: 'Q3mWfU5Hn6fi',
    );
    call.getOrCreate();
    return call;
  }
}
