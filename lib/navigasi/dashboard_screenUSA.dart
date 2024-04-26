import 'package:flutter/material.dart';
import './core/app_export.dart';

class DashboardScreenUSA extends StatelessWidget {
  const DashboardScreenUSA({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            height: 800.h, // Set the height of the container
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.page_2_option_3,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(bottom: 19.v),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .stretch, // Ensure the column stretches to full width
                  children: [
                    SizedBox(height: 80),
                    _buildfdefOneList(context),
                    SizedBox(height: 4),
                    _buildHakList(context),
                    _buildWanitaOneList(context),
                    SizedBox(height: 10.v),
                    _buildHikmahList(context),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHakList(BuildContext context) {
    return SizedBox(
      height: 100.v,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildCustomImageView(ImageConstant.imgHaken, () {
              Navigator.pushNamed(context, AppRoutes.hakJemaahUSA);
            }),
            _buildCustomImageView(ImageConstant.imgWajiben, () {
              Navigator.pushNamed(context, AppRoutes.wajibhajiUSA);
            }),
            _buildCustomImageView(ImageConstant.imgTataen, () {
              Navigator.pushNamed(context, AppRoutes.tataCaraUSA);
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildHikmahList(BuildContext context) {
    return SizedBox(
      height: 111.v,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildCustomImageView1(ImageConstant.imgHikmahen, () {
              Navigator.pushNamed(context, AppRoutes.hikmahUSA);
            }),
            SizedBox(width: 10.h),
            _buildCustomImageView1(ImageConstant.imgDoaen, () {
              Navigator.pushNamed(context, AppRoutes.doaNiatUSA);
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomImageView1(String imagePath, Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 150.h,
        child: CustomImageView(
          imagePath: imagePath,
          margin: EdgeInsets.only(),
        ),
      ),
    );
  }

  Widget _buildCustomImageView(String imagePath, Function()? onTap) {
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 110.h,
        child: CustomImageView(
          imagePath: imagePath,
          margin: EdgeInsets.only(),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWanitaOneList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 16.v,
        right: 8.h,
      ),
      child: WanitaonelistItemWidget(),
    );
  }

  /// Section Widget
  Widget _buildfdefOneList(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 246.v,
        right: 8.h,
      ),
      child: Defonelist(),
    );
  }
}

class WanitaonelistItemWidget extends StatelessWidget {
  const WanitaonelistItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.tataHajiWanitaUSA);
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgWanitaen,
            ),
          ),
          SizedBox(height: 16.v),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.laranganUSA);
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgIhramen,
            ),
          ),
        ],
      ),
    );
  }
}

class Defonelist extends StatelessWidget {
  const Defonelist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.definisidUSA);
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgDefen,
            ),
          )
        ],
      ),
    );
  }
}
