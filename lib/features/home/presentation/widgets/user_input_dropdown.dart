import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil_plus/flutter_screenutil_plus.dart';


class UserInputDropdown extends StatelessWidget {


  final ValueNotifier<String?> valueListenable ;
  final List<String> itemList;
  final Widget hint;

  UserInputDropdown({
    required this.valueListenable,
    required this.itemList,
    required this.hint,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField2<String>(
      isExpanded: true,
      decoration: InputDecoration(
        contentPadding:
        EdgeInsets.symmetric(vertical: 16.r, horizontal: 16.r),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
          gapPadding: 0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey.withValues(alpha: 0.99),
            width: 2.w,
          ),
        ),

        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.grey,
            width: 2.w,
          ),
        ),

        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.red,
            width: 2.w,
          ),
        ),

        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            color: Colors.red,
            width: 2.w,
          ),
        ),
      ),
      hint: hint,
      items: itemList
          .map(
            (item) => DropdownItem<String>(
          value: item,
          child: Text(
            item,
            style: TextStyle(
              fontSize: 14.sp,
            ),
          ),
        ),
      )
          .toList(),
      valueListenable: valueListenable,

      validator: (value) {
        if (value == null) {
          return 'Please select gender.';
        }
        return null;
        },

      onChanged: (value) {
        valueListenable.value = value;
      },
      iconStyleData: const IconStyleData(
        icon: Icon(
          Icons.arrow_drop_down,
          color: Colors.black45,
        ),
      ),
      dropdownStyleData: DropdownStyleData(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.r),
        ),
        maxHeight: 200.h
      ),
      menuItemStyleData: const MenuItemStyleData(
        useDecorationHorizontalPadding: true,
      ),
    );
  }
}