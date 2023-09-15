import 'package:cv_app/core/utils/constants/const.dart';
import 'package:cv_app/features/homeSreen/data/models/resume_Model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';

part 'add_resume_data_state.dart';

class AddResumeDataCubit extends Cubit<AddResumeDataState> {
  AddResumeDataCubit() : super(AddResumeDataInitial());

  Future<void> addDataToHive (ResumeModel resumeObject )async {

    emit(AddResumeDataLoading());
    var box = Hive.box<ResumeModel>(kBoxName);
    try {
      
      await box.add(resumeObject);
      emit(AddResumeDataSuccess());
    }  

    catch (e) {
      if(e is HiveError){

    await box.clear();
    emit(AddResumeDataFailure(error: "hive error : ${e.toString()}"));
    }
    else{
      
     emit(AddResumeDataFailure(error: 'not hive ${e.toString()}'));
    }

    } 
  }

 
}
