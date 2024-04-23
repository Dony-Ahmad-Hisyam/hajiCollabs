import 'package:flutter/material.dart';
import './core/app_export.dart';

class DashboardScreenIDN extends StatelessWidget {
  const DashboardScreenIDN({Key? key})
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
            height: 900.h, // Set the height of the container
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrame391,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(bottom: 19.v),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch, // Ensure the column stretches to full width
                  children: [
                    SizedBox(height: 220),
                    _buildfdefOneList(context),
                    SizedBox(height: 15),
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
      height: 216.v,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildCustomImageView(ImageConstant.imgHak1, () {
              Navigator.pushNamed(context, AppRoutes.definisidIDN);
            }),
            _buildCustomImageView(ImageConstant.imgWajib1, () {
              Navigator.pushNamed(context, AppRoutes.wajibhajiIDN);
            }),
            _buildCustomImageView(ImageConstant.imgTata1, () {
              Navigator.pushNamed(context, AppRoutes.tatacaraIDN);
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildHikmahList(BuildContext context) {
    return SizedBox(
      height: 216.v,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            _buildCustomImageView1(ImageConstant.imgHikmah1, () {
              Navigator.pushNamed(context, AppRoutes.definisidIDN);
            }),
            SizedBox(width: 10.h),
            _buildCustomImageView1(ImageConstant.imgDoa1, () {
              Navigator.pushNamed(context, AppRoutes.definisidIDN);
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
        width: 160.h,
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
              Navigator.pushNamed(context, AppRoutes.definisidIDN);
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgWanita1,
            ),
          ),
          SizedBox(height: 16.v),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, AppRoutes.laranganIDN);
            },
            child: CustomImageView(
              imagePath: ImageConstant.imgIhram1,
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
          CustomImageView(
            imagePath: ImageConstant.imgDef1,
          ),
        ],
      ),
    );
  }
}
