//////////////////////////////////////////////////////////////////////////////
// G E N E R A T E D    C L A S S
// ------------------------------
// Path expression: 'lib/'+#path(#application.actor.name)+'/'+'app_theme.dart'
// Template name: lib/app_theme.dart.hbs
// Application: edemokracia::admin::Admin

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:judo_flutter_components/judo_flutter_components.dart';

class AppTheme {
  static ThemeData of(BuildContext context) {
    String fontFamily = 'SourceSansPro';

    /// elevated buttons
    Color primaryColor = Color(0xff3c4166);

    /// 85% primary color
    Color hoverButtonColor = Color(0xd93c4166);

    /// color of table line counter
    Color primaryVariant = Color(0xc03c4166);

    /// outlined back button, selected menu, selected tab, table icons, link icons, selected checkbox, selected radio, focused input field
    Color secondaryColor = Color(0xffe7501d);

    /// error color, error field background is 10% errorcolor
    Color errorColor = Color(0xffff0000);

    /// primary text color: page title, table headers, table content
    Color displayColor = Color(0xff17191d);

    /// secondary text color: titles, menu items, input data, etc., checkbox icon, radio icon
    Color bodyColor = Color(0xff434448);

    /// input label, unselected tab
    Color inputLabelColor = Color(0xff8f8f8f);

    /// disabled color
    Color disabledColor = Color(0xffbdbdbd);

    /// disabled button color
    Color disabledButtonColor = Color(0xffcdcdcd);

    /// input field shadow
    Color shadowColor = Color(0x2617191d);

    /// app bar divider, dividers
    Color dividerColor = Color(0xffdcdcdc);

    /// readOnly input field underline
    Color inputUnderlineColor = Color(0xfff0f0f0);

    /// every other table row, background, fill color of enabled input fields in card
    Color backgroundColor = Color(0xfffafafa);

    /// every other table row, menu background, card color, fill color of enabled input fields not in card
    Color cardColor = Color(0xffffffff);

    Color transparentColor = Colors.transparent;

    return Theme.of(context).copyWith(
      shadowColor: shadowColor,
      primaryColor: primaryColor,
      disabledColor: disabledColor,
      errorColor: errorColor,
      backgroundColor: backgroundColor,
      cardColor: cardColor,
      hintColor: primaryColor,
      toggleableActiveColor: secondaryColor,
      unselectedWidgetColor: bodyColor,
      dividerColor: dividerColor,
      primaryTextTheme: Theme.of(context).primaryTextTheme.apply(
            fontFamily: fontFamily,
            bodyColor: bodyColor,
            displayColor: displayColor,
          ),
      colorScheme: Theme.of(context).colorScheme.copyWith(
            primary: primaryColor,
            primaryVariant: primaryVariant,
            background: inputUnderlineColor,
            secondary: secondaryColor,
          ),
      textTheme: Theme.of(context).textTheme.copyWith(
            headline1: Theme.of(context).textTheme.headline1.copyWith(fontFamily: fontFamily),
            headline2: Theme.of(context).textTheme.headline2.copyWith(fontFamily: fontFamily),
            headline3: Theme.of(context).textTheme.headline3.copyWith(fontFamily: fontFamily),
            headline4: Theme.of(context).textTheme.headline4.copyWith(fontFamily: fontFamily, fontSize: 30.0, fontWeight: FontWeight.bold, color: displayColor),
            headline5: Theme.of(context).textTheme.headline5.copyWith(fontFamily: fontFamily),
            headline6: Theme.of(context).textTheme.headline6.copyWith(fontFamily: fontFamily, color: bodyColor),
            subtitle1: Theme.of(context).textTheme.subtitle1.copyWith(fontFamily: fontFamily, fontWeight: FontWeight.w600, color: bodyColor),
            subtitle2: Theme.of(context).textTheme.subtitle2.copyWith(fontFamily: fontFamily, fontWeight: FontWeight.w300, color: inputUnderlineColor),
            bodyText1: Theme.of(context).textTheme.bodyText1.copyWith(fontFamily: fontFamily),
            bodyText2: Theme.of(context).textTheme.bodyText2.copyWith(fontFamily: fontFamily, fontSize: 16.0, color: displayColor),
            button: Theme.of(context).textTheme.button.copyWith(fontFamily: fontFamily),
            caption: Theme.of(context).textTheme.caption.copyWith(fontFamily: fontFamily),
            overline: Theme.of(context).textTheme.caption.copyWith(fontFamily: fontFamily),
          ),
      textSelectionTheme: Theme.of(context).textSelectionTheme.copyWith(
            selectionColor: shadowColor,
          ),
      appBarTheme: AppBarTheme(
          color: backgroundColor,
          elevation: 0,
          textTheme: TextTheme(
            headline6: TextStyle(
              color: displayColor,
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: 32.0,
            ),
          ),
          centerTitle: false),
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
            buttonColor: primaryColor,
            disabledColor: disabledButtonColor,
            hoverColor: hoverButtonColor,
            textTheme: ButtonTextTheme.primary,
            shape: StadiumBorder(),
            padding: EdgeInsets.symmetric(horizontal: 16),
          ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        shape: StadiumBorder(),
      )),
      dividerTheme: Theme.of(context).dividerTheme.copyWith(
            color: dividerColor,
            thickness: 1,
            indent: 0,
            endIndent: 0,
            space: 16.0,
          ),
      inputDecorationTheme: Theme.of(context).inputDecorationTheme.copyWith(
            filled: true,
            fillColor: cardColor,
            focusColor: secondaryColor,
            hoverColor: backgroundColor,
            border: UnderlineInputBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)), borderSide: BorderSide(width: 1.0, color: transparentColor)),
            labelStyle: TextStyle(fontWeight: FontWeight.w600, color: inputLabelColor),
            enabledBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)), borderSide: BorderSide(width: 1.0, color: inputUnderlineColor)),
            focusedBorder: UnderlineInputBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)), borderSide: BorderSide(width: 2.0, color: secondaryColor)),
            disabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(width: 1.0, color: disabledColor),
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10.0),
                )),
            errorBorder:
                UnderlineInputBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)), borderSide: BorderSide(width: 2.0, color: errorColor)),
            errorStyle: TextStyle(
              fontFamily: fontFamily,
              fontWeight: FontWeight.bold,
              fontSize: 11,
              height: 0.4,
              color: errorColor,
            ),
            focusedErrorBorder:
                UnderlineInputBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(10.0)), borderSide: BorderSide(width: 2.0, color: errorColor)),
          ),
      indicatorColor: secondaryColor,
      checkboxTheme: Theme.of(context).checkboxTheme.copyWith(
            fillColor: MaterialStateProperty.all<Color>(secondaryColor),
            side: BorderSide(width: 2.0, color: bodyColor),
          ),
      radioTheme: Theme.of(context).radioTheme.copyWith(
            fillColor: MaterialStateProperty.all<Color>(bodyColor),
          ),
      tabBarTheme: Theme.of(context).tabBarTheme.copyWith(
            labelColor: secondaryColor,
            labelStyle: Theme.of(context).textTheme.subtitle1.copyWith(fontFamily: fontFamily, fontWeight: FontWeight.w700, color: secondaryColor),
            unselectedLabelColor: inputLabelColor,
            unselectedLabelStyle: Theme.of(context).textTheme.subtitle1.copyWith(fontFamily: fontFamily, fontWeight: FontWeight.w600, color: inputLabelColor),
          ),
      iconTheme: Theme.of(context).iconTheme.copyWith(
            size: 24,
            color: bodyColor,
          ),
    );
  }
}

class AppDesignCustomizer with DefaultJudoComponentsCustomizer {
  Color booleanTrueColor = Colors.green.shade500.withOpacity(0.7);
  Color booleanFalseColor = Colors.red.shade500.withOpacity(0.7);

  @override
  double getLineHeight() {
    return 72;
  }

  @override
  double getMenuWidth() {
    return 304.0;
  }

  @override
  EdgeInsets getDefaultPadding() {
    return EdgeInsets.symmetric(horizontal: 10);
  }

  @override
  EdgeInsets getNavigationButtonBarPadding() {
    return EdgeInsets.all(10);
  }

  @override
  ThemeData getInputThemeCustomizer(ThemeData theme, bool disabled, bool readOnly, bool inCard, String errorMessage) {
    if (errorMessage != null) {
      return theme.copyWith(
          colorScheme: theme.colorScheme.copyWith(primary: theme.colorScheme.secondary),
          textTheme: theme.textTheme.copyWith(
            subtitle1: theme.textTheme.subtitle1.copyWith(fontWeight: FontWeight.w600, fontSize: 16.0, color: theme.errorColor),
          ),
          inputDecorationTheme: theme.inputDecorationTheme.copyWith(
            fillColor: theme.errorColor.withOpacity(0.1),
            hoverColor: theme.errorColor.withOpacity(0.1),
          ),
          iconTheme: theme.iconTheme.copyWith(color: theme.errorColor),
          buttonTheme: theme.buttonTheme.copyWith());
    }
    return theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(primary: theme.colorScheme.secondary),
        textTheme: disabled
            ? theme.textTheme.copyWith(
                subtitle1: theme.textTheme.subtitle1.copyWith(fontWeight: FontWeight.w600, fontSize: 16.0, color: theme.disabledColor),
              )
            : theme.textTheme.copyWith(
                subtitle1: theme.textTheme.subtitle1.copyWith(fontWeight: FontWeight.w600, fontSize: 16.0),
              ),
        inputDecorationTheme: (disabled || readOnly)
            ? theme.inputDecorationTheme.copyWith(filled: false)
            : inCard
                ? theme.inputDecorationTheme.copyWith(
                    fillColor: theme.backgroundColor,
                    hoverColor: theme.cardColor,
                  )
                : null);
  }

  @override
  ThemeData getInputTextThemeCustomizer(ThemeData theme, bool disabled, bool readOnly, bool inCard, String errorMessage) {
    return getInputThemeCustomizer(theme, disabled, readOnly, inCard, errorMessage);
  }

  @override
  ThemeData getInputDateThemeCustomizer(ThemeData theme, bool disabled, bool readOnly, bool inCard, String errorMessage) {
    return getInputThemeCustomizer(theme, disabled, readOnly, inCard, errorMessage);
  }

  @override
  ThemeData getInputDateTimeThemeCustomizer(ThemeData theme, bool disabled, bool readOnly, bool inCard, String errorMessage) {
    return getInputThemeCustomizer(theme, disabled, readOnly, inCard, errorMessage);
  }

  @override
  ThemeData getInputLinkThemeCustomizer(ThemeData theme, bool disabled, bool readOnly, bool inCard, String errorMessage) {
    return getInputThemeCustomizer(theme, disabled, readOnly, inCard, errorMessage).copyWith(
      iconTheme: theme.iconTheme.copyWith(color: theme.colorScheme.secondary),
    );
  }

  @override
  ThemeData getInputNumericTimeThemeCustomizer(ThemeData theme, bool disabled, bool readOnly, bool inCard, String errorMessage) {
    return getInputThemeCustomizer(theme, disabled, readOnly, inCard, errorMessage);
  }

  @override
  ThemeData getInputComboboxThemeCustomizer(ThemeData theme, bool disabled, bool readOnly, bool inCard, String errorMessage) {
    return readOnly
        ? getInputThemeCustomizer(theme, disabled, readOnly, inCard, errorMessage).copyWith(
            disabledColor: theme.unselectedWidgetColor,
          )
        : getInputThemeCustomizer(theme, disabled, readOnly, inCard, errorMessage);
  }

  @override
  ThemeData getSwitchThemeData(ThemeData theme, bool disabled, bool readOnly, String errorMessage) {
    if (errorMessage != null) {
      return theme.copyWith(
        checkboxTheme: theme.checkboxTheme.copyWith(
          fillColor: MaterialStateProperty.all<Color>(theme.errorColor),
          side: BorderSide(width: 2.0, color: theme.errorColor),
        ),
      );
    }
    if (disabled || readOnly) {
      return theme.copyWith(
        checkboxTheme: theme.checkboxTheme.copyWith(
          fillColor: MaterialStateProperty.all<Color>(theme.disabledColor),
          side: BorderSide(width: 2.0, color: theme.disabledColor),
        ),
      );
    }
    return theme;
  }

  @override
  ThemeData getRadioThemeData(ThemeData theme, bool disabled, bool readOnly, bool selected, String errorMessage) {
    if (errorMessage != null) {
      return theme.copyWith(
        radioTheme: theme.radioTheme.copyWith(
          fillColor: MaterialStateProperty.all<Color>(theme.errorColor),
        ),
      );
    }
    if (disabled || readOnly) {
      return theme.copyWith(
        radioTheme: theme.radioTheme.copyWith(
          fillColor: MaterialStateProperty.all<Color>(theme.disabledColor),
        ),
      );
    }
    if (selected) {
      return theme.copyWith(
        radioTheme: theme.radioTheme.copyWith(
          fillColor: MaterialStateProperty.all<Color>(theme.colorScheme.secondary),
        ),
      );
    }
    return theme;
  }

  @override
  ThemeData getTableThemeData(ThemeData theme) {
    return theme.copyWith(
      iconTheme: theme.iconTheme.copyWith(
        color: theme.colorScheme.secondary,
        size: 24,
      ),
    );
  }

  @override
  ThemeData getBreadcrumbThemeCustomizer(ThemeData theme) {
    return theme.copyWith(
        iconTheme: theme.iconTheme.copyWith(
      color: theme.dividerColor,
      size: 20,
    ));
  }

  @override
  ThemeData getFilterThemeCustomizer(ThemeData theme) {
    return theme;
  }

  @override
  ThemeData getMenuTheme(ThemeData theme) {
    return theme.copyWith(primaryColor: theme.colorScheme.secondary, colorScheme: theme.colorScheme.copyWith(primary: theme.colorScheme.secondary));
  }

  @override
  ThemeData getBooleanColorTheme(ThemeData theme, bool value) {
    return theme.copyWith(
        iconTheme: theme.iconTheme.copyWith(
            color: value == null
                ? theme.dividerColor
                : value
                    ? booleanTrueColor
                    : booleanFalseColor));
  }

  @override
  Decoration getInputBoxCustomizer(ThemeData theme, bool disabled, bool readOnly) {
    return (disabled || readOnly) ? null : BoxDecoration(boxShadow: [BoxShadow(color: theme.shadowColor, blurRadius: 4, offset: const Offset(0, 0))]);
  }

  @override
  InputDecoration getInputDecoration(
      ThemeData theme, String label, Icon prefixIcon, Widget suffixIcon, bool mandatory, bool disabled, bool readOnly, String errorMessage,
      {String hintText}) {
    if (errorMessage != null) {
      return InputDecoration(
          labelText: label != null ? (mandatory ? label + ' *' : label) : null,
          prefixIcon: prefixIcon != null
              ? Icon(
                  prefixIcon.icon,
                  color: theme.errorColor,
                )
              : prefixIcon,
          suffixIcon: suffixIcon != null && suffixIcon is Icon
              ? Icon(suffixIcon.icon, color: theme.errorColor)
              : suffixIcon != null && suffixIcon is IconButton
                  ? IconButton(
                      onPressed: suffixIcon.onPressed,
                      icon: suffixIcon.icon,
                      color: theme.errorColor,
                    )
                  : suffixIcon,
          counterText: '',
          hintText: hintText,
          errorText: errorMessage,
          fillColor: theme.errorColor.withOpacity(0.1),
          labelStyle: theme.inputDecorationTheme.labelStyle.copyWith(
            color: theme.errorColor,
          ));
    }
    return InputDecoration(
      labelText: label != null ? (mandatory ? label + ' *' : label) : null,
      prefixIcon: prefixIcon != null && disabled
          ? Icon(
              prefixIcon.icon,
              color: theme.disabledColor,
            )
          : prefixIcon,
      suffixIcon: suffixIcon,
      counterText: '',
      hintText: hintText,
      labelStyle: disabled
          ? theme.inputDecorationTheme.labelStyle.copyWith(
              color: theme.disabledColor,
            )
          : null,
    );
  }

  @override
  InputDecoration getInputTextDecoration(
      ThemeData theme, String label, Icon prefixIcon, Widget suffixIcon, bool mandatory, bool disabled, bool readOnly, bool multiline, String errorMessage) {
    return getInputDecoration(theme, label, prefixIcon, suffixIcon, mandatory, disabled, readOnly, errorMessage).copyWith(
      floatingLabelBehavior: multiline ? FloatingLabelBehavior.always : null,
    );
  }

  @override
  InputDecoration getInputDateDecoration(
      ThemeData theme, String label, Icon prefixIcon, Widget suffixIcon, bool mandatory, bool disabled, bool readOnly, String errorMessage) {
    return getInputDecoration(theme, label, prefixIcon, suffixIcon, mandatory, disabled, readOnly, errorMessage);
  }

  @override
  InputDecoration getInputDateTimeDecoration(
      ThemeData theme, String label, Icon prefixIcon, Widget suffixIcon, bool mandatory, bool disabled, bool readOnly, String errorMessage) {
    return getInputDecoration(theme, label, prefixIcon, suffixIcon, mandatory, disabled, readOnly, errorMessage);
  }

  @override
  InputDecoration getInputLinkDecoration(
      ThemeData theme, String label, Icon prefixIcon, Widget suffixIcon, bool mandatory, bool disabled, bool readOnly, String errorMessage, bool hasFocus) {
    if (hasFocus) {
      return getInputDecoration(theme, label, prefixIcon, suffixIcon, mandatory, disabled, readOnly, errorMessage).copyWith(
        disabledBorder: UnderlineInputBorder(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10.0), topRight: Radius.circular(10.0)),
            borderSide: BorderSide(color: theme.colorScheme.secondary, width: 2)),
        prefixIcon: prefixIcon != null
            ? Icon(
                prefixIcon.icon,
                color: theme.colorScheme.secondary,
              )
            : prefixIcon,
      );
    }
    return getInputDecoration(theme, label, prefixIcon, suffixIcon, mandatory, disabled, readOnly, errorMessage);
  }

  @override
  InputDecoration getInputNumericDecoration(
      ThemeData theme, String label, Icon prefixIcon, Widget suffixIcon, bool mandatory, bool disabled, bool readOnly, String errorMessage) {
    return getInputDecoration(theme, label, prefixIcon, suffixIcon, mandatory, disabled, readOnly, errorMessage);
  }

  @override
  InputDecoration getInputComboboxDecoration(
      ThemeData theme, String label, Icon prefixIcon, Widget suffixIcon, bool mandatory, bool disabled, bool readOnly, String errorMessage) {
    return getInputDecoration(theme, label, prefixIcon, suffixIcon, mandatory, disabled, readOnly, errorMessage);
  }

  @override
  TextStyle getBreadcrumbItemTextStyle(ThemeData theme) {
    return theme.textTheme.headline6.copyWith(fontSize: 16.0);
  }

  @override
  TextStyle getBreadcrumbTitleTextStyle(ThemeData theme) {
    return theme.textTheme.headline4;
  }

  @override
  TextStyle getTableHeaderTextStyle(ThemeData theme) {
    return theme.textTheme.headline4.copyWith(fontSize: 16.0, fontWeight: FontWeight.w600);
  }

  @override
  MaterialStateProperty<Color> getHeadingRowColor(ThemeData theme) {
    return MaterialStateProperty.all(theme.backgroundColor);
  }

  @override
  TextStyle getSwitchTextStyle(ThemeData theme, bool disabled, bool readOnly, String errorMessage) {
    return theme.textTheme.subtitle1.copyWith(
      fontWeight: errorMessage != null ? FontWeight.w600 : FontWeight.w600,
      fontSize: 16.0,
      color: errorMessage != null
          ? theme.errorColor
          : disabled
              ? theme.disabledColor
              : null,
    );
  }

  @override
  TextStyle getRadioTextStyle(ThemeData theme, bool disabled, bool readOnly, String errorMessage) {
    return theme.textTheme.subtitle1.copyWith(
      fontWeight: FontWeight.w600,
      fontSize: 16.0,
      color: errorMessage != null
          ? theme.errorColor
          : disabled
              ? theme.disabledColor
              : null,
    );
  }

  @override
  TextStyle getAppNameTextStyle(ThemeData theme) {
    return theme.textTheme.headline6.copyWith(fontWeight: FontWeight.w900);
  }

  @override
  TextStyle getSloganTextStyle(ThemeData theme) {
    return theme.textTheme.bodyText1.copyWith(
      fontWeight: FontWeight.w300,
    );
  }

  @override
  TextStyle getActorNameTextStyle(ThemeData theme) {
    return theme.textTheme.subtitle1.copyWith(
      fontWeight: FontWeight.w900,
      color: theme.colorScheme.secondary,
    );
  }

  @override
  TextStyle getUserNameTextStyle(ThemeData theme) {
    return theme.textTheme.subtitle1.copyWith(fontWeight: FontWeight.w900);
  }

  @override
  TextStyle getEmailTextStyle(ThemeData theme) {
    return theme.textTheme.subtitle1.copyWith(fontWeight: FontWeight.w100);
  }

  @override
  TextStyle getLabelTextStyle(ThemeData theme) {
    return theme.textTheme.subtitle1.copyWith(fontWeight: FontWeight.w700, fontSize: 25);
  }

  @override
  TextStyle getTitleTextStyle(ThemeData theme) {
    return theme.textTheme.headline1;
  }

  @override
  TextStyle getRowCounterTextStyle(ThemeData theme) {
    return theme.textTheme.caption.copyWith(color: theme.colorScheme.primaryVariant);
  }

  @override
  MaterialStateProperty<Color> getRowColor(ThemeData theme, int index, bool inCard) {
    return MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
      /// All rows will have the same selected color.
      if (states.contains(MaterialState.selected)) {
        return theme.colorScheme.primary.withOpacity(0.08);
      }

      /// Even rows will have a grey color.
      if (index % 2 == 0) {
        return inCard ? theme.backgroundColor : theme.cardColor;
      }
      return inCard ? theme.cardColor : theme.backgroundColor;
    });
  }

  double getContentMargin(BuildContext context) {
    double ceil = 2000;
    double floor = 1300;
    double min_margin = 10;
    double max_margin = 116;
    return ((min(max(floor, MediaQuery.of(context).size.width), ceil) - floor) / (ceil - floor)) * (max_margin - min_margin) + min_margin;
  }

  @override
  IconData getEmptyTableCellIcon() {
    return Icons.remove;
  }

  @override
  Color floatingCardErrorBackgroundColor = Color.fromRGBO(255, 233, 233, 1);

  @override
  Color floatingCardInfoBackgroundColor = Colors.white;

  @override
  Color floatingCardSuccessBackgroundColor = Color.fromRGBO(247, 255, 247, 1);

  @override
  Color floatingCardWarningBackgroundColor = Color.fromRGBO(255, 244, 220, 1);

  @override
  Color floatingCardWarningIconColor = Color.fromRGBO(255, 175, 0, 1);

  @override
  Color floatingCardSuccessIconAndTextColor = Color.fromRGBO(144, 203, 149, 1);

  @override
  Color floatingCardWarningAndInfoTextColor = Color.fromRGBO(60, 65, 102, 1);
}
