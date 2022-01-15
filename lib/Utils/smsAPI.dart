import 'package:flutter/material.dart';
import 'package:http/http.dart';


sendSMS(mobile, message, template) async {
  late String deliverystatus;

  Response response = await post(
  "http://api.bulksmsgateway.in/sendmessage.php?user=RAGHAVENDRARAO&password=Tssms@321&mobile=${mobile}&message=${message}&sender=TESTKK&type=3&template_id=${template} "
  );

  if (response.statusCode == 200){
    return deliverystatus = "Successfully sent";
  }
  else return deliverystatus = "Unable to send SMS";
}

