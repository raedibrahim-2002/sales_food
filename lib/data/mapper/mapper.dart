import 'package:sales_mvvm/app/constants.dart';
import 'package:sales_mvvm/app/extensions.dart';
import 'package:sales_mvvm/data/response/responses.dart';
import 'package:sales_mvvm/domain/model/model.dart';

extension CustomerResponseMapper on CustomerResponse? {
  Customer toDomain() {
    return Customer(
        this?.id.orEmpty() ?? Constants.empty,
        this?.name.orEmpty() ?? Constants.empty,
        this?.numOfNotifications.orZero() ?? Constants.zero);
  }
}

extension ContactsResponseMapper on ContactsResponse? {
  Contacts toDomain() {
    return Contacts(
        this?.phone.orEmpty() ?? Constants.empty,
        this?.email.orEmpty() ?? Constants.empty,
        this?.link.orEmpty() ?? Constants.empty);
  }
}

extension AuthenticationResponseMapper on AuthenticationResponse? {
  Authentication toDomain() {
    return Authentication(this?.customer.toDomain(),
        this?.contacts.toDomain());
    //  orEmpty ومع ذلك الحاجات الي جواها لو بقت هيتصرف معاها عن طريق  nullممكن الكلاس الكبيره تكون ب  
  }
}
