import 'package:dio/dio.dart';

class DioExceptionHandler {
  static String handle(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return 'انتهت مهلة الاتصال بالخادم';
      case DioExceptionType.sendTimeout:
        return 'مهلة إرسال البيانات انتهت';
      case DioExceptionType.receiveTimeout:
        return 'الخادم لم يرد في الوقت المناسب';
      case DioExceptionType.badCertificate:
        return 'شهادة SSL غير صالحة';
      case DioExceptionType.badResponse:
        return e.response?.data['message'] ?? 'استجابة غير صحيحة من الخادم';
      case DioExceptionType.cancel:
        return 'تم إلغاء الطلب';
      case DioExceptionType.connectionError:
        return 'خطأ في الاتصال بالخادم';
      case DioExceptionType.unknown:
        return 'تحقق من اتصال الإنترنت';
      default:
        return 'حدث خطأ غير معروف';
    }
  }
}
