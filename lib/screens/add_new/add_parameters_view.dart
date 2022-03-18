import 'package:flutter/material.dart';


import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parametric_market_app/constants/constants.dart';
import 'package:parametric_market_app/screens/add_new/add_parameters_controller.dart';

import '../../components/dropdown_form_field.dart';
import '../../components/mybutton.dart';
import '../../components/text_field.dart';

class AddParametersView extends StatelessWidget {
  final _controller = Get.find<AddParametersController>();

  AddParametersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Theme.of(context).primaryColor,
            title: Text("Entry Form"),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 10, right: 10),
              child: Form(
                // key: _entryFormController.formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                     
                        Expanded(
                            child: TxtField(
                          isReadOnly: true,
                          validator: (String? val) => val == null || val.isEmpty
                              ? priceEmptyErrorMessage
                              : null,
                          // controller: _entryFormController.tieController,
                          hintText: pricerHintText,
                        ))
                      ,
                      SizedBox(
                          width: 10,
                        ),
                          Expanded(
                            child: DropDownField(
                                // value: _entryFormController.partSize,
                                validator: (int? val) =>
                                    val == null
                                        ?dimeterEmptyErrorMessage
                                        : null,
                                onChanged: (partSize) {
                                  // _entryFormController.partSize = partSize;
                                },
                                items: _controller.rimDimetersValues,
                                hintText: dimeterHintText)
                                
                                
                                ),
                     
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: TxtField(
                          validator: (String? val) => val == null || val.isEmpty
                              ? rimDescriptionEmptyErrorMessage
                              : null,
                          // controller: _controller.weightController,
                          hintText: descriptionHintText,
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: DropDownField(
                                // value: _controller.status,
                                validator: (double? val) =>
                                    val == null
                                        ? rimWidthEmptyErrorMessage
                                        : null,
                                onChanged: (status) {
                                  // _controller.status = status;
                                },
                                items: _controller.rimWidth,
                                hintText: rimWidthHintText))
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
              
                         Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                            child: TxtField(
                          validator: (String? val) => val == null || val.isEmpty
                              ? rimBrandEmptyErrorMessage
                              : null,
                          // controller: _controller.weightController,
                          hintText: brandHintText,
                        )),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                            child: DropDownField(
                                // value: _controller.status,
                                validator: (int? val) =>
                                    val == null
                                        ? rimOffsetEmptyErrorMessage
                                        : null,
                                onChanged: (status) {
                                  // _controller.status = status;
                                },
                                items: _controller.rimDimetersValues,
                                hintText: offsetHintText))
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
