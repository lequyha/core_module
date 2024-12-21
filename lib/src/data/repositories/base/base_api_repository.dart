import 'dart:io' show HttpStatus;

import 'package:core_module/src/domain/models/base_response_model.dart';
import 'package:core_module/src/utils/app_dio_exceptions.dart';
import 'package:core_module/src/utils/data_state.dart';
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:retrofit/retrofit.dart';

abstract class BaseApiRepository {
  /// This method is responsible of handling the given `request`, in which
  /// it returns generic based `DataState`.
  ///
  /// Returns `DataSuccess` that holds the generic data `T` if the response
  /// is successfully recieved.
  ///
  /// Returns `DataFailed` that holds a `DioError` instance if any error occurs
  /// while sending the request or recieving the response.
  @protected
  Future<DataState<T>> getStateOf<T>({
    required Future<HttpResponse<T>> Function() request,
  }) async {
    try {
      final httpResponse = await request();
      if (httpResponse.response.statusCode == HttpStatus.ok) {
        return DataSuccess(httpResponse.data);
      } else {
        throw DioException(
          response: httpResponse.response,
          requestOptions: httpResponse.response.requestOptions,
        );
      }
    } on DioException catch (error) {
      String errorMessage = '';
      try {
        final errorResponse = BaseResponseModel.fromJson(
          error.response?.data,
          (p0) => null,
        );
        errorMessage = errorResponse.message ?? '';
        if (errorMessage.isEmpty) {
          errorMessage = AppDioExceptions.fromDioError(
            dioException: error,
            errorFrom: error.requestOptions.path,
          ).errorMessage();
        }
      } catch (_) {
        errorMessage = AppDioExceptions.fromDioError(
          dioException: error,
          errorFrom: error.requestOptions.path,
        ).errorMessage();
      }
      return DataFailed(errorMessage);
    }
  }

  @protected
  Future<DataState<T?>> getStateOfWithoutHttpResponse<T>({
    required Future<T?> Function() request,
  }) async {
    try {
      final httpResponse = await request();
      return DataSuccess(httpResponse);
    } on DioException catch (error) {
      String errorMessage = '';
      try {
        final errorResponse = BaseResponseModel.fromJson(
          error.response?.data,
          (p0) => null,
        );
        errorMessage = errorResponse.message ?? '';
        if (errorMessage.isEmpty) {
          errorMessage = AppDioExceptions.fromDioError(
            dioException: error,
            errorFrom: error.requestOptions.path,
          ).errorMessage();
        }
      } catch (_) {
        errorMessage = AppDioExceptions.fromDioError(
          dioException: error,
          errorFrom: error.requestOptions.path,
        ).errorMessage();
      }
      return DataFailed(errorMessage);
    }
  }
}
