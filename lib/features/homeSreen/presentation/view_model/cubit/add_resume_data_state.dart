part of 'add_resume_data_cubit.dart';


abstract class AddResumeDataState {}

final class AddResumeDataInitial extends AddResumeDataState {}

class AddResumeDataLoading extends AddResumeDataState{}

class AddResumeDataSuccess extends AddResumeDataState{}

class AddResumeDataFailure extends AddResumeDataState{
  AddResumeDataFailure({required this.error});
String error;
}
