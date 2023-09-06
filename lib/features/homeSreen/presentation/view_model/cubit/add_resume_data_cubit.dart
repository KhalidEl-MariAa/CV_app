import 'package:cv_app/core/utils/constants/const.dart';
import 'package:cv_app/features/homeSreen/data/models/resume_Model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

part 'add_resume_data_state.dart';

class AddResumeDataCubit extends Cubit<AddResumeDataState> {
  AddResumeDataCubit() : super(AddResumeDataInitial());

  void addDataToHive (ResumeModel resumeObject ){

    emit(AddResumeDataLoading());
    try {
      var box = Hive.box(kBoxName);
      box.add(resumeObject);
      emit(AddResumeDataSuccess());
    } catch (e) {
      emit(AddResumeDataFailure(errormessage: e.toString()));
    }
  }
}
