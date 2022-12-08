// ignore_for_file: prefer_final_fields, prefer_is_empty



import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:image_picker/image_picker.dart';

class HomeNotifier extends ChangeNotifier {

  TextEditingController vechNo=TextEditingController();
  TextEditingController engineNo=TextEditingController();
  TextEditingController name=TextEditingController();
  TextEditingController address=TextEditingController();
  TextEditingController phone=TextEditingController();
  TextEditingController customerAmount=TextEditingController();
  TextEditingController auditorValueAmount=TextEditingController();

  bool _isLoading = false;
  bool get isLoading => _isLoading;
    bool _isupdateLoading = false;
  bool get isupdateLoading => _isupdateLoading;
  int? _strValue;
  int get strValue => _strValue!;

   bool  _edit = false;
   bool get  edit =>_edit;

  List<String>? profilepic=[];
  int currStep = 0;
  final picker = ImagePicker();


  Future getImage(context) async {
    final pickedFile = await picker.pickImage(
        source: ImageSource.camera, maxHeight: 480, maxWidth: 640);
    if (pickedFile != null) {
     profilepic!.add( pickedFile.path);
     notifyListeners();
      // Navigator.of(context).pop();
    } else {
      print('No image selected.');
    }
    notifyListeners();
  }

  Future getImagegaller(context) async {
    try {
      List<XFile>? pickedFile = await picker.pickMultiImage();
      
      if (pickedFile != null) {
        // profilepic=pickedFile;
        pickedFile.forEach((element) {
        profilepic!.add(element.path);
        });
      notifyListeners();
        Navigator.of(context).pop();
      } else {
        print('No image selected.');
      }
    } catch (e) {
      print(e);
    }
    notifyListeners();
  }

 
}

