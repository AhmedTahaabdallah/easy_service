import 'package:flutter/material.dart';

List<dynamic> getResponseve(BuildContext cont) {
  List<dynamic> myValues = [];
  final double width = MediaQuery.of(cont).size.width;
  //final double height = MediaQuery.of(cont).size.height;
  //final String orient = MediaQuery.of(cont).orientation.toString();

  final bool isSmall = width <= 330.0; // small screen with portrait Orientation
  final bool isMedium = width <=
      540.0; // small screen with landscape Orientation and normall screen with portrait Orientation
  final bool isNormal = width <=
      768.0; // large screen with portrait Orientation and normall screen with landscape Orientation
  final bool isLarge = width <=
      992.0; // large screen with landscape Orientation and Xlarge screen with portrait Orientation
  final bool isXlarge =
      width <= 1550.0; // Xlarge screen with landscape Orientation
  Locale mylocale = Localizations.localeOf(cont);
  //myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 16.0 - 5.0); // 2 BottomNavigationBarItem Text Font Size
  if (isSmall) {

    // onboarding Screen isSmall
    myValues.add(.05); // 0 Screen Width
    myValues.add(.15); // 1 Screen Width
    myValues.add(80.0); // 2 Icon Size
    myValues.add(60.0); // 3 Icon Size
    myValues.add(0.0); // 4 Icon Offset
    myValues.add(-60.0); // 5 Icon Offset
    myValues.add(-40.0); // 6 Icon Offset
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 26.0 - 5.0); // 7 title font size
    myValues.add(0.0); // 8 title Offset 1
    myValues.add(-45.0); // 9 title Offset 2
    myValues.add(-20.0); // 10 title Offset 3
    myValues.add(.06); // 11 description padding right
    myValues.add(.06); // 12 description padding left
    myValues.add(2.0); // 13 description padding top 1
    myValues.add(5.0); // 14 description padding top 2
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 15 description font size
    myValues.add(0.0); // 16 description Offset 1
    myValues.add(-25.0); // 17 description Offset 2
    myValues.add(-20.0); // 18 description Offset 3
    myValues.add(0.0); // 19 PageIndicator Offset 1
    myValues.add(100.0); // 20 PageIndicator Offset 2
    myValues.add(50.0); // 21 PageIndicator Offset 3
    myValues.add(24.0); // 22 Get Start padding bottom 1
    myValues.add(15.0); // 23 Get Start padding bottom 2
    myValues.add(50.0); // 24 Get Start sized box hieght
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 25 Get Start font size
    myValues.add(1.0); // 26 Get Start letter Spacing
    myValues.add(8.0); // 27 PageViewIndicator Circle size 1
    myValues.add(12.0); // 28 PageViewIndicator Circle size 2

    // auth screen isSmall
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 29 AppBar Title font size
    myValues.add(15.0); // 30 contianer padding
    myValues.add(10.0); // 31 sized box height 1
    myValues.add(10.0); // 32 sized box height 2
    myValues.add(10.0); // 33 sized box height 3
    myValues.add(10.0); // 34 sized box height 4
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 35 login and sigup button font size
    myValues.add(10.0); // 36 sized box height 5
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 37 switch login and sigup button font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 38 email text font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 39 email lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 40 email error font size
    myValues.add(30.0); // 41 email icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 42 password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 18.0 - 5.0); // 43 password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 44 password error font size
    myValues.add(30.0); // 45 password icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 46 confirm password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 47 confirm password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 48 confirm password error font size
    myValues.add(30.0); // 49 confirm password icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 50 user name text font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 51 user name lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 52 user name error font size
    myValues.add(3.0); // 53 user name icon size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 54 login showdialog title font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 55 login showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 56 login showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 57 login showdialog title font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 58 login showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 59 login showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 60 SnackBar font size

    // allproblems screen isSmall
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 61 AppBar Title font size
    myValues.add(15.0); // 62 menue icon button padding right
    myValues.add(15.0); // 63 menue icon button padding left
    myValues.add(30.0); // 64 menue icon button size
    myValues.add(30.0); // 65 add problem icon button size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 66 add problem icon button SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 67 add problem icon button SnackBar font size 2
    myValues.add(10.0); // 68 popupMenu padding right
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 69 popupMenu change password font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 70 popupMenu language font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 71 popupMenu contact us font size
    myValues.add(30.0); // 72 popupMenu icon button size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 73 Problem List  No Problems Found font size
    myValues.add(25.0); // 74 Drawer list view padding top
    
    // firstsection isSmall
    myValues.add(mylocale.languageCode.contains("en") ? 10.0 : 2.0); // 75 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 2.0 : 10.0); // 76 CustomCircleAvatar padding left
    myValues.add(0.0); // 77 CustomCircleAvatar padding bottom
    myValues.add(55.0); // 78 CustomCircleAvatar radius
    myValues.add(20.0); // 79 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 80 user name font size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 20.0 - 5.0); // 81 user type name font size

    // secondsection isSmall
    myValues.add(10.0); // 82 main padding top
    myValues.add(5.0); // 83 main padding left
    myValues.add(5.0); // 84 main padding right
    myValues.add(10.0); // 85 main padding bottom

    myValues.add(8.0); // 86 new problems padding top
    myValues.add(5.0); // 87 new padding left
    myValues.add(5.0); // 88 new padding right
    myValues.add(8.0); // 89 new padding bottom
    myValues.add(32.0); // 90 icon size
    myValues.add(8.0); // 91 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 92 new problems font size
    myValues.add(8.0); // 93 BorderRadius
    myValues.add(8.0); // 94 new problems count padding right
    myValues.add(8.0); // 95 new padding count left
    myValues.add(5.0); // 96 new padding count top
    myValues.add(5.0); // 97 new padding count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 98 new problems count font size

    myValues.add(8.0); // 99 has problems padding top
    myValues.add(8.0); // 100 has problems padding bottom
    myValues.add(5.0); // 101 has problems padding right
    myValues.add(5.0); // 102 has problems padding left
    myValues.add(32.0); // 103 icon size
    myValues.add(8.0); // 104 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 105 has problems font size
    myValues.add(8.0); // 106 BorderRadius
    myValues.add(8.0); // 107 has problems count padding right
    myValues.add(8.0); // 108 has problems count padding left
    myValues.add(5.0); // 109 has problems count padding top
    myValues.add(5.0); // 110 has problems count padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 111 has problems count font size

    myValues.add(8.0); // 112 solved problems padding top
    myValues.add(8.0); // 113 solved problems padding bottom
    myValues.add(5.0); // 114 solved problems padding right
    myValues.add(5.0); // 115 solved problems padding left
    myValues.add(32.0); // 116 icon size
    myValues.add(8.0); // 117 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 118 solved problems font size
    myValues.add(8.0); // 119 BorderRadius
    myValues.add(8.0); // 120 solved problems count padding right
    myValues.add(8.0); // 121 solved problems count padding left
    myValues.add(5.0); // 122 solved problems count padding top
    myValues.add(5.0); // 123 solved problems count padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 124 solved problems count font size

    // thirdsection isSmall
    myValues.add(10.0); // 125 main padding top
    myValues.add(5.0); // 126 main padding left
    myValues.add(5.0); // 127 main padding right
    myValues.add(10.0); // 128 main padding bottom

    myValues.add(8.0); // 129 admins padding top
    myValues.add(5.0); // 130 admins left
    myValues.add(5.0); // 131 admins right
    myValues.add(8.0); // 132 admins bottom
    myValues.add(32.0); // 133 icon size
    myValues.add(8.0); // 134 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 135 admins font size
    myValues.add(8.0); // 136 BorderRadius
    myValues.add(8.0); // 137 admins count padding right
    myValues.add(8.0); // 138 admins count left
    myValues.add(5.0); // 139 admins count top
    myValues.add(5.0); // 140 admins count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 141 admins count font size

    myValues.add(8.0); // 142 users padding top
    myValues.add(5.0); // 143 users left
    myValues.add(5.0); // 144 users right
    myValues.add(8.0); // 145 users bottom
    myValues.add(32.0); // 146 icon size
    myValues.add(8.0); // 147 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 148 users font size
    myValues.add(8.0); // 149 BorderRadius
    myValues.add(8.0); // 150 users count padding right
    myValues.add(8.0); // 151 users count left
    myValues.add(5.0); // 152 users count top
    myValues.add(5.0); // 153 users count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 154 users count font size

    myValues.add(8.0); // 155 clients padding top
    myValues.add(5.0); // 156 clients left
    myValues.add(5.0); // 157 clients right
    myValues.add(8.0); // 158 clients bottom
    myValues.add(32.0); // 159 icon size
    myValues.add(8.0); // 160 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 161 clients font size
    myValues.add(8.0); // 162 BorderRadius
    myValues.add(8.0); // 163 clients count padding right
    myValues.add(8.0); // 164 clients count left
    myValues.add(5.0); // 165 clients count top
    myValues.add(5.0); // 166 clients count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 167 clients count font size

    myValues.add(8.0); // 168 new padding top
    myValues.add(5.0); // 169 new left
    myValues.add(5.0); // 170 new right
    myValues.add(8.0); // 171 new bottom
    myValues.add(32.0); // 172 icon size
    myValues.add(8.0); // 173 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 174 new font size
    myValues.add(8.0); // 175 BorderRadius
    myValues.add(8.0); // 176 new count padding right
    myValues.add(8.0); // 177 new count left
    myValues.add(5.0); // 178 new count top
    myValues.add(5.0); // 179 new count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 180 new count font size

    // fourthsection isSmall
    myValues.add(10.0); // 181 main padding top
    myValues.add(5.0); // 182 main padding left
    myValues.add(5.0); // 183 main padding right
    myValues.add(10.0); // 184 main padding bottom

    myValues.add(8.0); // 185 edit profile padding top
    myValues.add(5.0); // 186 edit profile left
    myValues.add(5.0); // 187 edit profile right
    myValues.add(8.0); // 188 edit profile bottom
    myValues.add(32.0); // 189 icon size
    myValues.add(8.0); // 190 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 191 edit profile font size
    myValues.add(8.0); // 192 BorderRadius
    myValues.add(8.0); // 193 edit profile count padding right
    myValues.add(8.0); // 194 edit profile count left
    myValues.add(5.0); // 195 edit profile count top
    myValues.add(5.0); // 196 edit profile count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 197 edit profile count font size

    myValues.add(8.0); // 198 logout padding top
    myValues.add(5.0); // 199 logout left
    myValues.add(5.0); // 200 logout right
    myValues.add(8.0); // 201 logout bottom
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 202 logout SnackBar font size
    myValues.add(32.0); // 203 icon size
    myValues.add(8.0); // 204 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 205 logout font size
    
    // problem_card isSmall
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 18.0 - 5.0); // 206 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 16.0 - 5.0); // 207 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 16.0 - 5.0); // 208 animation Date Text second font size
    myValues.add(15.0); // 209 card margin bottom 1
    myValues.add(5.0); // 210 card margin bottom 2
    myValues.add(10.0); // 211 card margin left
    myValues.add(10.0); // 212 card margin right
    myValues.add(15.0); // 213 card margin top 1
    myValues.add(5.0); // 214 card margin top 2
    myValues.add(10.0); // 215 first part padding top
    myValues.add(5.0); // 216 first part padding left
    myValues.add(5.0); // 217 first part padding right
    myValues.add(10.0); // 218 first part padding bottom
    myValues.add(5.0); // 219 all padding
    myValues.add(8.0); // 220 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 221 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 222 CustomCircleAvatar padding left
    myValues.add(45.0); // 223 CustomCircleAvatar radius
    myValues.add(25.0); // 224 CustomCircleAvatar size
    myValues.add(4); // 225 Flexible flex 1
    myValues.add(2); // 226 Flexible flex 2
    myValues.add(3); // 227 Flexible flex 3
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 20.0 - 5.0); // 228 authorname font size
    myValues.add(26.0); // 229 time icon size
    myValues.add(5.0); // 230 size box width
    myValues.add(4); // 231 Flexible flex 1
    myValues.add(1); // 232 Flexible flex 2
    myValues.add(5); // 233 Flexible flex 3
    myValues.add(1); // 234 solve problem Flexible flex
    myValues.add(1); // 235 has problem Flexible flex
    myValues.add(5.0); // 236 size box width 1
    myValues.add(5.0); // 237 size box width 2
    myValues.add(1); // 238 reserve problem Flexible flex
    myValues.add(4); // 239 Flexible flex 1
    myValues.add(1); // 240 Flexible flex 2
    myValues.add(3); // 241 Flexible flex 3
    myValues.add(5.0); // 242 second part padding top
    myValues.add(10.0); // 243 second part padding left
    myValues.add(10.0); // 244 second part padding right
    myValues.add(10.0); // 245 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 246 authoraddress font size
    myValues.add(8.0); // 247 size box height
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 248 authormobilenumber font size
    myValues.add(10.0); // 249 description part padding left
    myValues.add(10.0); // 250 description part padding right
    myValues.add(10.0); // 251 description part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 28 - 5.0); // 252 description font size
    myValues.add(10.0); // 253 comment part padding left
    myValues.add(10.0); // 254 comment part padding right
    myValues.add(10.0); // 255 comment part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 256 comment font size
    myValues.add(1.0); // 257 size box height
    myValues.add(10.0); // 258 third part padding top
    myValues.add(10.0); // 259 third part padding left
    myValues.add(10.0); // 260 third part padding right
    myValues.add(10.0); // 261 third part padding bottom
    myValues.add(8.0); // 262 padding all
    myValues.add(8.0); // 263 BorderRadius
    myValues.add(3); // 264 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 265 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 266 CustomCircleAvatar padding left
    myValues.add(45.0); // 267 CustomCircleAvatar radius
    myValues.add(25.0); // 268 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 20.0 - 5.0); // 269 bookauthorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 18.0 - 5.0); // 270 date_book font size
    myValues.add(2); // 271 Flexible flex
    myValues.add(0.0); // 272 more button padding top
    myValues.add(10.0); // 273 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24 - 5.0); // 274 more button font size
    myValues.add(24.0); // 275 solve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 9.0 : 16.0 - 5.0); // 276 solve problem font size
    myValues.add(24.0); // 277 has problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 9.0 : 16.0 - 5.0); // 278 has problem font size
    myValues.add(24.0); // 279 reserve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 9.0 : 16.0 - 5.0); // 280 reserve problem font size


    // solveproblem isSmall
    myValues.add(0.0); // 281 solve button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 16.0 - 5.0); // 282 solve problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 283 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 284 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 285 showDialog title font size
    myValues.add(22.0); // 286 showDialog content padding all
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 287 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 22.0 - 5.0); // 288 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 289 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 290 showDialog 2 title font size
    myValues.add(22.0); // 291 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 292 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 293 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 22.0 - 5.0); // 294 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 295 SnackBar font size
    myValues.add(32.0); // 296 solve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 10.0 : 16.0 - 5.0); // 297 solve problem font size

    // hasproblem isSmall
    myValues.add(0.0); // 298 has button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 10.0 : 14.0 - 5.0); // 299 has problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 300 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 301 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 302 showDialog title font size
    myValues.add(22.0); // 303 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 304 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 22.0 - 5.0); // 305 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 306 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 307 showDialog 2 title font size
    myValues.add(22.0); // 308 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 309 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 310 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 22.0 - 5.0); // 311 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 312 SnackBar font size
    myValues.add(32.0); // 313 has problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 10.0 : 14.0 - 5.0); // 314 has problem font size

    // reserve isSmall
    myValues.add(0.0); // 315 reserve button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 18.0 - 5.0); // 316 reserve problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 317 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 318 SnackBar font size 2
    myValues.add(50.0); // 319 BorderRadius topLeft
    myValues.add(50.0); // 320 BorderRadius topRight
    myValues.add(1); // 321 Flexible flex
    myValues.add(0.0); // 322 padding top
    myValues.add(8.0); // 323 padding left
    myValues.add(30.0); // 324 back button icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 325 title font size
    myValues.add(5); // 326 Flexible flex
    myValues.add(.10); // 327 list view padding top
    myValues.add(12.0); // 328 padding all
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 329 date time font size
    myValues.add(5.0); // 330 padding all
    myValues.add(30.0); // 331 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 332 date time label font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 333 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 334 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 335 SnackBar font size 3
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 336 reserve button font size 
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 337 SnackBar font size 4
    myValues.add(26.0); // 338 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 14.0 - 5.0); // 339 reserve button font size

    // deleteproblem isSmall
    myValues.add(26.0); // 340 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 341 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 342 showDialog title font size
    myValues.add(22.0); // 343 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 344 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 22.0 - 5.0); // 345 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 346 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 347 showDialog 2 title font size
    myValues.add(22.0); // 348 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 349 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 350 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 351 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 22.0 - 5.0); // 352 showDialog 1 ok font size
   
    // differentproblems isSmall
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 353 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 354 no problems found font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 355 no inter net font size

    // usertype isSmall
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 356 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 357 no users found font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 358 no inter net font size

    // user_card isSmall    
    myValues.add(15.0); // 359 card margin bottom 1
    myValues.add(5.0); // 360 card margin bottom 2
    myValues.add(10.0); // 361 logout left
    myValues.add(10.0); // 362 logout right
    myValues.add(15.0); // 363 card margin top 1
    myValues.add(5.0); // 364 card margin top 2
    myValues.add(10.0); // 365 first part padding top
    myValues.add(10.0); // 366 first part padding left
    myValues.add(10.0); // 367 first part padding right
    myValues.add(5.0); // 368 first part padding bottom
    myValues.add(5.0); // 369 all padding
    myValues.add(8.0); // 370 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 371 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 372 CustomCircleAvatar padding left
    myValues.add(45.0); // 373 CustomCircleAvatar radius
    myValues.add(25.0); // 374 CustomCircleAvatar size
    myValues.add(2); // 375 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 22.0 - 5.0); // 376 authorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 18.0 - 5.0); // 377 authortypename font size
    myValues.add(3); // 378 Flexible flex
    myValues.add(2); // 379 Flexible flex
    myValues.add(0.0); // 380 more button padding top
    myValues.add(10.0); // 381 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 382 more button font size

    // deleteuser isSmall
    myValues.add(26.0); // 383 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 384 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 385 showDialog title font size
    myValues.add(22.0); // 386 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 387 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 22.0 - 5.0); // 388 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 389 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 390 showDialog 2 title font size
    myValues.add(22.0); // 391 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 392 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 393 showDialog 2 ok font size    
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 22.0 - 5.0); // 394 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 395 SnackBar font size
    
    // changeusertype isSmall
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 24.0 - 5.0); // 396 admins font size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 24.0 - 5.0); // 397 users font size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 24.0 - 5.0); // 398 clients font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 399 SnackBar font size
    myValues.add(10.0); // 400 padding right
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 18.0 - 5.0); // 401 change button font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 402 showDialog title font size
    myValues.add(22.0); // 403 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 404 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 405 showDialog ok font size
    
    // editprofile isSmall
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 406 AppBar Title font size
    myValues.add(15.0); // 407 contianer padding all
    myValues.add(15.0); // 408 sized box height 1
    myValues.add(15.0); // 409 sized box height 2
    myValues.add(15.0); // 410 sized box height 3
    myValues.add(15.0); // 411 sized box height 4
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 412 username text font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 413 username lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 414 username error font size
    myValues.add(30.0); // 415 username icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 416 mobile_number text font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 417 mobile_number lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 418 mobile_number error font size
    myValues.add(30.0); // 419 mobile_number icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 420 address text font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 421 address lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 422 address error font size
    myValues.add(30.0); // 423 address icon size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 424 showdialog title font size
    myValues.add(22.0); // 425 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 426 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 427 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 428 showdialog title font size
    myValues.add(22.0); // 429 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 430 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 431 showdialog ok button font size
    
    // addproblem isSmall
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 432 AppBar Title font size
    myValues.add(15.0); // 433 contianer padding all
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 434 problem description text font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 435 problem description lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 436 problem description error font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 437 problem description counter font size
    myValues.add(30.0); // 438 username icon size
    myValues.add(10.0); // 439 sized box height 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 440 add button font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 441 showdialog title font size
    myValues.add(22.0); // 442 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 443 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 444 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 445 showdialog title font size
    myValues.add(22.0); // 446 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 447 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 448 showdialog ok button font size

    // changepassword isSmall
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 449 AppBar Title font size
    myValues.add(15.0); // 450 contianer padding all
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 451 password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 452 password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 453 password error font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 454 password counter font size
    myValues.add(30.0); // 455 username icon size
    myValues.add(10.0); // 456 sized box height 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 457 save button font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 458 showdialog title font size
    myValues.add(22.0); // 459 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 460 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 461 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 462 showdialog title font size
    myValues.add(22.0); // 463 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 464 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 465 showdialog ok button font size
    
    // contactdeveloper isSmall
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 22.0 - 5.0); // 466 AppBar Title font size
    myValues.add(40.0); // 467 contianer padding top
    myValues.add(16.0); // 468 contianer padding right
    myValues.add(16.0); // 469 contianer padding left
    myValues.add(15.0); // 470 contianer padding bottom
    myValues.add(32.0); // 471 icon error size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 472 name font size
    myValues.add(16.0); // 473 contianer padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 474 mobile font size
    myValues.add(16.0); // 475 contianer padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 476 email font size


    // problempage isSmall
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 477 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 478 no internet font size

    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 18.0 - 5.0); // 479 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 16.0 - 5.0); // 480 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 16.0 - 5.0); // 481 animation Date Text second font size
    myValues.add(5.0); // 482 card margin bottom
    myValues.add(10.0); // 483 logout left
    myValues.add(10.0); // 484 logout right
    myValues.add(15.0); // 485 card margin top
    myValues.add(10.0); // 486 first part padding top
    myValues.add(10.0); // 487 first part padding left
    myValues.add(10.0); // 488 first part padding right
    myValues.add(5.0); // 489 first part padding bottom
    myValues.add(5.0); // 490 all padding
    myValues.add(8.0); // 491 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 492 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 493 CustomCircleAvatar padding left
    myValues.add(45.0); // 494 CustomCircleAvatar radius
    myValues.add(25.0); // 495 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 20.0 - 5.0); // 496 authorname font size
    myValues.add(26.0); // 497 time icon size
    myValues.add(5.0); // 498 size box width
    myValues.add(5.0); // 499 second part padding top
    myValues.add(10.0); // 500 second part padding left
    myValues.add(10.0); // 501 second part padding right
    myValues.add(10.0); // 502 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 503 authoraddress font size
    myValues.add(8.0); // 504 size box height
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 505 authormobilenumber font size
    myValues.add(10.0); // 506 description part padding left
    myValues.add(10.0); // 507 description part padding right
    myValues.add(10.0); // 508 description part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 28.0 - 5.0); // 509 description font size    
    myValues.add(1.0); // 510 size box height
    myValues.add(10.0); // 511 third part padding top
    myValues.add(10.0); // 512 third part padding left
    myValues.add(10.0); // 513 third part padding right
    myValues.add(10.0); // 514 third part padding bottom
    myValues.add(8.0); // 515 padding all
    myValues.add(8.0); // 516 BorderRadius
    myValues.add(3); // 517 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 518 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 519 CustomCircleAvatar padding left
    myValues.add(45.0); // 520 CustomCircleAvatar radius
    myValues.add(25.0); // 521 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 20.0 - 5.0); // 522 bookauthorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 18.0 - 5.0); // 523 date_book font size
    myValues.add(2); // 524 Flexible flex

    myValues.add(5.0); // 525 comment area padding top
    myValues.add(10.0); // 526 comment area padding left
    myValues.add(10.0); // 527 comment area padding right
    myValues.add(10.0); // 528 comment area padding bottom
    myValues.add(5); // 529 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 530 comment text font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 531 comment lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 532 comment error font size
    myValues.add(30.0); // 533 username icon size
    myValues.add(1); // 534 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 535 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 536 SnackBar font size 2    
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 537 showdialog title font size
    myValues.add(22.0); // 538 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 539 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 540 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 541 SnackBar font size
    myValues.add(35.0); // 542 send comment icon size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 543 no comments font size
    myValues.add(mylocale.languageCode.contains("en") ? 15.0 : 18.0 - 5.0); // 544 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 16.0 - 5.0); // 545 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 16.0 - 5.0); // 546 animation Date Text second font size
    myValues.add(16.0); // 547 card margin bottom 1
    myValues.add(6.0); // 548 card margin bottom 2
    myValues.add(25.0); // 549 card margin left
    myValues.add(25.0); // 550 card margin right
    myValues.add(5.0); // 551 card margin top
    myValues.add(10.0); // 552 first part padding top
    myValues.add(10.0); // 553 first part padding left
    myValues.add(10.0); // 554 first part padding right
    myValues.add(5.0); // 555 first part padding bottom
    myValues.add(5.0); // 556 all padding
    myValues.add(8.0); // 557 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 558 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 559 CustomCircleAvatar padding left
    myValues.add(45.0); // 560 CustomCircleAvatar radius
    myValues.add(25.0); // 561 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 562 authorname font size
    myValues.add(26.0); // 563 time icon size
    myValues.add(5.0); // 564 size box width
    myValues.add(1); // 565 Flexible flex
    myValues.add(10.0); // 566 second part padding top
    myValues.add(10.0); // 567 second part padding left
    myValues.add(10.0); // 568 second part padding right
    myValues.add(16.0); // 569 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 26.0 - 5.0); // 570 comment font size        
    myValues.add(0.0); // 571 more button padding top
    myValues.add(10.0); // 572 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 573 more button font size    


    // image isSmall
    myValues.add(50.0); // 574 BorderRadius topLeft
    myValues.add(50.0); // 575 BorderRadius topRight
    myValues.add(.5); // 576 container height 1
    myValues.add(.5); // 577 container height 2
    myValues.add(10.0); // 578 padding all
    myValues.add(25.0); // 579 sized box height 
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 580 pick image font size
    myValues.add(10.0); // 581 sized box height 
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 582 use camera font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 583 use gallery font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 584 please pick image font size
    myValues.add(.5); // 585 image height
    myValues.add(.95); // 586 image width
    myValues.add(2.0); // 587 BorderSide width
    myValues.add(5.0); // 588 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 589 add image font size
    myValues.add(10.0); // 590 sized box height
    myValues.add(32.0); // 591 camare icon size

    // onboarding isSmaill
    myValues.add(10.0); // 592 title continner padding rigt
    myValues.add(10.0); // 593 title continner padding left
    myValues.add(0.0); // 594 title continner padding top
    myValues.add(0.0); // 595 title continner padding bottom
    myValues.add(8.0); // 596 title continner BorderRadius
    myValues.add(10.0); // 597 description continner padding rigt
    myValues.add(10.0); // 598 description continner padding left
    myValues.add(0.0); // 599 description continner padding top
    myValues.add(0.0); // 600 description continner padding bottom
    myValues.add(8.0); // 601 description continner BorderRadius

    // editprofile isSmall
    myValues.add(20.0); // 602 save button font size

    // allproblems isSmall
    myValues.add(.85); // 603 drawer wdith

    // firstsection isSmall
    myValues.add(100.0); // 604 drawer header height 
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 605 drawer header padding right
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 606 drawer header padding left
    myValues.add(0.0); // 607 drawer header margin 
    myValues.add(3.0); // 608 CustomCircleAvatar padding top 

    // allproblems isSmall
    myValues.add(100.0); // 609 allproblems no inter net image width
    myValues.add(100.0); // 610 allproblems no inter net image height
    myValues.add(15.0); // 611 sized box height

    // diffrentproblems isSmall
    myValues.add(100.0); // 612 allproblems no inter net image width
    myValues.add(100.0); // 613 allproblems no inter net image height
    myValues.add(15.0); // 614 sized box height

    // allusrs isSmall
    myValues.add(100.0); // 615 allproblems no inter net image width
    myValues.add(100.0); // 616 allproblems no inter net image height
    myValues.add(15.0); // 617 sized box height

    // hasproblem isSmall
    myValues.add(500.0); // 618 allproblems no inter net image width
    myValues.add(50.0); // 619 allproblems no inter net image height
    myValues.add(10.0); // 620 sized box height

  } else if (isMedium) {
    
    // onboarding Screen isMedium
    myValues.add(.05); // 0 Screen Width
    myValues.add(.15); // 1 Screen Width
    myValues.add(150.0); // 2 Icon Size
    myValues.add(100.0); // 3 Icon Size
    myValues.add(0.0); // 4 Icon Offset
    myValues.add(-100.0); // 5 Icon Offset
    myValues.add(-40.0); // 6 Icon Offset
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 32.0 - 5.0); // 7 title font size
    myValues.add(0.0); // 8 title Offset 1
    myValues.add(-50.0); // 9 title Offset 2
    myValues.add(-20.0); // 10 title Offset 3
    myValues.add(.05); // 11 description padding right
    myValues.add(.05); // 12 description padding left
    myValues.add(18.0); // 13 description padding top 1
    myValues.add(10.0); // 14 description padding top 2
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 26.0 - 5.0); // 15 description font size
    myValues.add(0.0); // 16 description Offset 1
    myValues.add(-50.0); // 17 description Offset 2
    myValues.add(-20.0); // 18 description Offset 3
    myValues.add(0.0); // 19 PageIndicator Offset 1
    myValues.add(150.0); // 20 PageIndicator Offset 2
    myValues.add(100.0); // 21 PageIndicator Offset 3
    myValues.add(24.0); // 22 Get Start padding bottom 1
    myValues.add(15.0); // 23 Get Start padding bottom 2
    myValues.add(50.0); // 24 Get Start sized box hieght
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 30.0 - 5.0); // 25 Get Start font size
    myValues.add(1.0); // 26 Get Start letter Spacing
    myValues.add(8.0); // 27 PageViewIndicator Circle size 1
    myValues.add(12.0); // 28 PageViewIndicator Circle size 2

    // auth screen isMedium
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 26.0 - 5.0); // 29 AppBar Title font size
    myValues.add(15.0); // 30 contianer padding
    myValues.add(10.0); // 31 sized box height 1
    myValues.add(10.0); // 32 sized box height 2
    myValues.add(10.0); // 33 sized box height 3
    myValues.add(10.0); // 34 sized box height 4
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 26.0 - 5.0); // 35 login and sigup button font size
    myValues.add(10.0); // 36 sized box height 5
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 28.0 - 5.0); // 37 switch login and sigup button font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 26.0 - 5.0); // 38 email text font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 39 email lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 40 email error font size
    myValues.add(40.0); // 41 email icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 26.0 - 5.0); // 42 password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 43 password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 44 password error font size
    myValues.add(40.0); // 45 password icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 26.0 - 5.0); // 46 confirm password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 47 confirm password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 48 confirm password error font size
    myValues.add(40.0); // 49 confirm password icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 26.0 - 5.0); // 50 user name text font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 51 user name lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 52 user name error font size
    myValues.add(40.0); // 53 user name icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 26.0 - 5.0); // 54 login showdialog title font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 55 login showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 56 login showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 26.0 - 5.0); // 57 login showdialog title font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 58 login showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 59 login showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 24.0 - 5.0); // 60 SnackBar font size

    // allproblems screen isMedium
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 61 AppBar Title font size
    myValues.add(15.0); // 62 menue icon button padding right
    myValues.add(15.0); // 63 menue icon button padding left
    myValues.add(30.0); // 64 menue icon button size
    myValues.add(30.0); // 65 add problem icon button size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 66 add problem icon button SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 67 add problem icon button SnackBar font size 2
    myValues.add(10.0); // 68 popupMenu padding right
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 69 popupMenu change password font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 70 popupMenu language font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 71 popupMenu contact us font size
    myValues.add(30.0); // 72 popupMenu icon button size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 73 Problem List  No Problems Found font size
    myValues.add(25.0); // 74 Drawer list view padding top
    
    // firstsection isMedium
    myValues.add(mylocale.languageCode.contains("en") ? 7.0 : 0.0); // 75 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 7.0); // 76 CustomCircleAvatar padding left
    myValues.add(5.0); // 77 CustomCircleAvatar padding bottom
    myValues.add(55.0); // 78 CustomCircleAvatar radius
    myValues.add(20.0); // 79 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 26.0 - 5.0); // 80 user name font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 81 user type name font size

    // secondsection isMedium
    myValues.add(10.0); // 82 main padding top
    myValues.add(5.0); // 83 main padding left
    myValues.add(5.0); // 84 main padding right
    myValues.add(10.0); // 85 main padding bottom

    myValues.add(8.0); // 86 new problems padding top
    myValues.add(5.0); // 87 new padding left
    myValues.add(5.0); // 88 new padding right
    myValues.add(8.0); // 89 new padding bottom
    myValues.add(32.0); // 90 icon size
    myValues.add(8.0); // 91 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 24.0 - 5.0); // 92 new problems font size
    myValues.add(8.0); // 93 BorderRadius
    myValues.add(8.0); // 94 new problems count padding right
    myValues.add(8.0); // 95 new padding count left
    myValues.add(5.0); // 96 new padding count top
    myValues.add(5.0); // 97 new padding count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 98 new problems count font size

    myValues.add(8.0); // 99 has problems padding top
    myValues.add(8.0); // 100 has problems padding bottom
    myValues.add(5.0); // 101 has problems padding right
    myValues.add(5.0); // 102 has problems padding left
    myValues.add(32.0); // 103 icon size
    myValues.add(8.0); // 104 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 24.0 - 5.0); // 105 has problems font size
    myValues.add(8.0); // 106 BorderRadius
    myValues.add(8.0); // 107 has problems count padding right
    myValues.add(8.0); // 108 has problems count padding left
    myValues.add(5.0); // 109 has problems count padding top
    myValues.add(5.0); // 110 has problems count padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 111 has problems count font size

    myValues.add(8.0); // 112 solved problems padding top
    myValues.add(8.0); // 113 solved problems padding bottom
    myValues.add(5.0); // 114 solved problems padding right
    myValues.add(5.0); // 115 solved problems padding left
    myValues.add(32.0); // 116 icon size
    myValues.add(8.0); // 117 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 24.0 - 5.0); // 118 solved problems font size
    myValues.add(8.0); // 119 BorderRadius
    myValues.add(8.0); // 120 solved problems count padding right
    myValues.add(8.0); // 121 solved problems count padding left
    myValues.add(5.0); // 122 solved problems count padding top
    myValues.add(5.0); // 123 solved problems count padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 124 solved problems count font size

    // thirdsection isMedium
    myValues.add(10.0); // 125 main padding top
    myValues.add(5.0); // 126 main padding left
    myValues.add(5.0); // 127 main padding right
    myValues.add(10.0); // 128 main padding bottom

    myValues.add(8.0); // 129 admins padding top
    myValues.add(5.0); // 130 admins left
    myValues.add(5.0); // 131 admins right
    myValues.add(8.0); // 132 admins bottom
    myValues.add(32.0); // 133 icon size
    myValues.add(8.0); // 134 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 24.0 - 5.0); // 135 admins font size
    myValues.add(8.0); // 136 BorderRadius
    myValues.add(8.0); // 137 admins count padding right
    myValues.add(8.0); // 138 admins count left
    myValues.add(5.0); // 139 admins count top
    myValues.add(5.0); // 140 admins count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 141 admins count font size

    myValues.add(8.0); // 142 users padding top
    myValues.add(5.0); // 143 users left
    myValues.add(5.0); // 144 users right
    myValues.add(8.0); // 145 users bottom
    myValues.add(32.0); // 146 icon size
    myValues.add(8.0); // 147 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 24.0 - 5.0); // 148 users font size
    myValues.add(8.0); // 149 BorderRadius
    myValues.add(8.0); // 150 users count padding right
    myValues.add(8.0); // 151 users count left
    myValues.add(5.0); // 152 users count top
    myValues.add(5.0); // 153 users count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 154 users count font size

    myValues.add(8.0); // 155 clients padding top
    myValues.add(5.0); // 156 clients left
    myValues.add(5.0); // 157 clients right
    myValues.add(8.0); // 158 clients bottom
    myValues.add(32.0); // 159 icon size
    myValues.add(8.0); // 160 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 24.0 - 5.0); // 161 clients font size
    myValues.add(8.0); // 162 BorderRadius
    myValues.add(8.0); // 163 clients count padding right
    myValues.add(8.0); // 164 clients count left
    myValues.add(5.0); // 165 clients count top
    myValues.add(5.0); // 166 clients count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 167 clients count font size

    myValues.add(8.0); // 168 new padding top
    myValues.add(5.0); // 169 new left
    myValues.add(5.0); // 170 new right
    myValues.add(8.0); // 171 new bottom
    myValues.add(32.0); // 172 icon size
    myValues.add(8.0); // 173 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 24.0 - 5.0); // 174 new font size
    myValues.add(8.0); // 175 BorderRadius
    myValues.add(8.0); // 176 new count padding right
    myValues.add(8.0); // 177 new count left
    myValues.add(5.0); // 178 new count top
    myValues.add(5.0); // 179 new count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 180 new count font size

    // fourthsection isMedium
    myValues.add(10.0); // 181 main padding top
    myValues.add(5.0); // 182 main padding left
    myValues.add(5.0); // 183 main padding right
    myValues.add(10.0); // 184 main padding bottom

    myValues.add(8.0); // 185 edit profile padding top
    myValues.add(5.0); // 186 edit profile left
    myValues.add(5.0); // 187 edit profile right
    myValues.add(8.0); // 188 edit profile bottom
    myValues.add(32.0); // 189 icon size
    myValues.add(8.0); // 190 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 24.0 - 5.0); // 191 edit profile font size
    myValues.add(8.0); // 192 BorderRadius
    myValues.add(8.0); // 193 edit profile count padding right
    myValues.add(8.0); // 194 edit profile count left
    myValues.add(5.0); // 195 edit profile count top
    myValues.add(5.0); // 196 edit profile count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 197 edit profile count font size

    myValues.add(8.0); // 198 logout padding top
    myValues.add(5.0); // 199 logout left
    myValues.add(5.0); // 200 logout right
    myValues.add(8.0); // 201 logout bottom
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 202 logout SnackBar font size
    myValues.add(32.0); // 203 icon size
    myValues.add(8.0); // 204 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 205 logout font size
    
    // problem_card isMedium
    myValues.add(mylocale.languageCode.contains("en") ? 15.0 : 20.0 - 5.0); // 206 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 19.0 - 5.0); // 207 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 19.0 - 5.0); // 208 animation Date Text second font size
    myValues.add(15.0); // 209 card margin bottom 1
    myValues.add(5.0); // 210 card margin bottom 2
    myValues.add(10.0); // 211 logout left
    myValues.add(10.0); // 212 logout right
    myValues.add(15.0); // 213 card margin top 1
    myValues.add(5.0); // 214 card margin top 2
    myValues.add(10.0); // 215 first part padding top
    myValues.add(5.0); // 216 first part padding left
    myValues.add(5.0); // 217 first part padding right
    myValues.add(10.0); // 218 first part padding bottom
    myValues.add(5.0); // 219 all padding
    myValues.add(8.0); // 220 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 221 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 222 CustomCircleAvatar padding left
    myValues.add(55.0); // 223 CustomCircleAvatar radius
    myValues.add(25.0); // 224 CustomCircleAvatar size
    myValues.add(4); // 225 Flexible flex 1
    myValues.add(2); // 226 Flexible flex 2
    myValues.add(3); // 227 Flexible flex 3
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 228 authorname font size
    myValues.add(35.0); // 229 time icon size
    myValues.add(5.0); // 230 size box width
    myValues.add(4); // 231 Flexible flex 1
    myValues.add(1); // 232 Flexible flex 2
    myValues.add(5); // 233 Flexible flex 3
    myValues.add(1); // 234 solve problem Flexible flex
    myValues.add(1); // 235 has problem Flexible flex
    myValues.add(5.0); // 236 size box width 1
    myValues.add(5.0); // 237 size box width 2
    myValues.add(1); // 238 reserve problem Flexible flex
    myValues.add(4); // 239 Flexible flex 1
    myValues.add(1); // 240 Flexible flex 2
    myValues.add(3); // 241 Flexible flex 3
    myValues.add(5.0); // 242 second part padding top
    myValues.add(10.0); // 243 second part padding left
    myValues.add(10.0); // 244 second part padding right
    myValues.add(10.0); // 245 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 246 authoraddress font size
    myValues.add(8.0); // 247 size box height
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 248 authormobilenumber font size
    myValues.add(10.0); // 249 description part padding left
    myValues.add(10.0); // 250 description part padding right
    myValues.add(10.0); // 251 description part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 30.0 - 5.0); // 252 description font size
    myValues.add(10.0); // 253 comment part padding left
    myValues.add(10.0); // 254 comment part padding right
    myValues.add(10.0); // 255 comment part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 24.0 - 5.0); // 256 comment font size
    myValues.add(1.0); // 257 size box height
    myValues.add(10.0); // 258 third part padding top
    myValues.add(10.0); // 259 third part padding left
    myValues.add(10.0); // 260 third part padding right
    myValues.add(10.0); // 261 third part padding bottom
    myValues.add(8.0); // 262 padding all
    myValues.add(8.0); // 263 BorderRadius
    myValues.add(3); // 264 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 265 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 266 CustomCircleAvatar padding left
    myValues.add(55.0); // 267 CustomCircleAvatar radius
    myValues.add(25.0); // 268 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 269 bookauthorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 22.0 - 5.0); // 270 date_book font size
    myValues.add(2); // 271 Flexible flex
    myValues.add(0.0); // 272 more button padding top
    myValues.add(10.0); // 273 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 26 - 5.0); // 274 more button font size
    myValues.add(35.0); // 275 solve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 18.0 - 5.0); // 276 solve problem font size
    myValues.add(35.0); // 277 has problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 18.0 - 5.0); // 278 has problem font size
    myValues.add(35.0); // 279 reserve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 18.0 - 5.0); // 280 reserve problem font size


    // solveproblem isMedium
    myValues.add(0.0); // 281 solve button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 20.0 - 5.0); // 282 solve problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 283 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 284 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 285 showDialog title font size
    myValues.add(22.0); // 286 showDialog content padding all
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 287 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 288 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 289 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 290 showDialog 2 title font size
    myValues.add(22.0); // 291 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 292 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 293 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 294 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 295 SnackBar font size
    myValues.add(32.0); // 296 solve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 18.0 - 5.0); // 297 solve problem font size

    // hasproblem isMedium
    myValues.add(0.0); // 298 has button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 18.0 - 5.0); // 299 has problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 300 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 301 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 302 showDialog title font size
    myValues.add(22.0); // 303 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 304 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 305 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 306 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 307 showDialog 2 title font size
    myValues.add(22.0); // 308 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 309 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 310 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 311 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 312 SnackBar font size
    myValues.add(32.0); // 313 has problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 16.0 - 5.0); // 314 has problem font size

    // reserve isMedium
    myValues.add(0.0); // 315 reserve button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 22.0 - 5.0); // 316 reserve problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 317 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 318 SnackBar font size 2
    myValues.add(50.0); // 319 BorderRadius topLeft
    myValues.add(50.0); // 320 BorderRadius topRight
    myValues.add(1); // 321 Flexible flex
    myValues.add(0.0); // 322 padding top
    myValues.add(8.0); // 323 padding left
    myValues.add(30.0); // 324 back button icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 325 title font size
    myValues.add(5); // 326 Flexible flex
    myValues.add(.10); // 327 list view padding top
    myValues.add(12.0); // 328 padding all
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 329 date time font size
    myValues.add(5.0); // 330 padding all
    myValues.add(30.0); // 331 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 332 date time label font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 333 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 334 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 335 SnackBar font size 3
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 336 reserve button font size 
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 337 SnackBar font size 4
    myValues.add(35.0); // 338 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 16.0 - 5.0); // 339 reserve button font size

    // deleteproblem isMedium
    myValues.add(30.0); // 340 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 341 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 342 showDialog title font size
    myValues.add(22.0); // 343 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 344 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 345 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 346 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 347 showDialog 2 title font size
    myValues.add(22.0); // 348 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 349 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 350 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 351 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 352 showDialog 1 ok font size
   
    // differentproblems isMedium
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 353 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 354 no problems found font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 355 no inter net font size

    // usertype isMedium
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 356 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 357 no users found font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 358 no inter net font size

    // user_card isMedium    
    myValues.add(15.0); // 359 card margin bottom 1
    myValues.add(5.0); // 360 card margin bottom 2
    myValues.add(10.0); // 361 logout left
    myValues.add(10.0); // 362 logout right
    myValues.add(15.0); // 363 card margin top 1
    myValues.add(5.0); // 364 card margin top 2
    myValues.add(10.0); // 365 first part padding top
    myValues.add(10.0); // 366 first part padding left
    myValues.add(10.0); // 367 first part padding right
    myValues.add(5.0); // 368 first part padding bottom
    myValues.add(5.0); // 369 all padding
    myValues.add(8.0); // 370 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 371 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 372 CustomCircleAvatar padding left
    myValues.add(45.0); // 373 CustomCircleAvatar radius
    myValues.add(25.0); // 374 CustomCircleAvatar size
    myValues.add(2); // 375 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 376 authorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 377 authortypename font size
    myValues.add(3); // 378 Flexible flex
    myValues.add(2); // 379 Flexible flex
    myValues.add(0.0); // 380 more button padding top
    myValues.add(10.0); // 381 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 382 more button font size

    // deleteuser isMedium
    myValues.add(30.0); // 383 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 384 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 385 showDialog title font size
    myValues.add(22.0); // 386 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 387 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 388 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 389 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 390 showDialog 2 title font size
    myValues.add(22.0); // 391 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 392 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 393 showDialog 2 ok font size    
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 394 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 395 SnackBar font size
    
    // changeusertype isMedium
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 396 admins font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 397 users font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 398 clients font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 399 SnackBar font size
    myValues.add(10.0); // 400 padding right
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 401 change button font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 402 showDialog title font size
    myValues.add(22.0); // 403 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 404 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 405 showDialog ok font size
    
    // editprofile isMedium
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 406 AppBar Title font size
    myValues.add(15.0); // 407 contianer padding all
    myValues.add(15.0); // 408 sized box height 1
    myValues.add(15.0); // 409 sized box height 2
    myValues.add(15.0); // 410 sized box height 3
    myValues.add(15.0); // 411 sized box height 4
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 412 username text font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 413 username lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 414 username error font size
    myValues.add(32.0); // 415 username icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 416 mobile_number text font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 417 mobile_number lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 418 mobile_number error font size
    myValues.add(32.0); // 419 mobile_number icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 420 address text font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 421 address lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 422 address error font size
    myValues.add(32.0); // 423 address icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 424 showdialog title font size
    myValues.add(22.0); // 425 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 426 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 427 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 428 showdialog title font size
    myValues.add(22.0); // 429 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 430 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 431 showdialog ok button font size
    
    // addproblem isMedium
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 432 AppBar Title font size
    myValues.add(15.0); // 433 contianer padding all
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 434 problem description text font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 435 problem description lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 436 problem description error font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 437 problem description counter font size
    myValues.add(32.0); // 438 username icon size
    myValues.add(10.0); // 439 sized box height 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 440 add button font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 441 showdialog title font size
    myValues.add(22.0); // 442 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 443 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 444 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 445 showdialog title font size
    myValues.add(22.0); // 446 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 447 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 448 showdialog ok button font size

    // changepassword isMedium
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 449 AppBar Title font size
    myValues.add(15.0); // 450 contianer padding all
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 451 password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 452 password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 453 password error font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 454 password counter font size
    myValues.add(32.0); // 455 username icon size
    myValues.add(10.0); // 456 sized box height 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 457 save button font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 458 showdialog title font size
    myValues.add(22.0); // 459 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 460 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 461 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 462 showdialog title font size
    myValues.add(22.0); // 463 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 464 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 465 showdialog ok button font size
    
    // contactdeveloper isMedium
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 466 AppBar Title font size
    myValues.add(100.0); // 467 contianer padding top
    myValues.add(16.0); // 468 contianer padding right
    myValues.add(16.0); // 469 contianer padding left
    myValues.add(15.0); // 470 contianer padding bottom
    myValues.add(32.0); // 471 icon error size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 472 name font size
    myValues.add(16.0); // 473 contianer padding top
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 474 mobile font size
    myValues.add(16.0); // 475 contianer padding top
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 476 email font size


    // problempage isMedium
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 26.0 - 5.0); // 477 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 26.0 - 5.0); // 478 no internet font size

    myValues.add(mylocale.languageCode.contains("en") ? 15.0 : 20.0 - 5.0); // 479 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 18.0 - 5.0); // 480 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 18.0 - 5.0); // 481 animation Date Text second font size
    myValues.add(5.0); // 482 card margin bottom
    myValues.add(10.0); // 483 logout left
    myValues.add(10.0); // 484 logout right
    myValues.add(15.0); // 485 card margin top
    myValues.add(10.0); // 486 first part padding top
    myValues.add(10.0); // 487 first part padding left
    myValues.add(10.0); // 488 first part padding right
    myValues.add(5.0); // 489 first part padding bottom
    myValues.add(5.0); // 490 all padding
    myValues.add(8.0); // 491 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 492 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 493 CustomCircleAvatar padding left
    myValues.add(55.0); // 494 CustomCircleAvatar radius
    myValues.add(25.0); // 495 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 496 authorname font size
    myValues.add(35.0); // 497 time icon size
    myValues.add(5.0); // 498 size box width
    myValues.add(5.0); // 499 second part padding top
    myValues.add(10.0); // 500 second part padding left
    myValues.add(10.0); // 501 second part padding right
    myValues.add(10.0); // 502 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 503 authoraddress font size
    myValues.add(8.0); // 504 size box height
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 505 authormobilenumber font size
    myValues.add(10.0); // 506 description part padding left
    myValues.add(10.0); // 507 description part padding right
    myValues.add(10.0); // 508 description part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 30.0 - 5.0); // 509 description font size    
    myValues.add(1.0); // 510 size box height
    myValues.add(10.0); // 511 third part padding top
    myValues.add(10.0); // 512 third part padding left
    myValues.add(10.0); // 513 third part padding right
    myValues.add(10.0); // 514 third part padding bottom
    myValues.add(8.0); // 515 padding all
    myValues.add(8.0); // 516 BorderRadius
    myValues.add(3); // 517 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 518 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 519 CustomCircleAvatar padding left
    myValues.add(55.0); // 520 CustomCircleAvatar radius
    myValues.add(25.0); // 521 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 522 bookauthorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 16.0 : 22.0 - 5.0); // 523 date_book font size
    myValues.add(2); // 524 Flexible flex

    myValues.add(5.0); // 525 comment area padding top
    myValues.add(10.0); // 526 comment area padding left
    myValues.add(10.0); // 527 comment area padding right
    myValues.add(10.0); // 528 comment area padding bottom
    myValues.add(5); // 529 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 530 comment text font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 531 comment lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 18.0 - 5.0); // 532 comment error font size
    myValues.add(32.0); // 533 username icon size
    myValues.add(1); // 534 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 535 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 536 SnackBar font size 2    
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 537 showdialog title font size
    myValues.add(22.0); // 538 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 539 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 540 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 541 SnackBar font size
    myValues.add(35.0); // 542 send comment icon size

    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 26.0 - 5.0); // 543 no comments font size
    myValues.add(mylocale.languageCode.contains("en") ? 15.0 : 20.0 - 5.0); // 544 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 18.0 - 5.0); // 545 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 14.0 : 18.0 - 5.0); // 546 animation Date Text second font size
    myValues.add(16.0); // 547 card margin bottom 1
    myValues.add(6.0); // 548 card margin bottom 2
    myValues.add(25.0); // 549 card margin left
    myValues.add(25.0); // 550 card margin right
    myValues.add(5.0); // 551 card margin top
    myValues.add(10.0); // 552 first part padding top
    myValues.add(10.0); // 553 first part padding left
    myValues.add(10.0); // 554 first part padding right
    myValues.add(5.0); // 555 first part padding bottom
    myValues.add(5.0); // 556 all padding
    myValues.add(8.0); // 557 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 558 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 559 CustomCircleAvatar padding left
    myValues.add(50.0); // 560 CustomCircleAvatar radius
    myValues.add(25.0); // 561 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 562 authorname font size
    myValues.add(35.0); // 563 time icon size
    myValues.add(5.0); // 564 size box width
    myValues.add(1); // 565 Flexible flex
    myValues.add(10.0); // 566 second part padding top
    myValues.add(10.0); // 567 second part padding left
    myValues.add(10.0); // 568 second part padding right
    myValues.add(16.0); // 569 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 26.0 - 5.0); // 570 comment font size        
    myValues.add(0.0); // 571 more button padding top
    myValues.add(10.0); // 572 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 573 more button font size    


    // image isMedium
    myValues.add(50.0); // 574 BorderRadius topLeft
    myValues.add(50.0); // 575 BorderRadius topRight
    myValues.add(.4); // 576 container height 1
    myValues.add(.3); // 577 container height 2
    myValues.add(10.0); // 578 padding all
    myValues.add(25.0); // 579 sized box height 
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 580 pick image font size
    myValues.add(10.0); // 581 sized box height 
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 582 use camera font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 583 use gallery font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 584 please pick image font size
    myValues.add(.5); // 585 image height
    myValues.add(.95); // 586 image width
    myValues.add(2.0); // 587 BorderSide width
    myValues.add(5.0); // 588 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 589 add image font size
    myValues.add(10.0); // 590 sized box height
    myValues.add(32.0); // 591 camare icon size

    // onboarding isMedium
    myValues.add(10.0); // 592 title continner padding rigt
    myValues.add(10.0); // 593 title continner padding left
    myValues.add(0.0); // 594 title continner padding top
    myValues.add(0.0); // 595 title continner padding bottom
    myValues.add(8.0); // 596 title continner BorderRadius
    myValues.add(10.0); // 597 description continner padding rigt
    myValues.add(10.0); // 598 description continner padding left
    myValues.add(0.0); // 599 description continner padding top
    myValues.add(0.0); // 600 description continner padding bottom
    myValues.add(8.0); // 601 description continner BorderRadius

    // editprofile isMedium
    myValues.add(24.0); // 602 save button font size

    // allproblems isMedium
    myValues.add(.85); // 603 drawer wdith

    // firstsection isMedium
    myValues.add(100.0); // 604 drawer header height 
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 605 drawer header padding right
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 606 drawer header padding left
    myValues.add(0.0); // 607 drawer header margin 
    myValues.add(5.0); // 608 CustomCircleAvatar padding top 

    // allproblems isMedium
    myValues.add(120.0); // 609 allproblems no inter net image width
    myValues.add(120.0); // 610 allproblems no inter net image height
    myValues.add(20.0); // 611 sized box height

    // diffrentproblems isMedium
    myValues.add(120.0); // 612 allproblems no inter net image width
    myValues.add(120.0); // 613 allproblems no inter net image height
    myValues.add(20.0); // 614 sized box height

    // allusrs isMedium
    myValues.add(120.0); // 615 allproblems no inter net image width
    myValues.add(120.0); // 616 allproblems no inter net image height
    myValues.add(20.0); // 617 sized box height

    // hasproblem isMedium
    myValues.add(80.0); // 618 allproblems no inter net image width
    myValues.add(80.0); // 619 allproblems no inter net image height
    myValues.add(15.0); // 620 sized box height

  } else if (isNormal) {

    // onboarding Screen isNormal
    myValues.add(.05); // 0 Screen Width
    myValues.add(.15); // 1 Screen Width
    myValues.add(250.0); // 2 Icon Size
    myValues.add(100.0); // 3 Icon Size
    myValues.add(0.0); // 4 Icon Offset
    myValues.add(-100.0); // 5 Icon Offset
    myValues.add(-40.0); // 6 Icon Offset
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 46.0 - 5.0); // 7 title font size
    myValues.add(0.0); // 8 title Offset 1
    myValues.add(-30.0); // 9 title Offset 2
    myValues.add(-20.0); // 10 title Offset 3
    myValues.add(.05); // 11 description padding right
    myValues.add(.05); // 12 description padding left
    myValues.add(18.0); // 13 description padding top 1
    myValues.add(10.0); // 14 description padding top 2
    myValues.add(mylocale.languageCode.contains("en") ? 38.0 : 38.0 - 5.0); // 15 description font size
    myValues.add(0.0); // 16 description Offset 1
    myValues.add(-20.0); // 17 description Offset 2
    myValues.add(-20.0); // 18 description Offset 3
    myValues.add(0.0); // 19 PageIndicator Offset 1
    myValues.add(270.0); // 20 PageIndicator Offset 2
    myValues.add(100.0); // 21 PageIndicator Offset 3
    myValues.add(24.0); // 22 Get Start padding bottom 1
    myValues.add(15.0); // 23 Get Start padding bottom 2
    myValues.add(50.0); // 24 Get Start sized box hieght
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 40.0 - 5.0); // 25 Get Start font size
    myValues.add(1.0); // 26 Get Start letter Spacing
    myValues.add(15.0); // 27 PageViewIndicator Circle size 1
    myValues.add(25.0); // 28 PageViewIndicator Circle size 2

    // auth screen isNormal
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 29 AppBar Title font size
    myValues.add(15.0); // 30 contianer padding
    myValues.add(10.0); // 31 sized box height 1
    myValues.add(10.0); // 32 sized box height 2
    myValues.add(10.0); // 33 sized box height 3
    myValues.add(10.0); // 34 sized box height 4
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 35 login and sigup button font size
    myValues.add(10.0); // 36 sized box height 5
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 37 switch login and sigup button font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 38 email text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 39 email lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 40 email error font size
    myValues.add(55.0); // 41 email icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 42 password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 43 password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 44 password error font size
    myValues.add(55.0); // 45 password icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 46 confirm password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 47 confirm password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 48 confirm password error font size
    myValues.add(55.0); // 49 confirm password icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 50 user name text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 51 user name lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 52 user name error font size
    myValues.add(55.0); // 53 user name icon size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 54 login showdialog title font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 55 login showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 56 login showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 57 login showdialog title font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 58 login showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 59 login showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 60 SnackBar font size

    // allproblems screen isNormal
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 61 AppBar Title font size
    myValues.add(15.0); // 62 menue icon button padding right
    myValues.add(15.0); // 63 menue icon button padding left
    myValues.add(40.0); // 64 menue icon button size
    myValues.add(40.0); // 65 add problem icon button size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 66 add problem icon button SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 67 add problem icon button SnackBar font size 2
    myValues.add(10.0); // 68 popupMenu padding right
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 69 popupMenu change password font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 70 popupMenu language font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 71 popupMenu contact us font size
    myValues.add(40.0); // 72 popupMenu icon button size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 73 Problem List  No Problems Found font size
    myValues.add(25.0); // 74 Drawer list view padding top
    
    // firstsection isNormal
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 :8.0); // 75 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 8.0); // 76 CustomCircleAvatar padding left
    myValues.add(5.0); // 77 CustomCircleAvatar padding bottom
    myValues.add(75.0); // 78 CustomCircleAvatar radius
    myValues.add(20.0); // 79 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 80 user name font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 32.0 - 5.0); // 81 user type name font size

    // secondsection isNormal
    myValues.add(10.0); // 82 main padding top
    myValues.add(10.0); // 83 main padding left
    myValues.add(10.0); // 84 main padding right
    myValues.add(10.0); // 85 main padding bottom

    myValues.add(8.0); // 86 new problems padding top
    myValues.add(5.0); // 87 new padding left
    myValues.add(5.0); // 88 new padding right
    myValues.add(8.0); // 89 new padding bottom
    myValues.add(40.0); // 90 icon size
    myValues.add(8.0); // 91 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 92 new problems font size
    myValues.add(8.0); // 93 BorderRadius
    myValues.add(8.0); // 94 new problems count padding right
    myValues.add(8.0); // 95 new padding count left
    myValues.add(5.0); // 96 new padding count top
    myValues.add(5.0); // 97 new padding count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 98 new problems count font size

    myValues.add(8.0); // 99 has problems padding top
    myValues.add(8.0); // 100 has problems padding bottom
    myValues.add(5.0); // 101 has problems padding right
    myValues.add(5.0); // 102 has problems padding left
    myValues.add(40.0); // 103 icon size
    myValues.add(8.0); // 104 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 105 has problems font size
    myValues.add(8.0); // 106 BorderRadius
    myValues.add(8.0); // 107 has problems count padding right
    myValues.add(8.0); // 108 has problems count padding left
    myValues.add(5.0); // 109 has problems count padding top
    myValues.add(5.0); // 110 has problems count padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 111 has problems count font size

    myValues.add(8.0); // 112 solved problems padding top
    myValues.add(8.0); // 113 solved problems padding bottom
    myValues.add(5.0); // 114 solved problems padding right
    myValues.add(5.0); // 115 solved problems padding left
    myValues.add(40.0); // 116 icon size
    myValues.add(8.0); // 117 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 118 solved problems font size
    myValues.add(8.0); // 119 BorderRadius
    myValues.add(8.0); // 120 solved problems count padding right
    myValues.add(8.0); // 121 solved problems count padding left
    myValues.add(5.0); // 122 solved problems count padding top
    myValues.add(5.0); // 123 solved problems count padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 124 solved problems count font size

    // thirdsection isNormal
    myValues.add(10.0); // 125 main padding top
    myValues.add(10.0); // 126 main padding left
    myValues.add(10.0); // 127 main padding right
    myValues.add(10.0); // 128 main padding bottom

    myValues.add(8.0); // 129 admins padding top
    myValues.add(5.0); // 130 admins left
    myValues.add(5.0); // 131 admins right
    myValues.add(8.0); // 132 admins bottom
    myValues.add(40.0); // 133 icon size
    myValues.add(8.0); // 134 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 135 admins font size
    myValues.add(8.0); // 136 BorderRadius
    myValues.add(8.0); // 137 admins count padding right
    myValues.add(8.0); // 138 admins count left
    myValues.add(5.0); // 139 admins count top
    myValues.add(5.0); // 140 admins count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 141 admins count font size

    myValues.add(8.0); // 142 users padding top
    myValues.add(5.0); // 143 users left
    myValues.add(5.0); // 144 users right
    myValues.add(8.0); // 145 users bottom
    myValues.add(40.0); // 146 icon size
    myValues.add(8.0); // 147 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 148 users font size
    myValues.add(8.0); // 149 BorderRadius
    myValues.add(8.0); // 150 users count padding right
    myValues.add(8.0); // 151 users count left
    myValues.add(5.0); // 152 users count top
    myValues.add(5.0); // 153 users count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 154 users count font size

    myValues.add(8.0); // 155 clients padding top
    myValues.add(5.0); // 156 clients left
    myValues.add(5.0); // 157 clients right
    myValues.add(8.0); // 158 clients bottom
    myValues.add(40.0); // 159 icon size
    myValues.add(8.0); // 160 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 161 clients font size
    myValues.add(8.0); // 162 BorderRadius
    myValues.add(8.0); // 163 clients count padding right
    myValues.add(8.0); // 164 clients count left
    myValues.add(5.0); // 165 clients count top
    myValues.add(5.0); // 166 clients count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 167 clients count font size

    myValues.add(8.0); // 168 new padding top
    myValues.add(5.0); // 169 new left
    myValues.add(5.0); // 170 new right
    myValues.add(8.0); // 171 new bottom
    myValues.add(40.0); // 172 icon size
    myValues.add(8.0); // 173 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 174 new font size
    myValues.add(8.0); // 175 BorderRadius
    myValues.add(8.0); // 176 new count padding right
    myValues.add(8.0); // 177 new count left
    myValues.add(5.0); // 178 new count top
    myValues.add(5.0); // 179 new count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 180 new count font size

    // fourthsection isNormal
    myValues.add(10.0); // 181 main padding top
    myValues.add(10.0); // 182 main padding left
    myValues.add(10.0); // 183 main padding right
    myValues.add(10.0); // 184 main padding bottom

    myValues.add(8.0); // 185 edit profile padding top
    myValues.add(5.0); // 186 edit profile left
    myValues.add(5.0); // 187 edit profile right
    myValues.add(8.0); // 188 edit profile bottom
    myValues.add(35.0); // 189 icon size
    myValues.add(8.0); // 190 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 191 edit profile font size
    myValues.add(8.0); // 192 BorderRadius
    myValues.add(8.0); // 193 edit profile count padding right
    myValues.add(8.0); // 194 edit profile count left
    myValues.add(5.0); // 195 edit profile count top
    myValues.add(5.0); // 196 edit profile count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 197 edit profile count font size

    myValues.add(8.0); // 198 logout padding top
    myValues.add(5.0); // 199 logout left
    myValues.add(5.0); // 200 logout right
    myValues.add(8.0); // 201 logout bottom
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 202 logout SnackBar font size
    myValues.add(40.0); // 203 icon size
    myValues.add(8.0); // 204 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 205 logout font size
    
    // problem_card isNormal
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 206 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 207 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 208 animation Date Text second font size
    myValues.add(20.0); // 209 card margin bottom 1
    myValues.add(10.0); // 210 card margin bottom 2
    myValues.add(12.0); // 211 logout left
    myValues.add(12.0); // 212 logout right
    myValues.add(15.0); // 213 card margin top 1
    myValues.add(5.0); // 214 card margin top 2
    myValues.add(10.0); // 215 first part padding top
    myValues.add(5.0); // 216 first part padding left
    myValues.add(5.0); // 217 first part padding right
    myValues.add(10.0); // 218 first part padding bottom
    myValues.add(10.0); // 219 all padding
    myValues.add(10.0); // 220 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 0.0); // 221 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 12.0); // 222 CustomCircleAvatar padding left
    myValues.add(70.0); // 223 CustomCircleAvatar radius
    myValues.add(25.0); // 224 CustomCircleAvatar size
    myValues.add(4); // 225 Flexible flex 1
    myValues.add(2); // 226 Flexible flex 2
    myValues.add(3); // 227 Flexible flex 3
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 228 authorname font size
    myValues.add(50.0); // 229 time icon size
    myValues.add(5.0); // 230 size box width
    myValues.add(4); // 231 Flexible flex 1
    myValues.add(1); // 232 Flexible flex 2
    myValues.add(5); // 233 Flexible flex 3
    myValues.add(1); // 234 solve problem Flexible flex
    myValues.add(1); // 235 has problem Flexible flex
    myValues.add(5.0); // 236 size box width 1
    myValues.add(5.0); // 237 size box width 2
    myValues.add(1); // 238 reserve problem Flexible flex
    myValues.add(4); // 239 Flexible flex 1
    myValues.add(1); // 240 Flexible flex 2
    myValues.add(3); // 241 Flexible flex 3
    myValues.add(5.0); // 242 second part padding top
    myValues.add(10.0); // 243 second part padding left
    myValues.add(10.0); // 244 second part padding right
    myValues.add(10.0); // 245 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 246 authoraddress font size
    myValues.add(8.0); // 247 size box height
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 248 authormobilenumber font size
    myValues.add(10.0); // 249 description part padding left
    myValues.add(10.0); // 250 description part padding right
    myValues.add(10.0); // 251 description part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 252 description font size
    myValues.add(10.0); // 253 comment part padding left
    myValues.add(10.0); // 254 comment part padding right
    myValues.add(10.0); // 255 comment part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 256 comment font size
    myValues.add(1.0); // 257 size box height
    myValues.add(10.0); // 258 third part padding top
    myValues.add(10.0); // 259 third part padding left
    myValues.add(10.0); // 260 third part padding right
    myValues.add(10.0); // 261 third part padding bottom
    myValues.add(10.0); // 262 padding all
    myValues.add(12.0); // 263 BorderRadius
    myValues.add(3); // 264 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 0.0); // 265 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 12.0); // 266 CustomCircleAvatar padding left
    myValues.add(70.0); // 267 CustomCircleAvatar radius
    myValues.add(25.0); // 268 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 269 bookauthorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 270 date_book font size
    myValues.add(2); // 271 Flexible flex
    myValues.add(0.0); // 272 more button padding top
    myValues.add(10.0); // 273 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 36 - 5.0); // 274 more button font size
    myValues.add(40.0); // 275 solve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 276 solve problem font size
    myValues.add(40.0); // 277 has problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 278 has problem font size
    myValues.add(40.0); // 279 reserve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 280 reserve problem font size


    // solveproblem isNormal
    myValues.add(0.0); // 281 solve button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 28.0 - 5.0); // 282 solve problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 283 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 284 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 285 showDialog title font size
    myValues.add(22.0); // 286 showDialog content padding all
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 287 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 288 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 289 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 290 showDialog 2 title font size
    myValues.add(22.0); // 291 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 292 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 293 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 294 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 295 SnackBar font size
    myValues.add(40.0); // 296 solve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 297 solve problem font size

    // hasproblem isNormal
    myValues.add(0.0); // 298 has button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 299 has problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 300 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 301 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 302 showDialog title font size
    myValues.add(22.0); // 303 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 304 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 305 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 306 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 307 showDialog 2 title font size
    myValues.add(22.0); // 308 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 309 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 310 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 311 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 312 SnackBar font size
    myValues.add(40.0); // 313 has problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 314 has problem font size

    // reserve isNormal
    myValues.add(0.0); // 315 reserve button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 28.0 - 5.0); // 316 reserve problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 317 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 318 SnackBar font size 2
    myValues.add(50.0); // 319 BorderRadius topLeft
    myValues.add(50.0); // 320 BorderRadius topRight
    myValues.add(1); // 321 Flexible flex
    myValues.add(0.0); // 322 padding top
    myValues.add(8.0); // 323 padding left
    myValues.add(30.0); // 324 back button icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 325 title font size
    myValues.add(5); // 326 Flexible flex
    myValues.add(.10); // 327 list view padding top
    myValues.add(12.0); // 328 padding all
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 329 date time font size
    myValues.add(5.0); // 330 padding all
    myValues.add(30.0); // 331 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 332 date time label font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 333 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 334 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 335 SnackBar font size 3
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 336 reserve button font size 
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 337 SnackBar font size 4
    myValues.add(40.0); // 338 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 339 reserve button font size

    // deleteproblem isNormal
    myValues.add(40.0); // 340 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 341 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 342 showDialog title font size
    myValues.add(22.0); // 343 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 344 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 345 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 346 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 347 showDialog 2 title font size
    myValues.add(22.0); // 348 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 349 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 350 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 351 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 352 showDialog 1 ok font size
   
    // differentproblems isNormal
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 353 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 354 no problems found font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 355 no inter net font size

    // usertype isNormal
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 356 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 357 no users found font size
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 358 no inter net font size

    // user_card isNormal    
    myValues.add(20.0); // 359 card margin bottom 1
    myValues.add(7.0); // 360 card margin bottom 2
    myValues.add(12.0); // 361 card margin left
    myValues.add(12.0); // 362 card margin right
    myValues.add(15.0); // 363 card margin top 1
    myValues.add(5.0); // 364 card margin top 2
    myValues.add(10.0); // 365 first part padding top
    myValues.add(10.0); // 366 first part padding left
    myValues.add(10.0); // 367 first part padding right
    myValues.add(5.0); // 368 first part padding bottom
    myValues.add(8.0); // 369 all padding
    myValues.add(12.0); // 370 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 0.0); // 371 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 12.0); // 372 CustomCircleAvatar padding left
    myValues.add(55.0); // 373 CustomCircleAvatar radius
    myValues.add(25.0); // 374 CustomCircleAvatar size
    myValues.add(2); // 375 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 376 authorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 377 authortypename font size
    myValues.add(3); // 378 Flexible flex
    myValues.add(2); // 379 Flexible flex
    myValues.add(0.0); // 380 more button padding top
    myValues.add(10.0); // 381 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 36.0 - 5.0); // 382 more button font size

    // deleteuser isNormal
    myValues.add(40.0); // 383 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 384 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 385 showDialog title font size
    myValues.add(22.0); // 386 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 387 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 388 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 389 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 390 showDialog 2 title font size
    myValues.add(22.0); // 391 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 392 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 393 showDialog 2 ok font size    
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 394 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 395 SnackBar font size
    
    // changeusertype isNormal
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 396 admins font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 397 users font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 398 clients font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 399 SnackBar font size
    myValues.add(10.0); // 400 padding right
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 401 change button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 402 showDialog title font size
    myValues.add(22.0); // 403 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 404 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 405 showDialog ok font size
    
    // editprofile isNormal
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 406 AppBar Title font size
    myValues.add(15.0); // 407 contianer padding all
    myValues.add(15.0); // 408 sized box height 1
    myValues.add(15.0); // 409 sized box height 2
    myValues.add(15.0); // 410 sized box height 3
    myValues.add(15.0); // 411 sized box height 4
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 412 username text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 413 username lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 414 username error font size
    myValues.add(32.0); // 415 username icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 416 mobile_number text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 417 mobile_number lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 418 mobile_number error font size
    myValues.add(32.0); // 419 mobile_number icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 420 address text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 421 address lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 422 address error font size
    myValues.add(32.0); // 423 address icon size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 424 showdialog title font size
    myValues.add(22.0); // 425 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 426 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 427 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 428 showdialog title font size
    myValues.add(22.0); // 429 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 430 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 431 showdialog ok button font size
    
    // addproblem isNormal
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 432 AppBar Title font size
    myValues.add(15.0); // 433 contianer padding all
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 434 problem description text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 435 problem description lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 436 problem description error font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 437 problem description counter font size
    myValues.add(45.0); // 438 username icon size
    myValues.add(10.0); // 439 sized box height 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 34.0 - 5.0); // 440 add button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 441 showdialog title font size
    myValues.add(22.0); // 442 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 443 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 444 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 445 showdialog title font size
    myValues.add(22.0); // 446 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 447 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 448 showdialog ok button font size

    // changepassword isNormal
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 449 AppBar Title font size
    myValues.add(15.0); // 450 contianer padding all
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 451 password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 452 password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 453 password error font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 454 password counter font size
    myValues.add(32.0); // 455 username icon size
    myValues.add(10.0); // 456 sized box height 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 457 save button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 458 showdialog title font size
    myValues.add(22.0); // 459 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 460 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 461 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 462 showdialog title font size
    myValues.add(22.0); // 463 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 464 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 465 showdialog ok button font size
    
    // contactdeveloper isNormal
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 466 AppBar Title font size
    myValues.add(100.0); // 467 contianer padding top
    myValues.add(16.0); // 468 contianer padding right
    myValues.add(16.0); // 469 contianer padding left
    myValues.add(15.0); // 470 contianer padding bottom
    myValues.add(32.0); // 471 icon error size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 472 name font size
    myValues.add(16.0); // 473 contianer padding top
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 474 mobile font size
    myValues.add(16.0); // 475 contianer padding top
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 476 email font size


    // problempage isNormal
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 36.0 - 5.0); // 477 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 34.0 - 5.0); // 478 no internet font size

    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 479 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 480 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 481 animation Date Text second font size
    myValues.add(10.0); // 482 card margin bottom
    myValues.add(12.0); // 483 logout left
    myValues.add(12.0); // 484 logout right
    myValues.add(15.0); // 485 card margin top
    myValues.add(10.0); // 486 first part padding top
    myValues.add(10.0); // 487 first part padding left
    myValues.add(10.0); // 488 first part padding right
    myValues.add(5.0); // 489 first part padding bottom
    myValues.add(10.0); // 490 all padding
    myValues.add(12.0); // 491 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 0.0); // 492 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 12.0); // 493 CustomCircleAvatar padding left
    myValues.add(70.0); // 494 CustomCircleAvatar radius
    myValues.add(25.0); // 495 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 496 authorname font size
    myValues.add(50.0); // 497 time icon size
    myValues.add(5.0); // 498 size box width
    myValues.add(5.0); // 499 second part padding top
    myValues.add(10.0); // 500 second part padding left
    myValues.add(10.0); // 501 second part padding right
    myValues.add(10.0); // 502 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 503 authoraddress font size
    myValues.add(8.0); // 504 size box height
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 505 authormobilenumber font size
    myValues.add(10.0); // 506 description part padding left
    myValues.add(10.0); // 507 description part padding right
    myValues.add(10.0); // 508 description part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 509 description font size    
    myValues.add(1.0); // 510 size box height
    myValues.add(10.0); // 511 third part padding top
    myValues.add(10.0); // 512 third part padding left
    myValues.add(10.0); // 513 third part padding right
    myValues.add(10.0); // 514 third part padding bottom
    myValues.add(8.0); // 515 padding all
    myValues.add(12.0); // 516 BorderRadius
    myValues.add(3); // 517 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 0.0); // 518 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 12.0); // 519 CustomCircleAvatar padding left
    myValues.add(55.0); // 520 CustomCircleAvatar radius
    myValues.add(25.0); // 521 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 522 bookauthorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 30.0 - 5.0); // 523 date_book font size
    myValues.add(2); // 524 Flexible flex

    myValues.add(5.0); // 525 comment area padding top
    myValues.add(10.0); // 526 comment area padding left
    myValues.add(10.0); // 527 comment area padding right
    myValues.add(10.0); // 528 comment area padding bottom
    myValues.add(5); // 529 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 530 comment text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 531 comment lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 532 comment error font size
    myValues.add(40.0); // 533 username icon size
    myValues.add(1); // 534 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 535 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 536 SnackBar font size 2    
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 537 showdialog title font size
    myValues.add(22.0); // 538 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 539 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 540 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 541 SnackBar font size
    myValues.add(50.0); // 542 send comment icon size

    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 543 no comments font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 28.0 - 5.0); // 544 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 26.0 - 5.0); // 545 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 26.0 - 5.0); // 546 animation Date Text second font size
    myValues.add(16.0); // 547 card margin bottom 1
    myValues.add(6.0); // 548 card margin bottom 2
    myValues.add(25.0); // 549 card margin left
    myValues.add(25.0); // 550 card margin right
    myValues.add(5.0); // 551 card margin top
    myValues.add(10.0); // 552 first part padding top
    myValues.add(10.0); // 553 first part padding left
    myValues.add(10.0); // 554 first part padding right
    myValues.add(5.0); // 555 first part padding bottom
    myValues.add(8.0); // 556 all padding
    myValues.add(12.0); // 557 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 10.0 : 0.0); // 558 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 10.0); // 559 CustomCircleAvatar padding left
    myValues.add(65.0); // 560 CustomCircleAvatar radius
    myValues.add(25.0); // 561 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 34.0 - 5.0); // 562 authorname font size
    myValues.add(40.0); // 563 time icon size
    myValues.add(5.0); // 564 size box width
    myValues.add(1); // 565 Flexible flex
    myValues.add(10.0); // 566 second part padding top
    myValues.add(10.0); // 567 second part padding left
    myValues.add(10.0); // 568 second part padding right
    myValues.add(16.0); // 569 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 38.0 - 5.0); // 570 comment font size        
    myValues.add(0.0); // 571 more button padding top
    myValues.add(10.0); // 572 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 36.0 - 5.0); // 573 more button font size    


    // image isNormal
    myValues.add(50.0); // 574 BorderRadius topLeft
    myValues.add(50.0); // 575 BorderRadius topRight
    myValues.add(.4); // 576 container height 1
    myValues.add(.3); // 577 container height 2
    myValues.add(10.0); // 578 padding all
    myValues.add(25.0); // 579 sized box height 
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 580 pick image font size
    myValues.add(10.0); // 581 sized box height 
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 582 use camera font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 583 use gallery font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 584 please pick image font size
    myValues.add(.5); // 585 image height
    myValues.add(.95); // 586 image width
    myValues.add(2.0); // 587 BorderSide width
    myValues.add(5.0); // 588 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 589 add image font size
    myValues.add(10.0); // 590 sized box height
    myValues.add(45.0); // 591 camare icon size

    // onboarding isNormal
    myValues.add(18.0); // 592 title continner padding rigt
    myValues.add(18.0); // 593 title continner padding left
    myValues.add(0.0); // 594 title continner padding top
    myValues.add(0.0); // 595 title continner padding bottom
    myValues.add(15.0); // 596 title continner BorderRadius
    myValues.add(15.0); // 597 description continner padding rigt
    myValues.add(15.0); // 598 description continner padding left
    myValues.add(0.0); // 599 description continner padding top
    myValues.add(0.0); // 600 description continner padding bottom
    myValues.add(15.0); // 601 description continner BorderRadius

    // editprofile isNormal
    myValues.add(34.0); // 602 save button font size

    // allproblems isNormal
    myValues.add(.85); // 603 drawer wdith

    // firstsection isNormal
    myValues.add(120.0); // 604 drawer header height 
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 605 drawer header padding right
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 606 drawer header padding left
    myValues.add(0.0); // 607 drawer header margin 
    myValues.add(0.0); // 608 CustomCircleAvatar padding top 

    // allproblems isNormal
    myValues.add(120.0); // 609 allproblems no inter net image width
    myValues.add(120.0); // 610 allproblems no inter net image height
    myValues.add(20.0); // 611 sized box height

    // diffrentproblems isNormal
    myValues.add(120.0); // 612 allproblems no inter net image width
    myValues.add(120.0); // 613 allproblems no inter net image height
    myValues.add(20.0); // 614 sized box height

    // allusrs isNormal
    myValues.add(120.0); // 615 allproblems no inter net image width
    myValues.add(120.0); // 616 allproblems no inter net image height
    myValues.add(20.0); // 617 sized box height

    // hasproblem isNormal
    myValues.add(100.0); // 618 allproblems no inter net image width
    myValues.add(100.0); // 619 allproblems no inter net image height
    myValues.add(20.0); // 620 sized box height

  } else if (isLarge) {

    // onboarding Screen isLarge
    myValues.add(.05); // 0 Screen Width
    myValues.add(.15); // 1 Screen Width
    myValues.add(250.0); // 2 Icon Size
    myValues.add(100.0); // 3 Icon Size
    myValues.add(0.0); // 4 Icon Offset
    myValues.add(-100.0); // 5 Icon Offset
    myValues.add(-40.0); // 6 Icon Offset
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 46.0 - 5.0); // 7 title font size
    myValues.add(0.0); // 8 title Offset 1
    myValues.add(-30.0); // 9 title Offset 2
    myValues.add(-20.0); // 10 title Offset 3
    myValues.add(.05); // 11 description padding right
    myValues.add(.05); // 12 description padding left
    myValues.add(18.0); // 13 description padding top 1
    myValues.add(10.0); // 14 description padding top 2
    myValues.add(mylocale.languageCode.contains("en") ? 38.0 : 38.0 - 5.0); // 15 description font size
    myValues.add(0.0); // 16 description Offset 1
    myValues.add(-20.0); // 17 description Offset 2
    myValues.add(-20.0); // 18 description Offset 3
    myValues.add(0.0); // 19 PageIndicator Offset 1
    myValues.add(270.0); // 20 PageIndicator Offset 2
    myValues.add(100.0); // 21 PageIndicator Offset 3
    myValues.add(24.0); // 22 Get Start padding bottom 1
    myValues.add(15.0); // 23 Get Start padding bottom 2
    myValues.add(50.0); // 24 Get Start sized box hieght
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 40.0 - 5.0); // 25 Get Start font size
    myValues.add(1.0); // 26 Get Start letter Spacing
    myValues.add(15.0); // 27 PageViewIndicator Circle size 1
    myValues.add(25.0); // 28 PageViewIndicator Circle size 2

    // auth screen isLarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 29 AppBar Title font size
    myValues.add(15.0); // 30 contianer padding
    myValues.add(10.0); // 31 sized box height 1
    myValues.add(10.0); // 32 sized box height 2
    myValues.add(10.0); // 33 sized box height 3
    myValues.add(10.0); // 34 sized box height 4
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 35 login and sigup button font size
    myValues.add(10.0); // 36 sized box height 5
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 37 switch login and sigup button font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 38 email text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 39 email lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 40 email error font size
    myValues.add(55.0); // 41 email icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 42 password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 43 password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 44 password error font size
    myValues.add(55.0); // 45 password icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 46 confirm password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 47 confirm password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 48 confirm password error font size
    myValues.add(55.0); // 49 confirm password icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 50 user name text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 51 user name lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 52 user name error font size
    myValues.add(55.0); // 53 user name icon size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 54 login showdialog title font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 55 login showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 56 login showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 57 login showdialog title font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 58 login showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 59 login showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 60 SnackBar font size

    // allproblems screen isLarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 61 AppBar Title font size
    myValues.add(15.0); // 62 menue icon button padding right
    myValues.add(15.0); // 63 menue icon button padding left
    myValues.add(40.0); // 64 menue icon button size
    myValues.add(40.0); // 65 add problem icon button size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 66 add problem icon button SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 67 add problem icon button SnackBar font size 2
    myValues.add(10.0); // 68 popupMenu padding right
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 69 popupMenu change password font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 70 popupMenu language font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 71 popupMenu contact us font size
    myValues.add(40.0); // 72 popupMenu icon button size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 73 Problem List  No Problems Found font size
    myValues.add(25.0); // 74 Drawer list view padding top
    
    // firstsection isLarge
    myValues.add(mylocale.languageCode.contains("en") ? 10.0 : 5.0); // 75 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 3.0 : 10.0); // 76 CustomCircleAvatar padding left
    myValues.add(5.0); // 77 CustomCircleAvatar padding bottom
    myValues.add(85.0); // 78 CustomCircleAvatar radius
    myValues.add(20.0); // 79 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 36.0 : 40.0 - 5.0); // 80 user name font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 81 user type name font size

    // secondsection isLarge
    myValues.add(10.0); // 82 main padding top
    myValues.add(10.0); // 83 main padding left
    myValues.add(10.0); // 84 main padding right
    myValues.add(10.0); // 85 main padding bottom

    myValues.add(8.0); // 86 new problems padding top
    myValues.add(5.0); // 87 new padding left
    myValues.add(5.0); // 88 new padding right
    myValues.add(8.0); // 89 new padding bottom
    myValues.add(40.0); // 90 icon size
    myValues.add(8.0); // 91 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 92 new problems font size
    myValues.add(8.0); // 93 BorderRadius
    myValues.add(8.0); // 94 new problems count padding right
    myValues.add(8.0); // 95 new padding count left
    myValues.add(5.0); // 96 new padding count top
    myValues.add(5.0); // 97 new padding count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 98 new problems count font size

    myValues.add(8.0); // 99 has problems padding top
    myValues.add(8.0); // 100 has problems padding bottom
    myValues.add(5.0); // 101 has problems padding right
    myValues.add(5.0); // 102 has problems padding left
    myValues.add(40.0); // 103 icon size
    myValues.add(8.0); // 104 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 105 has problems font size
    myValues.add(8.0); // 106 BorderRadius
    myValues.add(8.0); // 107 has problems count padding right
    myValues.add(8.0); // 108 has problems count padding left
    myValues.add(5.0); // 109 has problems count padding top
    myValues.add(5.0); // 110 has problems count padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 111 has problems count font size

    myValues.add(8.0); // 112 solved problems padding top
    myValues.add(8.0); // 113 solved problems padding bottom
    myValues.add(5.0); // 114 solved problems padding right
    myValues.add(5.0); // 115 solved problems padding left
    myValues.add(40.0); // 116 icon size
    myValues.add(8.0); // 117 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 118 solved problems font size
    myValues.add(8.0); // 119 BorderRadius
    myValues.add(8.0); // 120 solved problems count padding right
    myValues.add(8.0); // 121 solved problems count padding left
    myValues.add(5.0); // 122 solved problems count padding top
    myValues.add(5.0); // 123 solved problems count padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 124 solved problems count font size

    // thirdsection isLarge
    myValues.add(10.0); // 125 main padding top
    myValues.add(10.0); // 126 main padding left
    myValues.add(10.0); // 127 main padding right
    myValues.add(10.0); // 128 main padding bottom

    myValues.add(8.0); // 129 admins padding top
    myValues.add(5.0); // 130 admins left
    myValues.add(5.0); // 131 admins right
    myValues.add(8.0); // 132 admins bottom
    myValues.add(40.0); // 133 icon size
    myValues.add(8.0); // 134 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 135 admins font size
    myValues.add(8.0); // 136 BorderRadius
    myValues.add(8.0); // 137 admins count padding right
    myValues.add(8.0); // 138 admins count left
    myValues.add(5.0); // 139 admins count top
    myValues.add(5.0); // 140 admins count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 141 admins count font size

    myValues.add(8.0); // 142 users padding top
    myValues.add(5.0); // 143 users left
    myValues.add(5.0); // 144 users right
    myValues.add(8.0); // 145 users bottom
    myValues.add(40.0); // 146 icon size
    myValues.add(8.0); // 147 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 148 users font size
    myValues.add(8.0); // 149 BorderRadius
    myValues.add(8.0); // 150 users count padding right
    myValues.add(8.0); // 151 users count left
    myValues.add(5.0); // 152 users count top
    myValues.add(5.0); // 153 users count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 154 users count font size

    myValues.add(8.0); // 155 clients padding top
    myValues.add(5.0); // 156 clients left
    myValues.add(5.0); // 157 clients right
    myValues.add(8.0); // 158 clients bottom
    myValues.add(40.0); // 159 icon size
    myValues.add(8.0); // 160 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 161 clients font size
    myValues.add(8.0); // 162 BorderRadius
    myValues.add(8.0); // 163 clients count padding right
    myValues.add(8.0); // 164 clients count left
    myValues.add(5.0); // 165 clients count top
    myValues.add(5.0); // 166 clients count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 167 clients count font size

    myValues.add(8.0); // 168 new padding top
    myValues.add(5.0); // 169 new left
    myValues.add(5.0); // 170 new right
    myValues.add(8.0); // 171 new bottom
    myValues.add(40.0); // 172 icon size
    myValues.add(8.0); // 173 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 174 new font size
    myValues.add(8.0); // 175 BorderRadius
    myValues.add(8.0); // 176 new count padding right
    myValues.add(8.0); // 177 new count left
    myValues.add(5.0); // 178 new count top
    myValues.add(5.0); // 179 new count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 180 new count font size

    // fourthsection isLarge
    myValues.add(10.0); // 181 main padding top
    myValues.add(10.0); // 182 main padding left
    myValues.add(10.0); // 183 main padding right
    myValues.add(10.0); // 184 main padding bottom

    myValues.add(8.0); // 185 edit profile padding top
    myValues.add(5.0); // 186 edit profile left
    myValues.add(5.0); // 187 edit profile right
    myValues.add(8.0); // 188 edit profile bottom
    myValues.add(35.0); // 189 icon size
    myValues.add(8.0); // 190 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 191 edit profile font size
    myValues.add(8.0); // 192 BorderRadius
    myValues.add(8.0); // 193 edit profile count padding right
    myValues.add(8.0); // 194 edit profile count left
    myValues.add(5.0); // 195 edit profile count top
    myValues.add(5.0); // 196 edit profile count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 197 edit profile count font size

    myValues.add(8.0); // 198 logout padding top
    myValues.add(5.0); // 199 logout left
    myValues.add(5.0); // 200 logout right
    myValues.add(8.0); // 201 logout bottom
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 202 logout SnackBar font size
    myValues.add(40.0); // 203 icon size
    myValues.add(8.0); // 204 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 205 logout font size
    
    // problem_card isLarge
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 206 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 207 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 208 animation Date Text second font size
    myValues.add(20.0); // 209 card margin bottom 1
    myValues.add(10.0); // 210 card margin bottom 2
    myValues.add(12.0); // 211 logout left
    myValues.add(12.0); // 212 logout right
    myValues.add(15.0); // 213 card margin top 1
    myValues.add(5.0); // 214 card margin top 2
    myValues.add(10.0); // 215 first part padding top
    myValues.add(5.0); // 216 first part padding left
    myValues.add(5.0); // 217 first part padding right
    myValues.add(10.0); // 218 first part padding bottom
    myValues.add(10.0); // 219 all padding
    myValues.add(10.0); // 220 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 0.0); // 221 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 12.0); // 222 CustomCircleAvatar padding left
    myValues.add(70.0); // 223 CustomCircleAvatar radius
    myValues.add(25.0); // 224 CustomCircleAvatar size
    myValues.add(4); // 225 Flexible flex 1
    myValues.add(2); // 226 Flexible flex 2
    myValues.add(3); // 227 Flexible flex 3
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 228 authorname font size
    myValues.add(50.0); // 229 time icon size
    myValues.add(5.0); // 230 size box width
    myValues.add(4); // 231 Flexible flex 1
    myValues.add(1); // 232 Flexible flex 2
    myValues.add(5); // 233 Flexible flex 3
    myValues.add(1); // 234 solve problem Flexible flex
    myValues.add(1); // 235 has problem Flexible flex
    myValues.add(5.0); // 236 size box width 1
    myValues.add(5.0); // 237 size box width 2
    myValues.add(1); // 238 reserve problem Flexible flex
    myValues.add(4); // 239 Flexible flex 1
    myValues.add(1); // 240 Flexible flex 2
    myValues.add(3); // 241 Flexible flex 3
    myValues.add(5.0); // 242 second part padding top
    myValues.add(10.0); // 243 second part padding left
    myValues.add(10.0); // 244 second part padding right
    myValues.add(10.0); // 245 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 246 authoraddress font size
    myValues.add(8.0); // 247 size box height
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 248 authormobilenumber font size
    myValues.add(10.0); // 249 description part padding left
    myValues.add(10.0); // 250 description part padding right
    myValues.add(10.0); // 251 description part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 252 description font size
    myValues.add(10.0); // 253 comment part padding left
    myValues.add(10.0); // 254 comment part padding right
    myValues.add(10.0); // 255 comment part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 256 comment font size
    myValues.add(1.0); // 257 size box height
    myValues.add(10.0); // 258 third part padding top
    myValues.add(10.0); // 259 third part padding left
    myValues.add(10.0); // 260 third part padding right
    myValues.add(10.0); // 261 third part padding bottom
    myValues.add(10.0); // 262 padding all
    myValues.add(12.0); // 263 BorderRadius
    myValues.add(3); // 264 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 0.0); // 265 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 12.0); // 266 CustomCircleAvatar padding left
    myValues.add(70.0); // 267 CustomCircleAvatar radius
    myValues.add(25.0); // 268 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 269 bookauthorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 270 date_book font size
    myValues.add(2); // 271 Flexible flex
    myValues.add(0.0); // 272 more button padding top
    myValues.add(10.0); // 273 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 36 - 5.0); // 274 more button font size
    myValues.add(40.0); // 275 solve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 276 solve problem font size
    myValues.add(40.0); // 277 has problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 278 has problem font size
    myValues.add(40.0); // 279 reserve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 280 reserve problem font size


    // solveproblem isLarge
    myValues.add(0.0); // 281 solve button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 28.0 - 5.0); // 282 solve problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 283 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 284 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 285 showDialog title font size
    myValues.add(22.0); // 286 showDialog content padding all
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 287 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 288 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 289 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 290 showDialog 2 title font size
    myValues.add(22.0); // 291 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 292 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 293 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 294 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 295 SnackBar font size
    myValues.add(40.0); // 296 solve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 22.0 - 5.0); // 297 solve problem font size

    // hasproblem isLarge
    myValues.add(0.0); // 298 has button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 24.0 - 5.0); // 299 has problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 300 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 301 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 302 showDialog title font size
    myValues.add(22.0); // 303 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 304 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 305 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 306 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 307 showDialog 2 title font size
    myValues.add(22.0); // 308 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 309 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 310 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 311 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 312 SnackBar font size
    myValues.add(40.0); // 313 has problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 20.0 - 5.0); // 314 has problem font size

    // reserve isLarge
    myValues.add(0.0); // 315 reserve button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 28.0 - 5.0); // 316 reserve problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 317 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 318 SnackBar font size 2
    myValues.add(50.0); // 319 BorderRadius topLeft
    myValues.add(50.0); // 320 BorderRadius topRight
    myValues.add(1); // 321 Flexible flex
    myValues.add(0.0); // 322 padding top
    myValues.add(8.0); // 323 padding left
    myValues.add(30.0); // 324 back button icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 325 title font size
    myValues.add(5); // 326 Flexible flex
    myValues.add(.10); // 327 list view padding top
    myValues.add(12.0); // 328 padding all
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 329 date time font size
    myValues.add(5.0); // 330 padding all
    myValues.add(30.0); // 331 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 332 date time label font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 333 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 334 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 335 SnackBar font size 3
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 336 reserve button font size 
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 337 SnackBar font size 4
    myValues.add(40.0); // 338 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 18.0 : 24.0 - 5.0); // 339 reserve button font size

    // deleteproblem isLarge
    myValues.add(40.0); // 340 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 341 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 342 showDialog title font size
    myValues.add(22.0); // 343 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 344 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 345 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 346 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 347 showDialog 2 title font size
    myValues.add(22.0); // 348 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 349 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 350 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 351 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 352 showDialog 1 ok font size
   
    // differentproblems isLarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 353 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 354 no problems found font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 355 no inter net font size

    // usertype isLarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 356 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 357 no users found font size
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 358 no inter net font size

    // user_card isLarge    
    myValues.add(20.0); // 359 card margin bottom 1
    myValues.add(7.0); // 360 card margin bottom 2
    myValues.add(12.0); // 361 card margin left
    myValues.add(12.0); // 362 card margin right
    myValues.add(15.0); // 363 card margin top 1
    myValues.add(5.0); // 364 card margin top 2
    myValues.add(10.0); // 365 first part padding top
    myValues.add(10.0); // 366 first part padding left
    myValues.add(10.0); // 367 first part padding right
    myValues.add(5.0); // 368 first part padding bottom
    myValues.add(8.0); // 369 all padding
    myValues.add(12.0); // 370 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 0.0); // 371 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 12.0); // 372 CustomCircleAvatar padding left
    myValues.add(55.0); // 373 CustomCircleAvatar radius
    myValues.add(25.0); // 374 CustomCircleAvatar size
    myValues.add(2); // 375 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 376 authorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 377 authortypename font size
    myValues.add(3); // 378 Flexible flex
    myValues.add(2); // 379 Flexible flex
    myValues.add(0.0); // 380 more button padding top
    myValues.add(10.0); // 381 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 36.0 - 5.0); // 382 more button font size

    // deleteuser isLarge
    myValues.add(40.0); // 383 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 384 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 385 showDialog title font size
    myValues.add(22.0); // 386 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 387 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 388 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 389 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 390 showDialog 2 title font size
    myValues.add(22.0); // 391 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 392 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 393 showDialog 2 ok font size    
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 394 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 395 SnackBar font size
    
    // changeusertype isLarge
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 396 admins font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 397 users font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 398 clients font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 399 SnackBar font size
    myValues.add(10.0); // 400 padding right
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 401 change button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 402 showDialog title font size
    myValues.add(22.0); // 403 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 404 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 405 showDialog ok font size
    
    // editprofile isLarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 406 AppBar Title font size
    myValues.add(15.0); // 407 contianer padding all
    myValues.add(15.0); // 408 sized box height 1
    myValues.add(15.0); // 409 sized box height 2
    myValues.add(15.0); // 410 sized box height 3
    myValues.add(15.0); // 411 sized box height 4
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 412 username text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 413 username lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 414 username error font size
    myValues.add(32.0); // 415 username icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 416 mobile_number text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 417 mobile_number lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 418 mobile_number error font size
    myValues.add(32.0); // 419 mobile_number icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 420 address text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 421 address lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 422 address error font size
    myValues.add(32.0); // 423 address icon size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 424 showdialog title font size
    myValues.add(22.0); // 425 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 426 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 427 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 428 showdialog title font size
    myValues.add(22.0); // 429 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 430 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 431 showdialog ok button font size
    
    // addproblem isLarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 432 AppBar Title font size
    myValues.add(15.0); // 433 contianer padding all
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 434 problem description text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 435 problem description lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 436 problem description error font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 437 problem description counter font size
    myValues.add(45.0); // 438 username icon size
    myValues.add(10.0); // 439 sized box height 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 34.0 - 5.0); // 440 add button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 441 showdialog title font size
    myValues.add(22.0); // 442 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 443 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 444 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 445 showdialog title font size
    myValues.add(22.0); // 446 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 447 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 448 showdialog ok button font size

    // changepassword isLarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 449 AppBar Title font size
    myValues.add(15.0); // 450 contianer padding all
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 451 password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 452 password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 453 password error font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 454 password counter font size
    myValues.add(32.0); // 455 username icon size
    myValues.add(10.0); // 456 sized box height 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 457 save button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 458 showdialog title font size
    myValues.add(22.0); // 459 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 460 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 461 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 462 showdialog title font size
    myValues.add(22.0); // 463 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 464 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 465 showdialog ok button font size
    
    // contactdeveloper isLarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 466 AppBar Title font size
    myValues.add(100.0); // 467 contianer padding top
    myValues.add(16.0); // 468 contianer padding right
    myValues.add(16.0); // 469 contianer padding left
    myValues.add(15.0); // 470 contianer padding bottom
    myValues.add(32.0); // 471 icon error size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 472 name font size
    myValues.add(16.0); // 473 contianer padding top
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 474 mobile font size
    myValues.add(16.0); // 475 contianer padding top
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 476 email font size


    // problempage isLarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 36.0 - 5.0); // 477 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 34.0 - 5.0); // 478 no internet font size

    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 479 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 480 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 481 animation Date Text second font size
    myValues.add(10.0); // 482 card margin bottom
    myValues.add(12.0); // 483 logout left
    myValues.add(12.0); // 484 logout right
    myValues.add(15.0); // 485 card margin top
    myValues.add(10.0); // 486 first part padding top
    myValues.add(10.0); // 487 first part padding left
    myValues.add(10.0); // 488 first part padding right
    myValues.add(5.0); // 489 first part padding bottom
    myValues.add(10.0); // 490 all padding
    myValues.add(12.0); // 491 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 0.0); // 492 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 12.0); // 493 CustomCircleAvatar padding left
    myValues.add(70.0); // 494 CustomCircleAvatar radius
    myValues.add(25.0); // 495 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 496 authorname font size
    myValues.add(50.0); // 497 time icon size
    myValues.add(5.0); // 498 size box width
    myValues.add(5.0); // 499 second part padding top
    myValues.add(10.0); // 500 second part padding left
    myValues.add(10.0); // 501 second part padding right
    myValues.add(10.0); // 502 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 503 authoraddress font size
    myValues.add(8.0); // 504 size box height
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 505 authormobilenumber font size
    myValues.add(10.0); // 506 description part padding left
    myValues.add(10.0); // 507 description part padding right
    myValues.add(10.0); // 508 description part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 509 description font size    
    myValues.add(1.0); // 510 size box height
    myValues.add(10.0); // 511 third part padding top
    myValues.add(10.0); // 512 third part padding left
    myValues.add(10.0); // 513 third part padding right
    myValues.add(10.0); // 514 third part padding bottom
    myValues.add(8.0); // 515 padding all
    myValues.add(12.0); // 516 BorderRadius
    myValues.add(3); // 517 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 0.0); // 518 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 12.0); // 519 CustomCircleAvatar padding left
    myValues.add(55.0); // 520 CustomCircleAvatar radius
    myValues.add(25.0); // 521 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 522 bookauthorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 30.0 - 5.0); // 523 date_book font size
    myValues.add(2); // 524 Flexible flex

    myValues.add(5.0); // 525 comment area padding top
    myValues.add(10.0); // 526 comment area padding left
    myValues.add(10.0); // 527 comment area padding right
    myValues.add(10.0); // 528 comment area padding bottom
    myValues.add(5); // 529 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 530 comment text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 531 comment lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 532 comment error font size
    myValues.add(40.0); // 533 username icon size
    myValues.add(1); // 534 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 535 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 536 SnackBar font size 2    
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 537 showdialog title font size
    myValues.add(22.0); // 538 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 539 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 540 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 541 SnackBar font size
    myValues.add(50.0); // 542 send comment icon size

    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 543 no comments font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 28.0 - 5.0); // 544 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 26.0 - 5.0); // 545 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 26.0 - 5.0); // 546 animation Date Text second font size
    myValues.add(16.0); // 547 card margin bottom 1
    myValues.add(6.0); // 548 card margin bottom 2
    myValues.add(25.0); // 549 card margin left
    myValues.add(25.0); // 550 card margin right
    myValues.add(5.0); // 551 card margin top
    myValues.add(10.0); // 552 first part padding top
    myValues.add(10.0); // 553 first part padding left
    myValues.add(10.0); // 554 first part padding right
    myValues.add(5.0); // 555 first part padding bottom
    myValues.add(8.0); // 556 all padding
    myValues.add(12.0); // 557 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 10.0 : 0.0); // 558 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 10.0); // 559 CustomCircleAvatar padding left
    myValues.add(65.0); // 560 CustomCircleAvatar radius
    myValues.add(25.0); // 561 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 34.0 - 5.0); // 562 authorname font size
    myValues.add(40.0); // 563 time icon size
    myValues.add(5.0); // 564 size box width
    myValues.add(1); // 565 Flexible flex
    myValues.add(10.0); // 566 second part padding top
    myValues.add(10.0); // 567 second part padding left
    myValues.add(10.0); // 568 second part padding right
    myValues.add(16.0); // 569 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 38.0 - 5.0); // 570 comment font size        
    myValues.add(0.0); // 571 more button padding top
    myValues.add(10.0); // 572 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 36.0 - 5.0); // 573 more button font size    


    // image isLarge
    myValues.add(50.0); // 574 BorderRadius topLeft
    myValues.add(50.0); // 575 BorderRadius topRight
    myValues.add(.4); // 576 container height 1
    myValues.add(.3); // 577 container height 2
    myValues.add(10.0); // 578 padding all
    myValues.add(25.0); // 579 sized box height 
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 580 pick image font size
    myValues.add(10.0); // 581 sized box height 
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 582 use camera font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 583 use gallery font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 584 please pick image font size
    myValues.add(.5); // 585 image height
    myValues.add(.95); // 586 image width
    myValues.add(2.0); // 587 BorderSide width
    myValues.add(5.0); // 588 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 589 add image font size
    myValues.add(10.0); // 590 sized box height
    myValues.add(45.0); // 591 camare icon size

    // onboarding isLarge
    myValues.add(18.0); // 592 title continner padding rigt
    myValues.add(18.0); // 593 title continner padding left
    myValues.add(0.0); // 594 title continner padding top
    myValues.add(0.0); // 595 title continner padding bottom
    myValues.add(15.0); // 596 title continner BorderRadius
    myValues.add(15.0); // 597 description continner padding rigt
    myValues.add(15.0); // 598 description continner padding left
    myValues.add(0.0); // 599 description continner padding top
    myValues.add(0.0); // 600 description continner padding bottom
    myValues.add(15.0); // 601 description continner BorderRadius

    // editprofile isLarge
    myValues.add(34.0); // 602 save button font size

    // allproblems isLarge
    myValues.add(.85); // 603 drawer wdith

    // firstsection isLarge
    myValues.add(135.0); // 604 drawer header height 
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 605 drawer header padding right
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 0.0); // 606 drawer header padding left
    myValues.add(0.0); // 607 drawer header margin 
    myValues.add(8.0); // 608 CustomCircleAvatar padding top 

    // allproblems isLarge
    myValues.add(150.0); // 609 allproblems no inter net image width
    myValues.add(150.0); // 610 allproblems no inter net image height
    myValues.add(25.0); // 611 sized box height

    // diffrentproblems isLarge
    myValues.add(150.0); // 612 allproblems no inter net image width
    myValues.add(150.0); // 613 allproblems no inter net image height
    myValues.add(25.0); // 614 sized box height

    // allusrs isLarge
    myValues.add(150.0); // 615 allproblems no inter net image width
    myValues.add(150.0); // 616 allproblems no inter net image height
    myValues.add(25.0); // 617 sized box height

    // hasproblem isLarge
    myValues.add(120.0); // 618 allproblems no inter net image width
    myValues.add(120.0); // 619 allproblems no inter net image height
    myValues.add(20.0); // 620 sized box height

  } else if (isXlarge) {
    
    // onboarding Screen isXlarge
    myValues.add(.05); // 0 Screen Width
    myValues.add(.15); // 1 Screen Width
    myValues.add(250.0); // 2 Icon Size
    myValues.add(250.0); // 3 Icon Size
    myValues.add(0.0); // 4 Icon Offset
    myValues.add(-100.0); // 5 Icon Offset
    myValues.add(-80.0); // 6 Icon Offset
    myValues.add(mylocale.languageCode.contains("en") ? 52.0 : 52.0 - 5.0); // 7 title font size
    myValues.add(0.0); // 8 title Offset 1
    myValues.add(-30.0); // 9 title Offset 2
    myValues.add(-70.0); // 10 title Offset 3
    myValues.add(.05); // 11 description padding right
    myValues.add(.05); // 12 description padding left
    myValues.add(18.0); // 13 description padding top 1
    myValues.add(10.0); // 14 description padding top 2
    myValues.add(mylocale.languageCode.contains("en") ? 48.0 : 48.0 - 5.0); // 15 description font size
    myValues.add(0.0); // 16 description Offset 1
    myValues.add(-20.0); // 17 description Offset 2
    myValues.add(-50.0); // 18 description Offset 3
    myValues.add(0.0); // 19 PageIndicator Offset 1
    myValues.add(270.0); // 20 PageIndicator Offset 2
    myValues.add(240.0); // 21 PageIndicator Offset 3
    myValues.add(24.0); // 22 Get Start padding bottom 1
    myValues.add(15.0); // 23 Get Start padding bottom 2
    myValues.add(50.0); // 24 Get Start sized box hieght
    myValues.add(mylocale.languageCode.contains("en") ? 44.0 : 44.0 - 5.0); // 25 Get Start font size
    myValues.add(1.0); // 26 Get Start letter Spacing
    myValues.add(15.0); // 27 PageViewIndicator Circle size 1
    myValues.add(25.0); // 28 PageViewIndicator Circle size 2

    // auth screen isXlarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 29 AppBar Title font size
    myValues.add(15.0); // 30 contianer padding
    myValues.add(10.0); // 31 sized box height 1
    myValues.add(10.0); // 32 sized box height 2
    myValues.add(10.0); // 33 sized box height 3
    myValues.add(10.0); // 34 sized box height 4
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 35 login and sigup button font size
    myValues.add(10.0); // 36 sized box height 5
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 37 switch login and sigup button font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 38 email text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 39 email lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 40 email error font size
    myValues.add(55.0); // 41 email icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 42 password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 43 password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 44 password error font size
    myValues.add(55.0); // 45 password icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 46 confirm password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 47 confirm password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 48 confirm password error font size
    myValues.add(55.0); // 49 confirm password icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 50 user name text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 51 user name lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 52 user name error font size
    myValues.add(55.0); // 53 user name icon size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 54 login showdialog title font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 55 login showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 56 login showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 57 login showdialog title font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 58 login showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 59 login showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 60 SnackBar font size

    // allproblems screen isXlarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 61 AppBar Title font size
    myValues.add(15.0); // 62 menue icon button padding right
    myValues.add(15.0); // 63 menue icon button padding left
    myValues.add(40.0); // 64 menue icon button size
    myValues.add(40.0); // 65 add problem icon button size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 66 add problem icon button SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 67 add problem icon button SnackBar font size 2
    myValues.add(10.0); // 68 popupMenu padding right
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 69 popupMenu change password font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 70 popupMenu language font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 71 popupMenu contact us font size
    myValues.add(40.0); // 72 popupMenu icon button size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 73 Problem List  No Problems Found font size
    myValues.add(25.0); // 74 Drawer list view padding top
    
    // firstsection isXlarge
    myValues.add(12.0); // 75 CustomCircleAvatar padding right
    myValues.add(12.0); // 76 CustomCircleAvatar padding left
    myValues.add(5.0); // 77 CustomCircleAvatar padding bottom
    myValues.add(120.0); // 78 CustomCircleAvatar radius
    myValues.add(20.0); // 79 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 42.0 : 46.0 - 5.0); // 80 user name font size
    myValues.add(mylocale.languageCode.contains("en") ? 38.0 : 42.0 - 5.0); // 81 user type name font size

    // secondsection isXlarge
    myValues.add(10.0); // 82 main padding top
    myValues.add(10.0); // 83 main padding left
    myValues.add(10.0); // 84 main padding right
    myValues.add(10.0); // 85 main padding bottom

    myValues.add(8.0); // 86 new problems padding top
    myValues.add(5.0); // 87 new padding left
    myValues.add(5.0); // 88 new padding right
    myValues.add(8.0); // 89 new padding bottom
    myValues.add(40.0); // 90 icon size
    myValues.add(8.0); // 91 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 44.0 - 5.0); // 92 new problems font size
    myValues.add(8.0); // 93 BorderRadius
    myValues.add(8.0); // 94 new problems count padding right
    myValues.add(8.0); // 95 new padding count left
    myValues.add(5.0); // 96 new padding count top
    myValues.add(5.0); // 97 new padding count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 98 new problems count font size

    myValues.add(8.0); // 99 has problems padding top
    myValues.add(8.0); // 100 has problems padding bottom
    myValues.add(5.0); // 101 has problems padding right
    myValues.add(5.0); // 102 has problems padding left
    myValues.add(40.0); // 103 icon size
    myValues.add(8.0); // 104 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 44.0 - 5.0); // 105 has problems font size
    myValues.add(8.0); // 106 BorderRadius
    myValues.add(8.0); // 107 has problems count padding right
    myValues.add(8.0); // 108 has problems count padding left
    myValues.add(5.0); // 109 has problems count padding top
    myValues.add(5.0); // 110 has problems count padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 111 has problems count font size

    myValues.add(8.0); // 112 solved problems padding top
    myValues.add(8.0); // 113 solved problems padding bottom
    myValues.add(5.0); // 114 solved problems padding right
    myValues.add(5.0); // 115 solved problems padding left
    myValues.add(40.0); // 116 icon size
    myValues.add(8.0); // 117 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 44.0 - 5.0); // 118 solved problems font size
    myValues.add(8.0); // 119 BorderRadius
    myValues.add(8.0); // 120 solved problems count padding right
    myValues.add(8.0); // 121 solved problems count padding left
    myValues.add(5.0); // 122 solved problems count padding top
    myValues.add(5.0); // 123 solved problems count padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 124 solved problems count font size

    // thirdsection isXlarge
    myValues.add(10.0); // 125 main padding top
    myValues.add(10.0); // 126 main padding left
    myValues.add(10.0); // 127 main padding right
    myValues.add(10.0); // 128 main padding bottom

    myValues.add(8.0); // 129 admins padding top
    myValues.add(5.0); // 130 admins left
    myValues.add(5.0); // 131 admins right
    myValues.add(8.0); // 132 admins bottom
    myValues.add(40.0); // 133 icon size
    myValues.add(8.0); // 134 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 44.0 - 5.0); // 135 admins font size
    myValues.add(8.0); // 136 BorderRadius
    myValues.add(8.0); // 137 admins count padding right
    myValues.add(8.0); // 138 admins count left
    myValues.add(5.0); // 139 admins count top
    myValues.add(5.0); // 140 admins count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 141 admins count font size

    myValues.add(8.0); // 142 users padding top
    myValues.add(10.0); // 143 users left
    myValues.add(10.0); // 144 users right
    myValues.add(8.0); // 145 users bottom
    myValues.add(40.0); // 146 icon size
    myValues.add(8.0); // 147 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 44.0 - 5.0); // 148 users font size
    myValues.add(8.0); // 149 BorderRadius
    myValues.add(8.0); // 150 users count padding right
    myValues.add(8.0); // 151 users count left
    myValues.add(5.0); // 152 users count top
    myValues.add(5.0); // 153 users count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 154 users count font size

    myValues.add(8.0); // 155 clients padding top
    myValues.add(10.0); // 156 clients left
    myValues.add(10.0); // 157 clients right
    myValues.add(8.0); // 158 clients bottom
    myValues.add(40.0); // 159 icon size
    myValues.add(8.0); // 160 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 44.0 - 5.0); // 161 clients font size
    myValues.add(8.0); // 162 BorderRadius
    myValues.add(8.0); // 163 clients count padding right
    myValues.add(8.0); // 164 clients count left
    myValues.add(5.0); // 165 clients count top
    myValues.add(5.0); // 166 clients count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 167 clients count font size

    myValues.add(8.0); // 168 new padding top
    myValues.add(10.0); // 169 new left
    myValues.add(10.0); // 170 new right
    myValues.add(8.0); // 171 new bottom
    myValues.add(40.0); // 172 icon size
    myValues.add(8.0); // 173 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 44.0 - 5.0); // 174 new font size
    myValues.add(8.0); // 175 BorderRadius
    myValues.add(8.0); // 176 new count padding right
    myValues.add(8.0); // 177 new count left
    myValues.add(5.0); // 178 new count top
    myValues.add(5.0); // 179 new count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 180 new count font size

    // fourthsection isXlarge
    myValues.add(10.0); // 181 main padding top
    myValues.add(20.0); // 182 main padding left
    myValues.add(20.0); // 183 main padding right
    myValues.add(10.0); // 184 main padding bottom

    myValues.add(8.0); // 185 edit profile padding top
    myValues.add(5.0); // 186 edit profile left
    myValues.add(5.0); // 187 edit profile right
    myValues.add(8.0); // 188 edit profile bottom
    myValues.add(35.0); // 189 icon size
    myValues.add(8.0); // 190 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 44.0 - 5.0); // 191 edit profile font size
    myValues.add(8.0); // 192 BorderRadius
    myValues.add(8.0); // 193 edit profile count padding right
    myValues.add(8.0); // 194 edit profile count left
    myValues.add(5.0); // 195 edit profile count top
    myValues.add(5.0); // 196 edit profile count bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 197 edit profile count font size

    myValues.add(8.0); // 198 logout padding top
    myValues.add(5.0); // 199 logout left
    myValues.add(5.0); // 200 logout right
    myValues.add(8.0); // 201 logout bottom
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 202 logout SnackBar font size
    myValues.add(40.0); // 203 icon size
    myValues.add(8.0); // 204 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 44.0 - 5.0); // 205 logout font size
    
    // problem_card isXlarge
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 206 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 207 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 208 animation Date Text second font size
    myValues.add(20.0); // 209 card margin bottom 1
    myValues.add(12.0); // 210 card margin bottom 2
    myValues.add(18.0); // 211 card margin left
    myValues.add(18.0); // 212 card margin right
    myValues.add(15.0); // 213 card margin top 1
    myValues.add(5.0); // 214 card margin top 2
    myValues.add(10.0); // 215 first part padding top
    myValues.add(10.0); // 216 first part padding left
    myValues.add(10.0); // 217 first part padding right
    myValues.add(10.0); // 218 first part padding bottom
    myValues.add(10.0); // 219 all padding
    myValues.add(10.0); // 220 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 15.0 : 0.0); // 221 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 15.0); // 222 CustomCircleAvatar padding left
    myValues.add(90.0); // 223 CustomCircleAvatar radius
    myValues.add(25.0); // 224 CustomCircleAvatar size
    myValues.add(4); // 225 Flexible flex 1
    myValues.add(2); // 226 Flexible flex 2
    myValues.add(3); // 227 Flexible flex 3
    myValues.add(mylocale.languageCode.contains("en") ? 38.0 : 40.0 - 5.0); // 228 authorname font size
    myValues.add(50.0); // 229 time icon size
    myValues.add(5.0); // 230 size box width
    myValues.add(4); // 231 Flexible flex 1
    myValues.add(1); // 232 Flexible flex 2
    myValues.add(5); // 233 Flexible flex 3
    myValues.add(1); // 234 solve problem Flexible flex
    myValues.add(1); // 235 has problem Flexible flex
    myValues.add(5.0); // 236 size box width 1
    myValues.add(5.0); // 237 size box width 2
    myValues.add(1); // 238 reserve problem Flexible flex
    myValues.add(4); // 239 Flexible flex 1
    myValues.add(1); // 240 Flexible flex 2
    myValues.add(3); // 241 Flexible flex 3
    myValues.add(5.0); // 242 second part padding top
    myValues.add(10.0); // 243 second part padding left
    myValues.add(10.0); // 244 second part padding right
    myValues.add(10.0); // 245 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 36.0 - 5.0); // 246 authoraddress font size
    myValues.add(8.0); // 247 size box height
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 36.0 - 5.0); // 248 authormobilenumber font size
    myValues.add(10.0); // 249 description part padding left
    myValues.add(10.0); // 250 description part padding right
    myValues.add(10.0); // 251 description part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 42.0 : 44.0 - 5.0); // 252 description font size
    myValues.add(10.0); // 253 comment part padding left
    myValues.add(10.0); // 254 comment part padding right
    myValues.add(10.0); // 255 comment part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 34.0 - 5.0); // 256 comment font size
    myValues.add(1.0); // 257 size box height
    myValues.add(10.0); // 258 third part padding top
    myValues.add(10.0); // 259 third part padding left
    myValues.add(10.0); // 260 third part padding right
    myValues.add(10.0); // 261 third part padding bottom
    myValues.add(10.0); // 262 padding all
    myValues.add(12.0); // 263 BorderRadius
    myValues.add(3); // 264 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 0.0); // 265 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 12.0); // 266 CustomCircleAvatar padding left
    myValues.add(80.0); // 267 CustomCircleAvatar radius
    myValues.add(25.0); // 268 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 36.0 : 38.0 - 5.0); // 269 bookauthorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 34.0 - 5.0); // 270 date_book font size
    myValues.add(2); // 271 Flexible flex
    myValues.add(0.0); // 272 more button padding top
    myValues.add(10.0); // 273 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 36.0 : 38 - 5.0); // 274 more button font size
    myValues.add(45.0); // 275 solve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 34.0 - 5.0); // 276 solve problem font size
    myValues.add(45.0); // 277 has problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 34.0 - 5.0); // 278 has problem font size
    myValues.add(45.0); // 279 reserve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 34.0 - 5.0); // 280 reserve problem font size


    // solveproblem isXlarge
    myValues.add(0.0); // 281 solve button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 282 solve problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 283 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 284 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 285 showDialog title font size
    myValues.add(22.0); // 286 showDialog content padding all
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 287 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 288 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 289 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 290 showDialog 2 title font size
    myValues.add(22.0); // 291 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 292 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 293 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 294 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 295 SnackBar font size
    myValues.add(50.0); // 296 solve problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 297 solve problem font size

    // hasproblem isXlarge
    myValues.add(0.0); // 298 has button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 32.0 - 5.0); // 299 has problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 300 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 301 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 302 showDialog title font size
    myValues.add(22.0); // 303 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 304 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 305 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 306 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 307 showDialog 2 title font size
    myValues.add(22.0); // 308 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 309 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 310 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 311 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 312 SnackBar font size
    myValues.add(50.0); // 313 has problem icon size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 32.0 - 5.0); // 314 has problem font size

    // reserve isXlarge
    myValues.add(0.0); // 315 reserve button padding all
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 36.0 - 5.0); // 316 reserve problem font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 317 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 318 SnackBar font size 2
    myValues.add(50.0); // 319 BorderRadius topLeft
    myValues.add(50.0); // 320 BorderRadius topRight
    myValues.add(1); // 321 Flexible flex
    myValues.add(0.0); // 322 padding top
    myValues.add(8.0); // 323 padding left
    myValues.add(30.0); // 324 back button icon size
    myValues.add(mylocale.languageCode.contains("en") ? 20.0 : 20.0 - 5.0); // 325 title font size
    myValues.add(5); // 326 Flexible flex
    myValues.add(.10); // 327 list view padding top
    myValues.add(12.0); // 328 padding all
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 329 date time font size
    myValues.add(5.0); // 330 padding all
    myValues.add(30.0); // 331 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 332 date time label font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 333 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 334 SnackBar font size 2
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 335 SnackBar font size 3
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 336 reserve button font size 
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 337 SnackBar font size 4
    myValues.add(50.0); // 338 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 34.0 - 5.0); // 339 reserve button font size

    // deleteproblem isXlarge
    myValues.add(50.0); // 340 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 341 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 342 showDialog title font size
    myValues.add(22.0); // 343 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 344 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 345 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 346 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 347 showDialog 2 title font size
    myValues.add(22.0); // 348 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 349 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 350 showDialog 2 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 351 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 352 showDialog 1 ok font size
   
    // differentproblems isXlarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 353 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 354 no problems found font size
    myValues.add(mylocale.languageCode.contains("en") ? 22.0 : 22.0 - 5.0); // 355 no inter net font size

    // usertype isXlarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 356 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 357 no users found font size
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 358 no inter net font size

    // user_card isXlarge    
    myValues.add(20.0); // 359 card margin bottom 1
    myValues.add(7.0); // 360 card margin bottom 2
    myValues.add(12.0); // 361 card margin left
    myValues.add(12.0); // 362 card margin right
    myValues.add(15.0); // 363 card margin top 1
    myValues.add(5.0); // 364 card margin top 2
    myValues.add(10.0); // 365 first part padding top
    myValues.add(10.0); // 366 first part padding left
    myValues.add(10.0); // 367 first part padding right
    myValues.add(5.0); // 368 first part padding bottom
    myValues.add(8.0); // 369 all padding
    myValues.add(12.0); // 370 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 0.0); // 371 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 12.0); // 372 CustomCircleAvatar padding left
    myValues.add(80.0); // 373 CustomCircleAvatar radius
    myValues.add(25.0); // 374 CustomCircleAvatar size
    myValues.add(2); // 375 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 36.0 - 5.0); // 376 authorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 32.0 - 5.0); // 377 authortypename font size
    myValues.add(3); // 378 Flexible flex
    myValues.add(2); // 379 Flexible flex
    myValues.add(0.0); // 380 more button padding top
    myValues.add(10.0); // 381 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 38.0 - 5.0); // 382 more button font size

    // deleteuser isXlarge
    myValues.add(45.0); // 383 icon size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 384 SnackBar font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 385 showDialog title font size
    myValues.add(22.0); // 386 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 387 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 388 showDialog cancel font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 389 SnackBar of ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 390 showDialog 2 title font size
    myValues.add(22.0); // 391 showDialog 2 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 392 showDialog 2 content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 393 showDialog 2 ok font size    
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 394 showDialog 1 ok font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 395 SnackBar font size
    
    // changeusertype isXlarge
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 396 admins font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 397 users font size
    myValues.add(mylocale.languageCode.contains("en") ? 24.0 : 26.0 - 5.0); // 398 clients font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 399 SnackBar font size
    myValues.add(10.0); // 400 padding right
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 32.0 - 5.0); // 401 change button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 402 showDialog title font size
    myValues.add(22.0); // 403 showDialog content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 404 showDialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 405 showDialog ok font size
    
    // editprofile isXlarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 406 AppBar Title font size
    myValues.add(15.0); // 407 contianer padding all
    myValues.add(15.0); // 408 sized box height 1
    myValues.add(15.0); // 409 sized box height 2
    myValues.add(15.0); // 410 sized box height 3
    myValues.add(15.0); // 411 sized box height 4
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 412 username text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 413 username lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 414 username error font size
    myValues.add(32.0); // 415 username icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 416 mobile_number text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 417 mobile_number lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 418 mobile_number error font size
    myValues.add(32.0); // 419 mobile_number icon size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 420 address text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 421 address lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 422 address error font size
    myValues.add(32.0); // 423 address icon size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 424 showdialog title font size
    myValues.add(22.0); // 425 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 426 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 427 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 428 showdialog title font size
    myValues.add(22.0); // 429 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 430 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 431 showdialog ok button font size
    
    // addproblem isXlarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 432 AppBar Title font size
    myValues.add(15.0); // 433 contianer padding all
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 434 problem description text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 435 problem description lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 436 problem description error font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 437 problem description counter font size
    myValues.add(45.0); // 438 username icon size
    myValues.add(10.0); // 439 sized box height 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 34.0 - 5.0); // 440 add button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 441 showdialog title font size
    myValues.add(22.0); // 442 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 443 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 444 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 445 showdialog title font size
    myValues.add(22.0); // 446 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 447 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 448 showdialog ok button font size

    // changepassword isXlarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 449 AppBar Title font size
    myValues.add(15.0); // 450 contianer padding all
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 451 password text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 452 password lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 453 password error font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 454 password counter font size
    myValues.add(32.0); // 455 username icon size
    myValues.add(10.0); // 456 sized box height 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 457 save button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 458 showdialog title font size
    myValues.add(22.0); // 459 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 460 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 461 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 462 showdialog title font size
    myValues.add(22.0); // 463 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 464 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 465 showdialog ok button font size
    
    // contactdeveloper isXlarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 466 AppBar Title font size
    myValues.add(100.0); // 467 contianer padding top
    myValues.add(16.0); // 468 contianer padding right
    myValues.add(16.0); // 469 contianer padding left
    myValues.add(15.0); // 470 contianer padding bottom
    myValues.add(32.0); // 471 icon error size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 472 name font size
    myValues.add(16.0); // 473 contianer padding top
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 474 mobile font size
    myValues.add(16.0); // 475 contianer padding top
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 476 email font size


    // problempage isXlarge
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 36.0 - 5.0); // 477 AppBar Title font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 34.0 - 5.0); // 478 no internet font size

    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 34.0 - 5.0); // 479 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 480 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 481 animation Date Text second font size
    myValues.add(12.0); // 482 card margin bottom
    myValues.add(18.0); // 483 card margin left
    myValues.add(18.0); // 484 card margin right
    myValues.add(15.0); // 485 card margin top
    myValues.add(10.0); // 486 first part padding top
    myValues.add(10.0); // 487 first part padding left
    myValues.add(10.0); // 488 first part padding right
    myValues.add(5.0); // 489 first part padding bottom
    myValues.add(10.0); // 490 all padding
    myValues.add(12.0); // 491 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 15.0 : 0.0); // 492 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 15.0); // 493 CustomCircleAvatar padding left
    myValues.add(90.0); // 494 CustomCircleAvatar radius
    myValues.add(25.0); // 495 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 38.0 : 40.0 - 5.0); // 496 authorname font size
    myValues.add(50.0); // 497 time icon size
    myValues.add(5.0); // 498 size box width
    myValues.add(5.0); // 499 second part padding top
    myValues.add(10.0); // 500 second part padding left
    myValues.add(10.0); // 501 second part padding right
    myValues.add(10.0); // 502 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 36.0 - 5.0); // 503 authoraddress font size
    myValues.add(8.0); // 504 size box height
    myValues.add(mylocale.languageCode.contains("en") ? 34.0 : 36.0 - 5.0); // 505 authormobilenumber font size
    myValues.add(10.0); // 506 description part padding left
    myValues.add(10.0); // 507 description part padding right
    myValues.add(10.0); // 508 description part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 42.0 : 44.0 - 5.0); // 509 description font size    
    myValues.add(1.0); // 510 size box height
    myValues.add(10.0); // 511 third part padding top
    myValues.add(10.0); // 512 third part padding left
    myValues.add(10.0); // 513 third part padding right
    myValues.add(10.0); // 514 third part padding bottom
    myValues.add(8.0); // 515 padding all
    myValues.add(12.0); // 516 BorderRadius
    myValues.add(3); // 517 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 12.0 : 0.0); // 518 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 12.0); // 519 CustomCircleAvatar padding left
    myValues.add(80.0); // 520 CustomCircleAvatar radius
    myValues.add(25.0); // 521 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 36.0 : 38.0 - 5.0); // 522 bookauthorname font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 34.0 - 5.0); // 523 date_book font size
    myValues.add(2); // 524 Flexible flex

    myValues.add(5.0); // 525 comment area padding top
    myValues.add(10.0); // 526 comment area padding left
    myValues.add(10.0); // 527 comment area padding right
    myValues.add(10.0); // 528 comment area padding bottom
    myValues.add(5); // 529 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 530 comment text font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 531 comment lable font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 532 comment error font size
    myValues.add(40.0); // 533 username icon size
    myValues.add(1); // 534 Flexible flex
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 535 SnackBar font size 1
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 536 SnackBar font size 2    
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 537 showdialog title font size
    myValues.add(22.0); // 538 content padding top
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 28.0 - 5.0); // 539 showdialog content font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 30.0 - 5.0); // 540 showdialog ok button font size
    myValues.add(mylocale.languageCode.contains("en") ? 32.0 : 32.0 - 5.0); // 541 SnackBar font size
    myValues.add(50.0); // 542 send comment icon size

    myValues.add(mylocale.languageCode.contains("en") ? 38.0 : 40.0 - 5.0); // 543 no comments font size
    myValues.add(mylocale.languageCode.contains("en") ? 28.0 : 30.0 - 5.0); // 544 normal Date Text font size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 545 animation Date Text first font size
    myValues.add(mylocale.languageCode.contains("en") ? 26.0 : 28.0 - 5.0); // 546 animation Date Text second font size
    myValues.add(16.0); // 547 card margin bottom 1
    myValues.add(6.0); // 548 card margin bottom 2
    myValues.add(25.0); // 549 card margin left
    myValues.add(25.0); // 550 card margin right
    myValues.add(5.0); // 551 card margin top
    myValues.add(10.0); // 552 first part padding top
    myValues.add(10.0); // 553 first part padding left
    myValues.add(10.0); // 554 first part padding right
    myValues.add(5.0); // 555 first part padding bottom
    myValues.add(8.0); // 556 all padding
    myValues.add(12.0); // 557 BorderRadius
    myValues.add(mylocale.languageCode.contains("en") ? 15.0 : 0.0); // 558 CustomCircleAvatar padding right
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 15.0); // 559 CustomCircleAvatar padding left
    myValues.add(80.0); // 560 CustomCircleAvatar radius
    myValues.add(25.0); // 561 CustomCircleAvatar size
    myValues.add(mylocale.languageCode.contains("en") ? 36.0 : 38.0 - 5.0); // 562 authorname font size
    myValues.add(40.0); // 563 time icon size
    myValues.add(5.0); // 564 size box width
    myValues.add(1); // 565 Flexible flex
    myValues.add(10.0); // 566 second part padding top
    myValues.add(10.0); // 567 second part padding left
    myValues.add(10.0); // 568 second part padding right
    myValues.add(16.0); // 569 second part padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 40.0 : 42.0 - 5.0); // 570 comment font size        
    myValues.add(0.0); // 571 more button padding top
    myValues.add(10.0); // 572 more button padding bottom
    myValues.add(mylocale.languageCode.contains("en") ? 36.0 : 38.0 - 5.0); // 573 more button font size    


    // image isXlarge
    myValues.add(50.0); // 574 BorderRadius topLeft
    myValues.add(50.0); // 575 BorderRadius topRight
    myValues.add(.4); // 576 container height 1
    myValues.add(.3); // 577 container height 2
    myValues.add(10.0); // 578 padding all
    myValues.add(25.0); // 579 sized box height 
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 580 pick image font size
    myValues.add(10.0); // 581 sized box height 
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 582 use camera font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 583 use gallery font size
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 584 please pick image font size
    myValues.add(.5); // 585 image height
    myValues.add(.95); // 586 image width
    myValues.add(2.0); // 587 BorderSide width
    myValues.add(5.0); // 588 sized box width
    myValues.add(mylocale.languageCode.contains("en") ? 30.0 : 32.0 - 5.0); // 589 add image font size
    myValues.add(10.0); // 590 sized box height
    myValues.add(45.0); // 591 camare icon size

    // onboarding isXlarge
    myValues.add(18.0); // 592 title continner padding rigt
    myValues.add(18.0); // 593 title continner padding left
    myValues.add(0.0); // 594 title continner padding top
    myValues.add(0.0); // 595 title continner padding bottom
    myValues.add(15.0); // 596 title continner BorderRadius
    myValues.add(15.0); // 597 description continner padding rigt
    myValues.add(15.0); // 598 description continner padding left
    myValues.add(0.0); // 599 description continner padding top
    myValues.add(0.0); // 600 description continner padding bottom
    myValues.add(15.0); // 601 description continner BorderRadius

    // editprofile isXlarge
    myValues.add(34.0); // 602 save button font size

    // allproblems isXlarge
    myValues.add(.45); // 603 drawer wdith

    // firstsection isXlarge
    myValues.add(160.0); // 604 drawer header height 
    myValues.add(mylocale.languageCode.contains("en") ? 0.0 : 8.0); // 605 drawer header padding right
    myValues.add(mylocale.languageCode.contains("en") ? 8.0 : 0.0); // 606 drawer header padding left
    myValues.add(0.0); // 607 drawer header margin 
    myValues.add(3.0); // 608 CustomCircleAvatar padding top 

    // allproblems isXlarge
    myValues.add(200.0); // 609 allproblems no inter net image width
    myValues.add(200.0); // 610 allproblems no inter net image height
    myValues.add(30.0); // 611 sized box height

    // diffrentproblems isLarge
    myValues.add(200.0); // 612 allproblems no inter net image width
    myValues.add(200.0); // 613 allproblems no inter net image height
    myValues.add(30.0); // 614 sized box height

    // allusrs isLarge
    myValues.add(200.0); // 615 allproblems no inter net image width
    myValues.add(200.0); // 616 allproblems no inter net image height
    myValues.add(30.0); // 617 sized box height

    // hasproblem isLarge
    myValues.add(150.0); // 618 allproblems no inter net image width
    myValues.add(150.0); // 619 allproblems no inter net image height
    myValues.add(20.0); // 620 sized box height
  }
  return myValues;
}
