@interface WCM_WiFiCellCoexIssueBandTable
- ($3C9879B8047CCA62E59FC5E141A81388)search_2GWifi_IssueBandForCellBandInfoType:(int)a3 cellDlLowFreq:(double)a4 cellDlHighFreq:(double)a5 cellUlLowFreq:(double)a6 cellUlHighFreq:(double)a7 matchedIssuBand:(unsigned int *)a8;
- ($3C9879B8047CCA62E59FC5E141A81388)search_5GWifi_IssueBandForCellBandInfoType:(int)a3 cellDlLowFreq:(double)a4 cellDlHighFreq:(double)a5 cellUlLowFreq:(double)a6 cellUlHighFreq:(double)a7 matchedIssuBand:(unsigned int *)a8;
- ($3C9879B8047CCA62E59FC5E141A81388)search_WifiEnh_IssueBandForCellBandInfoType:(int)a3 cellDlLowFreq:(double)a4 cellDlHighFreq:(double)a5 cellUlLowFreq:(double)a6 cellUlHighFreq:(double)a7 matchedIssuBand:(unsigned int *)a8;
- (BOOL)configureBy:(id *)a3;
- (BOOL)isFalseTDDIssueBand:(int)a3 cellDlLowFreq:(double)a4 cellDlHighFreq:(double)a5 cellUlLowFreq:(double)a6 cellUlHighFreq:(double)a7;
- (BOOL)isLTEB7FoundForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6;
- (WCM_WiFiCellCoexIssueBandTable)init;
- (id)getHFBTAFHCoexIssuesFromIssueBand:(id *)a3;
- (id)getWifiDesensedCoexIssueFromIssueBand:(id *)a3;
- (void)combineWifiChannelList:(id)a3 withChannelList:(id)a4;
- (void)combineWifiChannelList:(id)a3 withChannelList:(id)a4 inAllowedChannelSet:(id)a5;
- (void)dealloc;
@end

@implementation WCM_WiFiCellCoexIssueBandTable

- (WCM_WiFiCellCoexIssueBandTable)init
{
  v3.receiver = self;
  v3.super_class = WCM_WiFiCellCoexIssueBandTable;
  result = [(WCM_WiFiCellCoexIssueBandTable *)&v3 init];
  if (result)
  {
    result->_issueBand[0]._bandInfoType = 24;
    *&result->_issueBand[0]._downlinkLowFreq = xmmword_100195D10;
    *&result->_issueBand[0]._uplinkLowFreq = xmmword_100195D20;
    result->_issueBand[0]._hasIssue = 0;
    result->_issueBand[1]._bandInfoType = 63;
    *&result->_issueBand[1]._downlinkLowFreq = xmmword_100195D30;
    *&result->_issueBand[1]._uplinkLowFreq = xmmword_100195D40;
    result->_issueBand[1]._hasIssue = 0;
    result->_issueBand[2]._bandInfoType = 35;
    *&result->_issueBand[2]._downlinkLowFreq = xmmword_100195D50;
    *&result->_issueBand[2]._uplinkLowFreq = xmmword_100195D60;
    result->_issueBand[2]._hasIssue = 0;
    result->_issueBand[3]._bandInfoType = 35;
    result->_issueBand[3]._downlinkLowFreq = 860.0;
    *&result->_issueBand[3]._downlinkHighFreq = xmmword_100195D70;
    result->_issueBand[3]._uplinkHighFreq = 830.0;
    result->_issueBand[3]._hasIssue = 0;
    result->_issueBand[4]._bandInfoType = 35;
    *&result->_issueBand[4]._downlinkLowFreq = xmmword_100195D80;
    *&result->_issueBand[4]._uplinkLowFreq = xmmword_100195D90;
    result->_issueBand[4]._hasIssue = 0;
    result->_issueBand[5]._bandInfoType = 35;
    result->_issueBand[5]._downlinkLowFreq = 791.0;
    *&result->_issueBand[5]._downlinkHighFreq = xmmword_100195DA0;
    result->_issueBand[5]._uplinkHighFreq = 862.0;
    result->_issueBand[5]._hasIssue = 0;
    result->_issueBand[6]._bandInfoType = 35;
    *&result->_issueBand[6]._downlinkLowFreq = xmmword_100195DB0;
    *&result->_issueBand[6]._uplinkLowFreq = xmmword_100195DC0;
    result->_issueBand[6]._hasIssue = 0;
    result->_issueBand[7]._bandInfoType = 35;
    result->_issueBand[7]._downlinkLowFreq = 852.0;
    *&result->_issueBand[7]._downlinkHighFreq = xmmword_100195DD0;
    result->_issueBand[7]._uplinkHighFreq = 824.0;
    result->_issueBand[7]._hasIssue = 0;
    result->_issueBand[8]._bandInfoType = 35;
    *&result->_issueBand[8]._downlinkLowFreq = xmmword_100195DE0;
    *&result->_issueBand[8]._uplinkLowFreq = xmmword_100195DF0;
    result->_issueBand[8]._hasIssue = 0;
    result->_issueBand[9]._bandInfoType = 35;
    result->_issueBand[9]._downlinkLowFreq = 2350.0;
    *&result->_issueBand[9]._downlinkHighFreq = xmmword_100195E00;
    result->_issueBand[9]._uplinkHighFreq = 2315.0;
    result->_issueBand[9]._hasIssue = 0;
    result->_issueBand[10]._bandInfoType = 35;
    *&result->_issueBand[10]._downlinkLowFreq = xmmword_100195E10;
    *&result->_issueBand[10]._uplinkLowFreq = xmmword_100195E10;
    result->_issueBand[10]._hasIssue = 0;
    result->_issueBand[11]._bandInfoType = 35;
    result->_issueBand[11]._downlinkLowFreq = 2300.0;
    *&result->_issueBand[11]._downlinkHighFreq = xmmword_100195E20;
    result->_issueBand[11]._uplinkHighFreq = 2400.0;
    result->_issueBand[11]._hasIssue = 0;
    result->_issueBand[12]._bandInfoType = 35;
    *&result->_issueBand[12]._downlinkLowFreq = xmmword_100195E30;
    *&result->_issueBand[12]._uplinkLowFreq = xmmword_100195E30;
    result->_issueBand[12]._hasIssue = 0;
    result->_issueBand[13]._bandInfoType = 64;
    result->_issueBand[13]._downlinkLowFreq = 4400.0;
    *&result->_issueBand[13]._downlinkHighFreq = xmmword_100195E40;
    result->_issueBand[13]._uplinkHighFreq = 5000.0;
    result->_issueBand[13]._hasIssue = 0;
    result->_issueBand[14]._bandInfoType = 35;
    *&result->_issueBand[14]._downlinkLowFreq = xmmword_100195E50;
    *&result->_issueBand[14]._uplinkLowFreq = xmmword_100195E60;
    result->_issueBand[14]._hasIssue = 0;
    result->_issueBand[15]._bandInfoType = 35;
    result->_issueBand[15]._downlinkLowFreq = 1880.0;
    *&result->_issueBand[15]._downlinkHighFreq = xmmword_100195E70;
    result->_issueBand[15]._uplinkHighFreq = 1920.0;
    result->_issueBand[15]._hasIssue = 0;
    result->_issueBand[16]._bandInfoType = 64;
    *&result->_issueBand[16]._downlinkLowFreq = xmmword_100195E30;
    *&result->_issueBand[16]._uplinkLowFreq = xmmword_100195E30;
    result->_issueBand[16]._hasIssue = 0;
    result->_issueBand[17]._bandInfoType = 35;
    result->_issueBand[17]._downlinkLowFreq = 1930.0;
    *&result->_issueBand[17]._downlinkHighFreq = xmmword_100195E80;
    result->_issueBand[17]._uplinkHighFreq = 1915.0;
    result->_issueBand[17]._hasIssue = 0;
    result->_issueBand[21]._bandInfoType = 35;
    result->_issueBand[21]._downlinkLowFreq = 1930.0;
    *&result->_issueBand[21]._downlinkHighFreq = xmmword_100195E90;
    result->_issueBand[21]._uplinkHighFreq = 1910.0;
    result->_issueBand[21]._hasIssue = 0;
    result->_issueBand[18]._bandInfoType = 35;
    *&result->_issueBand[18]._downlinkLowFreq = xmmword_100195EA0;
    *&result->_issueBand[18]._uplinkLowFreq = xmmword_100195EB0;
    result->_issueBand[18]._hasIssue = 0;
    result->_issueBand[19]._bandInfoType = 35;
    result->_issueBand[19]._downlinkLowFreq = 2110.0;
    *&result->_issueBand[19]._downlinkHighFreq = xmmword_100195EC0;
    result->_issueBand[19]._uplinkHighFreq = 1755.0;
    result->_issueBand[19]._hasIssue = 0;
    result->_issueBand[20]._bandInfoType = 35;
    *&result->_issueBand[20]._downlinkLowFreq = xmmword_100195ED0;
    *&result->_issueBand[20]._uplinkLowFreq = xmmword_100195EE0;
    result->_issueBand[20]._hasIssue = 0;
    result->_issueBand[22]._bandInfoType = 64;
    *&result->_issueBand[22]._downlinkLowFreq = xmmword_100195EF0;
    *&result->_issueBand[22]._uplinkLowFreq = xmmword_100195EF0;
    result->_issueBand[22]._hasIssue = 0;
    result->_issueBand[23]._bandInfoType = 64;
    result->_issueBand[23]._downlinkLowFreq = 860.0;
    *&result->_issueBand[23]._downlinkHighFreq = xmmword_100195D70;
    result->_issueBand[23]._uplinkHighFreq = 830.0;
    result->_issueBand[23]._hasIssue = 0;
    result->_issueBand[24]._bandInfoType = 64;
    *&result->_issueBand[24]._downlinkLowFreq = xmmword_100195DB0;
    *&result->_issueBand[24]._uplinkLowFreq = xmmword_100195DC0;
    result->_issueBand[24]._hasIssue = 0;
    result->_issueBand[25]._bandInfoType = 64;
    result->_issueBand[25]._downlinkLowFreq = 791.0;
    *&result->_issueBand[25]._downlinkHighFreq = xmmword_100195DA0;
    result->_issueBand[25]._uplinkHighFreq = 862.0;
    result->_issueBand[25]._hasIssue = 0;
    result->_issueBand[26]._bandInfoType = 64;
    *&result->_issueBand[26]._downlinkLowFreq = xmmword_100195DE0;
    *&result->_issueBand[26]._uplinkLowFreq = xmmword_100195DF0;
    result->_issueBand[26]._hasIssue = 0;
    result->_issueBand[27]._bandInfoType = 64;
    result->_issueBand[27]._downlinkLowFreq = 869.0;
    *&result->_issueBand[27]._downlinkHighFreq = xmmword_100195F00;
    result->_issueBand[27]._uplinkHighFreq = 849.0;
    result->_issueBand[27]._hasIssue = 0;
    result->_issueBand[28]._bandInfoType = 64;
    *&result->_issueBand[28]._downlinkLowFreq = xmmword_100195F10;
    *&result->_issueBand[28]._uplinkLowFreq = xmmword_100195F20;
    result->_issueBand[28]._hasIssue = 0;
    result->_issueBand[29]._bandInfoType = 64;
    result->_issueBand[29]._downlinkLowFreq = 1930.0;
    *&result->_issueBand[29]._downlinkHighFreq = xmmword_100195E80;
    result->_issueBand[29]._uplinkHighFreq = 1915.0;
    result->_issueBand[29]._hasIssue = 0;
    result->_issueBand[30]._bandInfoType = 64;
    *&result->_issueBand[30]._downlinkLowFreq = xmmword_100195E50;
    *&result->_issueBand[30]._uplinkLowFreq = xmmword_100195E60;
    result->_issueBand[30]._hasIssue = 0;
    result->_issueBand[31]._bandInfoType = 64;
    result->_issueBand[31]._downlinkLowFreq = 1930.0;
    *&result->_issueBand[31]._downlinkHighFreq = xmmword_100195E90;
    result->_issueBand[31]._uplinkHighFreq = 1910.0;
    result->_issueBand[31]._hasIssue = 0;
    result->_issueBand[32]._bandInfoType = 64;
    *&result->_issueBand[32]._downlinkLowFreq = xmmword_100195F30;
    *&result->_issueBand[32]._uplinkLowFreq = xmmword_100195F30;
    result->_issueBand[32]._hasIssue = 0;
    result->_issueBand[33]._bandInfoType = 35;
    result->_issueBand[33]._downlinkLowFreq = 2110.0;
    *&result->_issueBand[33]._downlinkHighFreq = xmmword_100195F40;
    result->_issueBand[33]._uplinkHighFreq = 1980.0;
    result->_issueBand[33]._hasIssue = 0;
    result->_issueBand[34]._bandInfoType = 35;
    *&result->_issueBand[34]._downlinkLowFreq = xmmword_100195F50;
    *&result->_issueBand[34]._uplinkLowFreq = xmmword_100195F60;
    result->_issueBand[34]._hasIssue = 0;
    result->_issueBand[35]._bandInfoType = 35;
    result->_issueBand[35]._downlinkLowFreq = 1805.0;
    *&result->_issueBand[35]._downlinkHighFreq = xmmword_100195F70;
    result->_issueBand[35]._uplinkHighFreq = 1785.0;
    result->_issueBand[35]._hasIssue = 0;
    result->_issueBand[36]._bandInfoType = 35;
    *&result->_issueBand[36]._downlinkLowFreq = xmmword_100195F80;
    *&result->_issueBand[36]._uplinkLowFreq = xmmword_100195F90;
    result->_issueBand[36]._hasIssue = 0;
    result->_issueBand[37]._bandInfoType = 35;
    result->_issueBand[37]._downlinkLowFreq = 2010.0;
    *&result->_issueBand[37]._downlinkHighFreq = xmmword_100195FA0;
    result->_issueBand[37]._uplinkHighFreq = 2025.0;
    result->_issueBand[37]._hasIssue = 0;
    result->_issueBand[38]._bandInfoType = 35;
    *&result->_issueBand[38]._downlinkLowFreq = xmmword_100195F30;
    *&result->_issueBand[38]._uplinkLowFreq = xmmword_100195F30;
    result->_issueBand[38]._hasIssue = 0;
    result->_issueBand[39]._bandInfoType = 35;
    result->_issueBand[39]._downlinkLowFreq = 2620.0;
    *&result->_issueBand[39]._downlinkHighFreq = xmmword_100195FB0;
    result->_issueBand[39]._uplinkHighFreq = 2570.0;
    result->_issueBand[39]._hasIssue = 0;
    result->_issueBand[40]._bandInfoType = 35;
    *&result->_issueBand[40]._downlinkLowFreq = xmmword_100195E30;
    *&result->_issueBand[40]._uplinkLowFreq = xmmword_100195E30;
    result->_issueBand[40]._hasIssue = 0;
    result->_issueBand[41]._bandInfoType = 35;
    result->_issueBand[41]._downlinkLowFreq = 3400.0;
    *&result->_issueBand[41]._downlinkHighFreq = xmmword_100195FC0;
    result->_issueBand[41]._uplinkHighFreq = 3600.0;
    result->_issueBand[41]._hasIssue = 0;
    result->_issueBand[42]._bandInfoType = 64;
    *&result->_issueBand[42]._downlinkLowFreq = xmmword_100195FD0;
    *&result->_issueBand[42]._uplinkLowFreq = xmmword_100195FD0;
    result->_issueBand[42]._hasIssue = 0;
    result->_issueBand[43]._bandInfoType = 64;
    result->_issueBand[43]._downlinkLowFreq = 2496.0;
    *&result->_issueBand[43]._downlinkHighFreq = xmmword_100195FE0;
    result->_issueBand[43]._uplinkHighFreq = 2690.0;
    result->_issueBand[43]._hasIssue = 0;
    result->_issueBand[44]._bandInfoType = 35;
    *&result->_issueBand[44]._downlinkLowFreq = xmmword_100195ED0;
    *&result->_issueBand[44]._uplinkLowFreq = xmmword_100195EE0;
    result->_issueBand[44]._hasIssue = 0;
    result->_issueBand[45]._bandInfoType = 64;
    result->_issueBand[45]._downlinkLowFreq = 1930.0;
    *&result->_issueBand[45]._downlinkHighFreq = xmmword_100195E90;
    result->_issueBand[45]._uplinkHighFreq = 1910.0;
    result->_issueBand[45]._hasIssue = 0;
    result->_issueBand[46]._bandInfoType = 64;
    *&result->_issueBand[46]._downlinkLowFreq = xmmword_100195EA0;
    *&result->_issueBand[46]._uplinkLowFreq = xmmword_100195EB0;
    result->_issueBand[46]._hasIssue = 0;
    result->_issueBand[47]._bandInfoType = 64;
    result->_issueBand[47]._downlinkLowFreq = 2110.0;
    *&result->_issueBand[47]._downlinkHighFreq = xmmword_100195FF0;
    result->_issueBand[47]._uplinkHighFreq = 1780.0;
    result->_issueBand[47]._hasIssue = 0;
    result->_issueBand[48]._bandInfoType = 64;
    *&result->_issueBand[48]._downlinkLowFreq = xmmword_100195E50;
    *&result->_issueBand[48]._uplinkLowFreq = xmmword_100195E60;
    result->_issueBand[48]._hasIssue = 0;
    result->_issueBand[49]._bandInfoType = 64;
    result->_issueBand[49]._downlinkLowFreq = 1880.0;
    *&result->_issueBand[49]._downlinkHighFreq = xmmword_100195E70;
    result->_issueBand[49]._uplinkHighFreq = 1920.0;
    result->_issueBand[49]._hasIssue = 0;
    result->_issueBand[50]._bandInfoType = 35;
    *&result->_issueBand[50]._downlinkLowFreq = xmmword_100195F10;
    *&result->_issueBand[50]._uplinkLowFreq = xmmword_100195F20;
    result->_issueBand[50]._hasIssue = 0;
    result->_issueBand[51]._bandInfoType = 35;
    result->_issueBand[51]._downlinkLowFreq = 2300.0;
    *&result->_issueBand[51]._downlinkHighFreq = xmmword_100195E20;
    result->_issueBand[51]._uplinkHighFreq = 2400.0;
    result->_issueBand[51]._hasIssue = 0;
    result->_issueBand[52]._bandInfoType = 64;
    *&result->_issueBand[52]._downlinkLowFreq = xmmword_100195FD0;
    *&result->_issueBand[52]._uplinkLowFreq = xmmword_100195FD0;
    result->_issueBand[52]._hasIssue = 0;
    result->_issueBand[53]._bandInfoType = 35;
    result->_issueBand[53]._downlinkLowFreq = 2110.0;
    *&result->_issueBand[53]._downlinkHighFreq = xmmword_100195F40;
    result->_issueBand[53]._uplinkHighFreq = 1980.0;
    result->_issueBand[53]._hasIssue = 0;
    result->_issueBand[54]._bandInfoType = 64;
    *&result->_issueBand[54]._downlinkLowFreq = xmmword_100195E50;
    *&result->_issueBand[54]._uplinkLowFreq = xmmword_100195E60;
    result->_issueBand[54]._hasIssue = 0;
    result->_issueBand[55]._bandInfoType = 35;
    result->_issueBand[55]._downlinkLowFreq = 3400.0;
    *&result->_issueBand[55]._downlinkHighFreq = xmmword_100195FC0;
    result->_issueBand[55]._uplinkHighFreq = 3600.0;
    result->_issueBand[55]._hasIssue = 0;
    result->_issueBand[56]._bandInfoType = 64;
    result->_issueBand[56]._hasIssue = 0;
    *&result->_issueBand[56]._uplinkLowFreq = 0u;
    *&result->_issueBand[56]._downlinkLowFreq = 0u;
    result->_issueBand[57]._bandInfoType = 35;
    result->_issueBand[57]._downlinkLowFreq = 3550.0;
    *&result->_issueBand[57]._downlinkHighFreq = xmmword_100196000;
    result->_issueBand[57]._uplinkHighFreq = 3700.0;
    result->_issueBand[57]._hasIssue = 0;
    result->_issueBand[58]._bandInfoType = 64;
    *&result->_issueBand[58]._downlinkLowFreq = xmmword_100196010;
    *&result->_issueBand[58]._uplinkLowFreq = xmmword_100196010;
    result->_issueBand[58]._hasIssue = 0;
    result->_issueBand[59]._bandInfoType = 64;
    result->_issueBand[59]._downlinkLowFreq = 3550.0;
    *&result->_issueBand[59]._downlinkHighFreq = xmmword_100196000;
    result->_issueBand[59]._uplinkHighFreq = 3700.0;
    result->_issueBand[59]._hasIssue = 0;
    result->_issueBand[60]._bandInfoType = 64;
    *&result->_issueBand[60]._downlinkLowFreq = xmmword_100195EF0;
    *&result->_issueBand[60]._uplinkLowFreq = xmmword_100195EF0;
    result->_issueBand[60]._hasIssue = 0;
  }

  return result;
}

- (void)dealloc
{
  v3 = 0;
  coexIssues = self->_issueBand[0]._coexIssues;
  do
  {
    for (i = 0; i != 5; ++i)
    {
    }

    ++v3;
    coexIssues += 11;
  }

  while (v3 != 61);
  v6.receiver = self;
  v6.super_class = WCM_WiFiCellCoexIssueBandTable;
  [(WCM_WiFiCellCoexIssueBandTable *)&v6 dealloc];
}

- (BOOL)isFalseTDDIssueBand:(int)a3 cellDlLowFreq:(double)a4 cellDlHighFreq:(double)a5 cellUlLowFreq:(double)a6 cellUlHighFreq:(double)a7
{
  result = 0;
  if (a3 <= 106)
  {
    if (a3 > 0x10 || ((1 << a3) & 0x11800) == 0)
    {
      return result;
    }

    return a5 != a7 || a4 != a6;
  }

  if (a3 == 107 || a3 == 210 || a3 == 110)
  {
    return a5 != a7 || a4 != a6;
  }

  return result;
}

- ($3C9879B8047CCA62E59FC5E141A81388)search_2GWifi_IssueBandForCellBandInfoType:(int)a3 cellDlLowFreq:(double)a4 cellDlHighFreq:(double)a5 cellUlLowFreq:(double)a6 cellUlHighFreq:(double)a7 matchedIssuBand:(unsigned int *)a8
{
  if (a8)
  {
    *a8 = 999;
  }

  v15 = 0;
  for (i = 0; ; ++i)
  {
    if ((self->_issueBand[v15]._bandInfoType & a3) != 0 && self->_issueBand[v15]._downlinkLowFreq <= a4 && self->_issueBand[v15]._downlinkHighFreq >= a5 && self->_issueBand[v15]._uplinkLowFreq <= a6 && self->_issueBand[v15]._uplinkHighFreq >= a7 && ![(WCM_WiFiCellCoexIssueBandTable *)self isFalseTDDIssueBand:i cellDlLowFreq:a4 cellDlHighFreq:a5 cellUlLowFreq:a6 cellUlHighFreq:a7])
    {
      if (a8)
      {
        *a8 = i;
      }

      if (self->_issueBand[v15]._hasIssue)
      {
        break;
      }
    }

    if (++v15 == 33)
    {
      return 0;
    }
  }

  [WCM_Logging logLevel:3 message:@"2G wifi policy table found matched cell issue band: %s", off_10023FC78[i]];
  return &self->_issueBand[v15];
}

- ($3C9879B8047CCA62E59FC5E141A81388)search_5GWifi_IssueBandForCellBandInfoType:(int)a3 cellDlLowFreq:(double)a4 cellDlHighFreq:(double)a5 cellUlLowFreq:(double)a6 cellUlHighFreq:(double)a7 matchedIssuBand:(unsigned int *)a8
{
  if (a8)
  {
    *a8 = 999;
  }

  v15 = 0;
  v16 = &qword_10023FF98;
  v17 = off_10023FD80;
  v18 = 100;
  while (1)
  {
    if ((self->_issueBand[v15 + 33]._bandInfoType & a3) != 0 && self->_issueBand[v15 + 33]._downlinkLowFreq <= a4 && self->_issueBand[v15 + 33]._downlinkHighFreq >= a5 && self->_issueBand[v15 + 33]._uplinkLowFreq <= a6 && self->_issueBand[v15 + 33]._uplinkHighFreq >= a7 && ![(WCM_WiFiCellCoexIssueBandTable *)self isFalseTDDIssueBand:v18 cellDlLowFreq:a4 cellDlHighFreq:a5 cellUlLowFreq:a6 cellUlHighFreq:a7])
    {
      if (a8)
      {
        *a8 = v18;
      }

      if (self->_issueBand[v15 + 33]._hasIssue)
      {
        break;
      }
    }

    ++v18;
    ++v16;
    ++v17;
    if (++v15 == 17)
    {
      return 0;
    }
  }

  v19 = &self->_issueBand[v15 + 33];
  if (v18 - 100 >= 0x11 && (v17 = v16, v18 > 0x20))
  {
    v21 = "<ISSUE_BAND_INVALID: Negative number.>";
  }

  else
  {
    v21 = *v17;
  }

  [WCM_Logging logLevel:3 message:@"5G wifi policy table found matched cell issue band: %s", v21];
  return v19;
}

- ($3C9879B8047CCA62E59FC5E141A81388)search_WifiEnh_IssueBandForCellBandInfoType:(int)a3 cellDlLowFreq:(double)a4 cellDlHighFreq:(double)a5 cellUlLowFreq:(double)a6 cellUlHighFreq:(double)a7 matchedIssuBand:(unsigned int *)a8
{
  if (a8)
  {
    *a8 = 999;
  }

  v15 = &qword_1002402B8;
  v16 = off_1002400A0;
  v17 = off_10023FE08;
  v18 = -4408;
  v19 = -968;
  v20 = 200;
  for (i = 4488; ; i += 88)
  {
    if ((*(&self[1].super.isa + v19) & a3) != 0 && *(&self[1]._issueBand[0]._bandInfoType + v19) <= a4 && *(&self[1]._issueBand[0]._downlinkLowFreq + v19) >= a5 && *(&self[1]._issueBand[0]._downlinkHighFreq + v19) <= a6 && *(&self[1]._issueBand[0]._uplinkLowFreq + v19) >= a7 && ![(WCM_WiFiCellCoexIssueBandTable *)self isFalseTDDIssueBand:v20 cellDlLowFreq:a4 cellDlHighFreq:a5 cellUlLowFreq:a6 cellUlHighFreq:a7])
    {
      if (a8)
      {
        *a8 = v20;
      }

      if (*(&self->super.isa + i) == 1)
      {
        break;
      }
    }

    ++v20;
    ++v15;
    ++v16;
    ++v17;
    v18 -= 88;
    v19 += 88;
    if (!v19)
    {
      return 0;
    }
  }

  v22 = (self - v18);
  if (v20 <= 0xC7 && (v17 = v16, (v20 - 100) >= 0x11) && (v17 = v15, v20 > 0x20))
  {
    v24 = "<ISSUE_BAND_INVALID: Negative number.>";
  }

  else
  {
    v24 = *v17;
  }

  [WCM_Logging logLevel:3 message:@"6G wifi policy table found matched cell issue band: %s", v24];
  return v22;
}

- (void)combineWifiChannelList:(id)a3 withChannelList:(id)a4
{
  if (a3)
  {
    if (a4)
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v6 = [a4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v12;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v12 != v8)
            {
              objc_enumerationMutation(a4);
            }

            v10 = *(*(&v11 + 1) + 8 * i);
            if (([a3 containsObject:v10] & 1) == 0)
            {
              [a3 addObject:v10];
            }
          }

          v7 = [a4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v7);
      }
    }
  }
}

- (void)combineWifiChannelList:(id)a3 withChannelList:(id)a4 inAllowedChannelSet:(id)a5
{
  if (a3 && a4 && a5)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [a4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(a4);
          }

          v12 = *(*(&v13 + 1) + 8 * i);
          if (([a3 containsObject:v12] & 1) == 0 && objc_msgSend(a5, "containsObject:", v12))
          {
            [a3 addObject:v12];
          }
        }

        v9 = [a4 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    if ([a3 containsObject:&off_100271088] && objc_msgSend(a3, "count") >= 2)
    {
      [a3 removeObject:&off_100271088];
    }

    if (![a3 count])
    {
      [a3 addObject:&off_100271088];
    }
  }

  else if (a3 && ![a3 count])
  {

    [a3 addObject:&off_100271088];
  }
}

- (BOOL)configureBy:(id *)a3
{
  if (a3)
  {
    v3 = a3;
    var0 = a3->var0;
    result = 1;
    if (var0 <= 0xD2)
    {
      v7 = 0;
      issueBand = self->_issueBand;
      p_uplinkLowFreq = &self[-3]._issueBand[33]._uplinkLowFreq;
      p_downlinkHighFreq = &self[-2]._issueBand[55]._downlinkHighFreq;
      do
      {
        if (v3->var1 >= 0xFu)
        {
          [WCM_Logging logLevel:0 message:@"pConfigTable[%d] has invalid _issueType(%d)", v7, v3->var1, v31];
          return 0;
        }

        if (v3->var3 > 0xFu || v3->var4 > 0xFu || v3->var5 > 0xFu || v3->var6 >= 0x10u)
        {
          [WCM_Logging logLevel:0 message:@"pConfigTable[%d] has invalid antenna bitmaps", v7, var23, v31];
          return 0;
        }

        if (v3->var7 > 0xFu || v3->var8 > 0xFu || v3->var9 > 0xFu || v3->var10 > 0xFu || v3->var11 > 0xFu || v3->var12 > 0xFu || v3->var13 > 0xFu || v3->var14 > 0xFu || v3->var15 > 0xFu || v3->var16 > 0xFu || v3->var17 > 0xFu || v3->var18 > 0xFu || v3->var19 > 0xFu || v3->var20 > 0xFu || v3->var21 > 0xFu || v3->var22 >= 0x10u)
        {
          [WCM_Logging logLevel:0 message:@"pConfigTable[%d] has invalid V2 antenna bitmaps", v7, var23, v31];
          return 0;
        }

        if (v3->var23 >= 0x1F)
        {
          v29 = v7;
          var23 = v3->var23;
          v25 = @"pConfigTable[%d] has invalid _cellTxPowerLimit(%llu)";
          goto LABEL_62;
        }

        v33 = p_uplinkLowFreq;
        v34 = p_downlinkHighFreq;
        v32 = issueBand;
        if (var0 > 0x20)
        {
          if (var0 - 100 > 0x10)
          {
            if (var0 < 0xC8)
            {
              [WCM_Logging logLevel:0 message:@"pConfigTable->_issueBand does not match any of the predefined ranges defined in WCM_WiFiCellCoexIssueBand enum. Thus can not configure internal table _issueBand (which is an array of WCM_WiFiCellCoexIssueBandTableEntry type). pConfigTable->_issueBand is wrong with the Coex Table plist file at row pConfigTable[%d]", v7];
              v11 = issueBand;
            }

            else
            {
              v11 = &p_uplinkLowFreq[88 * var0];
            }
          }

          else
          {
            v11 = &p_downlinkHighFreq[88 * var0];
          }
        }

        else
        {
          v11 = &issueBand[var0];
        }

        v12 = 0;
        v11->_hasIssue = 1;
        coexIssues = v11->_coexIssues;
        while (1)
        {
          v14 = coexIssues[v12];
          if (!v14)
          {
            break;
          }

          v15 = [(WCM_WiFiCellCoexIssue *)v14 issueType];
          var1 = v3->var1;
          if (v15 == var1 && (var1 & 0xFFFFFFFE) != 12)
          {
            [WCM_Logging logLevel:0 message:@"There is a higher priority WCM_WiFiCellCoexIssue with the same issue type as pConfigTable[%d]", v7, var23, v31];
            return 0;
          }

          if (++v12 == 5)
          {
            [WCM_Logging logLevel:0 message:@"There is no slot left for pConfigTable[%d]", v7, var23, v31];
            return 0;
          }
        }

        v18 = [[WCM_WiFiCellCoexIssue alloc] initWithCoexIssueConfig:v3];
        if (!v18)
        {
          v26 = sub_10000BFB8(v3->var0);
          v27 = v3->var1;
          if (v27 == 999)
          {
            v28 = "NO_ISSUE_TYPE";
          }

          else if (v27 <= 0xE)
          {
            v28 = off_10023FE88[v27];
          }

          else
          {
            v28 = "<ISSUE_TYPE_INVALID>";
          }

          [WCM_Logging logLevel:1 message:@"\tskip invliad configuration pConfigTable[%d]: %s - %s", v7, v26, v28];
          return 0;
        }

        coexIssues[v12] = v18;
        v19 = v3->var0;
        v20 = "NO_ISSUE_BAND";
        if (v19 != 999)
        {
          v20 = "<ISSUE_BAND_INVALID: beyond the range>";
          if (v19 <= 0xD2)
          {
            if (v19 < 0xC8)
            {
              if ((v19 - 100) > 0x10)
              {
                v20 = "<ISSUE_BAND_INVALID: Negative number.>";
                if (v19 > 0x20)
                {
                  goto LABEL_52;
                }

                v21 = &off_10023FC78[v19];
              }

              else
              {
                v21 = &off_10023FD80[(v19 - 100)];
              }
            }

            else
            {
              v21 = &off_10023FE08[(v19 - 200)];
            }

            v20 = *v21;
          }
        }

LABEL_52:
        v22 = v3->var1;
        v23 = "NO_ISSUE_TYPE";
        if (v22 != 999)
        {
          v23 = "<ISSUE_TYPE_INVALID>";
          if (v22 <= 0xE)
          {
            v23 = off_10023FE88[v22];
          }
        }

        [WCM_Logging logLevel:3 message:@"\tconfigure %s with %s at %s", v20, v23, off_10023FE60[v12]];
        v7 = (v7 + 1);
        v24 = v3[1].var0;
        ++v3;
        var0 = v24;
        result = 1;
        p_uplinkLowFreq = v33;
        p_downlinkHighFreq = v34;
        issueBand = v32;
      }

      while (v24 <= 0xD2);
    }
  }

  else
  {
    v25 = @"pConfigTable = NULL";
LABEL_62:
    [WCM_Logging logLevel:0 message:v25, v29, var23, v31];
    return 0;
  }

  return result;
}

- (BOOL)isLTEB7FoundForCellDlLowFreq:(double)a3 cellDlHighFreq:(double)a4 cellUlLowFreq:(double)a5 cellUlHighFreq:(double)a6
{
  v6 = a3 >= 2620.0;
  if (a4 > 2690.0)
  {
    v6 = 0;
  }

  if (a5 <= 2500.0)
  {
    v6 = 0;
  }

  return a6 < 2570.0 && v6;
}

- (id)getHFBTAFHCoexIssuesFromIssueBand:(id *)a3
{
  v4 = objc_opt_new();
  if (a3)
  {
    v5 = 0;
    var5 = a3->var5;
    while (1)
    {
      v7 = var5[v5];
      if (!v7)
      {
        goto LABEL_11;
      }

      if ([var5[v5] issueType] != 12 && objc_msgSend(v7, "issueType") != 13)
      {
        break;
      }

      if ([objc_msgSend(+[WCM_PolicyManager singleton](WCM_PolicyManager "singleton")])
      {
        goto LABEL_7;
      }

LABEL_10:
      if (++v5 == 5)
      {
        goto LABEL_11;
      }
    }

    if ([v7 btDiversityBlocklistTypeForC0B1] != 3 || objc_msgSend(v7, "btChannelsToAvoidForC0B1"))
    {
      goto LABEL_10;
    }

LABEL_7:
    [v4 addObject:v7];
    goto LABEL_10;
  }

LABEL_11:

  return [NSArray arrayWithArray:v4];
}

- (id)getWifiDesensedCoexIssueFromIssueBand:(id *)a3
{
  if (!a3)
  {
    return 0;
  }

  v3 = 0;
  var5 = a3->var5;
  while (1)
  {
    v5 = var5[v3];
    if (!v5 || [var5[v3] enableWifiChannelAvoidance])
    {
      break;
    }

    if (++v3 == 5)
    {
      return 0;
    }
  }

  return v5;
}

@end