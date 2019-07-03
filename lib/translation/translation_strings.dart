import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../l10n/messages_all.dart';

class Translations {
  static Future<Translations> load(Locale locale) {
    final String name =
        (locale.countryCode != null && locale.countryCode.isEmpty)
            ? locale.languageCode
            : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((dynamic _) {
      Intl.defaultLocale = localeName;
      return new Translations();
    });
  }

  static Translations of(BuildContext context) {
    return Localizations.of<Translations>(context, Translations);
  }



  String get language {
    return Intl.message(
      'عربي',
      name: 'language',
    );
  }

  String get appTitle {
    return Intl.message('My Services',
        name: 'appTitle', desc: 'The application title');
  }

  String get noInternetConnection {
    return Intl.message('No Internet Connection',
        name: 'noInternetConnection');
  }

  String get onboardingFirstTitle {
    return Intl.message('Welcome!', name: 'onboardingFirstTitle');
  }

  String get onboardingFirstDescription {
    return Intl.message('Making Friends is easy as waving your hand back and forth in easy step.', name: 'onboardingFirstDescription');
  }

  String get onboardingSecondTitle {
    return Intl.message('Images', name: 'onboardingSecondTitle');
  }

  String get onboardingSecondDescription {
    return Intl.message('Making Images is easy as waving your hand back and forth in easy step.', name: 'onboardingSecondDescription');
  }

  String get onboardingThirdTitle {
    return Intl.message('Videos', name: 'onboardingThirdTitle');
  }

  String get onboardingThirdDescription {
    return Intl.message('Making Videos is easy as waving your hand back and forth in easy step.', name: 'onboardingThirdDescription');
  }

  String get onboardingFouirthTitle {
    return Intl.message('Places', name: 'onboardingFouirthTitle');
  }

  String get onboardingFouirthDescription {
    return Intl.message('Making Places is easy as waving your hand back and forth in easy step.', name: 'onboardingFouirthDescription');
  }

  String get onboardingGetStartedButton {
    return Intl.message('GET STARTED', name: 'onboardingGetStartedButton');
  }
  

  String get authEmailTextFormFieldLabelText {
    return Intl.message('Email', name: 'authEmailTextFormFieldLabelText');
  }

  String get authEmailTextFormFieldLabelError {
    return Intl.message('invaild Email', name: 'authEmailTextFormFieldLabelError');
  }

  String get authPasswordTextFormFieldLabelText {
    return Intl.message('Password', name: 'authPasswordTextFormFieldLabelText');
  }

  String get authPasswordTextFormFieldLabelErrorEmpty {
    return Intl.message('Password is not empty', name: 'authPasswordTextFormFieldLabelErrorEmpty');
  }

  String get authPasswordTextFormFieldLabelErrorMore {
    return Intl.message('Password more than 5 letters', name: 'authPasswordTextFormFieldLabelErrorMore');
  }

  String get authPasswordTextFormFieldLabelErrorLess {
    return Intl.message('Password less than 12 letters', name: 'authPasswordTextFormFieldLabelErrorLess');
  }

  String get authConfirmPasswordTextFormFieldLabelText {
    return Intl.message('Confirm Password', name: 'authConfirmPasswordTextFormFieldLabelText');
  }

  String get authConfirmPasswordTextFormFieldLabelError {
    return Intl.message('Password Not matched', name: 'authConfirmPasswordTextFormFieldLabelError');
  }

  String get authUserNameTextFormFieldLabelText {
    return Intl.message('User Name', name: 'authUserNameTextFormFieldLabelText');
  }

  String get authUserNameTextFormFieldLabelErrorEmpty {
    return Intl.message('user name is not empty', name: 'authUserNameTextFormFieldLabelErrorEmpty');
  }

  String get authUserNameTextFormFieldLabelErrorMore {
    return Intl.message('user name more than 5 letters', name: 'authUserNameTextFormFieldLabelErrorMore');
  }

  String get authUserNameTextFormFieldLabelErrorLess {
    return Intl.message('user name less than 12 letters', name: 'authUserNameTextFormFieldLabelErrorLess');
  }

  String get authLoginShowDialogDeaflut {
    return Intl.message('Something Went Wrong', name: 'authLoginShowDialogDeaflut');
  }

  String get authLoginShowDialogTwo {
    return Intl.message('Email Not Found', name: 'authLoginShowDialogTwo');
  }

  String get authLoginShowDialogThree {
    return Intl.message('Wrong Password', name: 'authLoginShowDialogThree');
  }

  String get authLoginShowDialogTitle {
    return Intl.message('Login', name: 'authLoginShowDialogTitle');
  }

  String get authLoginShowDialogButtonOk {
    return Intl.message('Ok', name: 'authLoginShowDialogButtonOk');
  }

  String get authSignupShowDialogDeaflut {
    return Intl.message('Something Went Wrong', name: 'authSignupShowDialogDeaflut');
  }

  String get authSignupShowDialogTwo {
    return Intl.message('Email Not Found', name: 'authSignupShowDialogTwo');
  }

  String get authSignupShowDialogThree {
    return Intl.message('enter correct email', name: 'authSignupShowDialogThree');
  }

  String get authSignupShowDialogFour {
    return Intl.message('The lowest number of user name is 5 letters', name: 'authSignupShowDialogFour');
  }

  String get authSignupShowDialogFive {
    return Intl.message('The largest  number of user name is 12 letters', name: 'authSignupShowDialogFive');
  }

  String get authSignupShowDialogSix {
    return Intl.message('The lowest number of user password is 5 letters', name: 'authSignupShowDialogSix');
  }

  String get authSignupShowDialogSeven {
    return Intl.message('The largest  number of user password is 12 letters', name: 'authSignupShowDialogSeven');
  }

  String get authSignupShowDialogTitle {
    return Intl.message('Signup', name: 'authSignupShowDialogTitle');
  }

  String get authSignupShowDialogButtonOk {
    return Intl.message('Ok', name: 'authSignupShowDialogButtonOk');
  }

  String get authAppBarTitleLogin {
    return Intl.message('Login', name: 'authAppBarTitleLogin');
  }

  String get authAppBarTitleSignup {
    return Intl.message('Signup', name: 'authAppBarTitleSignup');
  }

  String get authRaisedButtonLogin {
    return Intl.message('Login', name: 'authRaisedButtonLogin');
  }

  String get authRaisedButtonSignup {
    return Intl.message('Signup', name: 'authRaisedButtonSignup');
  }

  String get authSwitchToLogin {
    return Intl.message('Switch To Login', name: 'authSwitchToLogin');
  }

  String get authSwitchToSignup {
    return Intl.message('Switch To Signup', name: 'authSwitchToSignup');
  }

  String get allProblemsAppBarTitle {
    return Intl.message('Home', name: 'allProblemsAppBarTitle');
  }

  String get allProblemsChangePassword {
    return Intl.message('Change Password', name: 'allProblemsChangePassword');
  }

  String get allProblemsContactUs {
    return Intl.message('Contact Us', name: 'allProblemsContactUs');
  }

  String get allProblemsScaffoldMessageOne {
    return Intl.message('Wait untill finish Loading Problems', name: 'allProblemsScaffoldMessageOne');
  }

  String get allProblemsScaffoldMessageTwo {
    return Intl.message('Please Wait ......', name: 'allProblemsScaffoldMessageTwo');
  }

  String get allProblemsNoProblemsFound {
    return Intl.message('No Problems Found!', name: 'allProblemsNoProblemsFound');
  }

  String get allProblemsDrawerNewProblems {
    return Intl.message('New Problems', name: 'allProblemsDrawerNewProblems');
  }

  String get allProblemsDrawerNewProblemsTitle {
    return Intl.message('New Problems', name: 'allProblemsDrawerNewProblemsTitle');
  }

  String get allProblemsDrawerHasProblems {
    return Intl.message('Has Problems', name: 'allProblemsDrawerHasProblems');
  }

  String get allProblemsDrawerHasProblemsTitle {
    return Intl.message('Has Problems', name: 'allProblemsDrawerHasProblemsTitle');
  }

  String get allProblemsDrawerSolveProblems {
    return Intl.message('Solve Problems', name: 'allProblemsDrawerSolveProblems');
  }

  String get allProblemsDrawerSolveProblemsTitle {
    return Intl.message('Solved Problems', name: 'allProblemsDrawerSolveProblemsTitle');
  }

  String get allProblemsDrawerAdmins {
    return Intl.message('Admins', name: 'allProblemsDrawerAdmins');
  }

  String get allProblemsDrawerAdminsTitle {
    return Intl.message('All Admins', name: 'allProblemsDrawerAdminsTitle');
  }

  String get allProblemsDrawerUsers {
    return Intl.message('Users', name: 'allProblemsDrawerUsers');
  }

  String get allProblemsDrawerUsersTitle {
    return Intl.message('All Users', name: 'allProblemsDrawerUsersTitle');
  }

  String get allProblemsDrawerClients {
    return Intl.message('Clients', name: 'allProblemsDrawerClients');
  }

  String get allProblemsDrawerClientsTitle {
    return Intl.message('All Clients', name: 'allProblemsDrawerClientsTitle');
  }

  String get allProblemsDrawerNew {
    return Intl.message('New', name: 'allProblemsDrawerNew');
  }

  String get allProblemsDrawerNewTitle {
    return Intl.message('All New', name: 'allProblemsDrawerNewTitle');
  }

  String get allProblemsDrawerEditProfile {
    return Intl.message('Edit Profile', name: 'allProblemsDrawerEditProfile');
  }

  String get allProblemsDrawerEditProfileImportant {
    return Intl.message('Important', name: 'allProblemsDrawerEditProfileImportant');
  }

  String get allProblemsDrawerLogout {
    return Intl.message('Logout', name: 'allProblemsDrawerLogout');
  }

  String get allProblemsSolvedButtonBefore {
    return Intl.message('Solve', name: 'allProblemsSolvedButtonBefore');
  }

  String get allProblemsSolvedButtonAfter {
    return Intl.message('Solved', name: 'allProblemsSolvedButtonAfter');
  }

  String get allProblemsHasProblemButtonBefore {
    return Intl.message('has Problem', name: 'allProblemsHasProblemButtonBefore');
  }

  String get allProblemsHasProblemButtonAfter {
    return Intl.message('has Problem', name: 'allProblemsHasProblemButtonAfter');
  }

  String get allProblemsReservedButtonBefore {
    return Intl.message('Reserve', name: 'allProblemsReservedButtonBefore');
  }

  String get allProblemsReservedButtonAfter {
    return Intl.message('Reserved', name: 'allProblemsReservedButtonAfter');
  }

  String get allProblemsComments {
    return Intl.message('Comments', name: 'allProblemsComments');
  }

  String get allProblemsMore {
    return Intl.message('More', name: 'allProblemsMore');
  }

  String get allProblemsSolveProblemScaffoldOne {
    return Intl.message('Can Not Solve Problem For Problem that has Problem', name: 'allProblemsSolveProblemScaffoldOne');
  }

  String get allProblemsSolveProblemShowDialogOneTitle {
    return Intl.message('Solve Problem', name: 'allProblemsSolveProblemShowDialogOneTitle');
  }

  String get allProblemsSolveProblemShowDialogOneMessage {
    return Intl.message('Are You Sure About Solve This Problem ?', name: 'allProblemsSolveProblemShowDialogOneMessage');
  }

  String get allProblemsSolveProblemShowDialogOneCancel {
    return Intl.message('Cancel', name: 'allProblemsSolveProblemShowDialogOneCancel');
  }

  String get allProblemsSolveProblemShowDialogOneOk {
    return Intl.message('Solve Problem', name: 'allProblemsSolveProblemShowDialogOneOk');
  }

  String get allProblemsSolveProblemShowDialogTwoDeaflut {
    return Intl.message('Something Went Wrong', name: 'allProblemsSolveProblemShowDialogTwoDeaflut');
  }

  String get allProblemsSolveProblemShowDialogTwoOne {
    return Intl.message('Problem Solved', name: 'allProblemsSolveProblemShowDialogTwoOne');
  }

  String get allProblemsSolveProblemShowDialogTwoTwo {
    return Intl.message('user not found', name: 'allProblemsSolveProblemShowDialogTwoTwo');
  }

  String get allProblemsSolveProblemShowDialogTwoThree {
    return Intl.message('problem not found', name: 'allProblemsSolveProblemShowDialogTwoThree');
  }

  String get allProblemsSolveProblemShowDialogTwoFour {
    return Intl.message('you are not owner for this problem', name: 'allProblemsSolveProblemShowDialogTwoFour');
  }

  String get allProblemsSolveProblemShowDialogTwoFive {
    return Intl.message('can not solve problem because it has problem', name: 'allProblemsSolveProblemShowDialogTwoFive');
  }

  String get allProblemsSolveProblemShowDialogTwoSix {
    return Intl.message('problem solved before', name: 'allProblemsSolveProblemShowDialogTwoSix');
  }

  String get allProblemsSolveProblemShowDialogTwoTitle {
    return Intl.message('Solve Problem', name: 'allProblemsSolveProblemShowDialogTwoTitle');
  }

  String get allProblemsSolveProblemShowDialogTwoButtonOk {
    return Intl.message('Ok', name: 'allProblemsSolveProblemShowDialogTwoButtonOk');
  }

  String get allProblemsHasProblemScaffoldOne {
    return Intl.message('Can Not Add Has Problem For Solved Problem', name: 'allProblemsHasProblemScaffoldOne');
  }

  String get allProblemsHasProblemShowDialogOneTitle {
    return Intl.message('Has Problem', name: 'allProblemsHasProblemShowDialogOneTitle');
  }

  String get allProblemsHasProblemShowDialogOneMessage {
    return Intl.message('Are You Sure About Has Problem for This Problem ?', name: 'allProblemsHasProblemShowDialogOneMessage');
  }

  String get allProblemsHasProblemShowDialogOneCancel {
    return Intl.message('Cancel', name: 'allProblemsHasProblemShowDialogOneCancel');
  }

  String get allProblemsHasProblemShowDialogOneOk {
    return Intl.message('Has Problem', name: 'allProblemsHasProblemShowDialogOneOk');
  }

  String get allProblemsHasProblemShowDialogTwoDeaflut {
    return Intl.message('Something Went Wrong', name: 'allProblemsHasProblemShowDialogTwoDeaflut');
  }

  String get allProblemsHasProblemShowDialogTwoOne {
    return Intl.message('Problem Has Problem', name: 'allProblemsHasProblemShowDialogTwoOne');
  }

  String get allProblemsHasProblemShowDialogTwoTwo {
    return Intl.message('user not found', name: 'allProblemsHasProblemShowDialogTwoTwo');
  }

  String get allProblemsHasProblemShowDialogTwoThree {
    return Intl.message('problem not found', name: 'allProblemsHasProblemShowDialogTwoThree');
  }

  String get allProblemsHasProblemShowDialogTwoFour {
    return Intl.message('you are not owner for this problem', name: 'allProblemsHasProblemShowDialogTwoFour');
  }

  String get allProblemsHasProblemShowDialogTwoFive {
    return Intl.message('can not has problem because it solved problem', name: 'allProblemsHasProblemShowDialogTwoFive');
  }

  String get allProblemsHasProblemShowDialogTwoSix {
    return Intl.message('problem has problem before', name: 'allProblemsHasProblemShowDialogTwoSix');
  }

  String get allProblemsHasProblemShowDialogTwoSeven {
    return Intl.message('reserve date time not come yet', name: 'allProblemsHasProblemShowDialogTwoSeven');
  }

  String get allProblemsHasProblemShowDialogTwoEgiht {
    return Intl.message('you did not spent one day for problem', name: 'allProblemsHasProblemShowDialogTwoEgiht');
  }

  String get allProblemsHasProblemShowDialogTwoTitle {
    return Intl.message('Has Problem', name: 'allProblemsHasProblemShowDialogTwoTitle');
  }

  String get allProblemsHasProblemShowDialogTwoButtonOk {
    return Intl.message('Ok', name: 'allProblemsHasProblemShowDialogTwoButtonOk');
  }

  String get allProblemsRemoveHasProblemShowDialogOneTitle {
    return Intl.message('Remove Has Problem', name: 'allProblemsRemoveHasProblemShowDialogOneTitle');
  }

  String get allProblemsRemoveHasProblemShowDialogOneMessage {
    return Intl.message('Are You Sure About Remove Has Problem for This Problem ?', name: 'allProblemsRemoveHasProblemShowDialogOneMessage');
  }

  String get allProblemsRemoveHasProblemShowDialogOneCancel {
    return Intl.message('Cancel', name: 'allProblemsRemoveHasProblemShowDialogOneCancel');
  }

  String get allProblemsRemoveHasProblemShowDialogOneOk {
    return Intl.message('Remove Has Problem', name: 'allProblemsRemoveHasProblemShowDialogOneOk');
  }

  String get allProblemsRemoveHasProblemShowDialogTwoDeaflut {
    return Intl.message('Something Went Wrong', name: 'allProblemsRemoveHasProblemShowDialogTwoDeaflut');
  }

  String get allProblemsRemoveHasProblemShowDialogTwoOne {
    return Intl.message('Problem Has Problem', name: 'allProblemsRemoveHasProblemShowDialogTwoOne');
  }

  String get allProblemsRemoveHasProblemShowDialogTwoTwo {
    return Intl.message('user not found', name: 'allProblemsRemoveHasProblemShowDialogTwoTwo');
  }

  String get allProblemsRemoveHasProblemShowDialogTwoThree {
    return Intl.message('problem not found', name: 'allProblemsRemoveHasProblemShowDialogTwoThree');
  }

  String get allProblemsRemoveHasProblemShowDialogTwoFour {
    return Intl.message('you are not owner for this problem', name: 'allProblemsRemoveHasProblemShowDialogTwoFour');
  }

  String get allProblemsRemoveHasProblemShowDialogTwoFive {
    return Intl.message('this problem not has problem', name: 'allProblemsRemoveHasProblemShowDialogTwoFive');
  }

  String get allProblemsRemoveHasProblemShowDialogTwoTitle {
    return Intl.message('Remove Has Problem', name: 'allProblemsRemoveHasProblemShowDialogTwoTitle');
  }

  String get allProblemsRemoveHasProblemShowDialogTwoButtonOk {
    return Intl.message('Ok', name: 'allProblemsRemoveHasProblemShowDialogTwoButtonOk');
  }

  String get allProblemsDeleteProblemShowDialogOneTitle {
    return Intl.message('Delete Problem', name: 'allProblemsDeleteProblemShowDialogOneTitle');
  }

  String get allProblemsDeleteProblemShowDialogOneMessage {
    return Intl.message('Are You Sure About Delete This Problem ?', name: 'allProblemsDeleteProblemShowDialogOneMessage');
  }

  String get allProblemsDeleteProblemShowDialogOneCancel {
    return Intl.message('Cancel', name: 'allProblemsDeleteProblemShowDialogOneCancel');
  }

  String get allProblemsDeleteProblemShowDialogOneOk {
    return Intl.message('Problem Delete', name: 'allProblemsDeleteProblemShowDialogOneOk');
  }

  String get allProblemsDeleteProblemShowDialogTwoDeaflut {
    return Intl.message('Something Went Wrong', name: 'allProblemsDeleteProblemShowDialogTwoDeaflut');
  }

  String get allProblemsDeleteProblemShowDialogTwoOne {
    return Intl.message('Problem Deleted', name: 'allProblemsDeleteProblemShowDialogTwoOne');
  }

  String get allProblemsDeleteProblemShowDialogTwoTwo {
    return Intl.message('user not found', name: 'allProblemsDeleteProblemShowDialogTwoTwo');
  }

  String get allProblemsDeleteProblemShowDialogTwoThree {
    return Intl.message('problem not found', name: 'allProblemsDeleteProblemShowDialogTwoThree');
  }

  String get allProblemsDeleteProblemShowDialogTwoFour {
    return Intl.message('you are not the problem owner', name: 'allProblemsDeleteProblemShowDialogTwoFour');
  }

  String get allProblemsDeleteProblemShowDialogTwoTitle {
    return Intl.message('Delete Problem', name: 'allProblemsDeleteProblemShowDialogTwoTitle');
  }

  String get allProblemsDeleteProblemShowDialogTwoButtonOk {
    return Intl.message('Ok', name: 'allProblemsDeleteProblemShowDialogTwoButtonOk');
  }

  String get allProblemsReserveProblemScaffoldMessage {
    return Intl.message('This Problem Already Solved', name: 'allProblemsReserveProblemScaffoldMessage');
  }

  String get allProblemsReserveProblemSBTitle {
    return Intl.message('Reserve Problem', name: 'allProblemsReserveProblemSBTitle');
  }
  
  String get allProblemsReserveProblemSBSelectDate {
    return Intl.message('Select DateTime', name: 'allProblemsReserveProblemSBSelectDate');
  }

  String get allProblemsReserveProblemScaffoldMessageTwo {
    return Intl.message('Reserve Date Should be After', name: 'allProblemsReserveProblemScaffoldMessageTwo');
  }

  String get allProblemsReserveProblemScaffoldMessageThreeDeaflut {
    return Intl.message('Something Went Wrong', name: 'allProblemsReserveProblemScaffoldMessageThreeDeaflut');
  }

  String get allProblemsReserveProblemScaffoldMessageThreeOne {
    return Intl.message('Problem Reserved', name: 'allProblemsReserveProblemScaffoldMessageThreeOne');
  }

  String get allProblemsReserveProblemScaffoldMessageThreeTwo {
    return Intl.message('user not found', name: 'allProblemsReserveProblemScaffoldMessageThreeTwo');
  }

  String get allProblemsReserveProblemScaffoldMessageThreeThree {
    return Intl.message('enter correct date time like 1991-05-11 11:58:45', name: 'allProblemsReserveProblemScaffoldMessageThreeThree');
  }

  String get allProblemsReserveProblemScaffoldMessageThreeFour {
    return Intl.message('problem not found', name: 'allProblemsReserveProblemScaffoldMessageThreeFour');
  }

  String get allProblemsReserveProblemScaffoldMessageThreeFive {
    return Intl.message('you can not reserve this problem because it reserved before', name: 'allProblemsReserveProblemScaffoldMessageThreeFive');
  }

  String get allProblemsReserveProblemScaffoldMessageThreeSix {
    return Intl.message('your user type is not user to reserve this problem', name: 'allProblemsReserveProblemScaffoldMessageThreeSix');
  }

  String get allProblemsReserveProblemScaffoldMessageThreeSeven {
    return Intl.message('enter datetime after problem datetime', name: 'allProblemsReserveProblemScaffoldMessageThreeSeven');
  }

  String get allProblemsReserveProblemButton {
    return Intl.message('Reserve Problem', name: 'allProblemsReserveProblemButton');
  }

  String get problemPageScaffoldMessageCommentsLess {
    return Intl.message('The lowest number of comment is 5 letters', name: 'problemPageScaffoldMessageCommentsLess');
  }

  String get problemPageScaffoldMessageCommentsMore {
    return Intl.message('The largest  number of comment is 350 letters', name: 'problemPageScaffoldMessageCommentsMore');
  }

  String get problemPageShowDialogTitle {
    return Intl.message('Add Comment', name: 'problemPageShowDialogTitle');
  }

  String get problemPageShowDialogOk {
    return Intl.message('Ok', name: 'problemPageShowDialogOk');
  }

  String get problemPageShowDialogDefualt {
    return Intl.message('Something Went Wrong', name: 'problemPageShowDialogDefualt');
  }

  String get problemPageShowDialogOne {
    return Intl.message('Comment Added', name: 'problemPageShowDialogOne');
  }

  String get problemPageShowDialogTwo {
    return Intl.message('user not found', name: 'problemPageShowDialogTwo');
  }

  String get problemPageShowDialogThree {
    return Intl.message('please enter correct problem_id', name: 'problemPageShowDialogThree');
  }

  String get problemPageShowDialogFour {
    return Intl.message('this problem is solved', name: 'problemPageShowDialogFour');
  }

  String get problemPageShowDialogFive {
    return Intl.message('not allow to add has problem', name: 'problemPageShowDialogFive');
  }

  String get problemPageShowDialogSix {
    return Intl.message('The lowest number of comment is 5 letters', name: 'problemPageShowDialogSix');
  }

  String get problemPageShowDialogSeven {
    return Intl.message('The largest  number of comment is 350 letters', name: 'problemPageShowDialogSeven');
  }

  String get problemPageNoComments {
    return Intl.message('No Comments', name: 'problemPageNoComments');
  }

  String get problemPageScaffoldTitle {
    return Intl.message('Problem', name: 'problemPageScaffoldTitle');
  }

  String get problemPageCommentLabel {
    return Intl.message('Enter Your Comment', name: 'problemPageCommentLabel');
  }

  String get userTypeNoUsersFounded {
    return Intl.message('No Users Found!', name: 'userTypeNoUsersFounded');
  }

  String get userTypeShowDialogTitle {
    return Intl.message('Change User Type', name: 'userTypeShowDialogTitle');
  }

  String get userTypeShowDialogOk {
    return Intl.message('Ok', name: 'userTypeShowDialogOk');
  }

  String get userTypeShowDialogDefualt {
    return Intl.message('Something Went Wrong', name: 'userTypeShowDialogDefualt');
  }

  String get userTypeShowDialogOne {
    return Intl.message('User Type Changed', name: 'userTypeShowDialogOne');
  }

  String get userTypeShowDialogTwo {
    return Intl.message('please Login first', name: 'userTypeShowDialogTwo');
  }

  String get userTypeShowDialogThree {
    return Intl.message('you are not owner or admin', name: 'userTypeShowDialogThree');
  }

  String get userTypeShowDialogFour {
    return Intl.message('user not found', name: 'userTypeShowDialogFour');
  }

  String get userTypeShowDialogFive {
    return Intl.message('this client has problem not solved yet.', name: 'userTypeShowDialogFive');
  }

  String get userTypeShowDialogSix {
    return Intl.message('this user has reserved problem not solved yet.', name: 'userTypeShowDialogSix');
  }

  String get userTypeShowDialogSeven {
    return Intl.message('this client has problem not solved yet.', name: 'userTypeShowDialogSeven');
  }

  String get userTypeShowDialogTeen {
    return Intl.message('this user has reserved problem not solved yet.', name: 'userTypeShowDialogTeen');
  }

  String get userTypeShowDialogEleven {
    return Intl.message('you are not owner to set type', name: 'userTypeShowDialogEleven');
  }

  String get userTypeShowDialogTwelve {
    return Intl.message('only owner who can change admin type.', name: 'userTypeShowDialogTwelve');
  }

  String get userTypeShowDialogThirty {
    return Intl.message('only owner who can change admin type.', name: 'userTypeShowDialogThirty');
  }

  String get userTypeShowDialogFouirty {
    return Intl.message('can not change to same Type', name: 'userTypeShowDialogFouirty');
  }

  String get userTypeChangeButtonText {
    return Intl.message('Change', name: 'userTypeChangeButtonText');
  }

  String get userTypeChangeButtonAdmin {
    return Intl.message('Admin', name: 'userTypeChangeButtonAdmin');
  }

  String get userTypeChangeButtonUser {
    return Intl.message('User', name: 'userTypeChangeButtonUser');
  }

  String get userTypeChangeButtonClient {
    return Intl.message('Client', name: 'userTypeChangeButtonClient');
  }

  String get userTypeDeleteShowDialogOneTitle {
    return Intl.message('Delete User', name: 'userTypeDeleteShowDialogOneTitle');
  }

  String get userTypeDeleteShowDialogOneMessage {
    return Intl.message('Are You Sure About Delete This User ?', name: 'userTypeDeleteShowDialogOneMessage');
  }

  String get userTypeDeleteShowDialogOneCancel {
    return Intl.message('Cancel', name: 'userTypeDeleteShowDialogOneCancel');
  }

  String get userTypeDeleteShowDialogOneOk {
    return Intl.message('Delete', name: 'userTypeDeleteShowDialogOneOk');
  }

  String get userTypeDeleteShowDialogTwoDeaflut {
    return Intl.message('Something Went Wrong', name: 'userTypeDeleteShowDialogTwoDeaflut');
  }

  String get userTypeDeleteShowDialogTwoOne {
    return Intl.message('User Deleted', name: 'userTypeDeleteShowDialogTwoOne');
  }

  String get userTypeDeleteShowDialogTwoTwo {
    return Intl.message('please Login first', name: 'userTypeDeleteShowDialogTwoTwo');
  }

  String get userTypeDeleteShowDialogTwoThree {
    return Intl.message('you are not owner', name: 'userTypeDeleteShowDialogTwoThree');
  }

  String get userTypeDeleteShowDialogTwoFour {
    return Intl.message('user not found', name: 'userTypeDeleteShowDialogTwoFour');
  }

  String get userTypeDeleteShowDialogTwoFive {
    return Intl.message('this owner and can not delete owner', name: 'userTypeDeleteShowDialogTwoFive');
  }

  String get userTypeDeleteShowDialogTwoSix {
    return Intl.message('you are not owner', name: 'userTypeDeleteShowDialogTwoSix');
  }

  String get userTypeDeleteShowDialogTwoTitle {
    return Intl.message('Delete User', name: 'userTypeDeleteShowDialogTwoTitle');
  }

  String get userTypeDeleteShowDialogTwoButtonOk {
    return Intl.message('Ok', name: 'userTypeDeleteShowDialogTwoButtonOk');
  }

  String get contactdeveloperAppBarTitle {
    return Intl.message('Developer Contact Information', name: 'contactdeveloperAppBarTitle');
  }

  String get contactdeveloperName {
    return Intl.message('Ahmed Taha Abdallah', name: 'contactdeveloperName');
  }

  String get editprofileUserNameLabel {
    return Intl.message('User Name', name: 'editprofileUserNameLabel');
  }

  String get editprofileUserNameErrorEmpty {
    return Intl.message('User Name Empty', name: 'editprofileUserNameErrorEmpty');
  }

  String get editprofileUserNameErrorLess {
    return Intl.message('The lowest number of user name is 5 letters', name: 'editprofileUserNameErrorLess');
  }

  String get editprofileUserNameErrorMore {
    return Intl.message('The largest  number of user name is 12 letters', name: 'editprofileUserNameErrorMore');
  }

  String get editprofileUserMobileLabel {
    return Intl.message('Mobile Number', name: 'editprofileUserMobileLabel');
  }

  String get editprofileUserMobileErrorEmpty {
    return Intl.message('Mobile Number Empty', name: 'editprofileUserMobileErrorEmpty');
  }

  String get editprofileUserMobileErrorWrong {
    return Intl.message('wrong mobile number', name: 'editprofileUserMobileErrorWrong');
  }

  String get editprofileAddressLabel {
    return Intl.message('Address', name: 'editprofileAddressLabel');
  }

  String get editprofileAddressErrorEmpty {
    return Intl.message('Address empty', name: 'editprofileAddressErrorEmpty');
  }

  String get editprofileAddressErrorLess {
    return Intl.message('The lowest number of user address is 5 letters', name: 'editprofileAddressErrorLess');
  }

  String get editprofileAddressErrorMore {
    return Intl.message('The largest  number of user address is 250 letters', name: 'editprofileAddressErrorMore');
  }

  String get editprofileShowDialogTitle {
    return Intl.message('Edit User Profile', name: 'editprofileShowDialogTitle');
  }

  String get editprofileShowDialogOk {
    return Intl.message('Ok', name: 'editprofileShowDialogOk');
  }

  String get editprofileShowDialogDeaflut {
    return Intl.message('Something Went Wrong', name: 'editprofileShowDialogDeaflut');
  }

  String get editprofileShowDialogOne {
    return Intl.message('user updated', name: 'editprofileShowDialogOne');
  }

  String get editprofileShowDialogTwo {
    return Intl.message('user not found', name: 'editprofileShowDialogTwo');
  }

  String get editprofileShowDialogThree {
    return Intl.message('The lowest number of user name is 5 letters', name: 'editprofileShowDialogThree');
  }

  String get editprofileShowDialogFour {
    return Intl.message('The largest  number of user name is 12 letters', name: 'editprofileShowDialogFour');
  }

  String get editprofileShowDialogFive {
    return Intl.message('wrong mobile number', name: 'editprofileShowDialogFive');
  }

  String get editprofileShowDialogSix {
    return Intl.message('The lowest number of user address is 5 letters', name: 'editprofileShowDialogSix');
  }

  String get editprofileShowDialogSeven {
    return Intl.message('The largest  number of user address is 250 letters', name: 'editprofileShowDialogSeven');
  }

  String get editprofileShowDialogTwoTitle {
    return Intl.message('Error', name: 'editprofileShowDialogTwoTitle');
  }

  String get editprofileShowDialogTwoOk {
    return Intl.message('Ok', name: 'editprofileShowDialogTwoOk');
  }

  String get editprofileSaveButton {
    return Intl.message('Save', name: 'editprofileSaveButton');
  }

  String get editprofileAppBarTitle {
    return Intl.message('Edit Profile', name: 'editprofileAppBarTitle');
  }

  String get changePasswrdLabel {
    return Intl.message('Password', name: 'changePasswrdLabel');
  }

  String get changePasswrdErrorEmpty {
    return Intl.message('empty Password', name: 'changePasswrdErrorEmpty');
  }

  String get changePasswrdErrorLess {
    return Intl.message('The lowest number of user password is 5 letters', name: 'changePasswrdErrorLess');
  }

  String get changePasswrdErrorMore {
    return Intl.message('The largest  number of user password is 12 letters', name: 'changePasswrdErrorMore');
  }

  String get changePasswrdShowDialogTitle {
    return Intl.message('Password Change', name: 'changePasswrdShowDialogTitle');
  }

  String get changePasswrdShowDialogOk {
    return Intl.message('Ok', name: 'changePasswrdShowDialogOk');
  }

  String get changePasswrdShowDialogDeaflut {
    return Intl.message('Something Went Wrong', name: 'changePasswrdShowDialogDeaflut');
  }

  String get changePasswrdShowDialogOne {
    return Intl.message('Pssword Changed', name: 'changePasswrdShowDialogOne');
  }

  String get changePasswrdShowDialogTwo {
    return Intl.message('user not found', name: 'changePasswrdShowDialogTwo');
  }

  String get changePasswrdShowDialogThree {
    return Intl.message('The lowest number of user password is 5 letters', name: 'changePasswrdShowDialogThree');
  }

  String get changePasswrdShowDialogFour {
    return Intl.message('The largest  number of user password is 12 letters', name: 'changePasswrdShowDialogFour');
  }

  String get changePasswrdShowDialogTwoTitle {
    return Intl.message('Error', name: 'changePasswrdShowDialogTwoTitle');
  }

  String get changePasswrdShowDialogTwoOk {
    return Intl.message('Ok', name: 'changePasswrdShowDialogTwoOk');
  }

  String get changePasswrdSaveButton {
    return Intl.message('Save', name: 'changePasswrdSaveButton');
  }

  String get changePasswrdAppBarTitle {
    return Intl.message('Change Password', name: 'changePasswrdAppBarTitle');
  }

  String get addProblemLabel {
    return Intl.message('Problem Description', name: 'addProblemLabel');
  }

  String get addProblemErrorEmpty {
    return Intl.message('empty Description', name: 'addProblemErrorEmpty');
  }

  String get addProblemErrorLess {
    return Intl.message('The lowest number of Description is 10 letters', name: 'addProblemErrorLess');
  }

  String get addProblemErrorMore {
    return Intl.message('The largest  number of Description is 250 letters', name: 'addProblemErrorMore');
  }

  String get addProblemShowDialogTitle {
    return Intl.message('Add Problem', name: 'addProblemShowDialogTitle');
  }

  String get addProblemShowDialogOk {
    return Intl.message('Ok', name: 'addProblemShowDialogOk');
  }

  String get addProblemShowDialogDeaflut {
    return Intl.message('Something Went Wrong', name: 'addProblemShowDialogDeaflut');
  }

  String get addProblemShowDialogOne {
    return Intl.message('Problem Added', name: 'addProblemShowDialogOne');
  }

  String get addProblemShowDialogTwo {
    return Intl.message('user not found', name: 'addProblemShowDialogTwo');
  }

  String get addProblemShowDialogThree {
    return Intl.message('you are not client to add problem', name: 'addProblemShowDialogThree');
  }

  String get addProblemShowDialogFour {
    return Intl.message('The lowest number of problem description is 10 letters', name: 'addProblemShowDialogFour');
  }

  String get addProblemShowDialogFive {
    return Intl.message('The largest  number of problem description is 250 letters', name: 'addProblemShowDialogFive');
  }

  String get addProblemShowDialogTwoTitle {
    return Intl.message('Error', name: 'addProblemShowDialogTwoTitle');
  }

  String get addProblemShowDialogTwoOk {
    return Intl.message('Ok', name: 'addProblemShowDialogTwoOk');
  }

  String get addProblemSaveButton {
    return Intl.message('Add Problem', name: 'addProblemSaveButton');
  }

  String get addProblemAppBarTitle {
    return Intl.message('Add Problem', name: 'addProblemAppBarTitle');
  }

  String get customCircleAvaterError {
    return Intl.message('Error', name: 'customCircleAvaterError');
  }

  String get imagePickAnImage {
    return Intl.message('Pick an Image', name: 'imagePickAnImage');
  }

  String get imageUseCamera {
    return Intl.message('Use Camera', name: 'imageUseCamera');
  }

  String get imageUseGallery {
    return Intl.message('Use Gallery', name: 'imageUseGallery');
  }

  String get imagePleasePickAnImage {
    return Intl.message('Please Pick An Image', name: 'imagePleasePickAnImage');
  }

  String get imageCanNotloadProductImage {
    return Intl.message('Can not load User Image.', name: 'imageCanNotloadProductImage');
  }

  String get imageAddImage {
    return Intl.message('Add Image', name: 'imageAddImage');
  }
  
}
