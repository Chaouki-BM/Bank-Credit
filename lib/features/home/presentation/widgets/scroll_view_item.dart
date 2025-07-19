import 'package:bankcredit/generated/l10n.dart';
import 'package:flutter/material.dart';

class ScrollViewItem extends StatelessWidget {
  const ScrollViewItem({
    super.key,
    required this.TextItem,
    required this.Status,
  });
  final String TextItem;
  final String Status;
  Color _getStatusColor(String Status) {
    switch (Status.toLowerCase()) {
      case 'accepted':
        return Colors.green;
      case 'pending':
        return Colors.orange;
      case 'refused':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  String _translateStatus(BuildContext context, String Status) {
    switch (Status.toLowerCase()) {
      case 'accepted':
        return S.of(context).accepted;
      case 'pending':
        return S.of(context).pending;
      case 'refused':
        return S.of(context).refused;
      default:
        return "!";
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        TextItem,
        style: TextStyle(
          fontSize: 19,
          fontFamily: "Poppins",
          fontWeight: FontWeight.w500,
        ),
      ),
      textColor: Theme.of(context).colorScheme.onSurface,
      leading: Icon(
        Icons.list_alt,
        color: Theme.of(context).colorScheme.primary,
      ),
      trailing: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 4),
        decoration: BoxDecoration(
          border: Border.all(color: _getStatusColor(Status), width: 1.5),
          borderRadius: BorderRadius.circular(15),

          color: Colors.transparent,
        ),

        child: Text(
          _translateStatus(context, Status),
          style: TextStyle(
            color: _getStatusColor(Status),
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
