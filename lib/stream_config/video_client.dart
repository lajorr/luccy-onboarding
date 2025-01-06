import 'package:stream_video/stream_video.dart';

StreamVideo getVideoClient() {
  final client = StreamVideo(
    'mmhfdzb5evj2',
    user: User.regular(userId: '123', role: 'admin', name: 'Rojal'),
    userToken:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJodHRwczovL3Byb250by5nZXRzdHJlYW0uaW8iLCJzdWIiOiJ1c2VyL0Jhc3RpbGFfU2hhbiIsInVzZXJfaWQiOiJCYXN0aWxhX1NoYW4iLCJ2YWxpZGl0eV9pbl9zZWNvbmRzIjo2MDQ4MDAsImlhdCI6MTczNjE3Nzc4OCwiZXhwIjoxNzM2NzgyNTg4fQ.QFrlm4sA9NEPPw5VpX_sV2yFTkTu-UV5GBmSz026EMo',
    options: const StreamVideoOptions(autoConnect: false),
  );
  return client;
}
