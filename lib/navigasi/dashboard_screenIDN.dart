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
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
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
                  imagePath: ImageConstant.dashboardimgIDN,
                  alignment: Alignment.topCenter,
                  margin: EdgeInsets.only(bottom: 19.v),
                ),
                Positioned(
                  top: 280.h,
                  child: Image(
                    image: AssetImage('images/Polygon 1.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 350),
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
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Color(0xFF48D8E8),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, -3),
              ),
            ],
          ),
          height: kToolbarHeight,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.camerascreenIDN);
                },
                child: Image.asset(
                  'images/camera.png',
                  height: 50,
                ),
              ),
            ],
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
            _buildCustomImageView1(ImageConstant.dashboardImgDefIDN, () {
              Navigator.pushNamed(context, AppRoutes.definisidIDN);
            }),
            SizedBox(width: 10.h),
            _buildCustomImageView1(ImageConstant.dashboardImgHakIDN, () {
              Navigator.pushNamed(context, AppRoutes.hakJemaahIDN);
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
            _buildCustomImageView1(ImageConstant.dashboardImgDoaIDN, () {
              Navigator.pushNamed(context, AppRoutes.doaNiatIDN);
            }),
            SizedBox(width: 10.h),
            _buildCustomImageView1(ImageConstant.dashboardImgUrutIDN, () {
              Navigator.pushNamed(context, AppRoutes.tatacaraIDN);
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
            _buildCustomImageView1(ImageConstant.dashboardImgLranganIDN, () {
              Navigator.pushNamed(context, AppRoutes.laranganIDN);
            }),
            SizedBox(width: 10.h),
            _buildCustomImageView1(ImageConstant.dashboardImgLainyaIDN, () {
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
