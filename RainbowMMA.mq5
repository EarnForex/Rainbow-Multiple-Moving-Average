//+-----------------------------------------------------------------------------+
//|                                                              RainbowMMA.mq5 |
//|                                             Copyright © 2022, EarnForex.com |
//|                                       Based on RainbowMMA_01.mq4 by Akuma99 |
//+-----------------------------------------------------------------------------+
#property copyright "Copyright © 2022, EarnForex.com"
#property link      "https://www.earnforex.com/metatrader-indicators/Rainbow-Multiple-Moving-Average/"
#property version   "1.00"

#property description "Rainbow Multiple Moving Average - 66 multi-colored MA lines."

#property indicator_chart_window
#property indicator_buffers 66
#property indicator_plots 66
#property indicator_color1 clrMediumOrchid
#property indicator_type1  DRAW_LINE
#property indicator_color2 clrMediumOrchid
#property indicator_type2  DRAW_LINE
#property indicator_color3 clrMediumOrchid
#property indicator_type3  DRAW_LINE
#property indicator_color4 clrMediumOrchid
#property indicator_type4  DRAW_LINE
#property indicator_color5 clrMediumOrchid
#property indicator_type5  DRAW_LINE
#property indicator_color6 clrMediumOrchid
#property indicator_type6  DRAW_LINE
#property indicator_color7 clrMediumOrchid
#property indicator_type7  DRAW_LINE
#property indicator_color8 clrMediumOrchid
#property indicator_type8  DRAW_LINE
#property indicator_color9 clrMediumOrchid
#property indicator_type9  DRAW_LINE
#property indicator_color10 clrMediumOrchid
#property indicator_type10  DRAW_LINE
#property indicator_color11 clrMediumOrchid
#property indicator_type11  DRAW_LINE
#property indicator_color12 clrMediumOrchid
#property indicator_type12  DRAW_LINE
#property indicator_color13 clrMediumOrchid
#property indicator_type13  DRAW_LINE
#property indicator_color14 clrMediumOrchid
#property indicator_type14  DRAW_LINE
#property indicator_color15 clrMediumOrchid
#property indicator_type15  DRAW_LINE
#property indicator_color16 clrMediumOrchid
#property indicator_type16  DRAW_LINE
#property indicator_color17 clrPink
#property indicator_type17  DRAW_LINE
#property indicator_color18 clrPink
#property indicator_type18  DRAW_LINE
#property indicator_color19 clrPink
#property indicator_type19  DRAW_LINE
#property indicator_color20 clrPink
#property indicator_type20  DRAW_LINE
#property indicator_color21 clrPink
#property indicator_type21  DRAW_LINE
#property indicator_color22 clrPink
#property indicator_type22  DRAW_LINE
#property indicator_color23 clrPink
#property indicator_type23  DRAW_LINE
#property indicator_color24 clrPink
#property indicator_type24  DRAW_LINE
#property indicator_color25 clrPink
#property indicator_type25  DRAW_LINE
#property indicator_color26 clrPink
#property indicator_type26  DRAW_LINE
#property indicator_color27 clrPink
#property indicator_type27  DRAW_LINE
#property indicator_color28 clrPink
#property indicator_type28  DRAW_LINE
#property indicator_color29 clrLime
#property indicator_type29  DRAW_LINE
#property indicator_color30 clrLime
#property indicator_type30  DRAW_LINE
#property indicator_color31 clrLime
#property indicator_type31  DRAW_LINE
#property indicator_color32 clrLime
#property indicator_type32  DRAW_LINE
#property indicator_color33 clrLime
#property indicator_type33  DRAW_LINE
#property indicator_color34 clrLime
#property indicator_type34  DRAW_LINE
#property indicator_color35 clrLime
#property indicator_type35  DRAW_LINE
#property indicator_color36 clrLime
#property indicator_type36  DRAW_LINE
#property indicator_color37 clrLime
#property indicator_type37  DRAW_LINE
#property indicator_color38 clrLime
#property indicator_type38  DRAW_LINE
#property indicator_color39 clrLime
#property indicator_type39  DRAW_LINE
#property indicator_color40 clrDeepSkyBlue
#property indicator_type40  DRAW_LINE
#property indicator_color41 clrDeepSkyBlue
#property indicator_type41  DRAW_LINE
#property indicator_color42 clrDeepSkyBlue
#property indicator_type42  DRAW_LINE
#property indicator_color43 clrDeepSkyBlue
#property indicator_type43  DRAW_LINE
#property indicator_color44 clrDeepSkyBlue
#property indicator_type44  DRAW_LINE
#property indicator_color45 clrDeepSkyBlue
#property indicator_type45  DRAW_LINE
#property indicator_color46 clrDeepSkyBlue
#property indicator_type46  DRAW_LINE
#property indicator_color47 clrDeepSkyBlue
#property indicator_type47  DRAW_LINE
#property indicator_color48 clrDeepSkyBlue
#property indicator_type48  DRAW_LINE
#property indicator_color49 clrDeepSkyBlue
#property indicator_type49  DRAW_LINE
#property indicator_color50 clrDeepSkyBlue
#property indicator_type50  DRAW_LINE
#property indicator_color51 clrDeepSkyBlue
#property indicator_type51  DRAW_LINE
#property indicator_color52 clrDeepSkyBlue
#property indicator_type52  DRAW_LINE
#property indicator_color53 clrGold
#property indicator_type53  DRAW_LINE
#property indicator_color54 clrGold
#property indicator_type54  DRAW_LINE
#property indicator_color55 clrGold
#property indicator_type55  DRAW_LINE
#property indicator_color56 clrGold
#property indicator_type56  DRAW_LINE
#property indicator_color57 clrGold
#property indicator_type57  DRAW_LINE
#property indicator_color58 clrGold
#property indicator_type58  DRAW_LINE
#property indicator_color59 clrGold
#property indicator_type59  DRAW_LINE
#property indicator_color60 clrGold
#property indicator_type60  DRAW_LINE
#property indicator_color61 clrGold
#property indicator_type61  DRAW_LINE
#property indicator_color62 clrGold
#property indicator_type62  DRAW_LINE
#property indicator_color63 clrGold
#property indicator_type63  DRAW_LINE
#property indicator_color64 clrGold
#property indicator_type64  DRAW_LINE
#property indicator_color65 clrGold
#property indicator_type65  DRAW_LINE
#property indicator_color66 clrGold
#property indicator_type66  DRAW_LINE

input ENUM_MA_METHOD MA_Type = MODE_EMA; // MA Type
input ENUM_APPLIED_PRICE MA_Price = PRICE_CLOSE; // MA Price

input int MA_Period_01 = 200; // MA 01 Period
input int MA_Period_02 = 195; // MA 02 Period
input int MA_Period_03 = 190; // MA 03 Period
input int MA_Period_04 = 185; // MA 04 Period
input int MA_Period_05 = 180; // MA 05 Period
input int MA_Period_06 = 175; // MA 06 Period
input int MA_Period_07 = 170; // MA 07 Period
input int MA_Period_08 = 165; // MA 08 Period
input int MA_Period_09 = 160; // MA 09 Period
input int MA_Period_10 = 155; // MA 10 Period
input int MA_Period_11 = 150; // MA 11 Period
input int MA_Period_12 = 145; // MA 12 Period
input int MA_Period_13 = 140; // MA 13 Period
input int MA_Period_14 = 135; // MA 14 Period
input int MA_Period_15 = 130; // MA 15 Period
input int MA_Period_16 = 125; // MA 16 Period
input int MA_Period_17 = 122; // MA 17 Period
input int MA_Period_18 = 118; // MA 18 Period
input int MA_Period_19 = 114; // MA 19 Period
input int MA_Period_20 = 110; // MA 20 Period
input int MA_Period_21 = 106; // MA 21 Period
input int MA_Period_22 = 102; // MA 22 Period
input int MA_Period_23 = 98; // MA 23 Period
input int MA_Period_24 = 94; // MA 24 Period
input int MA_Period_25 = 90; // MA 25 Period
input int MA_Period_26 = 86; // MA 26 Period
input int MA_Period_27 = 82; // MA 27 Period
input int MA_Period_28 = 78; // MA 28 Period
input int MA_Period_29 = 74; // MA 29 Period
input int MA_Period_30 = 71; // MA 30 Period
input int MA_Period_31 = 68; // MA 31 Period
input int MA_Period_32 = 65; // MA 32 Period
input int MA_Period_33 = 62; // MA 33 Period
input int MA_Period_34 = 59; // MA 34 Period
input int MA_Period_35 = 56; // MA 35 Period
input int MA_Period_36 = 53; // MA 36 Period
input int MA_Period_37 = 50; // MA 37 Period
input int MA_Period_38 = 47; // MA 38 Period
input int MA_Period_39 = 44; // MA 39 Period
input int MA_Period_40 = 41; // MA 40 Period
input int MA_Period_41 = 39; // MA 41 Period
input int MA_Period_42 = 37; // MA 42 Period
input int MA_Period_43 = 35; // MA 43 Period
input int MA_Period_44 = 33; // MA 44 Period
input int MA_Period_45 = 31; // MA 45 Period
input int MA_Period_46 = 29; // MA 46 Period
input int MA_Period_47 = 27; // MA 47 Period
input int MA_Period_48 = 25; // MA 48 Period
input int MA_Period_49 = 23; // MA 49 Period
input int MA_Period_50 = 21; // MA 50 Period
input int MA_Period_51 = 19; // MA 51 Period
input int MA_Period_52 = 17; // MA 52 Period
input int MA_Period_53 = 15; // MA 53 Period
input int MA_Period_54 = 14; // MA 54 Period
input int MA_Period_55 = 13; // MA 55 Period
input int MA_Period_56 = 12; // MA 56 Period
input int MA_Period_57 = 11; // MA 57 Period
input int MA_Period_58 = 10; // MA 58 Period
input int MA_Period_59 = 9; // MA 59 Period
input int MA_Period_60 = 8; // MA 60 Period
input int MA_Period_61 = 7; // MA 61 Period
input int MA_Period_62 = 6; // MA 62 Period
input int MA_Period_63 = 5; // MA 63 Period
input int MA_Period_64 = 4; // MA 64 Period
input int MA_Period_65 = 3; // MA 65 Period
input int MA_Period_66 = 2; // MA 66 Period

double ExtMapBuffer01[];
double ExtMapBuffer02[];
double ExtMapBuffer03[];
double ExtMapBuffer04[];
double ExtMapBuffer05[];
double ExtMapBuffer06[];
double ExtMapBuffer07[];
double ExtMapBuffer08[];
double ExtMapBuffer09[];
double ExtMapBuffer10[];
double ExtMapBuffer11[];
double ExtMapBuffer12[];
double ExtMapBuffer13[];
double ExtMapBuffer14[];
double ExtMapBuffer15[];
double ExtMapBuffer16[];
double ExtMapBuffer17[];
double ExtMapBuffer18[];
double ExtMapBuffer19[];
double ExtMapBuffer20[];
double ExtMapBuffer21[];
double ExtMapBuffer22[];
double ExtMapBuffer23[];
double ExtMapBuffer24[];
double ExtMapBuffer25[];
double ExtMapBuffer26[];
double ExtMapBuffer27[];
double ExtMapBuffer28[];
double ExtMapBuffer29[];
double ExtMapBuffer30[];
double ExtMapBuffer31[];
double ExtMapBuffer32[];
double ExtMapBuffer33[];
double ExtMapBuffer34[];
double ExtMapBuffer35[];
double ExtMapBuffer36[];
double ExtMapBuffer37[];
double ExtMapBuffer38[];
double ExtMapBuffer39[];
double ExtMapBuffer40[];
double ExtMapBuffer41[];
double ExtMapBuffer42[];
double ExtMapBuffer43[];
double ExtMapBuffer44[];
double ExtMapBuffer45[];
double ExtMapBuffer46[];
double ExtMapBuffer47[];
double ExtMapBuffer48[];
double ExtMapBuffer49[];
double ExtMapBuffer50[];
double ExtMapBuffer51[];
double ExtMapBuffer52[];
double ExtMapBuffer53[];
double ExtMapBuffer54[];
double ExtMapBuffer55[];
double ExtMapBuffer56[];
double ExtMapBuffer57[];
double ExtMapBuffer58[];
double ExtMapBuffer59[];
double ExtMapBuffer60[];
double ExtMapBuffer61[];
double ExtMapBuffer62[];
double ExtMapBuffer63[];
double ExtMapBuffer64[];
double ExtMapBuffer65[];
double ExtMapBuffer66[];

int MA_Handle_01;
int MA_Handle_02;
int MA_Handle_03;
int MA_Handle_04;
int MA_Handle_05;
int MA_Handle_06;
int MA_Handle_07;
int MA_Handle_08;
int MA_Handle_09;
int MA_Handle_10;
int MA_Handle_11;
int MA_Handle_12;
int MA_Handle_13;
int MA_Handle_14;
int MA_Handle_15;
int MA_Handle_16;
int MA_Handle_17;
int MA_Handle_18;
int MA_Handle_19;
int MA_Handle_20;
int MA_Handle_21;
int MA_Handle_22;
int MA_Handle_23;
int MA_Handle_24;
int MA_Handle_25;
int MA_Handle_26;
int MA_Handle_27;
int MA_Handle_28;
int MA_Handle_29;
int MA_Handle_30;
int MA_Handle_31;
int MA_Handle_32;
int MA_Handle_33;
int MA_Handle_34;
int MA_Handle_35;
int MA_Handle_36;
int MA_Handle_37;
int MA_Handle_38;
int MA_Handle_39;
int MA_Handle_40;
int MA_Handle_41;
int MA_Handle_42;
int MA_Handle_43;
int MA_Handle_44;
int MA_Handle_45;
int MA_Handle_46;
int MA_Handle_47;
int MA_Handle_48;
int MA_Handle_49;
int MA_Handle_50;
int MA_Handle_51;
int MA_Handle_52;
int MA_Handle_53;
int MA_Handle_54;
int MA_Handle_55;
int MA_Handle_56;
int MA_Handle_57;
int MA_Handle_58;
int MA_Handle_59;
int MA_Handle_60;
int MA_Handle_61;
int MA_Handle_62;
int MA_Handle_63;
int MA_Handle_64;
int MA_Handle_65;
int MA_Handle_66;

double MA_Buffer_01[];
double MA_Buffer_02[];
double MA_Buffer_03[];
double MA_Buffer_04[];
double MA_Buffer_05[];
double MA_Buffer_06[];
double MA_Buffer_07[];
double MA_Buffer_08[];
double MA_Buffer_09[];
double MA_Buffer_10[];
double MA_Buffer_11[];
double MA_Buffer_12[];
double MA_Buffer_13[];
double MA_Buffer_14[];
double MA_Buffer_15[];
double MA_Buffer_16[];
double MA_Buffer_17[];
double MA_Buffer_18[];
double MA_Buffer_19[];
double MA_Buffer_20[];
double MA_Buffer_21[];
double MA_Buffer_22[];
double MA_Buffer_23[];
double MA_Buffer_24[];
double MA_Buffer_25[];
double MA_Buffer_26[];
double MA_Buffer_27[];
double MA_Buffer_28[];
double MA_Buffer_29[];
double MA_Buffer_30[];
double MA_Buffer_31[];
double MA_Buffer_32[];
double MA_Buffer_33[];
double MA_Buffer_34[];
double MA_Buffer_35[];
double MA_Buffer_36[];
double MA_Buffer_37[];
double MA_Buffer_38[];
double MA_Buffer_39[];
double MA_Buffer_40[];
double MA_Buffer_41[];
double MA_Buffer_42[];
double MA_Buffer_43[];
double MA_Buffer_44[];
double MA_Buffer_45[];
double MA_Buffer_46[];
double MA_Buffer_47[];
double MA_Buffer_48[];
double MA_Buffer_49[];
double MA_Buffer_50[];
double MA_Buffer_51[];
double MA_Buffer_52[];
double MA_Buffer_53[];
double MA_Buffer_54[];
double MA_Buffer_55[];
double MA_Buffer_56[];
double MA_Buffer_57[];
double MA_Buffer_58[];
double MA_Buffer_59[];
double MA_Buffer_60[];
double MA_Buffer_61[];
double MA_Buffer_62[];
double MA_Buffer_63[];
double MA_Buffer_64[];
double MA_Buffer_65[];
double MA_Buffer_66[];

void OnInit()
{
    SetIndexBuffer(0, ExtMapBuffer01, INDICATOR_DATA);
    SetIndexBuffer(1, ExtMapBuffer02, INDICATOR_DATA);
    SetIndexBuffer(2, ExtMapBuffer03, INDICATOR_DATA);
    SetIndexBuffer(3, ExtMapBuffer04, INDICATOR_DATA);
    SetIndexBuffer(4, ExtMapBuffer05, INDICATOR_DATA);
    SetIndexBuffer(5, ExtMapBuffer06, INDICATOR_DATA);
    SetIndexBuffer(6, ExtMapBuffer07, INDICATOR_DATA);
    SetIndexBuffer(7, ExtMapBuffer08, INDICATOR_DATA);
    SetIndexBuffer(8, ExtMapBuffer09, INDICATOR_DATA);
    SetIndexBuffer(9, ExtMapBuffer10, INDICATOR_DATA);
    SetIndexBuffer(10, ExtMapBuffer11, INDICATOR_DATA);
    SetIndexBuffer(11, ExtMapBuffer12, INDICATOR_DATA);
    SetIndexBuffer(12, ExtMapBuffer13, INDICATOR_DATA);
    SetIndexBuffer(13, ExtMapBuffer14, INDICATOR_DATA);
    SetIndexBuffer(14, ExtMapBuffer15, INDICATOR_DATA);
    SetIndexBuffer(15, ExtMapBuffer16, INDICATOR_DATA);
    SetIndexBuffer(16, ExtMapBuffer17, INDICATOR_DATA);
    SetIndexBuffer(17, ExtMapBuffer18, INDICATOR_DATA);
    SetIndexBuffer(18, ExtMapBuffer19, INDICATOR_DATA);
    SetIndexBuffer(19, ExtMapBuffer20, INDICATOR_DATA);
    SetIndexBuffer(20, ExtMapBuffer21, INDICATOR_DATA);
    SetIndexBuffer(21, ExtMapBuffer22, INDICATOR_DATA);
    SetIndexBuffer(22, ExtMapBuffer23, INDICATOR_DATA);
    SetIndexBuffer(23, ExtMapBuffer24, INDICATOR_DATA);
    SetIndexBuffer(24, ExtMapBuffer25, INDICATOR_DATA);
    SetIndexBuffer(25, ExtMapBuffer26, INDICATOR_DATA);
    SetIndexBuffer(26, ExtMapBuffer27, INDICATOR_DATA);
    SetIndexBuffer(27, ExtMapBuffer28, INDICATOR_DATA);
    SetIndexBuffer(28, ExtMapBuffer29, INDICATOR_DATA);
    SetIndexBuffer(29, ExtMapBuffer30, INDICATOR_DATA);
    SetIndexBuffer(30, ExtMapBuffer31, INDICATOR_DATA);
    SetIndexBuffer(31, ExtMapBuffer32, INDICATOR_DATA);
    SetIndexBuffer(32, ExtMapBuffer33, INDICATOR_DATA);
    SetIndexBuffer(33, ExtMapBuffer34, INDICATOR_DATA);
    SetIndexBuffer(34, ExtMapBuffer35, INDICATOR_DATA);
    SetIndexBuffer(35, ExtMapBuffer36, INDICATOR_DATA);
    SetIndexBuffer(36, ExtMapBuffer37, INDICATOR_DATA);
    SetIndexBuffer(37, ExtMapBuffer38, INDICATOR_DATA);
    SetIndexBuffer(38, ExtMapBuffer39, INDICATOR_DATA);
    SetIndexBuffer(39, ExtMapBuffer40, INDICATOR_DATA);
    SetIndexBuffer(40, ExtMapBuffer41, INDICATOR_DATA);
    SetIndexBuffer(41, ExtMapBuffer42, INDICATOR_DATA);
    SetIndexBuffer(42, ExtMapBuffer43, INDICATOR_DATA);
    SetIndexBuffer(43, ExtMapBuffer44, INDICATOR_DATA);
    SetIndexBuffer(44, ExtMapBuffer45, INDICATOR_DATA);
    SetIndexBuffer(45, ExtMapBuffer46, INDICATOR_DATA);
    SetIndexBuffer(46, ExtMapBuffer47, INDICATOR_DATA);
    SetIndexBuffer(47, ExtMapBuffer48, INDICATOR_DATA);
    SetIndexBuffer(48, ExtMapBuffer49, INDICATOR_DATA);
    SetIndexBuffer(49, ExtMapBuffer50, INDICATOR_DATA);
    SetIndexBuffer(50, ExtMapBuffer51, INDICATOR_DATA);
    SetIndexBuffer(51, ExtMapBuffer52, INDICATOR_DATA);
    SetIndexBuffer(52, ExtMapBuffer53, INDICATOR_DATA);
    SetIndexBuffer(53, ExtMapBuffer54, INDICATOR_DATA);
    SetIndexBuffer(54, ExtMapBuffer55, INDICATOR_DATA);
    SetIndexBuffer(55, ExtMapBuffer56, INDICATOR_DATA);
    SetIndexBuffer(56, ExtMapBuffer57, INDICATOR_DATA);
    SetIndexBuffer(57, ExtMapBuffer58, INDICATOR_DATA);
    SetIndexBuffer(58, ExtMapBuffer59, INDICATOR_DATA);
    SetIndexBuffer(59, ExtMapBuffer60, INDICATOR_DATA);
    SetIndexBuffer(60, ExtMapBuffer61, INDICATOR_DATA);
    SetIndexBuffer(61, ExtMapBuffer62, INDICATOR_DATA);
    SetIndexBuffer(62, ExtMapBuffer63, INDICATOR_DATA);
    SetIndexBuffer(63, ExtMapBuffer64, INDICATOR_DATA);
    SetIndexBuffer(64, ExtMapBuffer65, INDICATOR_DATA);
    SetIndexBuffer(65, ExtMapBuffer66, INDICATOR_DATA);

	MA_Handle_01 = iMA(Symbol(), Period(), MA_Period_01, 0, MA_Type, MA_Price);
    MA_Handle_02 = iMA(Symbol(), Period(), MA_Period_02, 0, MA_Type, MA_Price);
    MA_Handle_03 = iMA(Symbol(), Period(), MA_Period_03, 0, MA_Type, MA_Price);
    MA_Handle_04 = iMA(Symbol(), Period(), MA_Period_04, 0, MA_Type, MA_Price);
    MA_Handle_05 = iMA(Symbol(), Period(), MA_Period_05, 0, MA_Type, MA_Price);
    MA_Handle_06 = iMA(Symbol(), Period(), MA_Period_06, 0, MA_Type, MA_Price);
    MA_Handle_07 = iMA(Symbol(), Period(), MA_Period_07, 0, MA_Type, MA_Price);
    MA_Handle_08 = iMA(Symbol(), Period(), MA_Period_08, 0, MA_Type, MA_Price);
    MA_Handle_09 = iMA(Symbol(), Period(), MA_Period_09, 0, MA_Type, MA_Price);
    MA_Handle_10 = iMA(Symbol(), Period(), MA_Period_10, 0, MA_Type, MA_Price);
    MA_Handle_11 = iMA(Symbol(), Period(), MA_Period_11, 0, MA_Type, MA_Price);
    MA_Handle_12 = iMA(Symbol(), Period(), MA_Period_12, 0, MA_Type, MA_Price);
    MA_Handle_13 = iMA(Symbol(), Period(), MA_Period_13, 0, MA_Type, MA_Price);
    MA_Handle_14 = iMA(Symbol(), Period(), MA_Period_14, 0, MA_Type, MA_Price);
    MA_Handle_15 = iMA(Symbol(), Period(), MA_Period_15, 0, MA_Type, MA_Price);
    MA_Handle_16 = iMA(Symbol(), Period(), MA_Period_16, 0, MA_Type, MA_Price);
    MA_Handle_17 = iMA(Symbol(), Period(), MA_Period_17, 0, MA_Type, MA_Price);
    MA_Handle_18 = iMA(Symbol(), Period(), MA_Period_18, 0, MA_Type, MA_Price);
    MA_Handle_19 = iMA(Symbol(), Period(), MA_Period_19, 0, MA_Type, MA_Price);
    MA_Handle_20 = iMA(Symbol(), Period(), MA_Period_20, 0, MA_Type, MA_Price);
    MA_Handle_21 = iMA(Symbol(), Period(), MA_Period_21, 0, MA_Type, MA_Price);
    MA_Handle_22 = iMA(Symbol(), Period(), MA_Period_22, 0, MA_Type, MA_Price);
    MA_Handle_23 = iMA(Symbol(), Period(), MA_Period_23, 0, MA_Type, MA_Price);
    MA_Handle_24 = iMA(Symbol(), Period(), MA_Period_24, 0, MA_Type, MA_Price);
    MA_Handle_25 = iMA(Symbol(), Period(), MA_Period_25, 0, MA_Type, MA_Price);
    MA_Handle_26 = iMA(Symbol(), Period(), MA_Period_26, 0, MA_Type, MA_Price);
    MA_Handle_27 = iMA(Symbol(), Period(), MA_Period_27, 0, MA_Type, MA_Price);
    MA_Handle_28 = iMA(Symbol(), Period(), MA_Period_28, 0, MA_Type, MA_Price);
    MA_Handle_29 = iMA(Symbol(), Period(), MA_Period_29, 0, MA_Type, MA_Price);
    MA_Handle_30 = iMA(Symbol(), Period(), MA_Period_30, 0, MA_Type, MA_Price);
    MA_Handle_31 = iMA(Symbol(), Period(), MA_Period_31, 0, MA_Type, MA_Price);
    MA_Handle_32 = iMA(Symbol(), Period(), MA_Period_32, 0, MA_Type, MA_Price);
    MA_Handle_33 = iMA(Symbol(), Period(), MA_Period_33, 0, MA_Type, MA_Price);
    MA_Handle_34 = iMA(Symbol(), Period(), MA_Period_34, 0, MA_Type, MA_Price);
    MA_Handle_35 = iMA(Symbol(), Period(), MA_Period_35, 0, MA_Type, MA_Price);
    MA_Handle_36 = iMA(Symbol(), Period(), MA_Period_36, 0, MA_Type, MA_Price);
    MA_Handle_37 = iMA(Symbol(), Period(), MA_Period_37, 0, MA_Type, MA_Price);
    MA_Handle_38 = iMA(Symbol(), Period(), MA_Period_38, 0, MA_Type, MA_Price);
    MA_Handle_39 = iMA(Symbol(), Period(), MA_Period_39, 0, MA_Type, MA_Price);
    MA_Handle_40 = iMA(Symbol(), Period(), MA_Period_40, 0, MA_Type, MA_Price);
    MA_Handle_41 = iMA(Symbol(), Period(), MA_Period_41, 0, MA_Type, MA_Price);
    MA_Handle_42 = iMA(Symbol(), Period(), MA_Period_42, 0, MA_Type, MA_Price);
    MA_Handle_43 = iMA(Symbol(), Period(), MA_Period_43, 0, MA_Type, MA_Price);
    MA_Handle_44 = iMA(Symbol(), Period(), MA_Period_44, 0, MA_Type, MA_Price);
    MA_Handle_45 = iMA(Symbol(), Period(), MA_Period_45, 0, MA_Type, MA_Price);
    MA_Handle_46 = iMA(Symbol(), Period(), MA_Period_46, 0, MA_Type, MA_Price);
    MA_Handle_47 = iMA(Symbol(), Period(), MA_Period_47, 0, MA_Type, MA_Price);
    MA_Handle_48 = iMA(Symbol(), Period(), MA_Period_48, 0, MA_Type, MA_Price);
    MA_Handle_49 = iMA(Symbol(), Period(), MA_Period_49, 0, MA_Type, MA_Price);
    MA_Handle_50 = iMA(Symbol(), Period(), MA_Period_50, 0, MA_Type, MA_Price);
    MA_Handle_51 = iMA(Symbol(), Period(), MA_Period_51, 0, MA_Type, MA_Price);
    MA_Handle_52 = iMA(Symbol(), Period(), MA_Period_52, 0, MA_Type, MA_Price);
    MA_Handle_53 = iMA(Symbol(), Period(), MA_Period_53, 0, MA_Type, MA_Price);
    MA_Handle_54 = iMA(Symbol(), Period(), MA_Period_54, 0, MA_Type, MA_Price);
    MA_Handle_55 = iMA(Symbol(), Period(), MA_Period_55, 0, MA_Type, MA_Price);
    MA_Handle_56 = iMA(Symbol(), Period(), MA_Period_56, 0, MA_Type, MA_Price);
    MA_Handle_57 = iMA(Symbol(), Period(), MA_Period_57, 0, MA_Type, MA_Price);
    MA_Handle_58 = iMA(Symbol(), Period(), MA_Period_58, 0, MA_Type, MA_Price);
    MA_Handle_59 = iMA(Symbol(), Period(), MA_Period_59, 0, MA_Type, MA_Price);
    MA_Handle_60 = iMA(Symbol(), Period(), MA_Period_60, 0, MA_Type, MA_Price);
    MA_Handle_61 = iMA(Symbol(), Period(), MA_Period_61, 0, MA_Type, MA_Price);
    MA_Handle_62 = iMA(Symbol(), Period(), MA_Period_62, 0, MA_Type, MA_Price);
    MA_Handle_63 = iMA(Symbol(), Period(), MA_Period_63, 0, MA_Type, MA_Price);
    MA_Handle_64 = iMA(Symbol(), Period(), MA_Period_64, 0, MA_Type, MA_Price);
    MA_Handle_65 = iMA(Symbol(), Period(), MA_Period_65, 0, MA_Type, MA_Price);
    MA_Handle_66 = iMA(Symbol(), Period(), MA_Period_66, 0, MA_Type, MA_Price);
    
    ArraySetAsSeries(ExtMapBuffer01, true);
    ArraySetAsSeries(ExtMapBuffer02, true);
    ArraySetAsSeries(ExtMapBuffer03, true);
    ArraySetAsSeries(ExtMapBuffer04, true);
    ArraySetAsSeries(ExtMapBuffer05, true);
    ArraySetAsSeries(ExtMapBuffer06, true);
    ArraySetAsSeries(ExtMapBuffer07, true);
    ArraySetAsSeries(ExtMapBuffer08, true);
    ArraySetAsSeries(ExtMapBuffer09, true);
    ArraySetAsSeries(ExtMapBuffer10, true);
    ArraySetAsSeries(ExtMapBuffer11, true);
    ArraySetAsSeries(ExtMapBuffer12, true);
    ArraySetAsSeries(ExtMapBuffer13, true);
    ArraySetAsSeries(ExtMapBuffer14, true);
    ArraySetAsSeries(ExtMapBuffer15, true);
    ArraySetAsSeries(ExtMapBuffer16, true);
    ArraySetAsSeries(ExtMapBuffer17, true);
    ArraySetAsSeries(ExtMapBuffer18, true);
    ArraySetAsSeries(ExtMapBuffer19, true);
    ArraySetAsSeries(ExtMapBuffer20, true);
    ArraySetAsSeries(ExtMapBuffer21, true);
    ArraySetAsSeries(ExtMapBuffer22, true);
    ArraySetAsSeries(ExtMapBuffer23, true);
    ArraySetAsSeries(ExtMapBuffer24, true);
    ArraySetAsSeries(ExtMapBuffer25, true);
    ArraySetAsSeries(ExtMapBuffer26, true);
    ArraySetAsSeries(ExtMapBuffer27, true);
    ArraySetAsSeries(ExtMapBuffer28, true);
    ArraySetAsSeries(ExtMapBuffer29, true);
    ArraySetAsSeries(ExtMapBuffer30, true);
    ArraySetAsSeries(ExtMapBuffer31, true);
    ArraySetAsSeries(ExtMapBuffer32, true);
    ArraySetAsSeries(ExtMapBuffer33, true);
    ArraySetAsSeries(ExtMapBuffer34, true);
    ArraySetAsSeries(ExtMapBuffer35, true);
    ArraySetAsSeries(ExtMapBuffer36, true);
    ArraySetAsSeries(ExtMapBuffer37, true);
    ArraySetAsSeries(ExtMapBuffer38, true);
    ArraySetAsSeries(ExtMapBuffer39, true);
    ArraySetAsSeries(ExtMapBuffer40, true);
    ArraySetAsSeries(ExtMapBuffer41, true);
    ArraySetAsSeries(ExtMapBuffer42, true);
    ArraySetAsSeries(ExtMapBuffer43, true);
    ArraySetAsSeries(ExtMapBuffer44, true);
    ArraySetAsSeries(ExtMapBuffer45, true);
    ArraySetAsSeries(ExtMapBuffer46, true);
    ArraySetAsSeries(ExtMapBuffer47, true);
    ArraySetAsSeries(ExtMapBuffer48, true);
    ArraySetAsSeries(ExtMapBuffer49, true);
    ArraySetAsSeries(ExtMapBuffer50, true);
    ArraySetAsSeries(ExtMapBuffer51, true);
    ArraySetAsSeries(ExtMapBuffer52, true);
    ArraySetAsSeries(ExtMapBuffer53, true);
    ArraySetAsSeries(ExtMapBuffer54, true);
    ArraySetAsSeries(ExtMapBuffer55, true);
    ArraySetAsSeries(ExtMapBuffer56, true);
    ArraySetAsSeries(ExtMapBuffer57, true);
    ArraySetAsSeries(ExtMapBuffer58, true);
    ArraySetAsSeries(ExtMapBuffer59, true);
    ArraySetAsSeries(ExtMapBuffer60, true);
    ArraySetAsSeries(ExtMapBuffer61, true);
    ArraySetAsSeries(ExtMapBuffer62, true);
    ArraySetAsSeries(ExtMapBuffer63, true);
    ArraySetAsSeries(ExtMapBuffer64, true);
    ArraySetAsSeries(ExtMapBuffer65, true);
    ArraySetAsSeries(ExtMapBuffer66, true);    

    ArraySetAsSeries(MA_Buffer_01, true);
    ArraySetAsSeries(MA_Buffer_02, true);
    ArraySetAsSeries(MA_Buffer_03, true);
    ArraySetAsSeries(MA_Buffer_04, true);
    ArraySetAsSeries(MA_Buffer_05, true);
    ArraySetAsSeries(MA_Buffer_06, true);
    ArraySetAsSeries(MA_Buffer_07, true);
    ArraySetAsSeries(MA_Buffer_08, true);
    ArraySetAsSeries(MA_Buffer_09, true);
    ArraySetAsSeries(MA_Buffer_10, true);
    ArraySetAsSeries(MA_Buffer_11, true);
    ArraySetAsSeries(MA_Buffer_12, true);
    ArraySetAsSeries(MA_Buffer_13, true);
    ArraySetAsSeries(MA_Buffer_14, true);
    ArraySetAsSeries(MA_Buffer_15, true);
    ArraySetAsSeries(MA_Buffer_16, true);
    ArraySetAsSeries(MA_Buffer_17, true);
    ArraySetAsSeries(MA_Buffer_18, true);
    ArraySetAsSeries(MA_Buffer_19, true);
    ArraySetAsSeries(MA_Buffer_20, true);
    ArraySetAsSeries(MA_Buffer_21, true);
    ArraySetAsSeries(MA_Buffer_22, true);
    ArraySetAsSeries(MA_Buffer_23, true);
    ArraySetAsSeries(MA_Buffer_24, true);
    ArraySetAsSeries(MA_Buffer_25, true);
    ArraySetAsSeries(MA_Buffer_26, true);
    ArraySetAsSeries(MA_Buffer_27, true);
    ArraySetAsSeries(MA_Buffer_28, true);
    ArraySetAsSeries(MA_Buffer_29, true);
    ArraySetAsSeries(MA_Buffer_30, true);
    ArraySetAsSeries(MA_Buffer_31, true);
    ArraySetAsSeries(MA_Buffer_32, true);
    ArraySetAsSeries(MA_Buffer_33, true);
    ArraySetAsSeries(MA_Buffer_34, true);
    ArraySetAsSeries(MA_Buffer_35, true);
    ArraySetAsSeries(MA_Buffer_36, true);
    ArraySetAsSeries(MA_Buffer_37, true);
    ArraySetAsSeries(MA_Buffer_38, true);
    ArraySetAsSeries(MA_Buffer_39, true);
    ArraySetAsSeries(MA_Buffer_40, true);
    ArraySetAsSeries(MA_Buffer_41, true);
    ArraySetAsSeries(MA_Buffer_42, true);
    ArraySetAsSeries(MA_Buffer_43, true);
    ArraySetAsSeries(MA_Buffer_44, true);
    ArraySetAsSeries(MA_Buffer_45, true);
    ArraySetAsSeries(MA_Buffer_46, true);
    ArraySetAsSeries(MA_Buffer_47, true);
    ArraySetAsSeries(MA_Buffer_48, true);
    ArraySetAsSeries(MA_Buffer_49, true);
    ArraySetAsSeries(MA_Buffer_50, true);
    ArraySetAsSeries(MA_Buffer_51, true);
    ArraySetAsSeries(MA_Buffer_52, true);
    ArraySetAsSeries(MA_Buffer_53, true);
    ArraySetAsSeries(MA_Buffer_54, true);
    ArraySetAsSeries(MA_Buffer_55, true);
    ArraySetAsSeries(MA_Buffer_56, true);
    ArraySetAsSeries(MA_Buffer_57, true);
    ArraySetAsSeries(MA_Buffer_58, true);
    ArraySetAsSeries(MA_Buffer_59, true);
    ArraySetAsSeries(MA_Buffer_60, true);
    ArraySetAsSeries(MA_Buffer_61, true);
    ArraySetAsSeries(MA_Buffer_62, true);
    ArraySetAsSeries(MA_Buffer_63, true);
    ArraySetAsSeries(MA_Buffer_64, true);
    ArraySetAsSeries(MA_Buffer_65, true);
    ArraySetAsSeries(MA_Buffer_66, true);  
}

int OnCalculate(const int rates_total,
                const int prev_calculated,
                const datetime &time[],
                const double &open[],
                const double &high[],
                const double &low[],
                const double &close[],
                const long &tick_volume[],
                const long &volume[],
                const int &spread[])
{
    int counted_bars = prev_calculated;
    if (counted_bars > 0) counted_bars--;
    int limit = rates_total - counted_bars;
    if (rates_total - limit < MA_Period_01) limit = rates_total - MA_Period_01;

    if (CopyBuffer(MA_Handle_01, 0, 0, limit, MA_Buffer_01) != limit) return 0;
    if (CopyBuffer(MA_Handle_02, 0, 0, limit, MA_Buffer_02) != limit) return 0;
    if (CopyBuffer(MA_Handle_03, 0, 0, limit, MA_Buffer_03) != limit) return 0;
    if (CopyBuffer(MA_Handle_04, 0, 0, limit, MA_Buffer_04) != limit) return 0;
    if (CopyBuffer(MA_Handle_05, 0, 0, limit, MA_Buffer_05) != limit) return 0;
    if (CopyBuffer(MA_Handle_06, 0, 0, limit, MA_Buffer_06) != limit) return 0;
    if (CopyBuffer(MA_Handle_07, 0, 0, limit, MA_Buffer_07) != limit) return 0;
    if (CopyBuffer(MA_Handle_08, 0, 0, limit, MA_Buffer_08) != limit) return 0;
    if (CopyBuffer(MA_Handle_09, 0, 0, limit, MA_Buffer_09) != limit) return 0;
    if (CopyBuffer(MA_Handle_10, 0, 0, limit, MA_Buffer_10) != limit) return 0;
    if (CopyBuffer(MA_Handle_11, 0, 0, limit, MA_Buffer_11) != limit) return 0;
    if (CopyBuffer(MA_Handle_12, 0, 0, limit, MA_Buffer_12) != limit) return 0;
    if (CopyBuffer(MA_Handle_13, 0, 0, limit, MA_Buffer_13) != limit) return 0;
    if (CopyBuffer(MA_Handle_14, 0, 0, limit, MA_Buffer_14) != limit) return 0;
    if (CopyBuffer(MA_Handle_15, 0, 0, limit, MA_Buffer_15) != limit) return 0;
    if (CopyBuffer(MA_Handle_16, 0, 0, limit, MA_Buffer_16) != limit) return 0;
    if (CopyBuffer(MA_Handle_17, 0, 0, limit, MA_Buffer_17) != limit) return 0;
    if (CopyBuffer(MA_Handle_18, 0, 0, limit, MA_Buffer_18) != limit) return 0;
    if (CopyBuffer(MA_Handle_19, 0, 0, limit, MA_Buffer_19) != limit) return 0;
    if (CopyBuffer(MA_Handle_20, 0, 0, limit, MA_Buffer_20) != limit) return 0;
    if (CopyBuffer(MA_Handle_21, 0, 0, limit, MA_Buffer_21) != limit) return 0;
    if (CopyBuffer(MA_Handle_22, 0, 0, limit, MA_Buffer_22) != limit) return 0;
    if (CopyBuffer(MA_Handle_23, 0, 0, limit, MA_Buffer_23) != limit) return 0;
    if (CopyBuffer(MA_Handle_24, 0, 0, limit, MA_Buffer_24) != limit) return 0;
    if (CopyBuffer(MA_Handle_25, 0, 0, limit, MA_Buffer_25) != limit) return 0;
    if (CopyBuffer(MA_Handle_26, 0, 0, limit, MA_Buffer_26) != limit) return 0;
    if (CopyBuffer(MA_Handle_27, 0, 0, limit, MA_Buffer_27) != limit) return 0;
    if (CopyBuffer(MA_Handle_28, 0, 0, limit, MA_Buffer_28) != limit) return 0;
    if (CopyBuffer(MA_Handle_29, 0, 0, limit, MA_Buffer_29) != limit) return 0;
    if (CopyBuffer(MA_Handle_30, 0, 0, limit, MA_Buffer_30) != limit) return 0;
    if (CopyBuffer(MA_Handle_31, 0, 0, limit, MA_Buffer_31) != limit) return 0;
    if (CopyBuffer(MA_Handle_32, 0, 0, limit, MA_Buffer_32) != limit) return 0;
    if (CopyBuffer(MA_Handle_33, 0, 0, limit, MA_Buffer_33) != limit) return 0;
    if (CopyBuffer(MA_Handle_34, 0, 0, limit, MA_Buffer_34) != limit) return 0;
    if (CopyBuffer(MA_Handle_35, 0, 0, limit, MA_Buffer_35) != limit) return 0;
    if (CopyBuffer(MA_Handle_36, 0, 0, limit, MA_Buffer_36) != limit) return 0;
    if (CopyBuffer(MA_Handle_37, 0, 0, limit, MA_Buffer_37) != limit) return 0;
    if (CopyBuffer(MA_Handle_38, 0, 0, limit, MA_Buffer_38) != limit) return 0;
    if (CopyBuffer(MA_Handle_39, 0, 0, limit, MA_Buffer_39) != limit) return 0;
    if (CopyBuffer(MA_Handle_40, 0, 0, limit, MA_Buffer_40) != limit) return 0;
    if (CopyBuffer(MA_Handle_41, 0, 0, limit, MA_Buffer_41) != limit) return 0;
    if (CopyBuffer(MA_Handle_42, 0, 0, limit, MA_Buffer_42) != limit) return 0;
    if (CopyBuffer(MA_Handle_43, 0, 0, limit, MA_Buffer_43) != limit) return 0;
    if (CopyBuffer(MA_Handle_44, 0, 0, limit, MA_Buffer_44) != limit) return 0;
    if (CopyBuffer(MA_Handle_45, 0, 0, limit, MA_Buffer_45) != limit) return 0;
    if (CopyBuffer(MA_Handle_46, 0, 0, limit, MA_Buffer_46) != limit) return 0;
    if (CopyBuffer(MA_Handle_47, 0, 0, limit, MA_Buffer_47) != limit) return 0;
    if (CopyBuffer(MA_Handle_48, 0, 0, limit, MA_Buffer_48) != limit) return 0;
    if (CopyBuffer(MA_Handle_49, 0, 0, limit, MA_Buffer_49) != limit) return 0;
    if (CopyBuffer(MA_Handle_50, 0, 0, limit, MA_Buffer_50) != limit) return 0;
    if (CopyBuffer(MA_Handle_51, 0, 0, limit, MA_Buffer_51) != limit) return 0;
    if (CopyBuffer(MA_Handle_52, 0, 0, limit, MA_Buffer_52) != limit) return 0;
    if (CopyBuffer(MA_Handle_53, 0, 0, limit, MA_Buffer_53) != limit) return 0;
    if (CopyBuffer(MA_Handle_54, 0, 0, limit, MA_Buffer_54) != limit) return 0;
    if (CopyBuffer(MA_Handle_55, 0, 0, limit, MA_Buffer_55) != limit) return 0;
    if (CopyBuffer(MA_Handle_56, 0, 0, limit, MA_Buffer_56) != limit) return 0;
    if (CopyBuffer(MA_Handle_57, 0, 0, limit, MA_Buffer_57) != limit) return 0;
    if (CopyBuffer(MA_Handle_58, 0, 0, limit, MA_Buffer_58) != limit) return 0;
    if (CopyBuffer(MA_Handle_59, 0, 0, limit, MA_Buffer_59) != limit) return 0;
    if (CopyBuffer(MA_Handle_60, 0, 0, limit, MA_Buffer_60) != limit) return 0;
    if (CopyBuffer(MA_Handle_61, 0, 0, limit, MA_Buffer_61) != limit) return 0;
    if (CopyBuffer(MA_Handle_62, 0, 0, limit, MA_Buffer_62) != limit) return 0;
    if (CopyBuffer(MA_Handle_63, 0, 0, limit, MA_Buffer_63) != limit) return 0;
    if (CopyBuffer(MA_Handle_64, 0, 0, limit, MA_Buffer_64) != limit) return 0;
    if (CopyBuffer(MA_Handle_65, 0, 0, limit, MA_Buffer_65) != limit) return 0;
    if (CopyBuffer(MA_Handle_66, 0, 0, limit, MA_Buffer_66) != limit) return 0;
    
    for (int i = 0; i < limit; i++)
    {
        ExtMapBuffer01[i] = MA_Buffer_01[i];
        ExtMapBuffer02[i] = MA_Buffer_02[i];
        ExtMapBuffer03[i] = MA_Buffer_03[i];
        ExtMapBuffer04[i] = MA_Buffer_04[i];
        ExtMapBuffer05[i] = MA_Buffer_05[i];
        ExtMapBuffer06[i] = MA_Buffer_06[i];
        ExtMapBuffer07[i] = MA_Buffer_07[i];
        ExtMapBuffer08[i] = MA_Buffer_08[i];
        ExtMapBuffer09[i] = MA_Buffer_09[i];
        ExtMapBuffer10[i] = MA_Buffer_10[i];
        ExtMapBuffer11[i] = MA_Buffer_11[i];
        ExtMapBuffer12[i] = MA_Buffer_12[i];
        ExtMapBuffer13[i] = MA_Buffer_13[i];
        ExtMapBuffer14[i] = MA_Buffer_14[i];
        ExtMapBuffer15[i] = MA_Buffer_15[i];
        ExtMapBuffer16[i] = MA_Buffer_16[i];
        ExtMapBuffer17[i] = MA_Buffer_17[i];
        ExtMapBuffer18[i] = MA_Buffer_18[i];
        ExtMapBuffer19[i] = MA_Buffer_19[i];
        ExtMapBuffer20[i] = MA_Buffer_20[i];
        ExtMapBuffer21[i] = MA_Buffer_21[i];
        ExtMapBuffer22[i] = MA_Buffer_22[i];
        ExtMapBuffer23[i] = MA_Buffer_23[i];
        ExtMapBuffer24[i] = MA_Buffer_24[i];
        ExtMapBuffer25[i] = MA_Buffer_25[i];
        ExtMapBuffer26[i] = MA_Buffer_26[i];
        ExtMapBuffer27[i] = MA_Buffer_27[i];
        ExtMapBuffer28[i] = MA_Buffer_28[i];
        ExtMapBuffer29[i] = MA_Buffer_29[i];
        ExtMapBuffer30[i] = MA_Buffer_30[i];
        ExtMapBuffer31[i] = MA_Buffer_31[i];
        ExtMapBuffer32[i] = MA_Buffer_32[i];
        ExtMapBuffer33[i] = MA_Buffer_33[i];
        ExtMapBuffer34[i] = MA_Buffer_34[i];
        ExtMapBuffer35[i] = MA_Buffer_35[i];
        ExtMapBuffer36[i] = MA_Buffer_36[i];
        ExtMapBuffer37[i] = MA_Buffer_37[i];
        ExtMapBuffer38[i] = MA_Buffer_38[i];
        ExtMapBuffer39[i] = MA_Buffer_39[i];
        ExtMapBuffer40[i] = MA_Buffer_40[i];
        ExtMapBuffer41[i] = MA_Buffer_41[i];
        ExtMapBuffer42[i] = MA_Buffer_42[i];
        ExtMapBuffer43[i] = MA_Buffer_43[i];
        ExtMapBuffer44[i] = MA_Buffer_44[i];
        ExtMapBuffer45[i] = MA_Buffer_45[i];
        ExtMapBuffer46[i] = MA_Buffer_46[i];
        ExtMapBuffer47[i] = MA_Buffer_47[i];
        ExtMapBuffer48[i] = MA_Buffer_48[i];
        ExtMapBuffer49[i] = MA_Buffer_49[i];
        ExtMapBuffer50[i] = MA_Buffer_50[i];
        ExtMapBuffer51[i] = MA_Buffer_51[i];
        ExtMapBuffer52[i] = MA_Buffer_52[i];
        ExtMapBuffer53[i] = MA_Buffer_53[i];
        ExtMapBuffer54[i] = MA_Buffer_54[i];
        ExtMapBuffer55[i] = MA_Buffer_55[i];
        ExtMapBuffer56[i] = MA_Buffer_56[i];
        ExtMapBuffer57[i] = MA_Buffer_57[i];
        ExtMapBuffer58[i] = MA_Buffer_58[i];
        ExtMapBuffer59[i] = MA_Buffer_59[i];
        ExtMapBuffer60[i] = MA_Buffer_60[i];
        ExtMapBuffer61[i] = MA_Buffer_61[i];
        ExtMapBuffer62[i] = MA_Buffer_62[i];
        ExtMapBuffer63[i] = MA_Buffer_63[i];
        ExtMapBuffer64[i] = MA_Buffer_64[i];
        ExtMapBuffer65[i] = MA_Buffer_65[i];
        ExtMapBuffer66[i] = MA_Buffer_66[i];
    }

    return rates_total;
}
//+------------------------------------------------------------------+