abstract class RequestState {}

class RequestStateInitial extends RequestState {}

class RequestHelpStateLoading extends RequestState {}

class RequestHelpStateSuccess extends RequestState {}

class RequestHelpStateError extends RequestState {
  final String error;

  RequestHelpStateError(this.error);
}
class ImageUserProfileLoading extends RequestState {}
class ImageUserProfileSuccess extends RequestState {}
class ImageUserProfileError extends RequestState {
  final String error;
  ImageUserProfileError(this.error);
}