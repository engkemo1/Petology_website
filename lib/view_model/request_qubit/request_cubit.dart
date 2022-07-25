import 'dart:convert';
import 'dart:typed_data';

import 'package:bloc/bloc.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:petology_web/constants.dart';
import 'package:petology_web/view_model/request_qubit/request_stetes.dart';
import 'dart:io';
import 'package:flutter/foundation.dart' show kIsWeb;
import '../../model/request_help_model.dart';
import '../../view/components/component.dart';
import '../database/network/dio-helper.dart';
import '../database/network/dio_exceptions.dart';
import '../database/network/end_points.dart';

class RequestCubit extends Cubit<RequestState> {
  RequestCubit() : super(RequestStateInitial());

  static RequestCubit get(context) => BlocProvider.of(context);

  File? imageFile;
  Uint8List? imageBytes  ;
  String ?base64Image;

  Future<void> postHelpFriend({
    required double categoryId,
    required String imageBase64,
    required String location,
    required String phoneNumber,
  }) async {
    RequestHelpModel requestHelpModel = RequestHelpModel(
      categoryId: categoryId,
      imageBase64: imageBase64,
      location: location,
      phoneNumber: phoneNumber,
    );
    emit(RequestHelpStateLoading());
    await DioHelper.postData(
            url: requestHelp,
            token:
                "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6NDEsImVtYWlsIjoiYXRmQGdtYWlsLmNvbSIsImlhdCI6MTY1ODcyNzIxMiwiZXhwIjoxNjU4ODEzNjEyfQ.IgUKpfwq6kIfD6XL5jbRIKhvvfmgK6MejVhvYAVz2Fs",
            data: requestHelpModel.toMap(requestHelpModel))
        .then((value) {
      emit(RequestHelpStateSuccess());

      showToast(message: 'Update About User', color: Colors.green);
    }).catchError((onError) {
      if (onError is DioError) {
        final errorMessage = DioExceptions.fromDioError(onError).toString();
        showToast(message: errorMessage, color: Colors.red);
        print('Error Update About User Cubit ${onError.toString()}');
        emit(RequestHelpStateError(errorMessage));
      }
    });
  }



  getImageForWeb() async {
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(
      source: ImageSource.gallery,
      imageQuality: 100,
      maxWidth: 180,
      maxHeight: 180,
    );
    if (image != null) {
      var f = await image.readAsBytes();
      imageBytes = f;
      base64Image = base64Encode(f);
      print("base64Image----------------------------->$base64Image");
      emit(ImageUserProfileSuccess());
    } else {
      emit(ImageUserProfileError("No Image Selected"));
    }
  }




   var address = 'Location' ;

  //Location

  Future<void> updatePosition() async {
    Position position = await _determinePosition();
    List<Placemark> placemarks =
    await placemarkFromCoordinates(position.latitude, position.longitude);

    Placemark place = placemarks[0];

    address = "${place.country},${place.street}";
  }

  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    return await Geolocator.getCurrentPosition();
  }






}



