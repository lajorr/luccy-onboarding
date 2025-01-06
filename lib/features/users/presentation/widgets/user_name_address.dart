import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UserNameAddress extends StatelessWidget {
  const UserNameAddress({
    super.key,
    required this.username,
    required this.name,
    required this.street,
    required this.suite,
    required this.city,
    required this.imgUrl,
    required this.companyName,
  });

  final String username;
  final String name;
  final String street;
  final String suite;
  final String city;
  final String imgUrl;
  final String companyName;

  @override
  Widget build(BuildContext context) {
    final nameSplit = name.split(' ');
    final shortName = '${nameSplit.first} ${nameSplit.last[0]}.';
    return Container(
      // height: MediaQuery.of(context).size.height * 0.24,
      width: double.infinity,
      margin: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.24),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          8.r,
        ),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: -20,
            left: 16,
            child: Container(
              height: 100.r,
              width: 100.r,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.r),
                image: DecorationImage(
                    image: NetworkImage(imgUrl), fit: BoxFit.cover),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            username,
                            style: TextStyle(fontSize: 20.sp),
                          ),
                          SizedBox(
                            height: 12.h,
                          ),
                          Text(
                            shortName,
                            style: TextStyle(fontSize: 16.sp),
                          ),
                          Text(
                            companyName,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AddressInfoTile(
                      value: street,
                      title: 'Street',
                    ),
                    AddressInfoTile(
                      value: city,
                      title: 'City',
                    ),
                    AddressInfoTile(
                      value: suite,
                      title: 'Suite',
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AddressInfoTile extends StatelessWidget {
  const AddressInfoTile({
    super.key,
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          value,
          style: TextStyle(color: Colors.grey.shade500),
        ),
        Text(
          title,
          style: TextStyle(fontSize: 16.sp),
        ),
      ],
    );
  }
}
