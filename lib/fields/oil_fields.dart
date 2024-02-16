import 'package:flutter/material.dart';

class OilFields extends StatefulWidget {
  @override
  _OilFieldsState createState() => _OilFieldsState();
}

class _OilFieldsState extends State<OilFields> {
  DateTime? _fromDate;
  DateTime? _toDate;
  String selectedCompany = 'Company A';
  String selectedQuantity = '2';
  bool showQuantityTextField = false;
  final quantityController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DropdownButtonFormField<String>(
            value: selectedCompany,
            onChanged: (newValue) {
              setState(() {
                selectedCompany = newValue!;
              });
            },
            items: ['Company A', 'Company B', 'Company C']
                .map<DropdownMenuItem<String>>(
                  (String value) => DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              ),
            )
                .toList(),
            decoration: InputDecoration(
              labelText: 'Company',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 5),
          if (!showQuantityTextField)
            DropdownButtonFormField<String>(
              value: selectedQuantity,
              onChanged: (newValue) {
                setState(() {
                  selectedQuantity = newValue!;
                  showQuantityTextField = newValue == 'Others';
                });
              },
              items: ['2', '10', '50', 'Others']
                  .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                ),
              )
                  .toList(),
              decoration: InputDecoration(
                labelText: 'Quantity in Liters',
                border: OutlineInputBorder(),
              ),
            ),
          SizedBox(height: 10),
          if (showQuantityTextField)
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Enter Quantity',
                    border: OutlineInputBorder(),
                  ),
                  controller: quantityController,
                ),
                SizedBox(height: 10),
              ],
            ),
          // Date Range picker
          ElevatedButton(
            onPressed: () async {
              final picked = await showDateRangePicker(
                context: context,
                firstDate: DateTime(2015, 8),
                lastDate: DateTime(2101),
              );
              if (picked != null) {
                setState(() {
                  _fromDate = picked.start;
                  _toDate = picked.end;
                });
              }
            },
            child: InputDecorator(
              decoration: InputDecoration(
                labelText: 'Date Range',
                //border: OutlineInputBorder(),
              ),
              child: Text(
                _fromDate != null && _toDate != null
                    ? '${_fromDate!.toString().split(' ')[0]} - ${_toDate!.toString().split(' ')[0]}'
                    : 'Select Date Range',
              ),
            ),
          )

        ],
      ),
    );
  }
}
