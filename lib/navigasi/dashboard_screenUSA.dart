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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.chevron_left,
              size: 40,
              color: Color(0xFF235092),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: 675.h,
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.dashboardimgUSA,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(bottom: 19.v),
                ),
                Positioned(
                  top: 305.h,
                  child: Image(
                    image: AssetImage(
                        'images/Polygon 1.png'), // Ubah path sesuai dengan path sebenarnya
                    fit: BoxFit.cover, // Sesuaikan dengan kebutuhan
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 380), // Ubah tinggi sesuai kebutuhan
                    _buildfdefOneList(context),
                    SizedBox(height: 10),
                    _buildHakList(context),
                    SizedBox(height: 10),
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

  Widget _buildfdefOneList(BuildContext context) {
    return SizedBox(
      height: 111.v,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 10.h),
            _buildCustomImageView1(ImageConstant.dashboardImgDefUSA, () {
              Navigator.pushNamed(context, AppRoutes.definisidUSA);
            }),
            SizedBox(width: 10.h),
            _buildCustomImageView1(ImageConstant.dashboardImgHakUSA, () {
              Navigator.pushNamed(context, AppRoutes.hakJemaahUSA);
            }),
          ],
        ),
      ),
    );
  }

  Widget _buildHakList(BuildContext context) {
    return SizedBox(
      height: 111.v,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: 10.h),
            _buildCustomImageView1(ImageConstant.dashboardImgDoaUSA, () {
              Navigator.pushNamed(context, AppRoutes.doaNiatUSA);
            }),
            SizedBox(width: 10.h),
            _buildCustomImageView1(ImageConstant.dashboardImgUrutUSA, () {
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
            SizedBox(width: 10.h),
            _buildCustomImageView1(ImageConstant.dashboardImgLranganUSA, () {
              Navigator.pushNamed(context, AppRoutes.laranganUSA);
            }),
            SizedBox(width: 10.h),
            _buildCustomImageView1(ImageConstant.dashboardImgLainyaUSA, () {
              Navigator.pushNamed(context, AppRoutes.manuAllIDN);
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
}
