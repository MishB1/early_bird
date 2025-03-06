import 'package:flutter/material.dart';

class CustomDataTable extends StatelessWidget {
  final List<String> columns;
  final List<List<String>> rows;

  const CustomDataTable({
    required this.columns,
    required this.rows,
  });

  @override
  Widget build(BuildContext context) {
    return DataTable(
      columns: columns.map((column) {
        return DataColumn(label: Text(column));
      }).toList(),
      rows: rows.map((row) {
        return DataRow(
          cells: row.map((cell) {
            return DataCell(Text(cell));
          }).toList(),
        );
      }).toList(),
    );
  }
}