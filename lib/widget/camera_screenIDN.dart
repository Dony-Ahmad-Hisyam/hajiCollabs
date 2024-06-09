import 'package:flutter/material.dart';
import 'package:haji/navigasi/theme/theme_helper.dart';
import 'package:haji/navigasi/core/utils/size_utils.dart';
import 'package:image_picker/image_picker.dart';
import 'package:google_ml_kit/google_ml_kit.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:translator/translator.dart';

class CameraScreenIDN extends StatefulWidget {
  @override
  _CameraScreenIDNState createState() => _CameraScreenIDNState();
}

class _CameraScreenIDNState extends State<CameraScreenIDN> {
  TextEditingController grouptwoController = TextEditingController();
  String translatedText = "hasil translate ...";
  final ImagePicker _picker = ImagePicker();
  final textRecognizer = GoogleMlKit.vision.textRecognizer();
  final translator = GoogleTranslator();

  @override
  void initState() {
    super.initState();
    grouptwoController.addListener(_translateOnType); // Check permissions on app start
  }

  @override
  void dispose() {
    grouptwoController.removeListener(_translateOnType);
    grouptwoController.dispose();
    textRecognizer.close();
    super.dispose();
  }

  void _translateOnType() {
    _translateText(grouptwoController.text);
  }

void _retryPermissionRequest() {
  Future.delayed(Duration(seconds: 1), () {
    _getPermissions();
  });
}

  Future<void> _pickImage(ImageSource source) async {
    final permissionStatus = await _getPermissions();
    if (!permissionStatus) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text("Izin dibutuhkan untuk kamera."),
      duration: Duration(seconds: 1),
      action: SnackBarAction(
        label: 'ulang',
        onPressed: _retryPermissionRequest,
      ),
    ));
    return;
  }

    final pickedFile = await _picker.pickImage(source: source);

    if (pickedFile != null) {
      final inputImage = InputImage.fromFilePath(pickedFile.path);
      final RecognizedText recognizedText = await textRecognizer.processImage(inputImage);

      setState(() {
        grouptwoController.text = recognizedText.text;
      });

      _translateText(recognizedText.text);
    }
  }

  Future<void> _getImageAndConvertToText(ImageSource source) async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: source);

    if (pickedFile != null) {
      final inputImage = InputImage.fromFilePath(pickedFile.path);
      final RecognizedText recognizedText = await textRecognizer.processImage(inputImage);

      setState(() {
        grouptwoController.text = recognizedText.text;
      });

      _translateText(recognizedText.text);
    }
    }
  

Future<bool> _requestCameraPermission() async {
  var cameraStatus = await Permission.camera.status;
  if (!cameraStatus.isGranted) {
    cameraStatus = await Permission.camera.request();
    if (!cameraStatus.isGranted) {
      return false;
    }
  }
  return true;
}

Future<bool> _getPermissions() async {
  bool cameraPermission = await _requestCameraPermission();

  return cameraPermission;
}

// Kemudian di tempat lain dalam kode Anda, Anda dapat memanggil _requestPermissions()


  Future<void> _translateText(String text) async {
    if (text.isEmpty) {
      setState(() {
        translatedText = "hasil translate ...";
      });
      return;
    }

    final translation = await translateText(text);
    setState(() {
      translatedText = translation;
    });
  }

  Future<String> translateText(String text, {String toLanguage = 'id'}) async {
    final translation = await translator.translate(text, to: toLanguage);
    return translation.text;
  }

  @override
Widget build(BuildContext context) {
  return SafeArea(
    child: Scaffold(
      backgroundColor: appTheme.whiteA700,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 1.7,
          width: 430.h,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(top: 5),
                  padding: EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 108,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.cyan300,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(
                      color: appTheme.cyan300,
                      width: 3.h,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    
                    children: [Spacer(), _buildAplikasiSection(context)],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                
                  width: 430.h,
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      _buildVectorSection(context),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

  Widget _buildAplikasiSection(BuildContext context) {
    return Container(
      width: 356.h,
      margin: EdgeInsets.only(right: 4, top: 440),
      padding: EdgeInsets.symmetric(
        horizontal: 18,
        vertical: 24,
      ),
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: appTheme.indigo700,
          width: 3.h,
        ),
      ),
      child: Container(       
        width: 281.h,
        margin: EdgeInsets.only(right: 31),
        child: Text(
          translatedText,
          maxLines: 256,
          overflow: TextOverflow.ellipsis,
          style: theme.textTheme.titleLarge?.copyWith(
            color: Color(
              0XFF000000,
            ),
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  Widget _buildVectorSection(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        decoration: BoxDecoration(
          color: appTheme.whiteA700,
          borderRadius: BorderRadius.circular(310),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBar(
              elevation: 0,
              toolbarHeight: 75,
              backgroundColor: Colors.transparent,
              automaticallyImplyLeading: false,
              leadingWidth: 50,
              leading: Padding(
                padding: EdgeInsets.only(
                  left: 33,
                  top: 10,
                  bottom: 24,
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.chevron_left,
                    size: 40,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              centerTitle: true,
              title: Container(
                decoration: BoxDecoration(),
                child: Text(
                  "Terjemahan",
                  style: theme.textTheme.titleLarge?.copyWith(
                    fontSize: 27,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              flexibleSpace: Container(
                height: 75.v,
                width: 430.h,
                decoration: BoxDecoration(
                  color: appTheme.cyan300,
                  borderRadius:
                      BorderRadius.vertical(bottom: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Color(
                        0X3F000000,
                      ),
                      spreadRadius: 2,
                      blurRadius: 2,
                      offset: Offset(
                        0,
                        4,
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15.v,
            ),
            Container(
              width: 356.h,
              margin: EdgeInsets.symmetric(horizontal: 37),
              child: TextFormField(
                autofocus: true,
                controller: grouptwoController,
                style: theme.textTheme.titleLarge?.copyWith(
                  color: Color(0XFF000000),
                  fontSize: 15,
                ),
                textInputAction: TextInputAction.done,
                maxLines: 11,
                decoration: InputDecoration(
                  hintText: "tulis text atau jelajahi dengan ikon camera dibawah",
                  hintStyle: theme.textTheme.titleLarge?.copyWith(
                    color: Color(0XFF000000),
                    fontSize: 15,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: appTheme.indigo700,
                      width: 3.h,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: appTheme.indigo700,
                      width: 3.h,
                    ),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: appTheme.indigo700,
                      width: 3.h,
                    ),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: appTheme.indigo700,
                      width: 3.h,
                    ),
                  ),
                  filled: true,
                  fillColor: appTheme.whiteA700,
                  isDense: true,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 24,
                    vertical: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 01.v,
            ),
            Positioned(
              bottom: 10,
              right: 10,
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.camera_alt,
                      size: 50.0,
                    ),
                    onPressed: () => _pickImage(ImageSource.camera),
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.folder,
                      size: 50.0,
                    ),
                    onPressed: () => _getImageAndConvertToText(ImageSource.gallery),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 91.v,
            ),
          ],
        ),
      ),
    );
  }
}
