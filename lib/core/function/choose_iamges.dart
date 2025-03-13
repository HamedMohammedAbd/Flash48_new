import 'package:image_picker/image_picker.dart';

Future<List<XFile>> pickeImages() async {
  List<XFile> images = [];
  images.addAll(
    await ImagePicker().pickMultiImage(
      imageQuality: 100,
      requestFullMetadata: false,
    ),
  );
  return images;
}
