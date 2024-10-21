
import 'package:benji_crm_v2/view/feature/business/widget/custom_search_field.dart';
import 'package:benji_crm_v2/view/styles/color_style.dart';
import 'package:benji_crm_v2/view/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class InventoryManagementScreen extends StatelessWidget {
  const InventoryManagementScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
           FocusScope.of(context).unfocus();
        },
        child: Container(
            decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppColors.whiteColor
                ),
          padding: const EdgeInsets.symmetric(horizontal: 28.0,vertical: 56),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                     Row(
                      children: [
                        GestureDetector(onTap: (){
                          Get.back();
                        },
                          child: const Icon(Icons.arrow_back_ios_new_outlined,)),
                        const SizedBox(width: 30,),
                        const Text("Inventory Management",style: Apptext.black_600_20,),
                      ],
                    ),
                    const SizedBox(width: 85,),
                    Container(width: 220,height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(width: 2.5,
                      color: const Color(0xfff4f4f4d6).withOpacity(0.84)),
                    ),
                    child: const Center(child: CustomSearchField()),),
                    const SizedBox(width: 12,),
                    Image.asset("assets/icons/view-grid-add.png",width: 32,height: 32,),
                    Image.asset("assets/icons/save-sharp.png",width: 32,height: 32,)
                  ],
                  ),
                    
              DataTable(
            
                // horizontalMargin: 0,
                dividerThickness: 2,
                columnSpacing: 22,
                  columns:_createColumns(),
                 rows: _createRows(),),
              ]),
            ),
          )
                ),
      ),
      );
    
  }
   List<DataColumn> _createColumns() {
    return [
       DataColumn(label: Text("S/N",style: Apptext.red_600_16,)),
     const DataColumn(label: Text("Product Name",style: Apptext.red_600_16,)),
      const DataColumn(label: Text("Total Item",style: Apptext.red_600_16,)),
      const DataColumn(label: Text("Remaining Items",style: Apptext.red_600_16,)),
      const DataColumn(label: Text("Unit Prize",style: Apptext.red_600_16,)),
      const DataColumn(label: Text("Stock Value",style: Apptext.red_600_16,)),
      const DataColumn(label: Text("Manage",style: Apptext.red_600_16,)),
    ];
  }
    List<DataRow> _createRows() {
    return List<DataRow>.generate(
      30,
      (int index) => DataRow(
        cells: <DataCell>[
          DataCell(Text("${index+1}",style: Apptext.black_600_16,)),
          const DataCell(Text('iPhone XR 256gb',style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,decoration: TextDecoration.underline))),
           DataCell(
           DataCellItem(value: '120',onTapArrowDown: (){},onTapArrowUp: (){},),
            ),
            
           DataCell(DataCellItem(value: '35',onTapArrowDown: (){},onTapArrowUp: (){},),),
         DataCell(DataCellItem(value: '180,000',onTapArrowDown: (){},onTapArrowUp: (){},),),
           DataCell(DataCellItem(value: '63,000,000',onTapArrowDown: (){},onTapArrowUp: (){},),
          placeholder: true),
           DataCell(Row(
            children: [
              const Text('Edit',style: Apptext.black_600_16,),
              const SizedBox(width: 5,),
              Image.asset("assets/icons/Edit.png")
            ],
          )),
        ],
      ),
    );
  }
}

class DataCellItem extends StatelessWidget {
  const DataCellItem({
    super.key, required this.value, required this.onTapArrowUp, required this.onTapArrowDown,
  });
  final String value;
  final VoidCallback onTapArrowUp;
  final VoidCallback onTapArrowDown;

  @override
  Widget build(BuildContext context) {
    return Container(
     padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 4),
     decoration:  ShapeDecoration(shape: RoundedRectangleBorder(
       borderRadius: BorderRadius.circular(9),
       side: const BorderSide(color: Color(0XFF969696))
     )),
     child:  Wrap(
       // spacing: 4,
       crossAxisAlignment: WrapCrossAlignment.center,
       children: [
          Text(value,style: Apptext.black_600_16,),
         const SizedBox(width: 4,),
         Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset("assets/icons/Arrow - Up 3.png",width: 8,height: 6,),
             const SizedBox(height: 4,),
             Image.asset("assets/icons/Arrow - Down 2.png")
           ],
         )
       ],
     ));
  }
}