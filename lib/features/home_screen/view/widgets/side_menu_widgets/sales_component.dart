import 'package:accounting/core/utils/strings_manager.dart';
import 'package:accounting/features/home_screen/view/widgets/side_menu_widgets/item_expansion_panel.dart';
import 'package:flutter/material.dart';

Widget salesSubItems(context)=>
    Column(
      children: [
        buildSubItem(AppStrings.invoiceForThePriceQuotation, () {
        }),
        buildSubItem(AppStrings.salesInvoice, () {
          // تنفيذ الإجراء عند الضغط على دليل الحسابات
        }),
        buildSubItem(AppStrings.salesReturns, () {
          // تنفيذ الإجراء عند الضغط على مراكز التكلفة
        }),
        buildSubItem(AppStrings.creditNotes, () {
          // تنفيذ الإجراء عند الضغط على القيود اليومية
        }),
        buildSubItem(AppStrings.returnedInvoices, () {
          // تنفيذ الإجراء عند الضغط على دليل الحسابات
        }),
        buildSubItem(AppStrings.periodicInvoices, () {
          // تنفيذ الإجراء عند الضغط على مراكز التكلفة
        }), buildSubItem(AppStrings.invoiceManagement, () {
          // تنفيذ الإجراء عند الضغط على دليل الحسابات
        }),
        buildSubItem(AppStrings.dailyMovementReport, () {
          // تنفيذ الإجراء عند الضغط على مراكز التكلفة
        }),
      ],
    );
