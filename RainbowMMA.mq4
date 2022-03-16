//+-----------------------------------------------------------------------------+
//|                                                              RainbowMMA.mq4 |
//|                                             Copyright © 2022, EarnForex.com |
//|                                       Based on RainbowMMA_01.mq4 by Akuma99 |
//+-----------------------------------------------------------------------------+
#property copyright "Copyright © 2022, EarnForex.com"
#property link      "https://www.earnforex.com/metatrader-indicators/Rainbow-Multiple-Moving-Average/"
#property version   "1.00"
#property strict

#property description "Rainbow Multiple Moving Average - 66 multi-colored MA lines."

#property indicator_chart_window
#property indicator_buffers 66
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

void OnInit()
{
    SetIndexBuffer(0, ExtMapBuffer01);
    SetIndexBuffer(1, ExtMapBuffer02);
    SetIndexBuffer(2, ExtMapBuffer03);
    SetIndexBuffer(3, ExtMapBuffer04);
    SetIndexBuffer(4, ExtMapBuffer05);
    SetIndexBuffer(5, ExtMapBuffer06);
    SetIndexBuffer(6, ExtMapBuffer07);
    SetIndexBuffer(7, ExtMapBuffer08);
    SetIndexBuffer(8, ExtMapBuffer09);
    SetIndexBuffer(9, ExtMapBuffer10);
    SetIndexBuffer(10, ExtMapBuffer11);
    SetIndexBuffer(11, ExtMapBuffer12);
    SetIndexBuffer(12, ExtMapBuffer13);
    SetIndexBuffer(13, ExtMapBuffer14);
    SetIndexBuffer(14, ExtMapBuffer15);
    SetIndexBuffer(15, ExtMapBuffer16);
    SetIndexBuffer(16, ExtMapBuffer17);
    SetIndexBuffer(17, ExtMapBuffer18);
    SetIndexBuffer(18, ExtMapBuffer19);
    SetIndexBuffer(19, ExtMapBuffer20);
    SetIndexBuffer(20, ExtMapBuffer21);
    SetIndexBuffer(21, ExtMapBuffer22);
    SetIndexBuffer(22, ExtMapBuffer23);
    SetIndexBuffer(23, ExtMapBuffer24);
    SetIndexBuffer(24, ExtMapBuffer25);
    SetIndexBuffer(25, ExtMapBuffer26);
    SetIndexBuffer(26, ExtMapBuffer27);
    SetIndexBuffer(27, ExtMapBuffer28);
    SetIndexBuffer(28, ExtMapBuffer29);
    SetIndexBuffer(29, ExtMapBuffer30);
    SetIndexBuffer(30, ExtMapBuffer31);
    SetIndexBuffer(31, ExtMapBuffer32);
    SetIndexBuffer(32, ExtMapBuffer33);
    SetIndexBuffer(33, ExtMapBuffer34);
    SetIndexBuffer(34, ExtMapBuffer35);
    SetIndexBuffer(35, ExtMapBuffer36);
    SetIndexBuffer(36, ExtMapBuffer37);
    SetIndexBuffer(37, ExtMapBuffer38);
    SetIndexBuffer(38, ExtMapBuffer39);
    SetIndexBuffer(39, ExtMapBuffer40);
    SetIndexBuffer(40, ExtMapBuffer41);
    SetIndexBuffer(41, ExtMapBuffer42);
    SetIndexBuffer(42, ExtMapBuffer43);
    SetIndexBuffer(43, ExtMapBuffer44);
    SetIndexBuffer(44, ExtMapBuffer45);
    SetIndexBuffer(45, ExtMapBuffer46);
    SetIndexBuffer(46, ExtMapBuffer47);
    SetIndexBuffer(47, ExtMapBuffer48);
    SetIndexBuffer(48, ExtMapBuffer49);
    SetIndexBuffer(49, ExtMapBuffer50);
    SetIndexBuffer(50, ExtMapBuffer51);
    SetIndexBuffer(51, ExtMapBuffer52);
    SetIndexBuffer(52, ExtMapBuffer53);
    SetIndexBuffer(53, ExtMapBuffer54);
    SetIndexBuffer(54, ExtMapBuffer55);
    SetIndexBuffer(55, ExtMapBuffer56);
    SetIndexBuffer(56, ExtMapBuffer57);
    SetIndexBuffer(57, ExtMapBuffer58);
    SetIndexBuffer(58, ExtMapBuffer59);
    SetIndexBuffer(59, ExtMapBuffer60);
    SetIndexBuffer(60, ExtMapBuffer61);
    SetIndexBuffer(61, ExtMapBuffer62);
    SetIndexBuffer(62, ExtMapBuffer63);
    SetIndexBuffer(63, ExtMapBuffer64);
    SetIndexBuffer(64, ExtMapBuffer65);
    SetIndexBuffer(65, ExtMapBuffer66);
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
    int counted_bars = IndicatorCounted();

    if (counted_bars > 0) counted_bars--;
    int limit = Bars - counted_bars;

    for (int i = 0; i < limit; i++)
    {
        ExtMapBuffer01[i] = iMA(Symbol(), Period(), MA_Period_01, 0, MA_Type, MA_Price, i);
        ExtMapBuffer02[i] = iMA(Symbol(), Period(), MA_Period_02, 0, MA_Type, MA_Price, i);
        ExtMapBuffer03[i] = iMA(Symbol(), Period(), MA_Period_03, 0, MA_Type, MA_Price, i);
        ExtMapBuffer04[i] = iMA(Symbol(), Period(), MA_Period_04, 0, MA_Type, MA_Price, i);
        ExtMapBuffer05[i] = iMA(Symbol(), Period(), MA_Period_05, 0, MA_Type, MA_Price, i);
        ExtMapBuffer06[i] = iMA(Symbol(), Period(), MA_Period_06, 0, MA_Type, MA_Price, i);
        ExtMapBuffer07[i] = iMA(Symbol(), Period(), MA_Period_07, 0, MA_Type, MA_Price, i);
        ExtMapBuffer08[i] = iMA(Symbol(), Period(), MA_Period_08, 0, MA_Type, MA_Price, i);
        ExtMapBuffer09[i] = iMA(Symbol(), Period(), MA_Period_09, 0, MA_Type, MA_Price, i);
        ExtMapBuffer10[i] = iMA(Symbol(), Period(), MA_Period_10, 0, MA_Type, MA_Price, i);
        ExtMapBuffer11[i] = iMA(Symbol(), Period(), MA_Period_11, 0, MA_Type, MA_Price, i);
        ExtMapBuffer12[i] = iMA(Symbol(), Period(), MA_Period_12, 0, MA_Type, MA_Price, i);
        ExtMapBuffer13[i] = iMA(Symbol(), Period(), MA_Period_13, 0, MA_Type, MA_Price, i);
        ExtMapBuffer14[i] = iMA(Symbol(), Period(), MA_Period_14, 0, MA_Type, MA_Price, i);
        ExtMapBuffer15[i] = iMA(Symbol(), Period(), MA_Period_15, 0, MA_Type, MA_Price, i);
        ExtMapBuffer16[i] = iMA(Symbol(), Period(), MA_Period_16, 0, MA_Type, MA_Price, i);
        ExtMapBuffer17[i] = iMA(Symbol(), Period(), MA_Period_17, 0, MA_Type, MA_Price, i);
        ExtMapBuffer18[i] = iMA(Symbol(), Period(), MA_Period_18, 0, MA_Type, MA_Price, i);
        ExtMapBuffer19[i] = iMA(Symbol(), Period(), MA_Period_19, 0, MA_Type, MA_Price, i);
        ExtMapBuffer20[i] = iMA(Symbol(), Period(), MA_Period_20, 0, MA_Type, MA_Price, i);
        ExtMapBuffer21[i] = iMA(Symbol(), Period(), MA_Period_21, 0, MA_Type, MA_Price, i);
        ExtMapBuffer22[i] = iMA(Symbol(), Period(), MA_Period_22, 0, MA_Type, MA_Price, i);
        ExtMapBuffer23[i] = iMA(Symbol(), Period(), MA_Period_23, 0, MA_Type, MA_Price, i);
        ExtMapBuffer24[i] = iMA(Symbol(), Period(), MA_Period_24, 0, MA_Type, MA_Price, i);
        ExtMapBuffer25[i] = iMA(Symbol(), Period(), MA_Period_25, 0, MA_Type, MA_Price, i);
        ExtMapBuffer26[i] = iMA(Symbol(), Period(), MA_Period_26, 0, MA_Type, MA_Price, i);
        ExtMapBuffer27[i] = iMA(Symbol(), Period(), MA_Period_27, 0, MA_Type, MA_Price, i);
        ExtMapBuffer28[i] = iMA(Symbol(), Period(), MA_Period_28, 0, MA_Type, MA_Price, i);
        ExtMapBuffer29[i] = iMA(Symbol(), Period(), MA_Period_29, 0, MA_Type, MA_Price, i);
        ExtMapBuffer30[i] = iMA(Symbol(), Period(), MA_Period_30, 0, MA_Type, MA_Price, i);
        ExtMapBuffer31[i] = iMA(Symbol(), Period(), MA_Period_31, 0, MA_Type, MA_Price, i);
        ExtMapBuffer32[i] = iMA(Symbol(), Period(), MA_Period_32, 0, MA_Type, MA_Price, i);
        ExtMapBuffer33[i] = iMA(Symbol(), Period(), MA_Period_33, 0, MA_Type, MA_Price, i);
        ExtMapBuffer34[i] = iMA(Symbol(), Period(), MA_Period_34, 0, MA_Type, MA_Price, i);
        ExtMapBuffer35[i] = iMA(Symbol(), Period(), MA_Period_35, 0, MA_Type, MA_Price, i);
        ExtMapBuffer36[i] = iMA(Symbol(), Period(), MA_Period_36, 0, MA_Type, MA_Price, i);
        ExtMapBuffer37[i] = iMA(Symbol(), Period(), MA_Period_37, 0, MA_Type, MA_Price, i);
        ExtMapBuffer38[i] = iMA(Symbol(), Period(), MA_Period_38, 0, MA_Type, MA_Price, i);
        ExtMapBuffer39[i] = iMA(Symbol(), Period(), MA_Period_39, 0, MA_Type, MA_Price, i);
        ExtMapBuffer40[i] = iMA(Symbol(), Period(), MA_Period_40, 0, MA_Type, MA_Price, i);
        ExtMapBuffer41[i] = iMA(Symbol(), Period(), MA_Period_41, 0, MA_Type, MA_Price, i);
        ExtMapBuffer42[i] = iMA(Symbol(), Period(), MA_Period_42, 0, MA_Type, MA_Price, i);
        ExtMapBuffer43[i] = iMA(Symbol(), Period(), MA_Period_43, 0, MA_Type, MA_Price, i);
        ExtMapBuffer44[i] = iMA(Symbol(), Period(), MA_Period_44, 0, MA_Type, MA_Price, i);
        ExtMapBuffer45[i] = iMA(Symbol(), Period(), MA_Period_45, 0, MA_Type, MA_Price, i);
        ExtMapBuffer46[i] = iMA(Symbol(), Period(), MA_Period_46, 0, MA_Type, MA_Price, i);
        ExtMapBuffer47[i] = iMA(Symbol(), Period(), MA_Period_47, 0, MA_Type, MA_Price, i);
        ExtMapBuffer48[i] = iMA(Symbol(), Period(), MA_Period_48, 0, MA_Type, MA_Price, i);
        ExtMapBuffer49[i] = iMA(Symbol(), Period(), MA_Period_49, 0, MA_Type, MA_Price, i);
        ExtMapBuffer50[i] = iMA(Symbol(), Period(), MA_Period_50, 0, MA_Type, MA_Price, i);
        ExtMapBuffer51[i] = iMA(Symbol(), Period(), MA_Period_51, 0, MA_Type, MA_Price, i);
        ExtMapBuffer52[i] = iMA(Symbol(), Period(), MA_Period_52, 0, MA_Type, MA_Price, i);
        ExtMapBuffer53[i] = iMA(Symbol(), Period(), MA_Period_53, 0, MA_Type, MA_Price, i);
        ExtMapBuffer54[i] = iMA(Symbol(), Period(), MA_Period_54, 0, MA_Type, MA_Price, i);
        ExtMapBuffer55[i] = iMA(Symbol(), Period(), MA_Period_55, 0, MA_Type, MA_Price, i);
        ExtMapBuffer56[i] = iMA(Symbol(), Period(), MA_Period_56, 0, MA_Type, MA_Price, i);
        ExtMapBuffer57[i] = iMA(Symbol(), Period(), MA_Period_57, 0, MA_Type, MA_Price, i);
        ExtMapBuffer58[i] = iMA(Symbol(), Period(), MA_Period_58, 0, MA_Type, MA_Price, i);
        ExtMapBuffer59[i] = iMA(Symbol(), Period(), MA_Period_59, 0, MA_Type, MA_Price, i);
        ExtMapBuffer60[i] = iMA(Symbol(), Period(), MA_Period_60, 0, MA_Type, MA_Price, i);
        ExtMapBuffer61[i] = iMA(Symbol(), Period(), MA_Period_61, 0, MA_Type, MA_Price, i);
        ExtMapBuffer62[i] = iMA(Symbol(), Period(), MA_Period_62, 0, MA_Type, MA_Price, i);
        ExtMapBuffer63[i] = iMA(Symbol(), Period(), MA_Period_63, 0, MA_Type, MA_Price, i);
        ExtMapBuffer64[i] = iMA(Symbol(), Period(), MA_Period_64, 0, MA_Type, MA_Price, i);
        ExtMapBuffer65[i] = iMA(Symbol(), Period(), MA_Period_65, 0, MA_Type, MA_Price, i);
        ExtMapBuffer66[i] = iMA(Symbol(), Period(), MA_Period_66, 0, MA_Type, MA_Price, i);
    }

    return rates_total;
}
//+------------------------------------------------------------------+