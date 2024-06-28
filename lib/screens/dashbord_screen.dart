import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:network_issue_handle/constants/colors.dart';
import 'package:network_issue_handle/constants/images.dart';
import 'package:network_issue_handle/model/bread_crumb_widget_model.dart';
import 'package:network_issue_handle/widgets/bread_crumb_widget.dart';
import 'package:network_issue_handle/widgets/button_widget.dart';
import 'package:network_issue_handle/widgets/common_appbar.dart';
import 'package:network_issue_handle/widgets/common_text_field.dart';

class DashboardScreen extends StatefulWidget{
  const DashboardScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DashboardState();
  }
}


class _DashboardState extends State<DashboardScreen>{

  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController decimalController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void _submit() {
    final isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    formKey.currentState!.save();
  }

  List<BreadCrumbWidgetModel> breadCrumbWidgetList = [
    BreadCrumbWidgetModel(title: "Income Details",child:const Center(child: Text("Income Details"),),isSelected: true),
    BreadCrumbWidgetModel(title: "Bureau",child:const Center(child:  Text("Bureau"),),isSelected: false),
    BreadCrumbWidgetModel(title: "Step 5",child:const Center(child:  Text("Step 5"),),isSelected: false),
    BreadCrumbWidgetModel(title: "Step 6",child:const Center(child:  Text("Step 6"),),isSelected: false),
    BreadCrumbWidgetModel(title: "Step 7",child:const Center(child:  Text("Step 7"),),isSelected: false),
  ];


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      appBar: const CommonAppbar(),
      body: BreadCrumbWidget(
        breadCrumbList: breadCrumbWidgetList,
      ),
    );
  }
}