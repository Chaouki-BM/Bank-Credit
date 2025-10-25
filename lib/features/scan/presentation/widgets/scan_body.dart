import 'dart:io';

import 'package:bankcredit/core/utils/size_config.dart';
import 'package:bankcredit/features/scan/presentation/widgets/custom_action_button.dart';
import 'package:bankcredit/generated/l10n.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:image_picker/image_picker.dart';

class ScanBody extends StatelessWidget {
  const ScanBody({super.key});

  Future<void> _requestPermissions() async {
    await [Permission.camera, Permission.storage].request();
  }

  Future<File?> _pickImage() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.gallery);
    return image != null ? File(image.path) : null;
  }

  Future<File?> _pickFromCamera() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);
    return image != null ? File(image.path) : null;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: SizeConfig.defaultsize! * 27,
            child: Image.asset("assets/images/Scan_logo.png"),
          ),
          Column(
            children: [
              Text(
                S.of(context).titelScan,
                style: TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.w700,
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(height: SizeConfig.defaultsize! * 2),
              Row(
                children: [
                  Icon(
                    Icons.panorama_fish_eye_outlined,
                    size: 10,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  SizedBox(width: SizeConfig.defaultsize! * 1),
                  Expanded(
                    child: Text(
                      S.of(context).Subtitle1Scan,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: SizeConfig.defaultsize! * 1),
              Row(
                children: [
                  Icon(
                    Icons.panorama_fish_eye_outlined,
                    size: 10,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                  SizedBox(width: SizeConfig.defaultsize! * 1),
                  Expanded(
                    child: Text(
                      S.of(context).Subtitle2Scan,
                      softWrap: true,
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w400,
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomActionButton(
                icon: Icons.document_scanner_outlined,
                label: S.of(context).Scan,
                onTap: _pickFromCamera,
                borderColor: Theme.of(context).colorScheme.onSurface,
              ),

              CustomActionButton(
                icon: Icons.upload_outlined,
                label: S.of(context).upload,
                onTap: _pickImage,
                borderColor: Theme.of(context).colorScheme.onSurface,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
