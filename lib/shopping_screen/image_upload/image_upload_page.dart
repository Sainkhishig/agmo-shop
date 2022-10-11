// https://www.c-sharpcorner.com/article/upload-image-file-to-firebase-storage-using-flutter/
import 'dart:io';

import 'package:agmo_shop/widget/common_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:translit/translit.dart';

import 'image_upload_page_controller.dart';

class ImageUploadPage extends HookConsumerWidget {
  ImageUploadPage({Key? key}) : super(key: key);

  final trans = Translit();

  final keywordController = useTextEditingController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    PageController pageController = PageController(
      initialPage: 0,
      keepPage: true,
    );

    final controller = ref.watch(cartPageProvider.notifier);
    controller.setModelListenable(ref);

    List<Widget> lsttableServings = [];
    lsttableServings.add(Text("HOME"));
    // }
    return Scaffold(
      body: lsttableServings.isEmpty
          ? showEmptyDataWidget()
          : //Expanded(child: FlashCardListItem(flashcards: flashCard)),
          Column(
              children: [ImageUploadWidget()],
            ),
    );
  }
}

class ImageUploadWidget extends HookConsumerWidget {
  ImageUploadWidget({
    Key? key,
  }) : super(key: key);
  late File _image;
  late String _uploadedFileURL;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return StatefulBuilder(builder: (context, setState) {
      // var dragControl = ;
      return Center(
        child: Column(
          children: <Widget>[
            Text('Selected Image'),
            // _image != null
            //     ? Image.asset(
            //         _image.path,
            //         height: 150,
            //       )
            //     : Container(height: 150),
            // _image == null
            //     ? ElevatedButton(
            //         child: Text('Choose File'),
            //         onPressed: () async {
            //           await ImagePicker.pickImage(source: ImageSource.gallery)
            //               .then((image) {
            //             setState(() {
            //               _image = image as File;
            //             });
            //           });
            //         },
            //       )
            //     : Container(),
            // _image != null
            //     ? ElevatedButton(
            //         child: Text('Upload File'),
            //         onPressed: () async {
            //           // StorageReference storageReference = FirebaseStorage
            //           //     .instance
            //           //     .ref()
            //           //     .child('chats/${Path.basename(_image.path)}}');
            //           // StorageUploadTask uploadTask =
            //           //     storageReference.putFile(_image);
            //           // await uploadTask.onComplete;
            //           // print('File Uploaded');
            //           // storageReference.getDownloadURL().then((fileURL) {
            //           //   setState(() {
            //           //     _uploadedFileURL = fileURL;
            //           //   });
            //           // });
            //         },
            //       )
            //     : Container(),
            // _image != null
            //     ? ElevatedButton(
            //         child: Text('Clear Selection'),
            //         onPressed: () {},
            //       )
            //     : Container(),
            // Text('Uploaded Image'),
            // _uploadedFileURL != null
            //     ? Image.network(
            //         _uploadedFileURL,
            //         height: 150,
            //       )
            //     : Container(),
          ],
        ),
      );
    });
  }
}
