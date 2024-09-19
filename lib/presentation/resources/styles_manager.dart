import 'package:flutter/material.dart';
import 'package:sales_mvvm/presentation/resources/font_manager.dart';


TextStyle _getTextStyle(double fontSize, FontWeight fontWeight, Color color,)
{
  return TextStyle(
    fontSize: fontSize,
    fontFamily: FontConstants.fontFamily,
    color: color,
    fontWeight: fontWeight
  );
}


TextStyle getRegularStyle({ double fontSize = FontSize.s12,required Color color})
{
  return _getTextStyle(fontSize,FontWeighManager.regular,color);
}
TextStyle getMediumStyle({ double fontSize = FontSize.s12,required Color color})
{
  return _getTextStyle(fontSize,FontWeighManager.medium,color);
}
TextStyle getLightStyle({ double fontSize = FontSize.s12,required Color color})
{
  return _getTextStyle(fontSize,FontWeighManager.light,color);
}
TextStyle getBoldStyle({ double fontSize = FontSize.s12,required Color color})
{
  return _getTextStyle(fontSize,FontWeighManager.bold,color);
}
TextStyle getSemiBoldStyle({ double fontSize = FontSize.s12,required Color color})
{
  return _getTextStyle(fontSize,FontWeighManager.semiBold,color);
}
