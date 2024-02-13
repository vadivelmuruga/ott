import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ott/app%20imagepic.dart';
import 'package:permission_handler/permission_handler.dart';
class imagepic extends StatefulWidget {
  const imagepic({Key? key}): super(key: key);

  @override
  State<imagepic> createState() => _imagepicState();
}

class _imagepicState extends State<imagepic> {
  File? image;

  // final picker  = ImagePicker();
  // void showImagePicker(BuildContext context){
  //   showModalBottomSheet(
  //       context: context,
  //       builder: (builder)
  //       {
  //         return Card(
  //           child: Container(
  //             height: MediaQuery.of(context).size.height/5.2,
  //             width:  MediaQuery.of(context).size.height,
  //             child: Row(
  //               mainAxisAlignment: MainAxisAlignment.center,
  //               children: [
  //                 Expanded(
  //                   child: InkWell(
  //                     child: Column(
  //                       children: [
  //                         Icon(Icons.image),
  //                         Text("Gallery",textAlign: TextAlign.center,)
  //                       ],
  //                     ),
  //                     onTap: (){
  //                       _imgFromGallery();
  //                       Navigator.pop(context);
  //                     },
  //                   ),
  //                 ),
  //                 Expanded(
  //                   child: InkWell(
  //                     child: Column(
  //                       children: [
  //                         Icon(Icons.image),
  //                         Text("Camera",textAlign: TextAlign.center,)
  //                       ],
  //                     ),
  //                     onTap: (){
  //                       _imgFromCamera();
  //                       Navigator.pop(context);
  //                     },
  //                   ),
  //                 )
  //               ],
  //             ),
  //           ),
  //         );
  //       });
  // }
  //
  //
  // _imgFromGallery() async{
  //   await picker.pickImage(
  //       source: ImageSource.gallery,imageQuality: 50
  //   ).then((value) => null);
  // }
  //
  // _imgFromCamera() async{
  //   await picker.pickImage(
  //       source: ImageSource.gallery,imageQuality: 50
  //   ).then((value) => null);
  // }
  pickImage(ImageSource source){
    AppImagePicker(source: source)
        .pick(onPick: (File?image){
          setState(() {
            this.image = image;
          });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Image Picker")),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: (){
                    pickImage(ImageSource.camera);
                  },
                  child: Text("Camera")
              ),
              SizedBox(width: 20,),
              ElevatedButton(
                  onPressed: (){
                    pickImage(ImageSource.gallery);
                  },
                  child: Text("Gallery")
              ),
            ],
          ),
          if(image!=null)
            Image.file(image!)
          // SizedBox(height: 20,),
          // image == null
          // ? Image.asset("assets/disney1.jpg",
          //   height: MediaQuery.of(context).size.height*0.30,
          // width: MediaQuery.of(context).size.width*0.30,)
          //     :ClipRRect(
          //   borderRadius: BorderRadius.circular(150),
          //   child: Image.file(image!,
          //     height: MediaQuery.of(context).size.height*0.30,
          //   width: MediaQuery.of(context).size.width*0.30,
          //   fit: BoxFit.fill,),
          // ),
          // SizedBox(height: 20,),
          // ElevatedButton(
          //     onPressed: ()async{
          //       Map<Permission,PermissionStatus> statuses = await[
          //         Permission.storage,Permission.camera,
          //       ].request();
          //       if(statuses[Permission.storage]!.isGranted&&statuses[Permission.camera]!.isGranted){
          //        setState(() {
          //          showImagePicker(context);
          //        });
          //
          //       }
          //       else{
          //         print("no permission provider");
          //       }
          //     },
          //     child: Text("Select Image"))
        ],
      ),
    );
  }
}

