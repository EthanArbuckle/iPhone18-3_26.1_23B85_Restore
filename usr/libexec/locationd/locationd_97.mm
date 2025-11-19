void sub_1007002E8(_Unwind_Exception *a1)
{
  if (STACK[0xB78])
  {
    sub_100008080(STACK[0xB78]);
  }

  _Unwind_Resume(a1);
}

NSDictionary *sub_100700308(uint64_t a1)
{
  v4[0] = @"bundleId";
  v2 = *(a1 + 32);
  if (*(v2 + 23) < 0)
  {
    v2 = *v2;
  }

  v5[0] = [NSString stringWithUTF8String:v2];
  v4[1] = @"ratType";
  v5[1] = [NSNumber numberWithInt:*(*(a1 + 32) + 24)];
  v4[2] = @"isShortTermOrbitAssistanceFileAvailable";
  v5[2] = [NSNumber numberWithBool:*(*(a1 + 32) + 212)];
  v4[3] = @"isLongTermOrbitAssistanceFileAvailable";
  v5[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 213)];
  v4[4] = @"isRtiFileAvailable";
  v5[4] = [NSNumber numberWithBool:*(*(a1 + 32) + 28)];
  v4[5] = @"isRavenGnssAssistanceFileAvailable";
  v5[5] = [NSNumber numberWithBool:*(*(a1 + 32) + 214)];
  v4[6] = @"isExtendedEphemerisFileInjected";
  v5[6] = [NSNumber numberWithBool:*(*(a1 + 32) + 29)];
  v4[7] = @"isTimeAssistanceProvided";
  v5[7] = [NSNumber numberWithBool:*(*(a1 + 32) + 30)];
  v4[8] = @"isDEMAssistanceProvided";
  v5[8] = [NSNumber numberWithBool:*(*(a1 + 32) + 31)];
  v4[9] = @"isCPIAssistanceProvided";
  v5[9] = [NSNumber numberWithBool:*(*(a1 + 32) + 32)];
  v4[10] = @"gpsL1Cn0Avg";
  v5[10] = [NSNumber numberWithInt:*(*(a1 + 32) + 36)];
  v4[11] = @"qzssL1Cn0Avg";
  v5[11] = [NSNumber numberWithInt:*(*(a1 + 32) + 40)];
  v4[12] = @"galileoL1Cn0Avg";
  v5[12] = [NSNumber numberWithInt:*(*(a1 + 32) + 44)];
  v4[13] = @"beidouL1Cn0Avg";
  v5[13] = [NSNumber numberWithInt:*(*(a1 + 32) + 48)];
  v4[14] = @"glonassL1Cn0Avg";
  v5[14] = [NSNumber numberWithInt:*(*(a1 + 32) + 52)];
  v4[15] = @"gpsL5Cn0Avg";
  v5[15] = [NSNumber numberWithInt:*(*(a1 + 32) + 56)];
  v4[16] = @"qzssL5Cn0Avg";
  v5[16] = [NSNumber numberWithInt:*(*(a1 + 32) + 60)];
  v4[17] = @"galileoL5Cn0Avg";
  v5[17] = [NSNumber numberWithInt:*(*(a1 + 32) + 64)];
  v4[18] = @"beidouL5Cn0Avg";
  v5[18] = [NSNumber numberWithInt:*(*(a1 + 32) + 68)];
  v4[19] = @"gpsL1SignalCountAvg";
  v5[19] = [NSNumber numberWithInt:*(*(a1 + 32) + 116)];
  v4[20] = @"qzssL1SignalCountAvg";
  v5[20] = [NSNumber numberWithInt:*(*(a1 + 32) + 120)];
  v4[21] = @"galileoL1SignalCountAvg";
  v5[21] = [NSNumber numberWithInt:*(*(a1 + 32) + 124)];
  v4[22] = @"beidouL1SignalCountAvg";
  v5[22] = [NSNumber numberWithInt:*(*(a1 + 32) + 128)];
  v4[23] = @"glonassL1SignalCountAvg";
  v5[23] = [NSNumber numberWithInt:*(*(a1 + 32) + 132)];
  v4[24] = @"gpsL5SignalCountAvg";
  v5[24] = [NSNumber numberWithInt:*(*(a1 + 32) + 136)];
  v4[25] = @"qzssL5SignalCountAvg";
  v5[25] = [NSNumber numberWithInt:*(*(a1 + 32) + 140)];
  v4[26] = @"galileoL5SignalCountAvg";
  v5[26] = [NSNumber numberWithInt:*(*(a1 + 32) + 144)];
  v4[27] = @"beidouL5SignalCountAvg";
  v5[27] = [NSNumber numberWithInt:*(*(a1 + 32) + 148)];
  v4[28] = @"signalEnvironmentMode";
  v5[28] = [NSNumber numberWithInt:*(*(a1 + 32) + 156)];
  v4[29] = @"horizontalUncertaintyAvg";
  v5[29] = [NSNumber numberWithInt:*(*(a1 + 32) + 160)];
  v4[30] = @"mountStateMode";
  v5[30] = [NSNumber numberWithInt:*(*(a1 + 32) + 164)];
  v4[31] = @"motionActivityMode";
  v5[31] = [NSNumber numberWithInt:*(*(a1 + 32) + 168)];
  v4[32] = @"movingStateMode";
  v5[32] = [NSNumber numberWithInt:*(*(a1 + 32) + 172)];
  v4[33] = @"sessionDuration";
  v5[33] = [NSNumber numberWithInt:*(*(a1 + 32) + 176)];
  v4[34] = @"deviceOrientationMode";
  v5[34] = [NSNumber numberWithInt:*(*(a1 + 32) + 180)];
  v4[35] = @"isDisplayOn";
  v5[35] = [NSNumber numberWithBool:*(*(a1 + 32) + 184)];
  v4[36] = @"isReachable";
  v5[36] = [NSNumber numberWithBool:*(*(a1 + 32) + 185)];
  v4[37] = @"isBatterySaverModeOn";
  v5[37] = [NSNumber numberWithBool:*(*(a1 + 32) + 186)];
  v4[38] = @"chargerTypeHistMode";
  v5[38] = [NSNumber numberWithInt:*(*(a1 + 32) + 188)];
  v4[39] = @"thermalLevelAvg";
  v5[39] = [NSNumber numberWithInt:*(*(a1 + 32) + 192)];
  v4[40] = @"isAccessoryYieldingLocations";
  v5[40] = [NSNumber numberWithBool:*(*(a1 + 32) + 196)];
  v4[41] = @"l5OnOffStateMode";
  v5[41] = [NSNumber numberWithInt:*(*(a1 + 32) + 200)];
  v4[42] = @"positionContextStateMode";
  v5[42] = [NSNumber numberWithInt:*(*(a1 + 32) + 204)];
  v4[43] = @"xoCalibrationState";
  v5[43] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 208)];
  v4[44] = @"sessionStartPositionAssistHorzReliability";
  v5[44] = [NSNumber numberWithInt:*(*(a1 + 32) + 216)];
  v4[45] = @"sessionStartPositionAssistHorzAcc";
  v5[45] = [NSNumber numberWithInt:*(*(a1 + 32) + 220)];
  v4[46] = @"sessionStartPositionAssistType";
  v5[46] = [NSNumber numberWithInt:*(*(a1 + 32) + 224)];
  v4[47] = @"wasWiFiPositioningAvailable";
  v5[47] = [NSNumber numberWithBool:*(*(a1 + 32) + 228)];
  v4[48] = @"powerMeasurementMode";
  v5[48] = [NSNumber numberWithInt:*(*(a1 + 32) + 232)];
  v4[49] = @"powerStateMode";
  v5[49] = [NSNumber numberWithInt:*(*(a1 + 32) + 236)];
  v4[50] = @"isTimePreceedsBuildTime";
  v5[50] = [NSNumber numberWithBool:*(*(a1 + 40) + 432)];
  v4[51] = @"isTimePreceedsExtendedEphemerisTime";
  v5[51] = [NSNumber numberWithBool:*(*(a1 + 40) + 433)];
  v4[52] = @"isTimeJumpForward100Seconds";
  v5[52] = [NSNumber numberWithBool:*(*(a1 + 40) + 434)];
  v4[53] = @"isTimeJumpBackward100Seconds";
  v5[53] = [NSNumber numberWithBool:*(*(a1 + 40) + 435)];
  v4[54] = @"isLnavAntiSpoofBitZeroOnMultipleSvs";
  v5[54] = [NSNumber numberWithBool:*(*(a1 + 40) + 436)];
  v4[55] = @"isOtaLeapSecondInconsistentWithExtendedEphemeris";
  v5[55] = [NSNumber numberWithBool:*(*(a1 + 40) + 437)];
  v4[56] = @"isExcessiveSignalStrength";
  v5[56] = [NSNumber numberWithBool:*(*(a1 + 40) + 438)];
  v4[57] = @"isHigherOrderOtaEphemerisAllZeroOnMultipleSvs";
  v5[57] = [NSNumber numberWithBool:*(*(a1 + 40) + 439)];
  v4[58] = @"isOtaUtcModelInconsistentWithExtendedEphemeris";
  v5[58] = [NSNumber numberWithBool:*(*(a1 + 40) + 440)];
  v4[59] = @"isOtaParameterOutOfBoundsOnMultipleSvs";
  v5[59] = [NSNumber numberWithBool:*(*(a1 + 40) + 441)];
  v4[60] = @"isSessionSpoofed";
  v5[60] = [NSNumber numberWithBool:*(*(a1 + 40) + 442)];
  v4[61] = @"gpsL1Cn0AvgFineRes";
  v5[61] = [NSNumber numberWithInt:*(*(a1 + 32) + 76)];
  v4[62] = @"qzssL1Cn0AvgFineRes";
  v5[62] = [NSNumber numberWithInt:*(*(a1 + 32) + 80)];
  v4[63] = @"galileoL1Cn0AvgFineRes";
  v5[63] = [NSNumber numberWithInt:*(*(a1 + 32) + 84)];
  v4[64] = @"beidouL1Cn0AvgFineRes";
  v5[64] = [NSNumber numberWithInt:*(*(a1 + 32) + 88)];
  v4[65] = @"glonassL1Cn0AvgFineRes";
  v5[65] = [NSNumber numberWithInt:*(*(a1 + 32) + 92)];
  v4[66] = @"gpsL5Cn0AvgFineRes";
  v5[66] = [NSNumber numberWithInt:*(*(a1 + 32) + 96)];
  v4[67] = @"qzssL5Cn0AvgFineRes";
  v5[67] = [NSNumber numberWithInt:*(*(a1 + 32) + 100)];
  v4[68] = @"galileoL5Cn0AvgFineRes";
  v5[68] = [NSNumber numberWithInt:*(*(a1 + 32) + 104)];
  v4[69] = @"beidouL5Cn0AvgFineRes";
  v5[69] = [NSNumber numberWithInt:*(*(a1 + 32) + 108)];
  v4[70] = @"shortTermOrbitAssistanceFileAgeSeconds";
  v5[70] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 4)];
  v4[71] = @"longTermOrbitAssistanceFileAgeSeconds";
  v5[71] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 8)];
  v4[72] = @"rtiFileAgeSeconds";
  v5[72] = [NSNumber numberWithUnsignedInt:**(a1 + 40)];
  v4[73] = @"ravenGnssAssistanceFileAgeSeconds";
  v5[73] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 12)];
  v4[74] = @"pctYield";
  v5[74] = [NSNumber numberWithInt:*(*(a1 + 40) + 16)];
  v4[75] = @"pctYieldPostFirstFix";
  v5[75] = [NSNumber numberWithInt:*(*(a1 + 40) + 20)];
  v4[76] = @"yieldCount";
  v5[76] = [NSNumber numberWithInt:*(*(a1 + 40) + 24)];
  v4[77] = @"ttff";
  v5[77] = [NSNumber numberWithInt:*(*(a1 + 40) + 28)];
  v4[78] = @"epochCount";
  v5[78] = [NSNumber numberWithInt:*(*(a1 + 40) + 32)];
  v4[79] = @"cellularUplinkTxBandwidth";
  v5[79] = [NSNumber numberWithDouble:*(*(a1 + 40) + 40)];
  v4[80] = @"cellularBand";
  v5[80] = [NSNumber numberWithInt:*(*(a1 + 40) + 48)];
  v4[81] = @"cellularUplinkTxFrequency";
  v5[81] = [NSNumber numberWithDouble:*(*(a1 + 40) + 56)];
  v4[82] = @"cellularRSRP";
  v5[82] = [NSNumber numberWithInt:*(*(a1 + 40) + 64)];
  v4[83] = @"cellularSNR";
  v5[83] = [NSNumber numberWithInt:*(*(a1 + 40) + 68)];
  v4[84] = @"cellularBandEpochCount";
  v5[84] = [NSNumber numberWithInt:*(*(a1 + 40) + 72)];
  v4[85] = @"mmPAssisProvPct";
  v5[85] = [NSNumber numberWithInt:*(*(a1 + 40) + 76)];
  v4[86] = @"demAssisProvPct";
  v5[86] = [NSNumber numberWithInt:*(*(a1 + 40) + 80)];
  v4[87] = @"taAssisProvPct";
  v5[87] = [NSNumber numberWithInt:*(*(a1 + 40) + 84)];
  v4[88] = @"timeAssisProvPct";
  v5[88] = [NSNumber numberWithInt:*(*(a1 + 40) + 88)];
  v4[89] = @"cpiPositionAssisProvPct";
  v5[89] = [NSNumber numberWithInt:*(*(a1 + 40) + 92)];
  v4[90] = @"cpiTlyCpldPosAssisProvPct";
  v5[90] = [NSNumber numberWithInt:*(*(a1 + 40) + 96)];
  v4[91] = @"rtiProvPct";
  v5[91] = [NSNumber numberWithInt:*(*(a1 + 40) + 100)];
  v4[92] = @"accelDataProvPct";
  v5[92] = [NSNumber numberWithInt:*(*(a1 + 40) + 104)];
  v4[93] = @"gyroDataProvPct";
  v5[93] = [NSNumber numberWithInt:*(*(a1 + 40) + 108)];
  v4[94] = @"pressureDataProvPct";
  v5[94] = [NSNumber numberWithInt:*(*(a1 + 40) + 112)];
  v4[95] = @"pedSpeedDataProvPct";
  v5[95] = [NSNumber numberWithInt:*(*(a1 + 40) + 116)];
  v4[96] = @"pedSpeedConDataProvPct";
  v5[96] = [NSNumber numberWithInt:*(*(a1 + 40) + 120)];
  v4[97] = @"motionDataProvPct";
  v5[97] = [NSNumber numberWithInt:*(*(a1 + 40) + 124)];
  v4[98] = @"ephemerisProvPct";
  v5[98] = [NSNumber numberWithInt:*(*(a1 + 40) + 128)];
  v4[99] = @"mountStateProvPct";
  v5[99] = [NSNumber numberWithInt:*(*(a1 + 40) + 132)];
  v4[100] = @"signalEnvirDataProvPct";
  v5[100] = [NSNumber numberWithInt:*(*(a1 + 40) + 136)];
  v4[101] = @"motionActivContextProvPct";
  v5[101] = [NSNumber numberWithInt:*(*(a1 + 40) + 140)];
  v4[102] = @"mmPAssisUsedPct";
  v5[102] = [NSNumber numberWithInt:*(*(a1 + 40) + 144)];
  v4[103] = @"demAssisUsedPct";
  v5[103] = [NSNumber numberWithInt:*(*(a1 + 40) + 148)];
  v4[104] = @"taAssisUsedPct";
  v5[104] = [NSNumber numberWithInt:*(*(a1 + 40) + 152)];
  v4[105] = @"timeAssisUsedPct";
  v5[105] = [NSNumber numberWithInt:*(*(a1 + 40) + 156)];
  v4[106] = @"cpiPositionAssisUsedPct";
  v5[106] = [NSNumber numberWithInt:*(*(a1 + 40) + 160)];
  v4[107] = @"cpiTlyCpldPosAssisUsedPct";
  v5[107] = [NSNumber numberWithInt:*(*(a1 + 40) + 164)];
  v4[108] = @"rtiUsedPct";
  v5[108] = [NSNumber numberWithInt:*(*(a1 + 40) + 168)];
  v4[109] = @"accelDataUsedPct";
  v5[109] = [NSNumber numberWithInt:*(*(a1 + 40) + 172)];
  v4[110] = @"gyroDataUsedPct";
  v5[110] = [NSNumber numberWithInt:*(*(a1 + 40) + 176)];
  v4[111] = @"pressureDataUsedPct";
  v5[111] = [NSNumber numberWithInt:*(*(a1 + 40) + 180)];
  v4[112] = @"pedSpeedDataUsedPct";
  v5[112] = [NSNumber numberWithInt:*(*(a1 + 40) + 184)];
  v4[113] = @"pedSpeedConDataUsedPct";
  v5[113] = [NSNumber numberWithInt:*(*(a1 + 40) + 188)];
  v4[114] = @"motionDataUsedPct";
  v5[114] = [NSNumber numberWithInt:*(*(a1 + 40) + 192)];
  v4[115] = @"ephemerisUsedPct";
  v5[115] = [NSNumber numberWithInt:*(*(a1 + 40) + 196)];
  v4[116] = @"mountStateUsedPct";
  v5[116] = [NSNumber numberWithInt:*(*(a1 + 40) + 200)];
  v4[117] = @"signalEnvirDataUsedPct";
  v5[117] = [NSNumber numberWithInt:*(*(a1 + 40) + 204)];
  v4[118] = @"motionActivContextUsedPct";
  v5[118] = [NSNumber numberWithInt:*(*(a1 + 40) + 208)];
  v4[119] = @"displayOnPct";
  v5[119] = [NSNumber numberWithInt:*(*(a1 + 40) + 212)];
  v4[120] = @"reachablePct";
  v5[120] = [NSNumber numberWithInt:*(*(a1 + 40) + 216)];
  v4[121] = @"batterySaverModeOnPct";
  v5[121] = [NSNumber numberWithInt:*(*(a1 + 40) + 220)];
  v4[122] = @"anomalyStatusUnknownPct";
  v5[122] = [NSNumber numberWithInt:*(*(a1 + 40) + 224)];
  v4[123] = @"anomalyStatusSimulatedPct";
  v5[123] = [NSNumber numberWithInt:*(*(a1 + 40) + 228)];
  v4[124] = @"anomalyStatusAuthenticPct";
  v5[124] = [NSNumber numberWithInt:*(*(a1 + 40) + 232)];
  v4[125] = @"anomalyStatusMaybeSimulatedPct";
  v5[125] = [NSNumber numberWithInt:*(*(a1 + 40) + 236)];
  v4[126] = @"deresFinalAltitude";
  v5[126] = [NSNumber numberWithDouble:*(*(a1 + 40) + 240)];
  v4[127] = @"antL5BestDurationPct";
  v5[127] = [NSNumber numberWithInt:*(*(a1 + 40) + 248)];
  v4[128] = @"antL5OtherDurationPct";
  v5[128] = [NSNumber numberWithInt:*(*(a1 + 40) + 252)];
  v4[129] = @"antL5WorstDurationPct";
  v5[129] = [NSNumber numberWithInt:*(*(a1 + 40) + 256)];
  v4[130] = @"gnssL5BlankingDurationPct";
  v5[130] = [NSNumber numberWithInt:*(*(a1 + 40) + 260)];
  v4[131] = @"deltaFirstFixAndPositionAssistMeters";
  v5[131] = [NSNumber numberWithDouble:*(*(a1 + 40) + 424)];
  v4[132] = @"ms_to_first_gps_code_lock";
  v5[132] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 488)];
  v4[133] = @"ms_to_first_glo_code_lock";
  v5[133] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 492)];
  v4[134] = @"ms_to_first_gal_code_lock";
  v5[134] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 496)];
  v4[135] = @"ms_to_first_bds_code_lock";
  v5[135] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 500)];
  v4[136] = @"ms_to_first_gps_tow_decoded";
  v5[136] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 504)];
  v4[137] = @"ms_to_first_glo_tod_decoded";
  v5[137] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 508)];
  v4[138] = @"ms_to_first_gal_tow_decoded";
  v5[138] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 512)];
  v4[139] = @"ms_to_first_bds_tow_decoded";
  v5[139] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 516)];
  v4[140] = @"ms_to_first_gps_full_sync";
  v5[140] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 520)];
  v4[141] = @"ms_to_first_glo_full_sync";
  v5[141] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 524)];
  v4[142] = @"ms_to_first_gal_full_sync";
  v5[142] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 528)];
  v4[143] = @"ms_to_first_bds_full_sync";
  v5[143] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 532)];
  v4[144] = @"me_clock_event_counter";
  v5[144] = [NSNumber numberWithUnsignedInt:*(*(a1 + 40) + 536)];
  v4[145] = @"phase_lock_rate_20_25dBHz";
  v5[145] = [NSNumber numberWithInt:*(*(a1 + 40) + 608)];
  v4[146] = @"phase_lock_rate_25_30dBHz";
  v5[146] = [NSNumber numberWithInt:*(*(a1 + 40) + 616)];
  v4[147] = @"phase_lock_rate_30plusdBHz";
  v5[147] = [NSNumber numberWithInt:*(*(a1 + 40) + 624)];
  v4[148] = @"phase_available_rate_20_25dBHz";
  v5[148] = [NSNumber numberWithInt:*(*(a1 + 40) + 604)];
  v4[149] = @"phase_available_rate_25_30dBHz";
  v5[149] = [NSNumber numberWithInt:*(*(a1 + 40) + 612)];
  v4[150] = @"phase_available_rate_30plusdBHz";
  v5[150] = [NSNumber numberWithInt:*(*(a1 + 40) + 620)];
  v4[151] = @"iono_model_percent_global_prediction";
  v5[151] = [NSNumber numberWithInt:*(*(a1 + 40) + 628)];
  v4[152] = @"iono_model_percent_klob";
  v5[152] = [NSNumber numberWithInt:*(*(a1 + 40) + 632)];
  v4[153] = @"sv_pos_percentage_brdc_file";
  v5[153] = [NSNumber numberWithInt:*(*(a1 + 40) + 636)];
  v4[154] = @"sv_pos_percentage_long_term_file";
  v5[154] = [NSNumber numberWithInt:*(*(a1 + 40) + 640)];
  v4[155] = @"sv_pos_percentage_ota";
  v5[155] = [NSNumber numberWithInt:*(*(a1 + 40) + 644)];
  v4[156] = @"sv_pos_percentage_short_term_file";
  v5[156] = [NSNumber numberWithInt:*(*(a1 + 40) + 648)];
  return [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:157];
}

id sub_10070172C(uint64_t a1, uint64_t a2)
{
  v3 = [[NSMutableArray alloc] initWithCapacity:11];
  for (i = 0; i != 88; i += 8)
  {
    [v3 addObject:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(a2 + i))}];
  }

  return v3;
}

id sub_1007017A0(uint64_t a1, uint64_t a2)
{
  v3 = [[NSMutableArray alloc] initWithCapacity:8];
  for (i = 0; i != 64; i += 8)
  {
    [v3 addObject:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(a2 + i))}];
  }

  return v3;
}

NSDictionary *sub_100701814(uint64_t a1)
{
  v2 = [[NSMutableArray alloc] initWithCapacity:11];
  for (i = 444; i != 488; i += 4)
  {
    [v2 addObject:{+[NSNumber numberWithInt:](NSNumber, "numberWithInt:", *(*(a1 + 32) + i))}];
  }

  v7[0] = @"ratType";
  v8[0] = [NSNumber numberWithInt:*(*(a1 + 40) + 24)];
  v7[1] = @"isRtiFileAvailable";
  v8[1] = [NSNumber numberWithBool:*(*(a1 + 40) + 28)];
  v7[2] = @"isExtendedEphemerisFileInjected";
  v8[2] = [NSNumber numberWithBool:*(*(a1 + 40) + 29)];
  v7[3] = @"isTimeAssistanceProvided";
  v8[3] = [NSNumber numberWithBool:*(*(a1 + 40) + 30)];
  v7[4] = @"isDEMAssistanceProvided";
  v8[4] = [NSNumber numberWithBool:*(*(a1 + 40) + 31)];
  v7[5] = @"isCPIAssistanceProvided";
  v8[5] = [NSNumber numberWithBool:*(*(a1 + 40) + 32)];
  v7[6] = @"gpsL1Cn0Avg";
  v8[6] = [NSNumber numberWithInt:*(*(a1 + 40) + 36)];
  v7[7] = @"qzssL1Cn0Avg";
  v8[7] = [NSNumber numberWithInt:*(*(a1 + 40) + 40)];
  v7[8] = @"galileoL1Cn0Avg";
  v8[8] = [NSNumber numberWithInt:*(*(a1 + 40) + 44)];
  v7[9] = @"beidouL1Cn0Avg";
  v8[9] = [NSNumber numberWithInt:*(*(a1 + 40) + 48)];
  v7[10] = @"glonassL1Cn0Avg";
  v8[10] = [NSNumber numberWithInt:*(*(a1 + 40) + 52)];
  v7[11] = @"gpsL5Cn0Avg";
  v8[11] = [NSNumber numberWithInt:*(*(a1 + 40) + 56)];
  v7[12] = @"qzssL5Cn0Avg";
  v8[12] = [NSNumber numberWithInt:*(*(a1 + 40) + 60)];
  v7[13] = @"galileoL5Cn0Avg";
  v8[13] = [NSNumber numberWithInt:*(*(a1 + 40) + 64)];
  v7[14] = @"beidouL5Cn0Avg";
  v8[14] = [NSNumber numberWithInt:*(*(a1 + 40) + 68)];
  v7[15] = @"gpsL1SignalCountAvg";
  v8[15] = [NSNumber numberWithInt:*(*(a1 + 40) + 116)];
  v7[16] = @"qzssL1SignalCountAvg";
  v8[16] = [NSNumber numberWithInt:*(*(a1 + 40) + 120)];
  v7[17] = @"galileoL1SignalCountAvg";
  v8[17] = [NSNumber numberWithInt:*(*(a1 + 40) + 124)];
  v7[18] = @"beidouL1SignalCountAvg";
  v8[18] = [NSNumber numberWithInt:*(*(a1 + 40) + 128)];
  v7[19] = @"glonassL1SignalCountAvg";
  v8[19] = [NSNumber numberWithInt:*(*(a1 + 40) + 132)];
  v7[20] = @"gpsL5SignalCountAvg";
  v8[20] = [NSNumber numberWithInt:*(*(a1 + 40) + 136)];
  v7[21] = @"qzssL5SignalCountAvg";
  v8[21] = [NSNumber numberWithInt:*(*(a1 + 40) + 140)];
  v7[22] = @"galileoL5SignalCountAvg";
  v8[22] = [NSNumber numberWithInt:*(*(a1 + 40) + 144)];
  v7[23] = @"beidouL5SignalCountAvg";
  v8[23] = [NSNumber numberWithInt:*(*(a1 + 40) + 148)];
  v7[24] = @"signalEnvironmentMode";
  v8[24] = [NSNumber numberWithInt:*(*(a1 + 40) + 156)];
  v7[25] = @"powerMeasurementMode";
  v8[25] = [NSNumber numberWithInt:*(*(a1 + 40) + 232)];
  v7[26] = @"powerStateMode";
  v8[26] = [NSNumber numberWithInt:*(*(a1 + 40) + 236)];
  v7[27] = @"horizontalUncertaintyAvg";
  v8[27] = [NSNumber numberWithInt:*(*(a1 + 40) + 160)];
  v7[28] = @"mountStateMode";
  v8[28] = [NSNumber numberWithInt:*(*(a1 + 40) + 164)];
  v7[29] = @"motionActivityMode";
  v8[29] = [NSNumber numberWithInt:*(*(a1 + 40) + 168)];
  v7[30] = @"movingStateMode";
  v8[30] = [NSNumber numberWithInt:*(*(a1 + 40) + 172)];
  v7[31] = @"sessionDuration";
  v8[31] = [NSNumber numberWithInt:*(*(a1 + 40) + 176)];
  v7[32] = @"deviceOrientationMode";
  v8[32] = [NSNumber numberWithInt:*(*(a1 + 40) + 180)];
  v7[33] = @"isDisplayOn";
  v8[33] = [NSNumber numberWithBool:*(*(a1 + 40) + 184)];
  v7[34] = @"isReachable";
  v8[34] = [NSNumber numberWithBool:*(*(a1 + 40) + 185)];
  v7[35] = @"positionContextStateMode";
  v8[35] = [NSNumber numberWithInt:*(*(a1 + 40) + 204)];
  v7[36] = @"isSessionSpoofed";
  v8[36] = [NSNumber numberWithBool:*(*(a1 + 32) + 442)];
  v8[37] = v2;
  v7[37] = @"anomalyStatusType";
  v7[38] = @"isCn0LowVariance";
  v8[38] = [NSNumber numberWithBool:*(*(a1 + 32) + 264)];
  v7[39] = @"isCn0HighValue";
  v8[39] = [NSNumber numberWithBool:*(*(a1 + 32) + 265)];
  v7[40] = @"isKacRegion";
  v8[40] = [NSNumber numberWithBool:*(*(a1 + 32) + 266)];
  v7[41] = @"isAltitudeOutOfBounds";
  v8[41] = [NSNumber numberWithBool:*(*(a1 + 32) + 267)];
  v7[42] = @"isTimePreceedingBuildTime";
  v8[42] = [NSNumber numberWithBool:*(*(a1 + 32) + 268)];
  v7[43] = @"numCn0StatsBlockedFix";
  v8[43] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 272)];
  v7[44] = @"numFixesFromFFCn0LowVarSet";
  v8[44] = [NSNumber numberWithInt:*(*(a1 + 32) + 276)];
  v7[45] = @"numFixesFromFFCn0LowVarReset";
  v4 = [NSNumber numberWithInt:*(*(a1 + 32) + 280)];
  v5 = *(a1 + 48);
  v8[45] = v4;
  v8[46] = v5;
  v7[46] = @"cn0VarCountArrayGpsL1";
  v7[47] = @"cn0VarCountArrayGalE1";
  v7[48] = @"cn0VarCountArrayBDSB1";
  v9 = *(a1 + 64);
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:49];
}

NSDictionary *sub_100701EC0(uint64_t a1)
{
  v7[0] = @"ratType";
  v8[0] = [NSNumber numberWithInt:*(*(a1 + 32) + 24)];
  v7[1] = @"isShortTermOrbitAssistanceFileAvailable";
  v8[1] = [NSNumber numberWithBool:*(*(a1 + 32) + 212)];
  v7[2] = @"isLongTermOrbitAssistanceFileAvailable";
  v8[2] = [NSNumber numberWithBool:*(*(a1 + 32) + 213)];
  v7[3] = @"isRtiFileAvailable";
  v8[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 28)];
  v7[4] = @"isExtendedEphemerisFileInjected";
  v8[4] = [NSNumber numberWithBool:*(*(a1 + 32) + 29)];
  v7[5] = @"isTimeAssistanceProvided";
  v8[5] = [NSNumber numberWithBool:*(*(a1 + 32) + 30)];
  v7[6] = @"isDEMAssistanceProvided";
  v8[6] = [NSNumber numberWithBool:*(*(a1 + 32) + 31)];
  v7[7] = @"isCPIAssistanceProvided";
  v8[7] = [NSNumber numberWithBool:*(*(a1 + 32) + 32)];
  v7[8] = @"gpsL1Cn0Avg";
  v8[8] = [NSNumber numberWithInt:*(*(a1 + 32) + 76)];
  v7[9] = @"qzssL1Cn0Avg";
  v8[9] = [NSNumber numberWithInt:*(*(a1 + 32) + 80)];
  v7[10] = @"galileoL1Cn0Avg";
  v8[10] = [NSNumber numberWithInt:*(*(a1 + 32) + 84)];
  v7[11] = @"beidouL1Cn0Avg";
  v8[11] = [NSNumber numberWithInt:*(*(a1 + 32) + 88)];
  v7[12] = @"glonassL1Cn0Avg";
  v8[12] = [NSNumber numberWithInt:*(*(a1 + 32) + 92)];
  v7[13] = @"gpsL5Cn0Avg";
  v8[13] = [NSNumber numberWithInt:*(*(a1 + 32) + 96)];
  v7[14] = @"qzssL5Cn0Avg";
  v8[14] = [NSNumber numberWithInt:*(*(a1 + 32) + 100)];
  v7[15] = @"galileoL5Cn0Avg";
  v8[15] = [NSNumber numberWithInt:*(*(a1 + 32) + 104)];
  v7[16] = @"beidouL5Cn0Avg";
  v8[16] = [NSNumber numberWithInt:*(*(a1 + 32) + 108)];
  v7[17] = @"gpsL1SignalCountAvg";
  v8[17] = [NSNumber numberWithInt:*(*(a1 + 32) + 116)];
  v7[18] = @"qzssL1SignalCountAvg";
  v8[18] = [NSNumber numberWithInt:*(*(a1 + 32) + 120)];
  v7[19] = @"galileoL1SignalCountAvg";
  v8[19] = [NSNumber numberWithInt:*(*(a1 + 32) + 124)];
  v7[20] = @"beidouL1SignalCountAvg";
  v8[20] = [NSNumber numberWithInt:*(*(a1 + 32) + 128)];
  v7[21] = @"glonassL1SignalCountAvg";
  v8[21] = [NSNumber numberWithInt:*(*(a1 + 32) + 132)];
  v7[22] = @"gpsL5SignalCountAvg";
  v8[22] = [NSNumber numberWithInt:*(*(a1 + 32) + 136)];
  v7[23] = @"qzssL5SignalCountAvg";
  v8[23] = [NSNumber numberWithInt:*(*(a1 + 32) + 140)];
  v7[24] = @"galileoL5SignalCountAvg";
  v8[24] = [NSNumber numberWithInt:*(*(a1 + 32) + 144)];
  v7[25] = @"beidouL5SignalCountAvg";
  v8[25] = [NSNumber numberWithInt:*(*(a1 + 32) + 148)];
  v7[26] = @"signalEnvironmentMode";
  v8[26] = [NSNumber numberWithInt:*(*(a1 + 32) + 156)];
  v7[27] = @"horizontalUncertaintyAvg";
  v8[27] = [NSNumber numberWithInt:*(*(a1 + 32) + 160)];
  v7[28] = @"mountStateMode";
  v8[28] = [NSNumber numberWithInt:*(*(a1 + 32) + 164)];
  v7[29] = @"motionActivityMode";
  v8[29] = [NSNumber numberWithInt:*(*(a1 + 32) + 168)];
  v7[30] = @"movingStateMode";
  v8[30] = [NSNumber numberWithInt:*(*(a1 + 32) + 172)];
  v7[31] = @"sessionDuration";
  v8[31] = [NSNumber numberWithInt:*(*(a1 + 32) + 176)];
  v7[32] = @"deviceOrientationMode";
  v8[32] = [NSNumber numberWithInt:*(*(a1 + 32) + 180)];
  v7[33] = @"isDisplayOn";
  v8[33] = [NSNumber numberWithBool:*(*(a1 + 32) + 184)];
  v7[34] = @"isReachable";
  v8[34] = [NSNumber numberWithBool:*(*(a1 + 32) + 185)];
  v7[35] = @"isBatterySaverModeOn";
  v8[35] = [NSNumber numberWithBool:*(*(a1 + 32) + 186)];
  v7[36] = @"chargerTypeHistMode";
  v8[36] = [NSNumber numberWithInt:*(*(a1 + 32) + 188)];
  v7[37] = @"thermalLevelAvg";
  v8[37] = [NSNumber numberWithInt:*(*(a1 + 32) + 192)];
  v7[38] = @"isAccessoryYieldingLocations";
  v8[38] = [NSNumber numberWithBool:*(*(a1 + 32) + 196)];
  v7[39] = @"l5OnOffStateMode";
  v8[39] = [NSNumber numberWithInt:*(*(a1 + 32) + 200)];
  v7[40] = @"positionContextStateMode";
  v8[40] = [NSNumber numberWithInt:*(*(a1 + 32) + 204)];
  v7[41] = @"xoCalibrationState";
  v8[41] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 208)];
  v7[42] = @"sessionStartPositionAssistHorzReliability";
  v8[42] = [NSNumber numberWithInt:*(*(a1 + 32) + 216)];
  v7[43] = @"sessionStartPositionAssistHorzAcc";
  v8[43] = [NSNumber numberWithInt:*(*(a1 + 32) + 220)];
  v7[44] = @"sessionStartPositionAssistType";
  v8[44] = [NSNumber numberWithInt:*(*(a1 + 32) + 224)];
  v7[45] = @"wasWiFiPositioningAvailable";
  v8[45] = [NSNumber numberWithBool:*(*(a1 + 32) + 228)];
  v7[46] = @"isSessionSpoofed";
  v2 = [NSNumber numberWithBool:*(*(a1 + 40) + 442)];
  v7[47] = @"signalStrengthArrayGpsL1";
  v7[48] = @"signalStrengthArrayQzssL1";
  v7[49] = @"signalStrengthArrayGalileoL1";
  v7[50] = @"signalStrengthArrayBeiDouL1";
  v7[51] = @"signalStrengthArrayGlonassL1";
  v7[52] = @"signalStrengthArrayGpsL5";
  v7[53] = @"signalStrengthArrayQzssL5";
  v7[54] = @"signalStrengthArrayGalileoL5";
  v3 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v3;
  v4 = *(a1 + 96);
  v11 = *(a1 + 80);
  v12 = v4;
  v7[55] = @"signalStrengthArrayBeiDouL5";
  v5 = *(a1 + 112);
  v8[46] = v2;
  v13 = v5;
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:56];
}

NSDictionary *sub_100702594(uint64_t a1)
{
  v7[0] = @"ratType";
  v8[0] = [NSNumber numberWithInt:*(*(a1 + 32) + 24)];
  v7[1] = @"isShortTermOrbitAssistanceFileAvailable";
  v8[1] = [NSNumber numberWithBool:*(*(a1 + 32) + 212)];
  v7[2] = @"isLongTermOrbitAssistanceFileAvailable";
  v8[2] = [NSNumber numberWithBool:*(*(a1 + 32) + 213)];
  v7[3] = @"isRtiFileAvailable";
  v8[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 28)];
  v7[4] = @"isExtendedEphemerisFileInjected";
  v8[4] = [NSNumber numberWithBool:*(*(a1 + 32) + 29)];
  v7[5] = @"isTimeAssistanceProvided";
  v8[5] = [NSNumber numberWithBool:*(*(a1 + 32) + 30)];
  v7[6] = @"isDEMAssistanceProvided";
  v8[6] = [NSNumber numberWithBool:*(*(a1 + 32) + 31)];
  v7[7] = @"isCPIAssistanceProvided";
  v8[7] = [NSNumber numberWithBool:*(*(a1 + 32) + 32)];
  v7[8] = @"gpsL1Cn0Avg";
  v8[8] = [NSNumber numberWithInt:*(*(a1 + 32) + 76)];
  v7[9] = @"qzssL1Cn0Avg";
  v8[9] = [NSNumber numberWithInt:*(*(a1 + 32) + 80)];
  v7[10] = @"galileoL1Cn0Avg";
  v8[10] = [NSNumber numberWithInt:*(*(a1 + 32) + 84)];
  v7[11] = @"beidouL1Cn0Avg";
  v8[11] = [NSNumber numberWithInt:*(*(a1 + 32) + 88)];
  v7[12] = @"glonassL1Cn0Avg";
  v8[12] = [NSNumber numberWithInt:*(*(a1 + 32) + 92)];
  v7[13] = @"gpsL5Cn0Avg";
  v8[13] = [NSNumber numberWithInt:*(*(a1 + 32) + 96)];
  v7[14] = @"qzssL5Cn0Avg";
  v8[14] = [NSNumber numberWithInt:*(*(a1 + 32) + 100)];
  v7[15] = @"galileoL5Cn0Avg";
  v8[15] = [NSNumber numberWithInt:*(*(a1 + 32) + 104)];
  v7[16] = @"beidouL5Cn0Avg";
  v8[16] = [NSNumber numberWithInt:*(*(a1 + 32) + 108)];
  v7[17] = @"gpsL1SignalCountAvg";
  v8[17] = [NSNumber numberWithInt:*(*(a1 + 32) + 116)];
  v7[18] = @"qzssL1SignalCountAvg";
  v8[18] = [NSNumber numberWithInt:*(*(a1 + 32) + 120)];
  v7[19] = @"galileoL1SignalCountAvg";
  v8[19] = [NSNumber numberWithInt:*(*(a1 + 32) + 124)];
  v7[20] = @"beidouL1SignalCountAvg";
  v8[20] = [NSNumber numberWithInt:*(*(a1 + 32) + 128)];
  v7[21] = @"glonassL1SignalCountAvg";
  v8[21] = [NSNumber numberWithInt:*(*(a1 + 32) + 132)];
  v7[22] = @"gpsL5SignalCountAvg";
  v8[22] = [NSNumber numberWithInt:*(*(a1 + 32) + 136)];
  v7[23] = @"qzssL5SignalCountAvg";
  v8[23] = [NSNumber numberWithInt:*(*(a1 + 32) + 140)];
  v7[24] = @"galileoL5SignalCountAvg";
  v8[24] = [NSNumber numberWithInt:*(*(a1 + 32) + 144)];
  v7[25] = @"beidouL5SignalCountAvg";
  v8[25] = [NSNumber numberWithInt:*(*(a1 + 32) + 148)];
  v7[26] = @"signalEnvironmentMode";
  v8[26] = [NSNumber numberWithInt:*(*(a1 + 32) + 156)];
  v7[27] = @"horizontalUncertaintyAvg";
  v8[27] = [NSNumber numberWithInt:*(*(a1 + 32) + 160)];
  v7[28] = @"mountStateMode";
  v8[28] = [NSNumber numberWithInt:*(*(a1 + 32) + 164)];
  v7[29] = @"motionActivityMode";
  v8[29] = [NSNumber numberWithInt:*(*(a1 + 32) + 168)];
  v7[30] = @"movingStateMode";
  v8[30] = [NSNumber numberWithInt:*(*(a1 + 32) + 172)];
  v7[31] = @"sessionDuration";
  v8[31] = [NSNumber numberWithInt:*(*(a1 + 32) + 176)];
  v7[32] = @"deviceOrientationMode";
  v8[32] = [NSNumber numberWithInt:*(*(a1 + 32) + 180)];
  v7[33] = @"isDisplayOn";
  v8[33] = [NSNumber numberWithBool:*(*(a1 + 32) + 184)];
  v7[34] = @"isReachable";
  v8[34] = [NSNumber numberWithBool:*(*(a1 + 32) + 185)];
  v7[35] = @"isBatterySaverModeOn";
  v8[35] = [NSNumber numberWithBool:*(*(a1 + 32) + 186)];
  v7[36] = @"chargerTypeHistMode";
  v8[36] = [NSNumber numberWithInt:*(*(a1 + 32) + 188)];
  v7[37] = @"thermalLevelAvg";
  v8[37] = [NSNumber numberWithInt:*(*(a1 + 32) + 192)];
  v7[38] = @"isAccessoryYieldingLocations";
  v8[38] = [NSNumber numberWithBool:*(*(a1 + 32) + 196)];
  v7[39] = @"l5OnOffStateMode";
  v8[39] = [NSNumber numberWithInt:*(*(a1 + 32) + 200)];
  v7[40] = @"positionContextStateMode";
  v8[40] = [NSNumber numberWithInt:*(*(a1 + 32) + 204)];
  v7[41] = @"xoCalibrationState";
  v8[41] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 208)];
  v7[42] = @"sessionStartPositionAssistHorzReliability";
  v8[42] = [NSNumber numberWithInt:*(*(a1 + 32) + 216)];
  v7[43] = @"sessionStartPositionAssistHorzAcc";
  v8[43] = [NSNumber numberWithInt:*(*(a1 + 32) + 220)];
  v7[44] = @"sessionStartPositionAssistType";
  v8[44] = [NSNumber numberWithInt:*(*(a1 + 32) + 224)];
  v7[45] = @"wasWiFiPositioningAvailable";
  v8[45] = [NSNumber numberWithBool:*(*(a1 + 32) + 228)];
  v7[46] = @"isSessionSpoofed";
  v2 = [NSNumber numberWithBool:*(*(a1 + 40) + 442)];
  v7[47] = @"signalCountArrayGpsL1";
  v7[48] = @"signalCountArrayQzssL1";
  v7[49] = @"signalCountArrayGalileoL1";
  v7[50] = @"signalCountArrayBeiDouL1";
  v7[51] = @"signalCountArrayGlonassL1";
  v7[52] = @"signalCountArrayGpsL5";
  v7[53] = @"signalCountArrayQzssL5";
  v7[54] = @"signalCountArrayGalileoL5";
  v3 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v3;
  v4 = *(a1 + 96);
  v11 = *(a1 + 80);
  v12 = v4;
  v7[55] = @"signalCountArrayBeiDouL5";
  v5 = *(a1 + 112);
  v8[46] = v2;
  v13 = v5;
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:56];
}

id sub_100702C68(uint64_t a1, uint64_t a2)
{
  v3 = [[NSMutableArray alloc] initWithCapacity:12];
  for (i = 0; i != 96; i += 8)
  {
    [v3 addObject:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(a2 + i))}];
  }

  return v3;
}

NSDictionary *sub_100702CDC(uint64_t a1)
{
  v7[0] = @"ratType";
  v8[0] = [NSNumber numberWithInt:*(*(a1 + 32) + 24)];
  v7[1] = @"isShortTermOrbitAssistanceFileAvailable";
  v8[1] = [NSNumber numberWithBool:*(*(a1 + 32) + 212)];
  v7[2] = @"isLongTermOrbitAssistanceFileAvailable";
  v8[2] = [NSNumber numberWithBool:*(*(a1 + 32) + 213)];
  v7[3] = @"isRtiFileAvailable";
  v8[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 28)];
  v7[4] = @"isExtendedEphemerisFileInjected";
  v8[4] = [NSNumber numberWithBool:*(*(a1 + 32) + 29)];
  v7[5] = @"isTimeAssistanceProvided";
  v8[5] = [NSNumber numberWithBool:*(*(a1 + 32) + 30)];
  v7[6] = @"isDEMAssistanceProvided";
  v8[6] = [NSNumber numberWithBool:*(*(a1 + 32) + 31)];
  v7[7] = @"isCPIAssistanceProvided";
  v8[7] = [NSNumber numberWithBool:*(*(a1 + 32) + 32)];
  v7[8] = @"gpsL1Cn0Avg";
  v8[8] = [NSNumber numberWithInt:*(*(a1 + 32) + 76)];
  v7[9] = @"qzssL1Cn0Avg";
  v8[9] = [NSNumber numberWithInt:*(*(a1 + 32) + 80)];
  v7[10] = @"galileoL1Cn0Avg";
  v8[10] = [NSNumber numberWithInt:*(*(a1 + 32) + 84)];
  v7[11] = @"beidouL1Cn0Avg";
  v8[11] = [NSNumber numberWithInt:*(*(a1 + 32) + 88)];
  v7[12] = @"glonassL1Cn0Avg";
  v8[12] = [NSNumber numberWithInt:*(*(a1 + 32) + 92)];
  v7[13] = @"gpsL5Cn0Avg";
  v8[13] = [NSNumber numberWithInt:*(*(a1 + 32) + 96)];
  v7[14] = @"qzssL5Cn0Avg";
  v8[14] = [NSNumber numberWithInt:*(*(a1 + 32) + 100)];
  v7[15] = @"galileoL5Cn0Avg";
  v8[15] = [NSNumber numberWithInt:*(*(a1 + 32) + 104)];
  v7[16] = @"beidouL5Cn0Avg";
  v8[16] = [NSNumber numberWithInt:*(*(a1 + 32) + 108)];
  v7[17] = @"gpsL1SignalCountAvg";
  v8[17] = [NSNumber numberWithInt:*(*(a1 + 32) + 116)];
  v7[18] = @"qzssL1SignalCountAvg";
  v8[18] = [NSNumber numberWithInt:*(*(a1 + 32) + 120)];
  v7[19] = @"galileoL1SignalCountAvg";
  v8[19] = [NSNumber numberWithInt:*(*(a1 + 32) + 124)];
  v7[20] = @"beidouL1SignalCountAvg";
  v8[20] = [NSNumber numberWithInt:*(*(a1 + 32) + 128)];
  v7[21] = @"glonassL1SignalCountAvg";
  v8[21] = [NSNumber numberWithInt:*(*(a1 + 32) + 132)];
  v7[22] = @"gpsL5SignalCountAvg";
  v8[22] = [NSNumber numberWithInt:*(*(a1 + 32) + 136)];
  v7[23] = @"qzssL5SignalCountAvg";
  v8[23] = [NSNumber numberWithInt:*(*(a1 + 32) + 140)];
  v7[24] = @"galileoL5SignalCountAvg";
  v8[24] = [NSNumber numberWithInt:*(*(a1 + 32) + 144)];
  v7[25] = @"beidouL5SignalCountAvg";
  v8[25] = [NSNumber numberWithInt:*(*(a1 + 32) + 148)];
  v7[26] = @"signalEnvironmentMode";
  v8[26] = [NSNumber numberWithInt:*(*(a1 + 32) + 156)];
  v7[27] = @"horizontalUncertaintyAvg";
  v8[27] = [NSNumber numberWithInt:*(*(a1 + 32) + 160)];
  v7[28] = @"mountStateMode";
  v8[28] = [NSNumber numberWithInt:*(*(a1 + 32) + 164)];
  v7[29] = @"motionActivityMode";
  v8[29] = [NSNumber numberWithInt:*(*(a1 + 32) + 168)];
  v7[30] = @"movingStateMode";
  v8[30] = [NSNumber numberWithInt:*(*(a1 + 32) + 172)];
  v7[31] = @"sessionDuration";
  v8[31] = [NSNumber numberWithInt:*(*(a1 + 32) + 176)];
  v7[32] = @"deviceOrientationMode";
  v8[32] = [NSNumber numberWithInt:*(*(a1 + 32) + 180)];
  v7[33] = @"isDisplayOn";
  v8[33] = [NSNumber numberWithBool:*(*(a1 + 32) + 184)];
  v7[34] = @"isReachable";
  v8[34] = [NSNumber numberWithBool:*(*(a1 + 32) + 185)];
  v7[35] = @"isBatterySaverModeOn";
  v8[35] = [NSNumber numberWithBool:*(*(a1 + 32) + 186)];
  v7[36] = @"chargerTypeHistMode";
  v8[36] = [NSNumber numberWithInt:*(*(a1 + 32) + 188)];
  v7[37] = @"thermalLevelAvg";
  v8[37] = [NSNumber numberWithInt:*(*(a1 + 32) + 192)];
  v7[38] = @"isAccessoryYieldingLocations";
  v8[38] = [NSNumber numberWithBool:*(*(a1 + 32) + 196)];
  v7[39] = @"l5OnOffStateMode";
  v8[39] = [NSNumber numberWithInt:*(*(a1 + 32) + 200)];
  v7[40] = @"positionContextStateMode";
  v8[40] = [NSNumber numberWithInt:*(*(a1 + 32) + 204)];
  v7[41] = @"xoCalibrationState";
  v8[41] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 208)];
  v7[42] = @"sessionStartPositionAssistHorzReliability";
  v8[42] = [NSNumber numberWithInt:*(*(a1 + 32) + 216)];
  v7[43] = @"sessionStartPositionAssistHorzAcc";
  v8[43] = [NSNumber numberWithInt:*(*(a1 + 32) + 220)];
  v7[44] = @"sessionStartPositionAssistType";
  v8[44] = [NSNumber numberWithInt:*(*(a1 + 32) + 224)];
  v7[45] = @"wasWiFiPositioningAvailable";
  v8[45] = [NSNumber numberWithBool:*(*(a1 + 32) + 228)];
  v7[46] = @"isSessionSpoofed";
  v8[46] = [NSNumber numberWithBool:*(*(a1 + 40) + 442)];
  v7[47] = @"powerMeasurementMode";
  v8[47] = [NSNumber numberWithInt:*(*(a1 + 32) + 232)];
  v7[48] = @"powerStateMode";
  v2 = [NSNumber numberWithInt:*(*(a1 + 32) + 236)];
  v7[49] = @"jammingMetricArrayGpsL1";
  v7[50] = @"jammingMetricArrayQzssL1";
  v7[51] = @"jammingMetricArrayGalileoL1";
  v7[52] = @"jammingMetricArrayBeiDouL1";
  v7[53] = @"jammingMetricArrayGlonassL1";
  v7[54] = @"jammingMetricArrayGpsL5";
  v7[55] = @"jammingMetricArrayQzssL5";
  v7[56] = @"jammingMetricArrayGalileoL5";
  v3 = *(a1 + 64);
  v9 = *(a1 + 48);
  v10 = v3;
  v4 = *(a1 + 96);
  v11 = *(a1 + 80);
  v12 = v4;
  v7[57] = @"jammingMetricArrayBeiDouL5";
  v5 = *(a1 + 112);
  v8[48] = v2;
  v13 = v5;
  return [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:58];
}

id sub_1007033F0(uint64_t a1, uint64_t a2)
{
  v3 = [[NSMutableArray alloc] initWithCapacity:3];
  for (i = 0; i != 24; i += 8)
  {
    [v3 addObject:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(a2 + i))}];
  }

  return v3;
}

id sub_100703464(uint64_t a1, uint64_t a2)
{
  v3 = [[NSMutableArray alloc] initWithCapacity:6];
  for (i = 0; i != 48; i += 8)
  {
    [v3 addObject:{+[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", *(a2 + i))}];
  }

  return v3;
}

NSDictionary *sub_1007034D8(uint64_t a1)
{
  v3[0] = @"ratType";
  v4[0] = [NSNumber numberWithInt:*(*(a1 + 48) + 24)];
  v3[1] = @"isShortTermOrbitAssistanceFileAvailable";
  v4[1] = [NSNumber numberWithBool:*(*(a1 + 48) + 212)];
  v3[2] = @"isLongTermOrbitAssistanceFileAvailable";
  v4[2] = [NSNumber numberWithBool:*(*(a1 + 48) + 213)];
  v3[3] = @"isRtiFileAvailable";
  v4[3] = [NSNumber numberWithBool:*(*(a1 + 48) + 28)];
  v3[4] = @"isExtendedEphemerisFileInjected";
  v4[4] = [NSNumber numberWithBool:*(*(a1 + 48) + 29)];
  v3[5] = @"isTimeAssistanceProvided";
  v4[5] = [NSNumber numberWithBool:*(*(a1 + 48) + 30)];
  v3[6] = @"isDEMAssistanceProvided";
  v4[6] = [NSNumber numberWithBool:*(*(a1 + 48) + 31)];
  v3[7] = @"isCPIAssistanceProvided";
  v4[7] = [NSNumber numberWithBool:*(*(a1 + 48) + 32)];
  v3[8] = @"gpsL1Cn0Avg";
  v4[8] = [NSNumber numberWithInt:*(*(a1 + 48) + 76)];
  v3[9] = @"qzssL1Cn0Avg";
  v4[9] = [NSNumber numberWithInt:*(*(a1 + 48) + 80)];
  v3[10] = @"galileoL1Cn0Avg";
  v4[10] = [NSNumber numberWithInt:*(*(a1 + 48) + 84)];
  v3[11] = @"beidouL1Cn0Avg";
  v4[11] = [NSNumber numberWithInt:*(*(a1 + 48) + 88)];
  v3[12] = @"glonassL1Cn0Avg";
  v4[12] = [NSNumber numberWithInt:*(*(a1 + 48) + 92)];
  v3[13] = @"gpsL5Cn0Avg";
  v4[13] = [NSNumber numberWithInt:*(*(a1 + 48) + 96)];
  v3[14] = @"qzssL5Cn0Avg";
  v4[14] = [NSNumber numberWithInt:*(*(a1 + 48) + 100)];
  v3[15] = @"galileoL5Cn0Avg";
  v4[15] = [NSNumber numberWithInt:*(*(a1 + 48) + 104)];
  v3[16] = @"beidouL5Cn0Avg";
  v4[16] = [NSNumber numberWithInt:*(*(a1 + 48) + 108)];
  v3[17] = @"gpsL1SignalCountAvg";
  v4[17] = [NSNumber numberWithInt:*(*(a1 + 48) + 116)];
  v3[18] = @"qzssL1SignalCountAvg";
  v4[18] = [NSNumber numberWithInt:*(*(a1 + 48) + 120)];
  v3[19] = @"galileoL1SignalCountAvg";
  v4[19] = [NSNumber numberWithInt:*(*(a1 + 48) + 124)];
  v3[20] = @"beidouL1SignalCountAvg";
  v4[20] = [NSNumber numberWithInt:*(*(a1 + 48) + 128)];
  v3[21] = @"glonassL1SignalCountAvg";
  v4[21] = [NSNumber numberWithInt:*(*(a1 + 48) + 132)];
  v3[22] = @"gpsL5SignalCountAvg";
  v4[22] = [NSNumber numberWithInt:*(*(a1 + 48) + 136)];
  v3[23] = @"qzssL5SignalCountAvg";
  v4[23] = [NSNumber numberWithInt:*(*(a1 + 48) + 140)];
  v3[24] = @"galileoL5SignalCountAvg";
  v4[24] = [NSNumber numberWithInt:*(*(a1 + 48) + 144)];
  v3[25] = @"beidouL5SignalCountAvg";
  v4[25] = [NSNumber numberWithInt:*(*(a1 + 48) + 148)];
  v3[26] = @"signalEnvironmentMode";
  v4[26] = [NSNumber numberWithInt:*(*(a1 + 48) + 156)];
  v3[27] = @"horizontalUncertaintyAvg";
  v4[27] = [NSNumber numberWithInt:*(*(a1 + 48) + 160)];
  v3[28] = @"mountStateMode";
  v4[28] = [NSNumber numberWithInt:*(*(a1 + 48) + 164)];
  v3[29] = @"motionActivityMode";
  v4[29] = [NSNumber numberWithInt:*(*(a1 + 48) + 168)];
  v3[30] = @"movingStateMode";
  v4[30] = [NSNumber numberWithInt:*(*(a1 + 48) + 172)];
  v3[31] = @"sessionDuration";
  v4[31] = [NSNumber numberWithInt:*(*(a1 + 48) + 176)];
  v3[32] = @"deviceOrientationMode";
  v4[32] = [NSNumber numberWithInt:*(*(a1 + 48) + 180)];
  v3[33] = @"isDisplayOn";
  v4[33] = [NSNumber numberWithBool:*(*(a1 + 48) + 184)];
  v3[34] = @"isReachable";
  v4[34] = [NSNumber numberWithBool:*(*(a1 + 48) + 185)];
  v3[35] = @"isBatterySaverModeOn";
  v4[35] = [NSNumber numberWithBool:*(*(a1 + 48) + 186)];
  v3[36] = @"chargerTypeHistMode";
  v4[36] = [NSNumber numberWithInt:*(*(a1 + 48) + 188)];
  v3[37] = @"thermalLevelAvg";
  v4[37] = [NSNumber numberWithInt:*(*(a1 + 48) + 192)];
  v3[38] = @"isAccessoryYieldingLocations";
  v4[38] = [NSNumber numberWithBool:*(*(a1 + 48) + 196)];
  v3[39] = @"l5OnOffStateMode";
  v4[39] = [NSNumber numberWithInt:*(*(a1 + 48) + 200)];
  v3[40] = @"positionContextStateMode";
  v4[40] = [NSNumber numberWithInt:*(*(a1 + 48) + 204)];
  v3[41] = @"xoCalibrationState";
  v4[41] = [NSNumber numberWithUnsignedInt:*(*(a1 + 48) + 208)];
  v3[42] = @"sessionStartPositionAssistHorzReliability";
  v4[42] = [NSNumber numberWithInt:*(*(a1 + 48) + 216)];
  v3[43] = @"sessionStartPositionAssistHorzAcc";
  v4[43] = [NSNumber numberWithInt:*(*(a1 + 48) + 220)];
  v3[44] = @"sessionStartPositionAssistType";
  v4[44] = [NSNumber numberWithInt:*(*(a1 + 48) + 224)];
  v3[45] = @"wasWiFiPositioningAvailable";
  v4[45] = [NSNumber numberWithBool:*(*(a1 + 48) + 228)];
  v3[46] = @"isSessionSpoofed";
  v4[46] = [NSNumber numberWithBool:*(*(a1 + 56) + 442)];
  v3[47] = @"powerMeasurementMode";
  v4[47] = [NSNumber numberWithInt:*(*(a1 + 48) + 232)];
  v3[48] = @"powerStateMode";
  v4[48] = [NSNumber numberWithInt:*(*(a1 + 48) + 236)];
  v3[49] = @"l5ForceOffReasonHist";
  v3[50] = @"l5BandUsageHist";
  v5 = *(a1 + 32);
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:51];
}

uint64_t sub_100703B94(uint64_t a1, int *a2)
{
  if (qword_1025D4600 != -1)
  {
    sub_101916AC0();
  }

  v3 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = a2[1];
    v7 = a2[2];
    v6 = a2[3];
    v8 = a2[4];
    v9 = a2[5];
    *buf = 67175937;
    v12 = v4;
    v13 = 1025;
    v14 = v5;
    v15 = 1025;
    v16 = v6;
    v17 = 1025;
    v18 = v7;
    v19 = 1025;
    v20 = v8;
    v21 = 1025;
    v22 = v9;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "#gnssca Submit,BaroAlt,DriftRate Core Analytics Data,closeLoopError,%{private}d,durationSinceLastCalibEv,%{private}d,distanceFromLastCalibEv,%{private}d,estAltUnc,%{private}d,closeLoopErrorRpa,%{private}d,durationSinceLastRpaCalibEv,%{private}d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101916AD4(a2);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_100703CF8(uint64_t a1)
{
  v5[0] = @"BaroAltCloseLoopErr";
  v6[0] = [NSNumber numberWithInt:**(a1 + 32)];
  v5[1] = @"BaroAltDistFromLastCalibEv";
  v6[1] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 12)];
  v5[2] = @"BaroAltDurationSinceLastCalibEv";
  v6[2] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 4)];
  v5[3] = @"BaroAltEstAltUncAtCalibEv";
  v6[3] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 8)];
  v5[4] = @"BaroAltCloseLoopErrRPAReal";
  v6[4] = [NSNumber numberWithInt:*(*(a1 + 32) + 16)];
  v5[5] = @"BaroAltCloseLoopErrRPAAbsolute";
  v2 = *(*(a1 + 32) + 16);
  if (v2 >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = -v2;
  }

  v6[5] = [NSNumber numberWithInt:v3];
  v5[6] = @"BaroAltDurationSinceLastCalibEvRPA";
  v6[6] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 20)];
  return [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:7];
}

uint64_t sub_100703E50(uint64_t a1, int *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = *(a2 + 8);
    v7 = *(a2 + 2);
    v8 = *(a2 + 3);
    v9 = a2[8];
    v10 = a2[9];
    v11 = a2[10];
    v12 = a2[11];
    v13 = *(a2 + 6);
    v14 = *(a2 + 7);
    v15 = *(a2 + 8);
    *buf = 68292098;
    v18 = 0;
    v19 = 2082;
    v20 = "";
    v21 = 2050;
    v22 = v13;
    v23 = 1026;
    v24 = v4;
    v25 = 1026;
    v26 = v5;
    v27 = 1026;
    v28 = v6;
    v29 = 2050;
    v30 = v7;
    v31 = 2050;
    v32 = v8;
    v33 = 1026;
    v34 = v9;
    v35 = 1026;
    v36 = v10;
    v37 = 1026;
    v38 = v11;
    v39 = 1026;
    v40 = v12;
    v41 = 2050;
    v42 = v14;
    v43 = 2050;
    v44 = v15;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRG: submit CLRGSessionMetric session, sessionDuration:%{public}f, activityType:%{public}d, CLRPowerMode:%{public}d, sessionLeeched:%{public}d, ttff_s:%{public}f, horizontalUncFF_m:%{public}f, hUnc5SecAfterFF_m:%{public}d, hUnc10SecAfterFF_m:%{public}d, hUnc15SecAfterFF_m:%{public}d, hUnc20SecAfterFF_m:%{public}d, intendedInterSessionDuration_s:%{public}f, realInterSessionDuration_s:%{public}f}", buf, 0x6Eu);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_100703FFC(uint64_t a1)
{
  v3[0] = @"sessionDuration";
  v4[0] = [NSNumber numberWithDouble:*(*(a1 + 32) + 48)];
  v3[1] = @"activityType";
  v4[1] = [NSNumber numberWithInt:**(a1 + 32)];
  v3[2] = @"CLRPowerMode";
  v4[2] = [NSNumber numberWithInt:*(*(a1 + 32) + 4)];
  v3[3] = @"sessionLeeched";
  v4[3] = [NSNumber numberWithBool:*(*(a1 + 32) + 8)];
  v3[4] = @"ttff_s";
  v4[4] = [NSNumber numberWithDouble:*(*(a1 + 32) + 16)];
  v3[5] = @"horizontalUncFF_m";
  v4[5] = [NSNumber numberWithDouble:*(*(a1 + 32) + 24)];
  v3[6] = @"hUnc5SecAfterFF_m";
  v4[6] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 32)];
  v3[7] = @"hUnc10SecAfterFF_m";
  v4[7] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 36)];
  v3[8] = @"hUnc15SecAfterFF_m";
  v4[8] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 40)];
  v3[9] = @"hUnc20SecAfterFF_m";
  v4[9] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 44)];
  v3[10] = @"intendedInterSessionDuration_s";
  v4[10] = [NSNumber numberWithDouble:*(*(a1 + 32) + 56)];
  v3[11] = @"realInterSessionDuration_s";
  v4[11] = [NSNumber numberWithDouble:*(*(a1 + 32) + 64)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:12];
}

uint64_t sub_1007041EC(uint64_t a1, int *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = *(a2 + 1);
    v6 = a2[4];
    v7 = *(a2 + 3);
    *buf = 68290050;
    v11 = 2082;
    v10 = 0;
    v12 = "";
    v13 = 1026;
    v14 = v4;
    v15 = 2050;
    v16 = v5;
    v17 = 1026;
    v18 = v6;
    v19 = 2050;
    v20 = v7;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRG: submit CLRGClientMetric session, CLRPowerMode:%{public}d, CLRActiveLifeDuration:%{public}f, CLRGnssSessionCount:%{public}d, CLRGnssSessionDuration:%{public}f}", buf, 0x32u);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_100704348(uint64_t a1)
{
  v3[0] = @"CLRPowerMode";
  v4[0] = [NSNumber numberWithInt:**(a1 + 32)];
  v3[1] = @"CLRActiveLifeDuration";
  v4[1] = [NSNumber numberWithDouble:*(*(a1 + 32) + 8)];
  v3[2] = @"CLRGnssSessionCount";
  v4[2] = [NSNumber numberWithUnsignedInt:*(*(a1 + 32) + 16)];
  v3[3] = @"CLRGnssSessionDuration";
  v4[3] = [NSNumber numberWithDouble:*(*(a1 + 32) + 24)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:4];
}

uint64_t sub_100704438(uint64_t a1, int *a2)
{
  if (qword_1025D47A0 != -1)
  {
    sub_101916460();
  }

  v3 = off_1025D47A8;
  if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    *buf = 68289794;
    v9 = 0;
    v10 = 2082;
    v11 = "";
    v12 = 1026;
    v13 = v4;
    v14 = 1026;
    v15 = v5;
    v16 = 1026;
    v17 = v6;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLRG: submit DailyGnss usage detail, totalGnssInADay_s:%{public}d, totalLeechedGnssInADay_s:%{public}d, totalProactiveGnssInADay_s:%{public}d}", buf, 0x24u);
  }

  return AnalyticsSendEventLazy();
}

NSDictionary *sub_100704580(uint64_t a1)
{
  v3[0] = @"totalGnssInADay_s";
  v4[0] = [NSNumber numberWithInt:**(a1 + 32)];
  v3[1] = @"totalLeechedGnssInADay_s";
  v4[1] = [NSNumber numberWithInt:*(*(a1 + 32) + 4)];
  v3[2] = @"totalProactiveGnssInADay_s";
  v4[2] = [NSNumber numberWithInt:*(*(a1 + 32) + 8)];
  return [NSDictionary dictionaryWithObjects:v4 forKeys:v3 count:3];
}

double sub_1007047F8(uint64_t a1, double **a2)
{
  v2 = *a2;
  result = **a2;
  v4 = 0.0;
  while (v2 != a2[1])
  {
    v4 = v4 + v2[2];
    v2 += 3;
  }

  return result;
}

uint64_t sub_100704824(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double sub_1007048F8(uint64_t a1, double **a2)
{
  v2 = a2[1];
  result = **a2;
  v4 = 0.0;
  if (*a2 != v2)
  {
    v5 = *a2;
    do
    {
      v4 = v4 + v5[2];
      v5 += 3;
    }

    while (v5 != v2);
  }

  return result;
}

uint64_t sub_100704948(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100704A2C(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100704B18(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void sub_100704B64()
{
  if ((atomic_load_explicit(&qword_1025D48F8, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D48F8))
    {
      v0 = 151521030;
      v1 = 3082;
      qword_1025D48E8 = 0;
      unk_1025D48F0 = 0;
      qword_1025D48E0 = 0;
      sub_10015D8A0(&qword_1025D48E0, &v0, &v2, 6);
      __cxa_atexit(sub_10037DEA0, &qword_1025D48E0, dword_100000000);
      __cxa_guard_release(&qword_1025D48F8);
    }
  }
}

void sub_100704C28()
{
  if ((atomic_load_explicit(&qword_1025D4918, memory_order_acquire) & 1) == 0)
  {
    if (__cxa_guard_acquire(&qword_1025D4918))
    {
      v0 = 256;
      qword_1025D4908 = 0;
      unk_1025D4910 = 0;
      qword_1025D4900 = 0;
      sub_10015D8A0(&qword_1025D4900, &v0, &v1, 2);
      __cxa_atexit(sub_10037DED4, &qword_1025D4900, dword_100000000);
      __cxa_guard_release(&qword_1025D4918);
    }
  }
}

uint64_t sub_100704CE0()
{
  sub_10000EC00(byte_102658FE0, "VO2MaxPowerBudgetEstimatorLastExtendedBudgetAllotmentReason");
  __cxa_atexit(&std::string::~string, byte_102658FE0, dword_100000000);
  qword_102658FF8 = off_10246C668;
  qword_102659010 = &qword_102658FF8;
  __cxa_atexit(sub_1003EE78C, &qword_102658FF8, dword_100000000);
  qword_102659018 = off_10246C6E8;
  qword_102659030 = &qword_102659018;
  __cxa_atexit(sub_1003EE78C, &qword_102659018, dword_100000000);
  qword_102659038 = off_10246C768;
  qword_102659050 = &qword_102659038;
  __cxa_atexit(sub_1003EE790, &qword_102659038, dword_100000000);
  qword_102659058 = off_10246C7E8;
  qword_102659070 = &qword_102659058;

  return __cxa_atexit(sub_1003EE790, &qword_102659058, dword_100000000);
}

uint64_t sub_100705F8C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    sub_101916F48(a2);
  }

  return a1 + 4 * a2;
}

uint64_t sub_100705FC8(uint64_t a1, void *a2, unint64_t a3)
{
  if (a2 >= 2)
  {
    sub_10191707C(a2);
  }

  if (a3 >= 2)
  {
    sub_1019171B0(a3);
  }

  return a1 + 4 * (a2 + 2 * a3);
}

void sub_1007061D4(uint64_t a1)
{
  [*(a1 + 32) _sendHistoricalMeanSeaLevelPressureWithKSEstimatesBuffer:*(a1 + 40) andCompletionBlock:*(a1 + 64)];

  v2 = *(a1 + 56);
}

void sub_10070652C(uint64_t a1, void *a2)
{
  if (a2)
  {
    NSLog(@"%@", [a2 userInfo]);
    v3 = *(a1 + 32);
  }

  else
  {
    v4 = objc_alloc_init(NSMutableArray);
    v5 = *(a1 + 80) + 29.72;
    v6 = *(a1 + 88) + -29.72;
    LODWORD(v7) = vcvtad_u64_f64((v5 - v6 + v5 - v6) / 2.56);
    [*(*(a1 + 40) + 208) fetchElevationsWithStartTime:+[NSNumber numberWithUnsignedInt:](NSNumber andEndTime:"numberWithUnsignedInt:" andBatchSize:v7) andElevationArray:{v4, v6, v5}];
    p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
    if (*(*(a1 + 40) + 69) == 1)
    {
      v98 = v4;
      v105 = 0u;
      v106 = 0u;
      v103 = 0u;
      v104 = 0u;
      v9 = *(a1 + 32);
      v10 = [v9 countByEnumeratingWithState:&v103 objects:v136 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v104;
        do
        {
          v13 = 0;
          do
          {
            if (*v104 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v103 + 1) + 8 * v13);
            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            v15 = p_info[131];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
            {
              v16 = *(a1 + 96);
              [objc_msgSend(v14 "altitudeData")];
              v18 = v17;
              [objc_msgSend(v14 "altitudeData")];
              v20 = v19;
              [objc_msgSend(v14 "altitudeData")];
              v22 = v21;
              [v14 latitude];
              v24 = v23;
              [v14 longitude];
              v26 = v25;
              [v14 horizontalAccuracy];
              *buf = 134219521;
              v123 = v16;
              p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
              v124 = 2048;
              v125 = v18;
              v126 = 2048;
              v127 = v20;
              v128 = 2048;
              v129 = v22;
              v130 = 2053;
              v131 = v24;
              v132 = 2053;
              v133 = v26;
              v134 = 2048;
              v135 = v27;
              _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "enumerate locations fetched from DB,taskType,%lu,timestamp,%f,elevation,%f,verticalAccuracy,%f,lat,%{sensitive}f,lon,%{sensitive}f,horizontalAccuracy,%f", buf, 0x48u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4410 != -1)
              {
                sub_101916CCC();
              }

              v28 = *(a1 + 96);
              [objc_msgSend(v14 "altitudeData")];
              v30 = v29;
              [objc_msgSend(v14 "altitudeData")];
              v32 = v31;
              [objc_msgSend(v14 "altitudeData")];
              v34 = v33;
              [v14 latitude];
              v36 = v35;
              [v14 longitude];
              v38 = v37;
              [v14 horizontalAccuracy];
              v108 = 134219521;
              v109 = v28;
              v110 = 2048;
              v111 = v30;
              v112 = 2048;
              v113 = v32;
              v114 = 2048;
              v115 = v34;
              v116 = 2053;
              v117 = v36;
              v118 = 2053;
              v119 = v38;
              v120 = 2048;
              v121 = v39;
              LODWORD(v97) = 72;
              v40 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _gatherLocationArray:andElevationArray:andTaskType:withStartTime:andEndTime:andVisitArray:andVisitSearchStartIndex:andCompletionBlock:]_block_invoke", "%s\n", v40);
              if (v40 != buf)
              {
                free(v40);
              }

              p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
            }

            v13 = v13 + 1;
          }

          while (v11 != v13);
          v41 = [v9 countByEnumeratingWithState:&v103 objects:v136 count:16];
          v11 = v41;
        }

        while (v41);
      }

      v101 = 0u;
      v102 = 0u;
      v99 = 0u;
      v100 = 0u;
      v4 = v98;
      v42 = [v98 countByEnumeratingWithState:&v99 objects:v107 count:16];
      if (v42)
      {
        v43 = v42;
        v44 = *v100;
        do
        {
          v45 = 0;
          do
          {
            if (*v100 != v44)
            {
              objc_enumerationMutation(v4);
            }

            v46 = *(*(&v99 + 1) + 8 * v45);
            v47 = *(a1 + 88);
            [v46 timestamp];
            if (v47 < v48)
            {
              [v46 timestamp];
              if (v49 < *(a1 + 80))
              {
                if (qword_1025D4410 != -1)
                {
                  sub_101916CCC();
                }

                v50 = p_info[131];
                if (os_log_type_enabled(v50, OS_LOG_TYPE_DEBUG))
                {
                  v51 = *(a1 + 96);
                  [v46 timestamp];
                  v53 = v52;
                  [v46 pressure];
                  *buf = 134218496;
                  v123 = v51;
                  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
                  v124 = 2048;
                  v125 = v53;
                  v126 = 2048;
                  v127 = v54;
                  _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "enumerate elevations fetched from DB,taskType,%lu,timestamp,%f,pressure,%f", buf, 0x20u);
                }

                v4 = v98;
                if (sub_10000A100(121, 2))
                {
                  bzero(buf, 0x65CuLL);
                  if (qword_1025D4410 != -1)
                  {
                    sub_101916CCC();
                  }

                  v55 = *(a1 + 96);
                  [v46 timestamp];
                  v57 = v56;
                  [v46 pressure];
                  v108 = 134218496;
                  v109 = v55;
                  v110 = 2048;
                  v111 = v57;
                  v112 = 2048;
                  v113 = v58;
                  LODWORD(v97) = 32;
                  v59 = _os_log_send_and_compose_impl();
                  sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _gatherLocationArray:andElevationArray:andTaskType:withStartTime:andEndTime:andVisitArray:andVisitSearchStartIndex:andCompletionBlock:]_block_invoke", "%s\n", v59);
                  if (v59 != buf)
                  {
                    free(v59);
                  }

                  v4 = v98;
                  p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
                }
              }
            }

            v45 = v45 + 1;
          }

          while (v43 != v45);
          v60 = [v4 countByEnumeratingWithState:&v99 objects:v107 count:16];
          v43 = v60;
        }

        while (v60);
      }
    }

    v61 = (a1 + 32);
    v62 = [*(a1 + 32) count];
    if (v62)
    {
      v63 = v62;
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v64 = p_info[131];
      if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend(objc_msgSend(*v61 "firstObject")];
        v66 = v65;
        [objc_msgSend(objc_msgSend(*v61 "firstObject")];
        v68 = v67;
        [objc_msgSend(objc_msgSend(*v61 "lastObject")];
        v70 = v69;
        [objc_msgSend(objc_msgSend(*v61 "lastObject")];
        *buf = 134350080;
        v123 = v63;
        v124 = 2050;
        v125 = v66;
        v126 = 2048;
        v127 = v68;
        v128 = 2050;
        v129 = v70;
        v130 = 2048;
        v131 = v71;
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEFAULT, "total locations,%{public}lu,first timestamp,%{public}f,first elevation,%f,last timestamp,%{public}f,last elevation,%f", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019174FC((a1 + 32), v63, v72, v73, v74, v75, v76, v77);
      }
    }

    else
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v78 = p_info[131];
      if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v78, OS_LOG_TYPE_DEFAULT, "total locations,0", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101917664();
      }
    }

    v79 = [v4 count];
    if (v79)
    {
      v80 = v79;
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v81 = p_info[131];
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend(v4 "firstObject")];
        v83 = v82;
        [objc_msgSend(v4 "firstObject")];
        v85 = v84;
        [objc_msgSend(v4 "lastObject")];
        v87 = v86;
        [objc_msgSend(v4 "lastObject")];
        *buf = 134350080;
        v123 = v80;
        v124 = 2050;
        v125 = v83;
        v126 = 2048;
        v127 = v85;
        v128 = 2050;
        v129 = v87;
        v130 = 2048;
        v131 = v88;
        _os_log_impl(dword_100000000, v81, OS_LOG_TYPE_DEFAULT, "total elevations,%{public}lu,first timestamp,%{public}f,first pressure,%f,last timestamp,%{public}f,last pressure,%f", buf, 0x34u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101917750(v4, v80, v89, v90, v91, v92, v93, v94);
      }
    }

    else
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v95 = p_info[131];
      if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v95, OS_LOG_TYPE_DEFAULT, "total elevations,0", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019178A8();
      }
    }

    LODWORD(v96) = *(a1 + 112);
    [*(a1 + 40) _decimateLocationsWithStartTime:*(a1 + 48) andEndTime:*(a1 + 56) andLocationArray:*(a1 + 32) andElevationArray:v4 andRawLocationArray:*(a1 + 96) andRawElevationArray:*(a1 + 64) andTaskType:*(a1 + 88) andVisitArray:*(a1 + 80) andVisitSearchStartIndex:{v96, v97}];

    [*(a1 + 40) _gatherLocationArray:*(a1 + 48) andElevationArray:*(a1 + 56) andTaskType:*(a1 + 96) withStartTime:*(a1 + 64) andEndTime:*(a1 + 112) andVisitArray:*(a1 + 72) andVisitSearchStartIndex:*(a1 + 80) andCompletionBlock:*(a1 + 104)];
  }
}

uint64_t sub_100707AFC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 4);
  v2 = *(a2 + 8);
  if (v2 >= v3)
  {
    v4 = v2 - v3;
  }

  else
  {
    v4 = -(v2 - v3);
  }

  if (v4 > 1.0e-16)
  {
    return 0;
  }

  v7 = 1;
  while (1)
  {
    v8 = sub_10070ED48(a2, v7, v7);
    if (!v7)
    {
      v9 = *sub_10070EDA8(a1 + 8, 0, 1uLL);
      v10 = *sub_10070EDA8(a1 + 8, 0, 1uLL);
      v8 = v8 + (-(v9 * v10) * *sub_10070EF88(a1, 1uLL));
    }

    *sub_10070EF88(a1, v7) = v8;
    if (*sub_10070EF88(a1, v7) <= 0.0)
    {
      break;
    }

    if (v7)
    {
      v11 = sub_10070ED48(a2, (v7 - 1), v7);
      v12 = v11 / *sub_10070EF88(a1, v7);
      *sub_10070EDA8(a1 + 8, v7 - 1, v7) = v12;
    }

    if (--v7 == -1)
    {
      return 1;
    }
  }

  if (qword_1025D48A0 != -1)
  {
    sub_101917AC8();
  }

  v14 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v15 = 134217984;
    v16 = v7;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "D(%zu) <= 0 non-positive definite matrix!", &v15, 0xCu);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_101917ADC();
    return 0;
  }

  return result;
}

void sub_100708530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = 1;
  do
  {
    v8 = v7;
    v9 = *sub_100705FC8(a2, v6, 0);
    v10 = *sub_10070EDA8(a1 + 8, 0, 1uLL);
    v11 = sub_100705FC8(a2, v6, 1uLL);
    *v11 = *v11 + (v9 * v10);
    *sub_100705FC8(v47, v6, 1uLL) = 0;
    *sub_100705FC8(v47, v6, 0) = 0;
    v12 = sub_100705FC8(v47, v6, v6);
    v7 = 0;
    *v12 = 1065353216;
    v6 = 1;
  }

  while ((v8 & 1) != 0);
  for (i = 1; ; i = v15 - 1)
  {
    v14 = 0;
    v15 = i;
    v50[i] = 0;
    v16 = 1;
    v17 = 0.0;
    do
    {
      v18 = v16;
      v19 = *sub_100705FC8(a2, v15, v14);
      v20 = v19 * *sub_100705FC8(a2, v15, v14);
      v21 = v17 + (v20 * *sub_10070EF88(a1, v14));
      v22 = *sub_100705FC8(v47, v15, v14);
      v23 = v22 * *sub_100705FC8(v47, v15, v14);
      v24 = sub_10070EFC4(a3, v14);
      v16 = 0;
      v17 = v21 + (v23 * v24);
      *&v50[v15] = v17;
      v14 = 1;
    }

    while ((v18 & 1) != 0);
    if (v17 <= 0.0)
    {
      break;
    }

    if (!v15)
    {
      v44 = v50[0];
      *sub_10070EF88(a1, 0) = v44;
      v45 = v50[1];
      *sub_10070EF88(a1, 1uLL) = v45;
      return;
    }

    v25 = 0;
    v26 = 0.0;
    v27 = 1;
    do
    {
      v28 = v27;
      v29 = *sub_100705FC8(a2, 0, v25);
      v30 = v29 * *sub_10070EF88(a1, v25);
      v31 = v26 + (v30 * *sub_100705FC8(a2, v15, v25));
      v32 = *sub_100705FC8(v47, 0, v25);
      v33 = v32 * sub_10070EFC4(a3, v25);
      v34 = sub_100705FC8(v47, v15, v25);
      v27 = 0;
      v26 = v31 + (v33 * *v34);
      v25 = 1;
    }

    while ((v28 & 1) != 0);
    v35 = 0;
    *sub_10070EDA8(a1 + 8, 0, v15) = v26 / v17;
    v36 = 1;
    do
    {
      v37 = v36;
      v38 = *sub_10070EDA8(a1 + 8, 0, v15);
      v39 = *sub_100705FC8(a2, v15, v35);
      v40 = sub_100705FC8(a2, 0, v35);
      *v40 = *v40 - (v38 * v39);
      v41 = *sub_10070EDA8(a1 + 8, 0, v15);
      v42 = *sub_100705FC8(v47, v15, v35);
      v43 = sub_100705FC8(v47, 0, v35);
      v36 = 0;
      *v43 = *v43 - (v41 * v42);
      v35 = 1;
    }

    while ((v37 & 1) != 0);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_101917BCC();
  }

  v46 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v49 = v15;
    _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEBUG, "D[%zu] <= 0, matrix ! positive definite", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101917BF4();
  }
}

void sub_100708A1C(float *a1, uint64_t a2, float *a3, float *a4)
{
  v25 = 0;
  v8 = sub_10070F000(a2, 0, 0);
  v9 = v8 * *sub_10070EF88(a1, 0);
  v10 = sub_10070F000(a2, 0, 1);
  v11 = sub_10070F000(a2, 0, 0);
  v12 = *sub_10070EDA8((a1 + 2), 0, 1uLL);
  v13 = sub_10070EF88(a1, 1uLL);
  v14 = *a3 + (v8 * v9);
  if (v14 <= 0.0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101917AC8();
    }

    v23 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134217984;
      v27 = 0;
      _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101917CE4();
    }
  }

  else
  {
    v15 = v10 + (v11 * v12);
    v16 = v15 * *v13;
    *a1 = (*a3 * (1.0 / v14)) * *a1;
    v17 = v14 + (v15 * v16);
    if (v17 <= 0.0)
    {
      if (qword_1025D48A0 != -1)
      {
        sub_101917AC8();
      }

      v24 = qword_1025D48A8;
      if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 134217984;
        v27 = 0;
        _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEBUG, "%zu: alpha <= 0, matrix ! positive definite", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101917DE4(buf, &v27);
      }
    }

    else
    {
      v18 = a1[2];
      a1[1] = (v14 * (1.0 / v17)) * a1[1];
      a1[2] = v18 + (v9 * -(v15 * (1.0 / v14)));
      v19 = v9 + (v16 * v18);
      v20 = (1.0 / v17) * *a4;
      v21 = sub_100705F8C(&v25, 0);
      *v21 = *v21 + (v20 * v19);
      v22 = sub_100705F8C(&v25, 1uLL);
      *v22 = *v22 + (v20 * v16);
    }
  }
}

float sub_10070AF68(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = 0;
    v7 = v5;
    v8 = 1;
    do
    {
      v9 = v8;
      v10 = sub_10070ED48(a1, v4, 0);
      v11 = v10 * sub_10070ED48(a2, 0, v6);
      *sub_100705FC8(&v16, v4, v6) = v11;
      v12 = sub_10070ED48(a1, v4, 1uLL);
      v13 = sub_10070ED48(a2, 1, v6);
      v14 = sub_100705FC8(&v16, v4, v6);
      v8 = 0;
      *v14 = *v14 + (v12 * v13);
      v6 = 1;
    }

    while ((v9 & 1) != 0);
    v5 = 0;
    v4 = 1;
  }

  while ((v7 & 1) != 0);
  return v16;
}

float *sub_10070B064(uint64_t a1, uint64_t a2)
{
  v4 = sub_10070ED48(a1, 0, 0);
  *sub_100705FC8(a2, 0, 0) = v4;
  v5 = sub_10070ED48(a1, 0, 1uLL);
  *sub_100705FC8(a2, 1, 0) = v5;
  v6 = sub_10070ED48(a1, 1, 0);
  *sub_100705FC8(a2, 0, 1uLL) = v6;
  v7 = sub_10070ED48(a1, 1, 1uLL);
  result = sub_100705FC8(a2, 1, 1uLL);
  *result = v7;
  return result;
}

BOOL sub_10070B12C(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  for (i = 1; ; i = 0)
  {
    v6 = i;
    v7 = sub_10070F3FC(a1, v4);
    if (v7 == 0.0)
    {
      break;
    }

    v4 = 1;
    if ((v6 & 1) == 0)
    {
      v8 = *sub_100705F8C(a2, 1uLL);
      v9 = sub_10070F21C(a1 + 8, 0, 1uLL);
      v10 = sub_100705F8C(a2, 0);
      *v10 = *v10 - (v8 * v9);
      v11 = sub_10070F3FC(a1, 0);
      v12 = sub_100705F8C(a2, 0);
      *v12 = *v12 / v11;
      v13 = sub_10070F3FC(a1, 1uLL);
      v14 = sub_100705F8C(a2, 1uLL);
      *v14 = *v14 / v13;
      v15 = *sub_100705F8C(a2, 0);
      *(a2 + 4) = *(a2 + 4) - (v15 * sub_10070F21C(a1 + 8, 0, 1uLL));
      return v7 != 0.0;
    }
  }

  if (qword_1025D48A0 != -1)
  {
    sub_101917AC8();
  }

  v16 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    v18 = 134217984;
    v19 = v4;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "D[%zu] == 0, semidefinite matrix!", &v18, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019184BC();
  }

  return v7 != 0.0;
}

float sub_10070B310(uint64_t a1, float *a2)
{
  v4 = 0;
  v5 = 1;
  do
  {
    v6 = v5;
    v7 = sub_10070ED48(a1, v4, 0) * *a2;
    *sub_100705F8C(&v12, v4) = v7;
    v8 = sub_10070ED48(a1, v4, 1uLL);
    v9 = a2[1];
    v10 = sub_100705F8C(&v12, v4);
    v5 = 0;
    *v10 = *v10 + (v8 * v9);
    v4 = 1;
  }

  while ((v6 & 1) != 0);
  return v12;
}

float sub_10070B3C0(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v6 = 0;
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  *&v8[3] = a5;
  do
  {
    *&v8[v6] = sub_10070F438(a1, v6) + *&v8[v6];
    ++v6;
  }

  while (v6 != 4);
  return *v8;
}

float sub_10070B42C(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v6 = 0;
  *v8 = a2;
  *&v8[1] = a3;
  *&v8[2] = a4;
  *&v8[3] = a5;
  do
  {
    *&v8[v6] = *&v8[v6] - sub_10070F438(a1, v6);
    ++v6;
  }

  while (v6 != 4);
  return *v8;
}

void sub_10070B878(uint64_t a1, int a2)
{
  if (a2 == 0x7FFFFFFF)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v3 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
    {
      v4 = *(a1 + 72);
      v5 = *(a1 + 80);
      *buf = 134218240;
      v10 = v4;
      v11 = 2048;
      v12 = v5;
      _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "elevation batch processing returns early due to an error in querying visit with startTime,%f,endTime,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019186BC();
    }

    (*(*(a1 + 64) + 16))();
  }

  else
  {
    v6 = objc_alloc_init(NSMutableArray);
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v7 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      v8 = [*(a1 + 32) count];
      *buf = 67109120;
      LODWORD(v10) = v8;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "historicalVisits array count,count,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019185AC(a1);
    }

    [*(a1 + 40) _gatherLocationArray:*(a1 + 48) andElevationArray:v6 andTaskType:? withStartTime:? andEndTime:? andVisitArray:? andVisitSearchStartIndex:? andCompletionBlock:?];
  }
}

uint64_t sub_10070BAAC(uint64_t a1)
{
  [*(a1 + 40) _alignElevationArray:*(a1 + 48) andLocationArray:*(a1 + 56)];
  [*(a1 + 40) _logValuesOfLocationArray:*(a1 + 56) andElevationArray:*(a1 + 48) andTaskType:*(a1 + 80)];
  if ([*(a1 + 56) count] && objc_msgSend(*(a1 + 48), "count"))
  {
    v2 = objc_alloc_init(NSMutableArray);
    v3 = 0;
    v4 = 1;
    do
    {
      v5 = v4;
      if (![*(a1 + 40) _forwardProcessingWithLocationArray:*(a1 + 56) andElevationArray:*(a1 + 48) andKFEstimatesBuffer:v2 andKeepAllLocations:v3 & 1 andTaskType:*(a1 + 80)])
      {
        break;
      }

      [v2 removeAllObjects];
      v4 = 0;
      v3 = 1;
    }

    while ((v5 & 1) != 0);
    [*(a1 + 56) removeAllObjects];
    [*(a1 + 48) removeAllObjects];
    [*(a1 + 40) _backwardProcessingWithKFEstimatesBuffer:v2 andKSEstimatesBuffer:*(a1 + 64)];
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v6 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 80);
      v8 = *(a1 + 88);
      v9 = *(a1 + 96);
      v10 = [*(a1 + 56) count];
      v11 = [*(a1 + 48) count];
      *buf = 134219008;
      v15 = v7;
      v16 = 2048;
      v17 = v8;
      v18 = 2048;
      v19 = v9;
      v20 = 2048;
      v21 = v10;
      v22 = 2048;
      v23 = v11;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "No data available,taskType,%lu,startTime,%f,endTime,%f,locationCount,%lu,elevationCount,%lu", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      [*(a1 + 56) count];
      [*(a1 + 48) count];
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _elevationBatchProcessingWithStartTime:andEndTime:andLocationBuffer:andKSEstimatesBuffer:andTaskType:andCompletionBlock:]_block_invoke", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  return (*(*(a1 + 72) + 16))();
}

void sub_10070BE7C(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 208);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10070BF14;
  v3[3] = &unk_10246C900;
  v5 = *(a1 + 64);
  v4 = *(a1 + 40);
  [v2 sendElevationsFromEstimates:v4 withCompletionBlock:v3];
}

void sub_10070BF14(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(a1 + 40);
}

void sub_10070D208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11, std::__shared_weak_count *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

void sub_10070DA40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35)
{
  sub_100008080(v35);
  sub_10001423C(&a35);
  _Unwind_Resume(a1);
}

void sub_10070E87C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

float sub_10070ED48(uint64_t a1, void *a2, unint64_t a3)
{
  if (a2 >= 2)
  {
    sub_101918C7C(a2);
  }

  if (a3 >= 2)
  {
    sub_101918DB0(a3);
  }

  return *(a1 + 4 * (a2 + 2 * a3));
}

uint64_t sub_10070EDA8(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    sub_101918EE4(a3);
  }

  if (a3 <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101917BCC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a3;
      v11 = 2048;
      v12 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/Math/CMFactoredMatrix.h, line 238,invalid element %zu <= %zu.", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101917BCC();
      }

      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "T &CMFactoredMatrix<float, 2>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) [T = float, N = 2]", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return a1 + 4 * (a2 + (((a3 - 1) * a3) >> 1));
}

uint64_t sub_10070EF88(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    sub_101919018(a2);
  }

  return a1 + 4 * a2;
}

float sub_10070EFC4(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    sub_10191914C(a2);
  }

  return *(a1 + 4 * a2);
}

float sub_10070F000(uint64_t a1, void *a2, void *a3)
{
  if (a2)
  {
    sub_101919280(a2);
  }

  if (a3 >= 2)
  {
    sub_1019193C4(a3);
  }

  return *(a1 + 4 * (a2 + a3));
}

float sub_10070F05C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 | a2)
  {
    sub_1019194F8();
  }

  v6 = sub_10070F154(a1, a2, a3);
  *sub_100705FC8(&v11, 0, 0) = v6;
  v7 = sub_10070F154(a1, a2, a3 + 1);
  *sub_100705FC8(&v11, 0, 1uLL) = v7;
  v8 = sub_10070F154(a1, a2 + 1, a3);
  *sub_100705FC8(&v11, 1, 0) = v8;
  v9 = sub_10070F154(a1, a2 + 1, a3 + 1);
  *sub_100705FC8(&v11, 1, 1uLL) = v9;
  return v11;
}

float sub_10070F154(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a2 <= a3)
  {
    v3 = a3;
  }

  else
  {
    v3 = a2;
  }

  v4 = 0.0;
  if (v3 <= 1)
  {
    do
    {
      v8 = v3;
      v9 = 1.0;
      v10 = 1.0;
      if (v3 != a3)
      {
        v10 = 0.0;
        if (v3 > a3)
        {
          v10 = sub_10070F21C(a1 + 8, 0, v3);
        }
      }

      if (v8 != a2)
      {
        v9 = 0.0;
        if (v8 > a2)
        {
          v9 = sub_10070F21C(a1 + 8, 0, v8);
        }
      }

      v4 = v4 + ((v9 * sub_10070F3FC(a1, v8)) * v10);
      v3 = 1;
    }

    while (!v8);
  }

  return v4;
}

float sub_10070F21C(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3 >= 2)
  {
    sub_10191965C(a3);
  }

  if (a3 <= a2)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_101917BCC();
    }

    v7 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 134218240;
      v10 = a3;
      v11 = 2048;
      v12 = a2;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_FAULT, "Assertion failed: col > row, file /Library/Caches/com.apple.xbs/Sources/CoreLocation/Oscar/Math/CMFactoredMatrix.h, line 232,invalid element %zu <= %zu.", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D48A0 != -1)
      {
        sub_101917BCC();
      }

      v8 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "T CMFactoredMatrix<float, 2>::UnitaryUpperTriangularMatrix::operator()(size_t, size_t) const [T = float, N = 2]", "%s\n", v8);
      if (v8 != buf)
      {
        free(v8);
      }
    }
  }

  return *(a1 + 4 * (a2 + (((a3 - 1) * a3) >> 1)));
}

float sub_10070F3FC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
    sub_101919790(a2);
  }

  return *(a1 + 4 * a2);
}

float sub_10070F438(uint64_t a1, unint64_t a2)
{
  if (a2 >= 4)
  {
    sub_1019198C4(a2);
  }

  return *(a1 + 4 * a2);
}

void sub_10070F494(std::__shared_weak_count *a1)
{
  a1->__vftable = off_10246C990;
  std::__shared_weak_count::~__shared_weak_count(a1);

  operator delete();
}

void sub_10070F518(float a1)
{
  *(v3 - 80) = a1;
  *(v2 + 4) = v1;
  *(v3 - 68) = 2048;
}

uint64_t sub_10070F720(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10070F940;
  block[3] = &unk_102447418;
  block[4] = a1;
  if (qword_1026590C0 != -1)
  {
    dispatch_once(&qword_1026590C0, block);
  }

  return qword_102637210;
}

void sub_10070F9B0(uint64_t a1, void *a2)
{
  v3 = sub_1006A597C(a1, "filtered", a2);
  v4 = v3 + 15;
  *v3 = off_10246CA00;
  v3[15] = off_10246CB50;
  v5 = sub_10018D404((v3 + 16));
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  sub_10113A034(a1 + 184, *(a1 + 32), v4, v5);
  *(a1 + 1024) = [objc_msgSend(*(a1 + 32) "silo")];
  *(a1 + 1032) = 0xBFF0000000000000;
  *(a1 + 1040) = 0xBFF0000000000000;
  *&v6.__r_.__value_.__l.__data_ = xmmword_101C8A200;
  v6.__r_.__value_.__r.__words[2] = 2;
  sub_100710D94((a1 + 1048), &v6, 3);
  *(a1 + 1080) = 0u;
  *(a1 + 1072) = a1 + 1080;
  *(a1 + 1096) = 0xBFF0000000000000;
  *(a1 + 1104) = 0;
  sub_100D98054();
}

void sub_10070FCBC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *__p, uint64_t a16, int a17, __int16 a18, char a19, char a20)
{
  if (a20 < 0)
  {
    operator delete(__p);
  }

  sub_1003C93BC(v20 + 1072, *(v20 + 1080));
  sub_1003C93BC(v20 + 1048, *(v20 + 1056));
  sub_10113A0B4(v21 + 2);
  v23 = *(v20 + 176);
  *(v20 + 176) = 0;
  if (v23)
  {
    (*(*v23 + 8))(v23);
  }

  v24 = *v21;
  *v21 = 0;
  if (v24)
  {
    (*(*v24 + 8))(v24);
  }

  sub_1006A5E8C(v20);
  _Unwind_Resume(a1);
}

void sub_10070FD90(uint64_t a1, _DWORD *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(a4[4] "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_101919BEC();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLFilteredLocationController::onManagerNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_101919C00();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLFilteredLocationController::onManagerNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_10071034C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void sub_10070FF5C(uint64_t a1)
{
  [*(a1 + 1024) invalidate];

  *(a1 + 1024) = 0;
}

void sub_10070FF98(uint64_t a1)
{
  if (&_CPScheduleWakeAtDateWithIdentifier)
  {
    sub_100710004(a1);
    if (*(a1 + 1096) > 0.0)
    {
      Current = CFAbsoluteTimeGetCurrent();
      *(a1 + 1104) = CFDateCreate(kCFAllocatorDefault, Current + *(a1 + 1096));
      CPScheduleWakeAtDateWithIdentifier();
    }
  }
}

void sub_100710004(uint64_t a1)
{
  if (&_CPCancelWakeAtDateWithIdentifier)
  {
    if (*(a1 + 1104))
    {
      CPCancelWakeAtDateWithIdentifier();
      CFRelease(*(a1 + 1104));
      *(a1 + 1104) = 0;
    }
  }
}

void sub_100710054(uint64_t a1, int a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);
    v4 = v3 + 184;
    (*(*v3 + 152))(v3, a1 + 1600, a1 + 40, 1, 0xFFFFFFFFLL, 0);

    sub_100117C60(v4, (a1 + 1600), (a1 + 40));
  }
}

void sub_1007100DC(id a1)
{
  sub_10001CAF4(buf);
  v3 = 0;
  v1 = sub_10001CB4C(*buf, "ADLEnableCachedLocationDebugLogs", &v3);
  byte_1026590C8 = v1 & v3;
  if (*v5)
  {
    sub_100008080(*v5);
  }

  if (qword_1025D4600 != -1)
  {
    sub_10191A928();
  }

  v2 = qword_1025D4608;
  if (os_log_type_enabled(qword_1025D4608, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 68289282;
    *&buf[4] = 0;
    *v5 = 2082;
    *&v5[2] = "";
    v6 = 1026;
    v7 = byte_1026590C8;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#ADL,Enable cached location debug logs, enable:%{public}d}", buf, 0x18u);
  }
}

void sub_1007101F4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100710214(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 23) >= 0)
  {
    v5 = a1;
  }

  else
  {
    v5 = *a1;
  }

  v6 = *(a2 + 76);
  v7 = *(a2 + 4);
  v8 = *(a2 + 12);
  v9 = *(a2 + 28);
  v10 = *(a2 + 44);
  v11 = *(a2 + 60);
  v12 = *(a2 + 20);
  v13 = sub_1001FD6E4(*(a2 + 96));
  v14 = *(a2 + 88);
  Current = CFAbsoluteTimeGetCurrent();
  v16 = sub_1001D24B0(a2, Current);
  if (*(a3 + 23) >= 0)
  {
    v17 = a3;
  }

  else
  {
    v17 = *a3;
  }

  snprintf(__str, 0x12CuLL, "%s,viewType,SingleArrowCoordinate,iOSTime,%.3f,latitude,%.9f,longitude,%.9f,altitude,%.3f,speed,%.3f,course,%.3f,horizUnc,%.3f,posType,%s,lifespan,%.3f,age,%.3f,folder,%s", v5, v6, v7, v8, v9, v10, v11, v12, v13, v14, v16, v17);
  v18 = sub_10000AE98();
  sub_10000B230(v20);
  return sub_1005D5780(v18, __str, v20);
}

double sub_10071034C(id *a1, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 4)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101919C50();
    }

    v10 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Location Services state changed, clearing local cache}", &v12, 0x12u);
    }

    (*(*a1 + 38))(a1);
    v11 = (a1 + 23);
    if (*(a4 + 188) == 1)
    {
      sub_10113A0B8(v11);
    }

    else
    {
      return sub_10113A28C(v11);
    }
  }

  else if (!*a3)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101919C50();
    }

    v5 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 68289026;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEFAULT, "{msg%{public}.0s:#Warning Location Services reset, clearing local cache}", &v12, 0x12u);
    }

    (*(*a1 + 38))(a1);
    v6 = [objc_msgSend(a1[4] vendor];
    if (byte_1026590AF >= 0)
    {
      v7 = &qword_102659098;
    }

    else
    {
      v7 = qword_102659098;
    }

    [v6 resetNotificationConsumedForIdentifier:{+[NSString stringWithUTF8String:](NSString, "stringWithUTF8String:", v7)}];
  }

  return result;
}

void sub_100710580(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a2 + 20);
  if (*(a2 + 20) <= 0.0)
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101919C50();
    }

    v25 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289026;
      *&buf[4] = 0;
      *&buf[8] = 2082;
      *&buf[10] = "";
      _os_log_impl(dword_100000000, v25, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:No valid last confident location}", buf, 0x12u);
    }
  }

  else
  {
    if (qword_1025D47A0 != -1)
    {
      sub_101919C50();
    }

    v7 = off_1025D47A8;
    if (os_log_type_enabled(off_1025D47A8, OS_LOG_TYPE_DEBUG))
    {
      v8 = *(a2 + 4);
      v9 = *(a2 + 12);
      v10 = *(a2 + 20);
      v11 = sub_1001FD6E4(*(a2 + 96));
      v12 = *(a2 + 84);
      v26 = *(a2 + 76);
      v27 = *(a2 + 88);
      v13 = CFAbsoluteTimeGetCurrent() - v26;
      v14 = *(a2 + 128);
      *buf = 134547715;
      *&buf[4] = v8;
      *&buf[12] = 2053;
      *&buf[14] = v9;
      *&buf[22] = 2048;
      *&buf[24] = v10;
      LOWORD(v30) = 2080;
      *(&v30 + 2) = v11;
      WORD5(v30) = 1024;
      HIDWORD(v30) = v12;
      *v31 = 2048;
      *&v31[2] = v26;
      *&v31[10] = 2048;
      *&v31[12] = v27;
      *&v31[20] = 2048;
      *&v31[22] = v13;
      *&v31[30] = 1024;
      LODWORD(v32) = v14;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "Cached location,%{sensitive}.8lf,%{sensitive}.8lf,HorAcc,%.1lf,Type,%s,Confidence,%d,Timestamp,%.3f,Lifespan,%.3f,Age,%.3f,integrity,%d", buf, 0x54u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191A950(a2, v3);
    }

    sub_100021AFC(buf);
    v15 = *(a2 + 112);
    v33 = *(a2 + 96);
    v34 = v15;
    v35[0] = *(a2 + 128);
    *(v35 + 12) = *(a2 + 140);
    v16 = *(a2 + 48);
    v30 = *(a2 + 32);
    *v31 = v16;
    v17 = *(a2 + 80);
    *&v31[16] = *(a2 + 64);
    v32 = v17;
    v18 = *(a2 + 16);
    *buf = *a2;
    *&buf[16] = v18;
    memcpy(v36, a3, sizeof(v36));
    v19 = *(a3 + 520);
    v20 = *(a3 + 528);
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v37 = v19;
    v21 = v38;
    v38 = v20;
    if (v21)
    {
      sub_100008080(v21);
    }

    v22 = *(a3 + 616);
    v43 = *(a3 + 600);
    v44[0] = v22;
    *(v44 + 9) = *(a3 + 625);
    v23 = *(a3 + 552);
    v39 = *(a3 + 536);
    v40 = v23;
    v24 = *(a3 + 584);
    v41 = *(a3 + 568);
    v42 = v24;
    v28 = 0;
    (*(*a1 + 152))(a1, &v28, buf, 1, 0xFFFFFFFFLL, 0);

    if (v48)
    {
      sub_100008080(v48);
    }

    if (v47 < 0)
    {
      operator delete(v46);
    }

    if (v45)
    {
      sub_100008080(v45);
    }

    if (v38)
    {
      sub_100008080(v38);
    }
  }
}

void sub_1007108B8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13)
{
  if (a2)
  {
    sub_10037EA9C(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_1007108EC(uint64_t a1)
{
  *a1 = off_10246CA00;
  *(a1 + 120) = off_10246CB50;
  sub_1003C93BC(a1 + 1072, *(a1 + 1080));
  sub_1003C93BC(a1 + 1048, *(a1 + 1056));
  sub_10113A0B4(a1 + 184);
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  return sub_1006A5E8C(a1);
}

void sub_1007109DC(uint64_t a1)
{
  *a1 = off_10246CA00;
  *(a1 + 120) = off_10246CB50;
  sub_1003C93BC(a1 + 1072, *(a1 + 1080));
  sub_1003C93BC(a1 + 1048, *(a1 + 1056));
  sub_10113A0B4(a1 + 184);
  v2 = *(a1 + 176);
  *(a1 + 176) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  v3 = *(a1 + 168);
  *(a1 + 168) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  sub_1006A5E8C(a1);

  operator delete();
}

uint64_t sub_100710AE0(uint64_t a1)
{
  v2 = a1 - 120;
  *(a1 - 120) = off_10246CA00;
  *a1 = off_10246CB50;
  sub_1003C93BC(a1 + 952, *(a1 + 960));
  sub_1003C93BC(a1 + 928, *(a1 + 936));
  sub_10113A0B4(a1 + 64);
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  return sub_1006A5E8C(v2);
}

void sub_100710BD0(uint64_t a1)
{
  v2 = a1 - 120;
  *(a1 - 120) = off_10246CA00;
  *a1 = off_10246CB50;
  sub_1003C93BC(a1 + 952, *(a1 + 960));
  sub_1003C93BC(a1 + 928, *(a1 + 936));
  sub_10113A0B4(a1 + 64);
  v3 = *(a1 + 56);
  *(a1 + 56) = 0;
  if (v3)
  {
    (*(*v3 + 8))(v3);
  }

  v4 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  sub_1006A5E8C(v2);

  operator delete();
}

void *sub_100710D94(void *a1, int *a2, uint64_t a3)
{
  a1[1] = 0;
  v4 = a1 + 1;
  a1[2] = 0;
  *a1 = a1 + 1;
  if (a3)
  {
    v6 = 8 * a3;
    do
    {
      sub_100710E14(a1, v4, a2);
      a2 += 2;
      v6 -= 8;
    }

    while (v6);
  }

  return a1;
}

uint64_t sub_100710E14(void *a1, uint64_t *a2, int *a3)
{
  v3 = *sub_1005D6764(a1, a2, &v6, &v5, a3);
  if (!v3)
  {
    operator new();
  }

  return v3;
}

uint64_t sub_100710EAC()
{
  sub_10000EC00(&qword_102659098, "FilteredLocationController");

  return __cxa_atexit(&std::string::~string, &qword_102659098, dword_100000000);
}

void *sub_100710F0C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = a3;
  result[2] = 0;
  return result;
}

uint64_t sub_100710F18(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    (*(*v2 + 8))(v2);
  }

  return a1;
}

id *sub_100710F6C(id *result, uint64_t a2, _DWORD *a3, uint64_t a4)
{
  if (*a3 == 3)
  {
    v5 = result;
    if (qword_1025D4610 != -1)
    {
      sub_10191AB08();
    }

    v6 = qword_1025D4618;
    if (os_log_type_enabled(qword_1025D4618, OS_LOG_TYPE_DEBUG))
    {
      v7 = 138477827;
      v8 = sub_10007005C(a4);
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "CLXOTASubscription Mobile asset notification data: %{private}@", &v7, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191AB1C(a4);
    }

    return [v5[1] onUpdatedSettings:sub_10007005C(a4)];
  }

  return result;
}

id sub_100711078(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    sub_1012D11E0();
  }

  return [*(v1 + 16) register:*(v1 + 8) forNotification:3 registrationInfo:0];
}

void sub_100711144(uint64_t a1, _DWORD *a2, uint64_t a3, id *a4)
{
  CLProfilingIdentify();
  [objc_msgSend(*a4 "silo")];
  if (qword_1025D47F0 != -1)
  {
    sub_10191AC50();
  }

  if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
  {
    v11 = 1;
    v8 = _os_activity_create(dword_100000000, "CL: CLXOTASubscription::onMobileAssetNotification", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v8, &state);

    if (qword_1025D47F0 != -1)
    {
      sub_10191AC64();
    }

    v9 = qword_1025D47F8;
    if (os_log_type_enabled(qword_1025D47F8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 68289538;
      v13 = 0;
      v14 = 2082;
      v15 = "";
      v16 = 2082;
      v17 = "activity";
      v18 = 2050;
      v19 = a4;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:CLXOTASubscription::onMobileAssetNotification, event:%{public, location:escape_only}s, this:%{public}p}", buf, 0x26u);
    }
  }

  else
  {
    v11 = 0;
  }

  sub_100710F6C(a4, v7, a2, a3);
  if (v11 == 1)
  {
    os_activity_scope_leave(&state);
  }
}

void *sub_100711310(void *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = result;
    [*(v1 + 16) unregister:*(v1 + 8) forNotification:3];
    result = v2[2];
    v2[2] = 0;
    if (result)
    {
      v3 = *(*result + 8);

      return v3();
    }
  }

  return result;
}

uint64_t sub_1007113EC(uint64_t a1, double a2, double a3, double a4)
{
  v4 = fabs(a4 * 15.0) + *(a1 + 24) + *(a1 + 56);
  if (fmin(a3, v4) >= a2)
  {
    v5 = 50;
  }

  else
  {
    v5 = 25;
  }

  if (qword_1025D45E0 != -1)
  {
    sub_10191AC8C();
  }

  v6 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
  {
    v15 = 134349312;
    v16 = v4;
    v17 = 1026;
    v18 = v5;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_INFO, "CLNmeaScreener,integrity,positionDiffBoundMediumIntegrity,%{public}.2lf,locIntegrity,%{public}d", &v15, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191ACC8(v5, v7, v8, v9, v10, v11, v12, v13, v4);
  }

  return v5;
}

BOOL sub_100711508(uint64_t a1, float64x2_t *a2, _DWORD *a3, double a4, double a5, double a6, double a7)
{
  v12 = vabdd_f64(a7, *(a1 + 16));
  v13 = sub_100109D18(a2, a5, a6, *a1, *(a1 + 8), 0.0);
  v14 = fabs(v12 * a4) + *(a1 + 24);
  if (v14 >= *(a1 + 40))
  {
    v15 = v14;
  }

  else
  {
    v15 = *(a1 + 40);
  }

  *a3 = sub_1007113EC(a1, v13, v15, v12);
  if (qword_1025D45E0 != -1)
  {
    sub_10191AC8C();
  }

  v16 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    v17 = *a1;
    v18 = *(a1 + 8);
    v19 = *(a1 + 16);
    v20 = *(a1 + 24);
    v21 = *(a1 + 32);
    v22 = *(a1 + 36);
    *buf = 134351873;
    v26 = v19;
    v27 = 2050;
    v28 = v13;
    v29 = 2050;
    v30 = v15;
    v31 = 2053;
    v32 = a5;
    v33 = 2053;
    v34 = a6;
    v35 = 2053;
    v36 = v17;
    v37 = 2053;
    v38 = v18;
    v39 = 1026;
    v40 = v21;
    v41 = 2050;
    v42 = v20;
    v43 = 1026;
    v44 = v22;
    v45 = 2050;
    v46 = v12;
    v47 = 2050;
    v48 = a4;
    _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "CLNmeaScreener,screen,time,%{public}.1lf,posDiff,%{public}.2lf,positionDiffBound,%{public}.2lf,accessoryLL,%{sensitive}.7lf,%{sensitive}.7lf,referenceLL,%{sensitive}.7lf,%{sensitive}.7lf,type,%{public}d,hunc,%{public}.2lf,refFrame,%{public}d,timeDiff,%{public}.2lf,maxSpeed,%{public}.2lf", buf, 0x72u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45E0 != -1)
    {
      sub_10191ACA0();
    }

    v24 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNmeaScreener::ExternalLocationData::isLocationWithinBoundsAndSetLocIntegrity(CLDistanceCalc &, double, double, double, CFAbsoluteTime, CLLocationIntegrity &) const", "%s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }

  return v13 <= v15;
}

uint64_t sub_100711800(uint64_t a1, uint64_t a2)
{
  *a1 = 256;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_10018D404(a1 + 32);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  __asm { FMOV            V0.2D, #-1.0 }

  *(a1 + 88) = _Q0;
  *(a1 + 104) = 0;
  *(a1 + 112) = xmmword_101C8A2C0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0x4069000000000000;
  *(a1 + 152) = _Q0;
  *(a1 + 168) = 0;
  *(a1 + 176) = xmmword_101C8A2D0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 192) = 0x4069000000000000;
  *(a1 + 216) = _Q0;
  *(a1 + 232) = 0;
  *(a1 + 240) = xmmword_101C8A2E0;
  *(a1 + 256) = 0x40B3880000000000;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xBFF0000000000000;
  *(a1 + 288) = 0xBFF0000000000000;
  *(a1 + 296) = 0;
  *(a1 + 304) = xmmword_101C8A2F0;
  *(a1 + 320) = 0x40E86A0000000000;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0xBFF0000000000000;
  *(a1 + 352) = 0xBFF0000000000000;
  *(a1 + 360) = 0;
  *(a1 + 368) = xmmword_101C8A300;
  *(a1 + 384) = 0x410E848000000000;
  sub_10071323C(a1 + 392, a2);
  *(a1 + 424) = 0;
  *(a1 + 432) = 1;
  *(a1 + 436) = 0xB40000000ALL;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0;
  *(a1 + 464) = 0xBFF0000000000000;
  *(a1 + 472) = 50;
  *(a1 + 480) = 0xBFF0000000000000;
  v14 = 0;
  sub_10001CAF4(buf);
  v9 = sub_10005BBE4(*buf, "GpsSimulatorTestMode", &v14);
  if (v14)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  if (v16)
  {
    sub_100008080(v16);
  }

  if (v10)
  {
    *a1 = 1;
    if (qword_1025D45E0 != -1)
    {
      sub_10191ACA0();
    }

    v11 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "CLNmeaScreener,fSimulatorMode,1", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191ADE0(buf);
      v13 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "CLNmeaScreener::CLNmeaScreener(NMEAScreenerCallback)", "%s\n", v13);
      if (v13 != buf)
      {
        free(v13);
      }
    }
  }

  return a1;
}

void sub_100711AC0(_Unwind_Exception *a1)
{
  sub_100D8D8D0(v1 + 448);
  sub_1006F7E28(v1 + 392);
  if (*(v1 + 31) < 0)
  {
    operator delete(*v2);
  }

  _Unwind_Resume(a1);
}

void sub_100711B1C(uint64_t a1, char a2)
{
  sub_10001A3E8();
  if (sub_10071D18C())
  {
    *(a1 + 2) = a2;
    v4 = (a1 + 2);
    if (qword_1025D45E0 != -1)
    {
      sub_10191AC8C();
    }

    v5 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
    {
      v6 = *v4;
      v15[0] = 67240192;
      v15[1] = v6;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_INFO, "CLNMEAScreener,isExternalLocationDisablementAllowed,1,PauseExternalLocation,%{public}d", v15, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191AF08(v4, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  else
  {
    if (qword_1025D45E0 != -1)
    {
      sub_10191AC8C();
    }

    v14 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15[0]) = 0;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "CLNMEAScreener,isExternalLocationDisablementAllowed,0", v15, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191AE24();
    }
  }
}

uint64_t sub_100711C78(uint64_t a1, int a2, int a3, int a4, double a5, double a6, double a7)
{
  if (*(a1 + 2) != 1)
  {
    if (*(a1 + 1) == 1 && (a2 == 3 || !a2))
    {
      if (a2)
      {
        v15 = "GPRMC";
      }

      else
      {
        v15 = "GPGGA";
      }

      sub_100006044((a1 + 8), v15);
      v48 = 0;
      if (!sub_100020608(a5, a6))
      {
        if (qword_1025D45E0 != -1)
        {
          sub_10191AC8C();
        }

        v26 = qword_1025D45E8;
        if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_INFO, "CLNMEAScreener,screen,rejected,invalid accessory coordinate", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10191B12C();
        }

        goto LABEL_31;
      }

      if (*a1 != 1)
      {
        if (a4)
        {
          LODWORD(v16) = dword_1026590D8;
          if (v16 > a7)
          {
            if (qword_1025D45E0 != -1)
            {
              sub_10191AC8C();
            }

            v17 = qword_1025D45E8;
            if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_INFO))
            {
              *buf = 134349312;
              v60 = a7;
              v61 = 1026;
              *v62 = dword_1026590D8;
              _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_INFO, "CLNmeaScreener,screen,data time less,%{public}.2lf,than build time,,%{public}d", buf, 0x12u);
            }

            v18 = sub_10000A100(121, 2);
            if (v18)
            {
              sub_10191B008(v18, v19, v20, v21, v22, v23, v24, v25);
            }

LABEL_31:
            sub_1007124B8(a1 + 392, 1, 0);
            return 0;
          }
        }

        if (a7 >= 0.0)
        {
          v47 = 0;
          v27 = sub_100712514(a1, a3, &v48, &v47, a5, a6);
          v28 = v48;
          if (sub_100712870(a1 + 424, v27, v48, v47))
          {
            if (a7 <= 0.0 || !a4 || (v29 = *(a1 + 480), v29 <= 0.0) || vabdd_f64(a7, v29) >= 0.8)
            {
              *(a1 + 480) = a7;
              if (qword_1025D45E0 != -1)
              {
                sub_10191AC8C();
              }

              v39 = qword_1025D45E8;
              if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
              {
                v40 = *(a1 + 424);
                v41 = "success";
                v42 = *(a1 + 428);
                if (!v28)
                {
                  v41 = "not screened";
                }

                *buf = 134350595;
                v60 = a7;
                v61 = 2082;
                *v62 = v41;
                *&v62[8] = 1026;
                *v63 = v40;
                *&v63[4] = 1026;
                *&v63[6] = v42;
                *v64 = 2053;
                *&v64[2] = a5;
                v65 = 2053;
                v66 = a6;
                v67 = 1026;
                v68 = v28;
                _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "CLNMEAScreener,screen,%{public}.2lf,accessory location %{public}s,continuousFailCount,%{public}d,continuousSuccessCount,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,locTypeUsedForScreening,%{public}d", buf, 0x3Cu);
              }

              if (sub_10000A100(121, 2))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D45E0 != -1)
                {
                  sub_10191ACA0();
                }

                v43 = "success";
                v44 = *(a1 + 424);
                v45 = *(a1 + 428);
                if (!v28)
                {
                  v43 = "not screened";
                }

                v49 = 134350595;
                v50 = a7;
                v51 = 2082;
                *v52 = v43;
                *&v52[8] = 1026;
                *v53 = v44;
                *&v53[4] = 1026;
                *&v53[6] = v45;
                *v54 = 2053;
                *&v54[2] = a5;
                v55 = 2053;
                v56 = a6;
                v57 = 1026;
                v58 = v28;
                v46 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNmeaScreener::screenData(CLNmeaSentenceType, double, double, CLClientLocationReferenceFrame, BOOL, double)", "%s\n", v46);
                if (v46 != buf)
                {
                  free(v46);
                }
              }

              sub_1007124B8(a1 + 392, 0, v28);
              return 1;
            }

            sub_1007124B8(a1 + 392, 1, 0);
            if (qword_1025D45E0 != -1)
            {
              sub_10191AC8C();
            }

            v30 = qword_1025D45E8;
            if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
            {
              v31 = vabdd_f64(a7, *(a1 + 480));
              *buf = 134349825;
              v60 = a7;
              v61 = 2053;
              *v62 = a5;
              *&v62[8] = 2053;
              *v63 = a6;
              *&v63[8] = 2050;
              *v64 = v31;
              _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "CLNMEAScreener,screen,%{public}.2lf,accessory location screening failed,input frequency too high,LL,%{sensitive}.7lf,%{sensitive}.7lf,time since last fix,%{public}.3lf", buf, 0x2Au);
            }

            result = sub_10000A100(121, 2);
            if (!result)
            {
              return result;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1025D45E0 != -1)
            {
              sub_10191ACA0();
            }

            v32 = vabdd_f64(a7, *(a1 + 480));
            v49 = 134349825;
            v50 = a7;
            v51 = 2053;
            *v52 = a5;
            *&v52[8] = 2053;
            *v53 = a6;
            *&v53[8] = 2050;
            *v54 = v32;
            v33 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNmeaScreener::screenData(CLNmeaSentenceType, double, double, CLClientLocationReferenceFrame, BOOL, double)", "%s\n", v33);
          }

          else
          {
            sub_1007124B8(a1 + 392, 1, v28);
            if (qword_1025D45E0 != -1)
            {
              sub_10191AC8C();
            }

            v34 = qword_1025D45E8;
            if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
            {
              v35 = *(a1 + 424);
              v36 = *(a1 + 428);
              *buf = 134350337;
              v60 = a7;
              v61 = 1026;
              *v62 = v35;
              *&v62[4] = 1026;
              *&v62[6] = v36;
              *v63 = 2053;
              *&v63[2] = a5;
              *v64 = 2053;
              *&v64[2] = a6;
              v65 = 1026;
              LODWORD(v66) = v28;
              _os_log_impl(dword_100000000, v34, OS_LOG_TYPE_DEBUG, "CLNMEAScreener,screen,%{public}.2lf,accessory location screening failed,continuousFailCount,%{public}d,continuousSuccessCount,%{public}d,LL,%{sensitive}.7lf,%{sensitive}.7lf,locTypeUsedForScreening,%{public}d", buf, 0x32u);
            }

            result = sub_10000A100(121, 2);
            if (!result)
            {
              return result;
            }

            bzero(buf, 0x65CuLL);
            if (qword_1025D45E0 != -1)
            {
              sub_10191ACA0();
            }

            v37 = *(a1 + 424);
            v38 = *(a1 + 428);
            v49 = 134350337;
            v50 = a7;
            v51 = 1026;
            *v52 = v37;
            *&v52[4] = 1026;
            *&v52[6] = v38;
            *v53 = 2053;
            *&v53[2] = a5;
            *v54 = 2053;
            *&v54[2] = a6;
            v55 = 1026;
            LODWORD(v56) = v28;
            v33 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "BOOL CLNmeaScreener::screenData(CLNmeaSentenceType, double, double, CLClientLocationReferenceFrame, BOOL, double)", "%s\n", v33);
          }

          if (v33 != buf)
          {
            free(v33);
          }

          return 0;
        }
      }

      sub_1007124B8(a1 + 392, 0, 0);
    }

    return 1;
  }

  if (qword_1025D45E0 != -1)
  {
    sub_10191AC8C();
  }

  v7 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEBUG, "CLNMEAScreener,screen,external location update paused", buf, 2u);
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10191B218();
    return 0;
  }

  return result;
}

uint64_t sub_1007124B8(uint64_t a1, char a2, int a3)
{
  v6 = a2;
  v5 = a3;
  v3 = *(a1 + 24);
  if (!v3)
  {
    sub_1000CF05C();
  }

  return (*(*v3 + 48))(v3, &v6, &v5);
}

BOOL sub_100712514(uint64_t a1, int a2, int *a3, char *a4, double a5, double a6)
{
  *a3 = 0;
  if (*(a1 + 1) != 1)
  {
    return 1;
  }

  Current = CFAbsoluteTimeGetCurrent();
  *(a1 + 472) = 50;
  if (*(a1 + 456) == 1 && vabdd_f64(sub_1000081AC(), *(a1 + 464)) < 20.0 && *(a1 + 457) == 1 && *(a1 + 160) < *(a1 + 184) && vabdd_f64(Current, *(a1 + 152)) < 3.0)
  {
    v13 = a1 + 136;
    v14 = 1;
    v15 = 1;
    goto LABEL_14;
  }

  if (vabdd_f64(Current, *(a1 + 88)) < 3.0)
  {
    v15 = 0;
    v13 = a1 + 72;
    v14 = 1;
    goto LABEL_14;
  }

  if (vabdd_f64(Current, *(a1 + 216)) < 1800.0)
  {
    v15 = 0;
    v13 = a1 + 200;
    v14 = 4;
    goto LABEL_14;
  }

  if (vabdd_f64(Current, *(a1 + 280)) >= 1800.0)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_10191AC8C();
    }

    v19 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEFAULT))
    {
      v20 = (a1 + 8);
      if (*(a1 + 31) < 0)
      {
        v20 = *v20;
      }

      v21 = *(a1 + 88);
      v22 = *(a1 + 216);
      v23 = *(a1 + 280);
      v24 = *(a1 + 344);
      *buf = 136381699;
      *&buf[4] = v20;
      *&buf[12] = 2050;
      *&buf[14] = v21;
      *&buf[22] = 2050;
      *&buf[24] = v22;
      *v39 = 2048;
      *&v39[2] = v23;
      *&v39[10] = 2050;
      *&v39[12] = v24;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "CLNMEAScreener,%{private}s,external location unavailable,gps,%{public}.1lf,wifi,%{public}.1lf,cell{public},%.1lf,LAC,%{public}.1lf", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191B304(a1, v25, v26, v27, v28, v29, v30, v31);
    }

    return 1;
  }

  v15 = 0;
  v13 = a1 + 264;
  v14 = 6;
LABEL_14:
  *a3 = v14;
  *a4 = v15;
  if (*(a1 + 456))
  {
    v16 = 50.0;
  }

  else
  {
    v16 = 100.0;
  }

  v17 = *(v13 + 36);
  if (v17 != a2)
  {
    if (a2 == 2)
    {
      v32 = *v13;
      v36 = *(v13 + 8);
      v37 = v32;
      v35 = *(v13 + 24);
      if (sub_100D8D8D4((a1 + 448), v17, &v37, &v36, &v35, 5, v32, v36, v35) == 2)
      {
        v33 = *(v13 + 16);
        *buf = *v13;
        *&buf[16] = v33;
        v34 = *(v13 + 48);
        *v39 = *(v13 + 32);
        *&v39[16] = v34;
        *buf = v37;
        *&buf[8] = v36;
        *&buf[24] = v35;
        *&v39[4] = 2;
        return sub_100711508(buf, (a1 + 32), (a1 + 472), v16, a5, a6, Current);
      }
    }

    return 1;
  }

  return sub_100711508(v13, (a1 + 32), (a1 + 472), v16, a5, a6, Current);
}

uint64_t sub_100712870(uint64_t a1, int a2, int a3, int a4)
{
  if (!off_1025D53B8)
  {
    operator new();
  }

  if (*(off_1025D53B8 + 1))
  {
    v4 = *off_1025D53B8;
  }

  else
  {
    v4 = 0;
  }

  if ((a3 & 0xFFFFFFF7) == 1 && a4)
  {
    if (a2)
    {
      v5 = *(a1 + 4);
      *a1 = 0;
      *(a1 + 4) = v5 + 1;
      if ((*(a1 + 8) & 1) == 0 && v5 >= *(a1 + 16))
      {
        *(a1 + 8) = 1;
      }
    }

    else
    {
      v7 = (*a1)++;
      *(a1 + 4) = 0;
      if (v7 >= *(a1 + 12))
      {
        *(a1 + 8) = 0;
      }
    }

    if (v4)
    {
      v6 = 1;
      return v6 & 1;
    }

LABEL_18:
    v6 = *(a1 + 8);
    return v6 & 1;
  }

  if (!(v4 & 1 | ((a2 & 1) == 0)))
  {
    goto LABEL_18;
  }

  v6 = v4 & a2;
  return v6 & 1;
}

uint64_t sub_100712994(uint64_t result, int a2, double a3, double a4, double a5)
{
  if (a2)
  {
    *(result + 40) = a3;
  }

  *(result + 48) = a3;
  *(result + 56) = a4;
  *(result + 64) = a5;
  *(result + 72) = 0xBFF0000000000000;
  *(result + 80) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  return result;
}

void sub_1007129B4(uint64_t a1, double *a2, double *a3, double a4, double a5, double a6, double a7)
{
  if (!sub_100020608(a5, a6))
  {
    return;
  }

  v14 = *(a1 + 48);
  if (vabdd_f64(v14, a4) < 0.001)
  {
    if (qword_1025D45E0 != -1)
    {
      sub_10191AC8C();
    }

    v15 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349056;
      v52 = a4;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "CLCourseScreener,%{public}.2lf,duplicate data ignored", buf, 0xCu);
    }

    v16 = sub_10000A100(121, 2);
    if (v16)
    {
      sub_10191B570(v16, v17, v18, v19, v20, v21, v22, v23, a4);
    }

    return;
  }

  v24 = *(a1 + 40);
  if (v24 < 0.0)
  {
    *(a1 + 40) = a4;
    v24 = a4;
  }

  if (a7 < 8.0 && !*(a1 + 92) && vabdd_f64(a4, v24) < 30.0)
  {
    *(a1 + 48) = a4;
    *(a1 + 56) = a5;
    *(a1 + 64) = a6;
    *(a1 + 72) = 0xBFF0000000000000;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    return;
  }

  v25 = vabdd_f64(a4, v14);
  if (v14 < 0.0 || v25 > 5.0)
  {
    *(a1 + 40) = a4;
    *(a1 + 48) = a4;
    *(a1 + 56) = a5;
    *(a1 + 64) = a6;
    *(a1 + 72) = 0xBFF0000000000000;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
    *(a1 + 96) = 0;
    if (qword_1025D45E0 != -1)
    {
      sub_10191AC8C();
    }

    v27 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134349825;
      v52 = a4;
      v53 = 2053;
      v54 = a5;
      v55 = 2053;
      v56 = a6;
      v57 = 2050;
      v58 = a7;
      _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "CLCourseScreener,%{public}.2lf,reset,unable to screen,LL,%{sensitive}.7lf,%{sensitive}.7lf,speed,%{public}.2lf", buf, 0x2Au);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45E0 == -1)
      {
        goto LABEL_72;
      }

      goto LABEL_74;
    }

    return;
  }

  ++*(a1 + 88);
  *(a1 + 48) = a4;
  v28 = sub_100109D18(a1, *(a1 + 56), *(a1 + 64), a5, a6, 0.0);
  if (v28 <= 5.0)
  {
    v31 = *(a1 + 72);
    goto LABEL_37;
  }

  v29 = sub_1002E9798(a1, *(a1 + 56), *(a1 + 64), a5, a6);
  if (v29 >= 0.0)
  {
    v31 = v29;
    *(a1 + 64) = a6;
    *(a1 + 72) = v29;
    *(a1 + 56) = a5;
LABEL_37:
    v32 = *(a1 + 92);
    HIDWORD(v33) = 1079574528;
    LODWORD(v33) = *(a1 + 88);
    v34 = *a2;
    v49 = v32 * 100.0 / v33;
    v50 = *a3;
    v35 = -1.0;
    if (v31 >= 0.0)
    {
      v45 = fmod(v34 - v31, 360.0);
      if (v45 < 0.0)
      {
        v45 = v45 + 360.0;
      }

      if (v45 > 180.0)
      {
        v45 = v45 + -360.0;
      }

      v35 = fabs(v45);
      if (v34 < 0.0 || v35 > 45.0)
      {
        if (a7 > 5.0 || v34 < 0.0 || *(a1 + 84) >= 4u && v49 > 25.0)
        {
          if (a7 > 5.0)
          {
            ++*(a1 + 80);
          }

          if (v34 >= 0.0)
          {
            if (a7 > 20.0 || *(a1 + 80) >= 6u)
            {
              *(a1 + 92) = v32 + 1;
              *a2 = v31;
              v47 = *(a1 + 84);
              if (a7 > 5.0)
              {
                ++v47;
              }

              *(a1 + 84) = v47;
            }
          }

          else
          {
            *(a1 + 92) = v32 + 1;
            ++*(a1 + 100);
            *a2 = v31;
          }
        }
      }

      else if (*(a1 + 80) > 4u)
      {
        if (v35 > 22.5 && v50 < v35)
        {
          ++*(a1 + 96);
          *a3 = v35;
        }
      }

      else
      {
        *(a1 + 80) = 0;
      }
    }

    if (qword_1025D45E0 != -1)
    {
      sub_10191AC8C();
    }

    v36 = qword_1025D45E8;
    if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
    {
      v37 = *a2;
      v38 = *a3;
      v39 = *(a1 + 88);
      v40 = *(a1 + 92);
      v41 = *(a1 + 96);
      v42 = *(a1 + 100);
      v44 = *(a1 + 80);
      v43 = *(a1 + 84);
      *buf = 134353153;
      v52 = a4;
      v53 = 2050;
      v54 = v34;
      v55 = 2050;
      v56 = v37;
      v57 = 2050;
      v58 = v35;
      v59 = 2050;
      v60 = v50;
      v61 = 2050;
      v62 = v38;
      v63 = 2053;
      v64 = a5;
      v65 = 2053;
      v66 = a6;
      v67 = 2050;
      v68 = a7;
      v69 = 2050;
      v70 = v28;
      v71 = 1026;
      v72 = v39;
      v73 = 1026;
      v74 = v40;
      v75 = 1026;
      v76 = v41;
      v77 = 1026;
      v78 = v43;
      v79 = 2050;
      v80 = v49;
      v81 = 1026;
      v82 = v42;
      v83 = 1026;
      v84 = v44;
      _os_log_impl(dword_100000000, v36, OS_LOG_TYPE_DEBUG, "CLCourseScreener,%{public}.2lf,prevCourse,%{public}.2lf,newCourse,%{public}.2lf,diff,%{public}.2lf,prevCourseUnc,%{public}.2lf,newCourseUnc,%{public}.2lf,LL,%{sensitive}.7lf,%{sensitive}.7lf,speed,%{public}.2lf,distance,%{public}.2lf,screenedCount,%{public}d,changedCount,%{public}d,uncChangedCount,%{public}d,highSpeedChangedCount,%{public}d,courseChangedPercentage,%{public}.2lf,invalidCourseCorrected,%{public}d,contCourseChangeRequired,%{public}d", buf, 0x94u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D45E0 == -1)
      {
        goto LABEL_72;
      }

      goto LABEL_74;
    }

    return;
  }

  *(a1 + 40) = a4;
  *(a1 + 48) = a4;
  *(a1 + 56) = a5;
  *(a1 + 64) = a6;
  *(a1 + 72) = 0xBFF0000000000000;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  if (qword_1025D45E0 != -1)
  {
    sub_10191AC8C();
  }

  v30 = qword_1025D45E8;
  if (os_log_type_enabled(qword_1025D45E8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134350081;
    v52 = a4;
    v53 = 2053;
    v54 = a5;
    v55 = 2053;
    v56 = a6;
    v57 = 2050;
    v58 = a7;
    v59 = 2050;
    v60 = v28;
    _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "CLCourseScreener,%{public}.2lf,reset,unable to compute course,LL,%{sensitive}.7lf,%{sensitive}.7lf,speed,%{public}.2lf,distance,%{public}.2lf", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D45E0 == -1)
    {
LABEL_72:
      v48 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "void CLCourseScreener::screenAndCorrectCourse(const CFAbsoluteTime, const double, const double, const double, double &, double &)", "%s\n", v48);
      if (v48 != buf)
      {
        free(v48);
      }

      return;
    }

LABEL_74:
    sub_10191ACA0();
    goto LABEL_72;
  }
}

uint64_t sub_10071323C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

double sub_1007132D4()
{
  result = sub_100322A38() + -259200.0;
  dword_1026590D8 = result;
  return result;
}

void *sub_100713304(uint64_t a1, uint64_t a2)
{
  v3 = 10;
  result = sub_100ED8FC0(a1, &v3, qword_1026590E0, a2);
  *result = off_10246CD48;
  result[38] = 0;
  result[39] = 0;
  result[37] = 0;
  return result;
}

uint64_t sub_100713360(uint64_t a1)
{
  *a1 = off_10246CD48;
  v3 = (a1 + 296);
  sub_1001D22FC(&v3);
  return sub_100ED90F4(a1);
}

void sub_1007133BC(uint64_t a1)
{
  *a1 = off_10246CD48;
  v2 = (a1 + 296);
  sub_1001D22FC(&v2);
  sub_100ED90F4(a1);
  operator delete();
}

uint64_t sub_100713434(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 296);
  v3 = *(a1 + 304);
  if (v2 != v3)
  {
    v5 = a2[1];
    do
    {
      if (v5 >= a2[2])
      {
        v5 = sub_100714994(a2, v2);
      }

      else
      {
        sub_10071492C(a2, v2);
        v5 += 56;
      }

      a2[1] = v5;
      v2 += 56;
    }

    while (v2 != v3);
  }

  return 1;
}

uint64_t sub_1007134A8(uint64_t a1, FILE *a2)
{
  if (!a2)
  {
    sub_10191B7EC(qword_1025D48A0 == -1);
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10191B678();
  }

  v3 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "Traversing preload manifest file", buf, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191B68C();
  }

  memset(&v81, 0, sizeof(v81));
  do
  {
    v4 = fread(__ptr, 1uLL, 0x400uLL, a2);
    std::string::append(&v81, __ptr, v4);
  }

  while (v4 && !feof(a2) && !ferror(a2));
  if (ferror(a2))
  {
    v5 = 0;
    goto LABEL_69;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10191B780();
  }

  v6 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
  {
    size = HIBYTE(v81.__r_.__value_.__r.__words[2]);
    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      size = v81.__r_.__value_.__l.__size_;
    }

    *buf = 134217984;
    *&buf[4] = size;
    _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Preload manifest tile size = %lu", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191B7A8(buf);
    v60 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
    if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
    {
      v60 = v81.__r_.__value_.__l.__size_;
    }

    *v96 = 134217984;
    *&v96[4] = v60;
    v61 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v61);
    if (v61 != buf)
    {
      free(v61);
    }
  }

  if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v8 = &v81;
  }

  else
  {
    v8 = v81.__r_.__value_.__r.__words[0];
  }

  if ((v81.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    v9 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
  }

  else
  {
    v9 = v81.__r_.__value_.__l.__size_;
  }

  v10 = [NSData dataWithBytes:v8 length:v9];
  context = objc_autoreleasePoolPush();
  v11 = [[PBDataReader alloc] initWithData:v10];
  v12 = [TRANSITPbRegionPreloadManifest alloc];
  v13 = [(TRANSITPbRegionPreloadManifest *)v12 readFrom:v11];
  if (!v12)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10191B780();
    }

    v17 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_FAULT, "failed to allocate transit tile", buf, 2u);
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_67;
    }

    goto LABEL_141;
  }

  if ((v13 & 1) == 0)
  {
    if (qword_1025D48A0 != -1)
    {
      sub_10191B780();
    }

    v18 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
    {
      v19 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
      v20 = v81.__r_.__value_.__l.__size_;
      (*(*a1 + 16))(buf);
      v21 = (v19 & 0x80u) == 0 ? v19 : v20;
      v22 = v105[1] >= 0 ? buf : *buf;
      *v96 = 134349314;
      *&v96[4] = v21;
      *&v96[12] = 2082;
      v97 = v22;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_FAULT, "failed to decode transit tile protobuf, encrypted=%{public}lu tile=%{public}s", v96, 0x16u);
      if ((v105[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (!sub_10000A100(121, 0))
    {
      goto LABEL_67;
    }

    sub_10191B7A8(buf);
    v23 = HIBYTE(v81.__r_.__value_.__r.__words[2]);
    v24 = v81.__r_.__value_.__l.__size_;
    (*(*a1 + 16))(v96);
    if ((v23 & 0x80u) == 0)
    {
      v25 = v23;
    }

    else
    {
      v25 = v24;
    }

    if ((SBYTE1(v98) & 0x80u) == 0)
    {
      v26 = v96;
    }

    else
    {
      v26 = *v96;
    }

    v86 = 134349314;
    v87 = v25;
    v88 = 2082;
    v89 = v26;
    v27 = _os_log_send_and_compose_impl();
    if (SBYTE1(v98) < 0)
    {
      operator delete(*v96);
    }

    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v27);
    if (v27 == buf)
    {
      goto LABEL_67;
    }

    goto LABEL_142;
  }

  if ([(TRANSITPbRegionPreloadManifest *)v12 hasVersion]&& [(TRANSITPbRegionPreloadManifest *)v12 hasGenerationTimeSecs]&& [(TRANSITPbRegionPreloadManifest *)v12 marketsCount])
  {
    [(TRANSITPbRegionPreloadManifest *)v12 generationTimeSecs];
    v15 = v14;
    if ([(TRANSITPbRegionPreloadManifest *)v12 hasExpirationAgeSecs])
    {
      v16 = [(TRANSITPbRegionPreloadManifest *)v12 expirationAgeSecs];
    }

    else
    {
      v16 = 15292800;
    }

    v30 = v15 - kCFAbsoluteTimeIntervalSince1970;
    *(a1 + 184) = [(TRANSITPbRegionPreloadManifest *)v12 version];
    *(a1 + 52) = 3865470568200000;
    *(a1 + 64) = -1;
    *(a1 + 176) = v30;
    *(a1 + 200) = v16;
    if (qword_1025D48A0 != -1)
    {
      sub_10191B780();
    }

    v31 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      v32 = [(TRANSITPbRegionPreloadManifest *)v12 version];
      Current = CFAbsoluteTimeGetCurrent();
      *buf = 67110400;
      *&buf[4] = v32;
      *&buf[8] = 1024;
      *&buf[10] = 1800000;
      v104 = 0x800000DBBA00400;
      *v105 = v30;
      *&v105[8] = 2048;
      *v106 = Current - v30;
      *&v106[8] = 1024;
      v107 = v16;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEBUG, "ver,%d,x,%d,y,%d,generated,%.01lf,age,%.01f,ageThresh,%d", buf, 0x2Eu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191B7A8(buf);
      v62 = [(TRANSITPbRegionPreloadManifest *)v12 version];
      v63 = CFAbsoluteTimeGetCurrent();
      *v96 = 67110400;
      *&v96[4] = v62;
      *&v96[8] = 1024;
      *&v96[10] = 1800000;
      v97 = 0x800000DBBA00400;
      v98 = v30;
      v99 = 2048;
      *&v100 = v63 - v30;
      LOWORD(v101) = 1024;
      *(&v101 + 2) = v16;
      v64 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v64);
      if (v64 != buf)
      {
        free(v64);
      }
    }

    sub_1001D22AC((a1 + 296));
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v34 = [(TRANSITPbRegionPreloadManifest *)v12 markets];
    v35 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v77 objects:v102 count:16];
    if (v35)
    {
      v70 = *v78;
      do
      {
        v36 = 0;
        do
        {
          if (*v78 != v70)
          {
            objc_enumerationMutation(v34);
          }

          v37 = *(*(&v77 + 1) + 8 * v36);
          if ([v37 hasNorthWestLatitude] && objc_msgSend(v37, "hasNorthWestLongitude") && objc_msgSend(v37, "hasSouthEastLatitude") && objc_msgSend(v37, "hasSouthEastLongitude"))
          {
            v76 = 0uLL;
            [v37 northWestLatitude];
            *&v76 = v38;
            [v37 northWestLongitude];
            *(&v76 + 1) = v39;
            v75 = 0uLL;
            [v37 southEastLatitude];
            v75.n128_u64[0] = v40;
            [v37 southEastLongitude];
            v75.n128_u64[1] = v41;
            sub_100E93080(v96, &v76, &v75);
            if (qword_1025D48A0 != -1)
            {
              sub_10191B780();
            }

            v42 = qword_1025D48A8;
            if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
            {
              *buf = 134546433;
              *&buf[4] = v76;
              *&buf[12] = 2053;
              v104 = *(&v76 + 1);
              *v105 = 2053;
              *&v105[2] = v75.n128_u64[0];
              *v106 = 2053;
              *&v106[2] = v75.n128_u64[1];
              _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "Reading new market, {%{sensitive}.06lf,%{sensitive}.06lf}, {%{sensitive}.06lf,%{sensitive}.06lf}", buf, 0x2Au);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10191B7A8(buf);
              v86 = 134546433;
              v87 = v76;
              v88 = 2053;
              v89 = *(&v76 + 1);
              v90 = 2053;
              __p = v75.n128_u64[0];
              v92 = 2053;
              v93 = v75.n128_u64[1];
              v55 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v55);
              if (v55 != buf)
              {
                free(v55);
              }
            }

            v73 = 0u;
            v74 = 0u;
            v71 = 0u;
            v72 = 0u;
            v43 = [v37 tiles];
            v44 = [v43 countByEnumeratingWithState:&v71 objects:v95 count:16];
            if (v44)
            {
              v45 = 0;
              v46 = *v72;
              do
              {
                v47 = 0;
                do
                {
                  if (*v72 != v46)
                  {
                    objc_enumerationMutation(v43);
                  }

                  v48 = *(*(&v71 + 1) + 8 * v47);
                  if ([v48 hasTileType] && !objc_msgSend(v48, "tileType") && objc_msgSend(v48, "hasTileX") && objc_msgSend(v48, "hasTileY"))
                  {
                    *buf = 0;
                    sub_1000850D0(&v86, buf);
                    LODWORD(v87) = [v48 tileX];
                    HIDWORD(v87) = [v48 tileY];
                    v49 = sub_100085338(&v86);
                    v50 = sub_100085314(&v86);
                    if ([v48 hasIsAllowOverCellular])
                    {
                      v51 = [v48 isAllowOverCellular];
                    }

                    else
                    {
                      v51 = 0;
                    }

                    if (qword_1025D48A0 != -1)
                    {
                      sub_10191B780();
                    }

                    v52 = qword_1025D48A8;
                    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
                    {
                      *buf = 134545921;
                      *&buf[4] = v49;
                      *&buf[12] = 2053;
                      v104 = *&v50;
                      _os_log_impl(dword_100000000, v52, OS_LOG_TYPE_DEBUG, "Adding new tile to market, [%{sensitive}.06lf,%{sensitive}.06lf]", buf, 0x16u);
                    }

                    if (sub_10000A100(121, 2))
                    {
                      sub_10191B7A8(buf);
                      v82 = 134545921;
                      v83 = v49;
                      v84 = 2053;
                      v85 = v50;
                      v53 = _os_log_send_and_compose_impl();
                      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v53);
                      if (v53 != buf)
                      {
                        free(v53);
                      }
                    }

                    sub_100E9306C(buf, v51, v49, v50);
                    sub_100E9309C(v96, buf);
                    if (v94 < 0)
                    {
                      operator delete(__p);
                    }

                    v45 = 1;
                  }

                  v47 = v47 + 1;
                }

                while (v44 != v47);
                v54 = [v43 countByEnumeratingWithState:&v71 objects:v95 count:16];
                v44 = v54;
              }

              while (v54);
              if (v45)
              {
                sub_100714654((a1 + 296), v96);
              }
            }

            if (*&v100 != 0.0)
            {
              v101 = v100;
              operator delete(v100);
            }
          }

          v36 = v36 + 1;
        }

        while (v36 != v35);
        v56 = [(NSMutableArray *)v34 countByEnumeratingWithState:&v77 objects:v102 count:16];
        v35 = v56;
      }

      while (v56);
    }

    if (qword_1025D48A0 != -1)
    {
      sub_10191B780();
    }

    v57 = qword_1025D48A8;
    if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_DEBUG))
    {
      (*(*a1 + 16))(buf, a1);
      v58 = v105[1] >= 0 ? buf : *buf;
      v59 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 304) - *(a1 + 296)) >> 3);
      *v96 = 136315394;
      *&v96[4] = v58;
      *&v96[12] = 2048;
      v97 = v59;
      _os_log_impl(dword_100000000, v57, OS_LOG_TYPE_DEBUG, "loaded transit tile %s with %lu regions", v96, 0x16u);
      if ((v105[1] & 0x80000000) != 0)
      {
        operator delete(*buf);
      }
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191B7A8(buf);
      (*(*a1 + 16))(v96);
      if ((SBYTE1(v98) & 0x80u) == 0)
      {
        v65 = v96;
      }

      else
      {
        v65 = *v96;
      }

      v66 = 0x6DB6DB6DB6DB6DB7 * ((*(a1 + 304) - *(a1 + 296)) >> 3);
      v86 = 136315394;
      v87 = v65;
      v88 = 2048;
      v89 = v66;
      v67 = _os_log_send_and_compose_impl();
      if (SBYTE1(v98) < 0)
      {
        operator delete(*v96);
      }

      sub_100152C7C("Generic", 1, 0, 2, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v67);
      if (v67 != buf)
      {
        free(v67);
      }
    }

    v5 = 1;
    goto LABEL_68;
  }

  if (qword_1025D48A0 != -1)
  {
    sub_10191B780();
  }

  v28 = qword_1025D48A8;
  if (os_log_type_enabled(qword_1025D48A8, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_FAULT, "failed to get fields in manifest", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
LABEL_141:
    sub_10191B7A8(buf);
    *v96 = 0;
    v27 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "virtual BOOL CLRegionPreloadManifestTile::traverseTileFile(FILE *, const TraverseDetails &)", "%s\n", v27);
    if (v27 == buf)
    {
      goto LABEL_67;
    }

LABEL_142:
    free(v27);
  }

LABEL_67:
  v5 = 0;
LABEL_68:
  objc_autoreleasePoolPop(context);
LABEL_69:
  if (SHIBYTE(v81.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v81.__r_.__value_.__l.__data_);
  }

  return v5;
}

void sub_100714570(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, void *__p, uint64_t a41, int a42, __int16 a43, char a44, char a45)
{
  if (a45 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_100714654(uint64_t *a1, uint64_t a2)
{
  v3 = a1[1];
  if (v3 >= a1[2])
  {
    v4 = sub_100714994(a1, a2);
  }

  else
  {
    sub_10071492C(a1, a2);
    v4 = v3 + 56;
  }

  a1[1] = v4;
  return v4 - 56;
}

uint64_t sub_100714698@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10003848C(v14);
  v4 = sub_100038730(&v15, "CLRegionPreloadManifestTile(", 28);
  v5 = sub_100038730(v4, "super=", 6);
  sub_1005EF450(a1, __p);
  if ((v13 & 0x80u) == 0)
  {
    v6 = __p;
  }

  else
  {
    v6 = __p[0];
  }

  if ((v13 & 0x80u) == 0)
  {
    v7 = v13;
  }

  else
  {
    v7 = __p[1];
  }

  v8 = sub_100038730(v5, v6, v7);
  sub_100038730(v8, ", numMarkets=", 13);
  v9 = std::ostream::operator<<();
  sub_100038730(v9, ")", 1);
  if (v13 < 0)
  {
    operator delete(__p[0]);
  }

  sub_100073518(v14, a2);
  v15 = v10;
  if (v18 < 0)
  {
    operator delete(v17[7].__locale_);
  }

  std::locale::~locale(v17);
  std::iostream::~basic_iostream();
  return std::ios::~ios();
}

void sub_1007148C8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10, int a11, __int16 a12, char a13, char a14, char a15)
{
  std::ios::~ios();
  _Unwind_Resume(a1);
}

uint64_t sub_10071492C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v4;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  result = sub_100714B00(v3 + 32, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  *(a1 + 8) = v3 + 56;
  return result;
}

uint64_t sub_100714994(uint64_t *a1, uint64_t a2)
{
  v2 = 0x6DB6DB6DB6DB6DB7 * ((a1[1] - *a1) >> 3);
  v3 = v2 + 1;
  if ((v2 + 1) > 0x492492492492492)
  {
    sub_10028C64C();
  }

  if (0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3) > v3)
  {
    v3 = 0xDB6DB6DB6DB6DB6ELL * ((a1[2] - *a1) >> 3);
  }

  if ((0x6DB6DB6DB6DB6DB7 * ((a1[2] - *a1) >> 3)) >= 0x249249249249249)
  {
    v6 = 0x492492492492492;
  }

  else
  {
    v6 = v3;
  }

  v18 = a1;
  if (v6)
  {
    sub_100714B7C(a1, v6);
  }

  v7 = 56 * v2;
  v15 = 0;
  v16 = v7;
  v17 = (56 * v2);
  v8 = *(a2 + 16);
  *v7 = *a2;
  *(v7 + 16) = v8;
  *(v7 + 40) = 0;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0;
  sub_100714B00(56 * v2 + 32, *(a2 + 32), *(a2 + 40), 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 40) - *(a2 + 32)) >> 3));
  *&v17 = v17 + 56;
  v9 = a1[1];
  v10 = v16 + *a1 - v9;
  sub_100714BD8(a1, *a1, v9, v10);
  v11 = *a1;
  *a1 = v10;
  v12 = a1[2];
  v14 = v17;
  *(a1 + 1) = v17;
  *&v17 = v11;
  *(&v17 + 1) = v12;
  v15 = v11;
  v16 = v11;
  sub_100714D1C(&v15);
  return v14;
}

void sub_100714AEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);
  sub_100714D1C(va);
  _Unwind_Resume(a1);
}

uint64_t sub_100714B00(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4)
  {
    sub_100485E1C(result, a4);
  }

  return result;
}

void sub_100714B60(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_100714B7C(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  sub_1001D0818();
}

uint64_t sub_100714BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a4;
  v12 = a4;
  v10[0] = a1;
  v10[1] = &v12;
  v10[2] = &v13;
  if (a2 == a3)
  {
    v11 = 1;
  }

  else
  {
    v5 = a2;
    v6 = a2;
    do
    {
      v7 = *(v6 + 16);
      *a4 = *v6;
      *(a4 + 16) = v7;
      *(a4 + 40) = 0;
      *(a4 + 48) = 0;
      *(a4 + 32) = 0;
      *(a4 + 32) = *(v6 + 32);
      *(a4 + 48) = *(v6 + 48);
      *(v6 + 32) = 0;
      *(v6 + 40) = 0;
      *(v6 + 48) = 0;
      v6 += 56;
      a4 += 56;
    }

    while (v6 != a3);
    v13 = a4;
    v11 = 1;
    while (v5 != a3)
    {
      v8 = *(v5 + 32);
      if (v8)
      {
        *(v5 + 40) = v8;
        operator delete(v8);
      }

      v5 += 56;
    }
  }

  return sub_100714C9C(v10);
}

uint64_t sub_100714C9C(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_100714CD4(a1);
  }

  return a1;
}

void sub_100714CD4(uint64_t a1)
{
  v1 = **(a1 + 16);
  v2 = **(a1 + 8);
  while (v1 != v2)
  {
    v3 = *(v1 - 24);
    if (v3)
    {
      *(v1 - 16) = v3;
      operator delete(v3);
    }

    v1 -= 56;
  }
}

uint64_t sub_100714D1C(uint64_t a1)
{
  sub_100714D54(a1, *(a1 + 8));
  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_100714D54(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  while (v2 != a2)
  {
    *(a1 + 16) = v2 - 56;
    v5 = *(v2 - 24);
    if (v5)
    {
      *(v2 - 16) = v5;
      operator delete(v5);
      v2 = *(a1 + 16);
    }

    else
    {
      v2 -= 56;
    }
  }
}

BOOL sub_100714E94()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

BOOL sub_100714F08()
{
  v0 = MGCopyAnswer();
  Value = CFBooleanGetValue(v0);
  if (v0)
  {
    CFRelease(v0);
  }

  return Value != 0;
}

uint64_t sub_100714F54()
{
  if (MGIsDeviceOfType())
  {
    return 2;
  }

  v6 = 1244490093;
  *buf = xmmword_101C8A4E0;
  if (MGIsDeviceOfType())
  {
    return 5;
  }

  v9 = 1377801277;
  *v8 = xmmword_101C8A4F4;
  if (MGIsDeviceOfType())
  {
    return 5;
  }

  if (MGIsDeviceOfType())
  {
    return 19;
  }

  if (MGIsDeviceOfType())
  {
    return 20;
  }

  v6 = 1839812531;
  *buf = xmmword_101C8A508;
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 20;
  }

  if (MGIsDeviceOfType())
  {
    return 52;
  }

  v6 = -435113336;
  *buf = xmmword_101C8A51C;
  if (MGIsDeviceOfType())
  {
    return 53;
  }

  v6 = -1997581659;
  *buf = xmmword_101C8A530;
  if (MGIsDeviceOfType() & 1) != 0 || (MGIsDeviceOfType())
  {
    return 158;
  }

  v6 = -1441055153;
  *buf = xmmword_101C8A544;
  if (MGIsDeviceOfType())
  {
    return 159;
  }

  if (MGIsDeviceOfType())
  {
    return 160;
  }

  if (MGIsDeviceOfType())
  {
    return 3;
  }

  if (MGIsDeviceOfType())
  {
    return 6;
  }

  v6 = 1602014129;
  *buf = xmmword_101C8A558;
  if (MGIsDeviceOfType())
  {
    return 7;
  }

  v6 = -810116762;
  *buf = xmmword_101C8A56C;
  if (MGIsDeviceOfType())
  {
    return 8;
  }

  v6 = -1195351767;
  *buf = xmmword_101C8A580;
  if (MGIsDeviceOfType())
  {
    return 9;
  }

  if (MGIsDeviceOfType())
  {
    return 10;
  }

  if (MGIsDeviceOfType())
  {
    return 11;
  }

  v6 = 1789837692;
  *buf = xmmword_101C8A594;
  if (MGIsDeviceOfType())
  {
    return 13;
  }

  v6 = 48355600;
  *buf = xmmword_101C8A5A8;
  if (MGIsDeviceOfType())
  {
    return 14;
  }

  v6 = -1239654590;
  *buf = xmmword_101C8A5BC;
  if (MGIsDeviceOfType())
  {
    return 15;
  }

  v6 = -679691073;
  *buf = xmmword_101C8A5D0;
  if (MGIsDeviceOfType())
  {
    return 16;
  }

  v6 = -1579092758;
  *buf = xmmword_101C8A5E4;
  if (MGIsDeviceOfType())
  {
    return 17;
  }

  v6 = 1430379884;
  *buf = xmmword_101C8A5F8;
  if (MGIsDeviceOfType())
  {
    return 18;
  }

  if (MGIsDeviceOfType())
  {
    return 21;
  }

  v6 = -798153473;
  *buf = xmmword_101C8A60C;
  if (MGIsDeviceOfType())
  {
    return 22;
  }

  v6 = -776721724;
  *buf = xmmword_101C8A620;
  if (MGIsDeviceOfType())
  {
    return 23;
  }

  v6 = -1403227947;
  *buf = xmmword_101C8A634;
  if (MGIsDeviceOfType())
  {
    return 24;
  }

  v6 = 729118884;
  *buf = xmmword_101C8A648;
  if (MGIsDeviceOfType())
  {
    return 25;
  }

  v6 = 1046806126;
  *buf = xmmword_101C8A65C;
  if (MGIsDeviceOfType())
  {
    return 26;
  }

  v9 = -188760945;
  *v8 = xmmword_101C8A670;
  if (MGIsDeviceOfType())
  {
    return 26;
  }

  v6 = -489993439;
  *buf = xmmword_101C8A684;
  if (MGIsDeviceOfType())
  {
    return 27;
  }

  v6 = 886875686;
  *buf = xmmword_101C8A698;
  if (MGIsDeviceOfType())
  {
    return 28;
  }

  v6 = -1639077591;
  *buf = xmmword_101C8A6AC;
  if (MGIsDeviceOfType())
  {
    return 29;
  }

  v6 = 338555555;
  *buf = xmmword_101C8A6C0;
  if (MGIsDeviceOneOfType())
  {
    return 30;
  }

  v6 = 1032708406;
  *buf = xmmword_101C8A6D4;
  if (MGIsDeviceOfType())
  {
    return 31;
  }

  v6 = 729903963;
  *buf = xmmword_101C8A6E8;
  if (MGIsDeviceOfType())
  {
    return 32;
  }

  v6 = 1278131292;
  *buf = xmmword_101C8A6FC;
  if (MGIsDeviceOfType())
  {
    return 33;
  }

  v6 = -1841712216;
  *buf = xmmword_101C8A710;
  if (MGIsDeviceOfType())
  {
    return 34;
  }

  v6 = 1275676051;
  *buf = xmmword_101C8A724;
  if (MGIsDeviceOfType())
  {
    return 35;
  }

  v6 = 1908474541;
  *buf = xmmword_101C8A738;
  if (MGIsDeviceOfType())
  {
    return 36;
  }

  v6 = -1022451852;
  *buf = xmmword_101C8A74C;
  if (MGIsDeviceOfType())
  {
    return 62;
  }

  v6 = 1729782187;
  *buf = xmmword_101C8A760;
  if (MGIsDeviceOfType())
  {
    return 63;
  }

  if (MGIsDeviceOfType())
  {
    return 37;
  }

  v6 = 368885834;
  *buf = xmmword_101C8A774;
  if (MGIsDeviceOfType())
  {
    return 38;
  }

  v6 = -414334491;
  *buf = xmmword_101C8A788;
  if (MGIsDeviceOfType())
  {
    return 39;
  }

  if (MGIsDeviceOfType())
  {
    return 40;
  }

  v6 = -526227167;
  *buf = xmmword_101C8A79C;
  if (MGIsDeviceOfType())
  {
    return 41;
  }

  v6 = -1509831889;
  *buf = xmmword_101C8A7B0;
  if (MGIsDeviceOfType())
  {
    return 42;
  }

  v6 = 1960366092;
  *buf = xmmword_101C8A7C4;
  if (MGIsDeviceOfType())
  {
    return 43;
  }

  v6 = -2114570942;
  *buf = xmmword_101C8A7D8;
  if (MGIsDeviceOfType())
  {
    return 148;
  }

  v6 = -1527788847;
  *buf = xmmword_101C8A7EC;
  if (MGIsDeviceOfType())
  {
    return 44;
  }

  v6 = 1532898719;
  *buf = xmmword_101C8A800;
  if (MGIsDeviceOfType())
  {
    return 45;
  }

  v6 = 996646949;
  *buf = xmmword_101C8A814;
  if (MGIsDeviceOfType())
  {
    return 46;
  }

  v6 = -563086000;
  *buf = xmmword_101C8A828;
  if (MGIsDeviceOfType())
  {
    return 47;
  }

  v6 = 659506830;
  *buf = xmmword_101C8A83C;
  if (MGIsDeviceOfType())
  {
    return 48;
  }

  v6 = 213746202;
  *buf = xmmword_101C8A850;
  if (MGIsDeviceOfType())
  {
    return 49;
  }

  v6 = 289690957;
  *buf = xmmword_101C8A864;
  if (MGIsDeviceOfType())
  {
    return 50;
  }

  v6 = 586720268;
  *buf = xmmword_101C8A878;
  if (MGIsDeviceOfType())
  {
    return 51;
  }

  v6 = -350584140;
  *buf = xmmword_101C8A88C;
  if (MGIsDeviceOfType())
  {
    return 54;
  }

  v6 = 368778837;
  *buf = xmmword_101C8A8A0;
  if (MGIsDeviceOfType())
  {
    return 55;
  }

  if (MGIsDeviceOfType())
  {
    return 56;
  }

  v6 = -1418383976;
  *buf = xmmword_101C8A8B4;
  if (MGIsDeviceOfType())
  {
    return 57;
  }

  v6 = -1213485500;
  *buf = xmmword_101C8A8C8;
  if (MGIsDeviceOfType())
  {
    return 58;
  }

  if (MGIsDeviceOfType())
  {
    return 59;
  }

  v6 = 1425254930;
  *buf = xmmword_101C8A8DC;
  if (MGIsDeviceOfType())
  {
    return 60;
  }

  v6 = 1899561076;
  *buf = xmmword_101C8A8F0;
  if (MGIsDeviceOfType())
  {
    return 61;
  }

  v6 = -199226823;
  *buf = xmmword_101C8A904;
  if (MGIsDeviceOfType())
  {
    return 64;
  }

  v9 = 1412427398;
  *v8 = xmmword_101C8A918;
  if (MGIsDeviceOfType())
  {
    return 64;
  }

  v6 = -1283070668;
  *buf = xmmword_101C8A92C;
  if (MGIsDeviceOfType())
  {
    return 65;
  }

  v9 = 160260070;
  *v8 = xmmword_101C8A940;
  if (MGIsDeviceOfType())
  {
    return 65;
  }

  v6 = 1711910369;
  *buf = xmmword_101C8A954;
  if (MGIsDeviceOfType())
  {
    return 66;
  }

  v6 = -1282800328;
  *buf = xmmword_101C8A968;
  if (MGIsDeviceOfType())
  {
    return 67;
  }

  v6 = 897736383;
  *buf = xmmword_101C8A97C;
  if (MGIsDeviceOfType())
  {
    return 68;
  }

  v6 = -453987047;
  *buf = xmmword_101C8A990;
  if (MGIsDeviceOfType())
  {
    return 69;
  }

  v6 = 450980336;
  *buf = xmmword_101C8A9A4;
  if (MGIsDeviceOfType())
  {
    return 70;
  }

  v6 = 414393924;
  *buf = xmmword_101C8A9B8;
  if (MGIsDeviceOfType())
  {
    return 71;
  }

  v6 = -996295886;
  *buf = xmmword_101C8A9CC;
  if (MGIsDeviceOfType())
  {
    return 72;
  }

  v6 = -337121064;
  *buf = xmmword_101C8A9E0;
  if (MGIsDeviceOfType())
  {
    return 73;
  }

  v6 = -2092955395;
  *buf = xmmword_101C8A9F4;
  if (MGIsDeviceOfType())
  {
    return 74;
  }

  v6 = 674998600;
  *buf = xmmword_101C8AA08;
  if (MGIsDeviceOfType())
  {
    return 75;
  }

  v6 = 317289457;
  *buf = xmmword_101C8AA1C;
  if (MGIsDeviceOfType())
  {
    return 76;
  }

  v6 = 401945557;
  *buf = xmmword_101C8AA30;
  if (MGIsDeviceOfType())
  {
    return 77;
  }

  v6 = -232427879;
  *buf = xmmword_101C8AA44;
  if (MGIsDeviceOfType())
  {
    return 78;
  }

  v6 = -427474227;
  *buf = xmmword_101C8AA58;
  if (MGIsDeviceOfType())
  {
    return 79;
  }

  v9 = 1477534141;
  *v8 = xmmword_101C8AA6C;
  if (MGIsDeviceOfType())
  {
    return 79;
  }

  v6 = -1843102369;
  *buf = xmmword_101C8AA80;
  if (MGIsDeviceOfType())
  {
    return 80;
  }

  if (MGIsDeviceOfType())
  {
    return 81;
  }

  v6 = 470738981;
  *buf = xmmword_101C8AA94;
  if (MGIsDeviceOfType())
  {
    return 82;
  }

  if (MGIsDeviceOfType())
  {
    return 83;
  }

  v6 = 710807826;
  *buf = xmmword_101C8AAA8;
  if (MGIsDeviceOfType())
  {
    return 84;
  }

  if (MGIsDeviceOfType())
  {
    return 85;
  }

  v6 = 1860682089;
  *buf = xmmword_101C8AABC;
  if (MGIsDeviceOfType())
  {
    return 86;
  }

  if (MGIsDeviceOfType())
  {
    return 87;
  }

  v6 = -2085056298;
  *buf = xmmword_101C8AAD0;
  if (MGIsDeviceOfType())
  {
    return 88;
  }

  v6 = 2146530832;
  *buf = xmmword_101C8AAE4;
  if (MGIsDeviceOfType())
  {
    return 89;
  }

  v6 = -1742178852;
  *buf = xmmword_101C8AAF8;
  if (MGIsDeviceOfType())
  {
    return 90;
  }

  v6 = 617174804;
  *buf = xmmword_101C8AB0C;
  if (MGIsDeviceOfType())
  {
    return 91;
  }

  v6 = 1330813729;
  *buf = xmmword_101C8AB20;
  if (MGIsDeviceOfType())
  {
    return 92;
  }

  if (MGIsDeviceOfType())
  {
    return 93;
  }

  if (MGIsDeviceOfType())
  {
    return 94;
  }

  v6 = 152704997;
  *buf = xmmword_101C8AB34;
  if (MGIsDeviceOfType())
  {
    return 95;
  }

  v6 = -338255497;
  *buf = xmmword_101C8AB48;
  if (MGIsDeviceOfType())
  {
    return 96;
  }

  v6 = -1040127899;
  *buf = xmmword_101C8AB5C;
  if (MGIsDeviceOfType())
  {
    return 97;
  }

  v6 = 283967174;
  *buf = xmmword_101C8AB70;
  if (MGIsDeviceOfType())
  {
    return 98;
  }

  v6 = 1530707451;
  *buf = xmmword_101C8AB84;
  if (MGIsDeviceOfType())
  {
    return 99;
  }

  v6 = -871113647;
  *buf = xmmword_101C8AB98;
  if (MGIsDeviceOfType())
  {
    return 100;
  }

  v6 = 483476120;
  *buf = xmmword_101C8ABAC;
  if (MGIsDeviceOfType())
  {
    return 101;
  }

  v6 = 1472775220;
  *buf = xmmword_101C8ABC0;
  if (MGIsDeviceOfType())
  {
    return 102;
  }

  v6 = 56502976;
  *buf = xmmword_101C8ABD4;
  if (MGIsDeviceOfType())
  {
    return 103;
  }

  v6 = 282158961;
  *buf = xmmword_101C8ABE8;
  if (MGIsDeviceOfType())
  {
    return 104;
  }

  v6 = 1282132887;
  *buf = xmmword_101C8ABFC;
  if (MGIsDeviceOfType())
  {
    return 105;
  }

  v6 = -961843768;
  *buf = xmmword_101C8AC10;
  if (MGIsDeviceOfType())
  {
    return 106;
  }

  v6 = 1326690998;
  *buf = xmmword_101C8AC24;
  if (MGIsDeviceOfType())
  {
    return 107;
  }

  v6 = -441172408;
  *buf = xmmword_101C8AC38;
  if (MGIsDeviceOfType())
  {
    return 108;
  }

  v6 = -126099363;
  *buf = xmmword_101C8AC4C;
  if (MGIsDeviceOfType())
  {
    return 109;
  }

  v6 = 1756484512;
  *buf = xmmword_101C8AC60;
  if (MGIsDeviceOfType())
  {
    return 110;
  }

  v6 = 763775061;
  *buf = xmmword_101C8AC74;
  if (MGIsDeviceOfType())
  {
    return 111;
  }

  v6 = -1092155788;
  *buf = xmmword_101C8AC88;
  if (MGIsDeviceOfType())
  {
    return 112;
  }

  v6 = -557458837;
  *buf = xmmword_101C8AC9C;
  if (MGIsDeviceOfType())
  {
    return 113;
  }

  v6 = -63049871;
  *buf = xmmword_101C8ACB0;
  if (MGIsDeviceOfType())
  {
    return 114;
  }

  v6 = 1730000236;
  *buf = xmmword_101C8ACC4;
  if (MGIsDeviceOfType())
  {
    return 115;
  }

  v6 = 406601745;
  *buf = xmmword_101C8ACD8;
  if (MGIsDeviceOfType())
  {
    return 116;
  }

  v6 = 1530338216;
  *buf = xmmword_101C8ACEC;
  if (MGIsDeviceOfType())
  {
    return 117;
  }

  v6 = -1930811061;
  *buf = xmmword_101C8AD00;
  if (MGIsDeviceOfType())
  {
    return 118;
  }

  v6 = 1654218604;
  *buf = xmmword_101C8AD14;
  if (MGIsDeviceOfType())
  {
    return 119;
  }

  v6 = -182498503;
  *buf = xmmword_101C8AD28;
  if (MGIsDeviceOfType())
  {
    return 124;
  }

  v6 = -2030489149;
  *buf = xmmword_101C8AD3C;
  if (MGIsDeviceOfType())
  {
    return 120;
  }

  v6 = 841005628;
  *buf = xmmword_101C8AD50;
  if (MGIsDeviceOfType())
  {
    return 121;
  }

  v6 = 223445260;
  *buf = xmmword_101C8AD64;
  if (MGIsDeviceOfType())
  {
    return 122;
  }

  v6 = 1219348060;
  *buf = xmmword_101C8AD78;
  if (MGIsDeviceOfType())
  {
    return 123;
  }

  v6 = -1384522500;
  *buf = xmmword_101C8AD8C;
  if (MGIsDeviceOfType())
  {
    return 125;
  }

  v6 = -782763850;
  *buf = xmmword_101C8ADA0;
  if (MGIsDeviceOfType())
  {
    return 126;
  }

  v6 = 1815762806;
  *buf = xmmword_101C8ADB4;
  if (MGIsDeviceOfType())
  {
    return 127;
  }

  v6 = -1897771119;
  *buf = xmmword_101C8ADC8;
  if (MGIsDeviceOfType())
  {
    return 128;
  }

  v6 = -652049476;
  *buf = xmmword_101C8ADDC;
  if (MGIsDeviceOfType())
  {
    return 129;
  }

  v6 = 373548423;
  *buf = xmmword_101C8ADF0;
  if (MGIsDeviceOfType())
  {
    return 130;
  }

  v6 = -1921398171;
  *buf = xmmword_101C8AE04;
  if (MGIsDeviceOfType())
  {
    return 131;
  }

  v6 = 2140507472;
  *buf = xmmword_101C8AE18;
  if (MGIsDeviceOfType())
  {
    return 132;
  }

  v6 = -936391310;
  *buf = xmmword_101C8AE2C;
  if (MGIsDeviceOfType())
  {
    return 133;
  }

  v6 = 2030516999;
  *buf = xmmword_101C8AE40;
  *v8 = xmmword_101C8AE54;
  v9 = -1276010597;
  if (MGIsDeviceOneOfType())
  {
    return 134;
  }

  v6 = -762483149;
  *buf = xmmword_101C8AE68;
  *v8 = xmmword_101C8AE7C;
  v9 = -1926937532;
  if (MGIsDeviceOneOfType())
  {
    return 135;
  }

  v6 = -1902732724;
  *buf = xmmword_101C8AE90;
  *v8 = xmmword_101C8AEA4;
  v9 = -342357580;
  if (MGIsDeviceOneOfType())
  {
    return 136;
  }

  v6 = 300442574;
  *buf = xmmword_101C8AEB8;
  *v8 = xmmword_101C8AECC;
  v9 = -1294188889;
  if (MGIsDeviceOneOfType())
  {
    return 137;
  }

  if (MGIsDeviceOfType())
  {
    return 138;
  }

  v6 = -61007701;
  *buf = xmmword_101C8AEE0;
  if (MGIsDeviceOfType())
  {
    return 139;
  }

  if (MGIsDeviceOfType())
  {
    return 140;
  }

  v6 = -235416490;
  *buf = xmmword_101C8AEF4;
  if (MGIsDeviceOfType())
  {
    return 141;
  }

  v6 = -820493242;
  *buf = xmmword_101C8AF08;
  if (MGIsDeviceOfType())
  {
    return 143;
  }

  v6 = -1157300313;
  *buf = xmmword_101C8AF1C;
  if (MGIsDeviceOfType())
  {
    return 144;
  }

  v6 = -2132668294;
  *buf = xmmword_101C8AF30;
  if (MGIsDeviceOfType())
  {
    return 145;
  }

  if (MGIsDeviceOfType())
  {
    return 146;
  }

  if (MGIsDeviceOfType())
  {
    return 147;
  }

  if (MGIsDeviceOfType())
  {
    return 149;
  }

  if (MGIsDeviceOfType())
  {
    return 150;
  }

  v6 = 1737149739;
  *buf = xmmword_101C8AF44;
  if (MGIsDeviceOfType())
  {
    return 151;
  }

  v6 = 1577888303;
  *buf = xmmword_101C8AF58;
  if (MGIsDeviceOfType())
  {
    return 152;
  }

  v6 = -1918230744;
  *buf = xmmword_101C8AF6C;
  if (MGIsDeviceOfType())
  {
    return 153;
  }

  v6 = 1126727276;
  *buf = xmmword_101C8AF80;
  if (MGIsDeviceOfType())
  {
    return 154;
  }

  v6 = 300130091;
  *buf = xmmword_101C8AF94;
  if (MGIsDeviceOfType())
  {
    return 155;
  }

  v6 = 343814884;
  *buf = xmmword_101C8AFA8;
  if (MGIsDeviceOfType())
  {
    return 156;
  }

  v6 = -1675932945;
  *buf = xmmword_101C8AFBC;
  if (MGIsDeviceOfType())
  {
    return 157;
  }

  if (MGIsDeviceOfType())
  {
    return 161;
  }

  if (MGIsDeviceOfType())
  {
    return 162;
  }

  if (MGIsDeviceOfType())
  {
    return 166;
  }

  v6 = -1840391155;
  *buf = xmmword_101C8AFD0;
  if (MGIsDeviceOfType())
  {
    return 167;
  }

  v6 = -121925081;
  *buf = xmmword_101C8AFE4;
  if (MGIsDeviceOfType())
  {
    return 142;
  }

  v6 = 1071957977;
  *buf = xmmword_101C8AFF8;
  if (MGIsDeviceOfType())
  {
    return 168;
  }

  v6 = 438437663;
  *buf = xmmword_101C8B00C;
  if (MGIsDeviceOfType())
  {
    return 169;
  }

  v6 = 1575123478;
  *buf = xmmword_101C8B020;
  if (MGIsDeviceOfType())
  {
    return 170;
  }

  v6 = -382792827;
  *buf = xmmword_101C8B034;
  if (MGIsDeviceOfType())
  {
    return 171;
  }

  v6 = 123138233;
  *buf = xmmword_101C8B048;
  if (MGIsDeviceOfType())
  {
    return 172;
  }

  v6 = 681511593;
  *buf = xmmword_101C8B05C;
  if (MGIsDeviceOfType())
  {
    return 173;
  }

  v6 = 169342588;
  *buf = xmmword_101C8B070;
  if (MGIsDeviceOfType())
  {
    return 174;
  }

  if (MGIsDeviceOfType())
  {
    return 175;
  }

  v6 = 713503427;
  *buf = xmmword_101C8B084;
  if (MGIsDeviceOfType())
  {
    return 176;
  }

  v6 = -1632750650;
  *buf = xmmword_101C8B098;
  if (MGIsDeviceOfType())
  {
    return 177;
  }

  v6 = -1820426635;
  *buf = xmmword_101C8B0AC;
  if (MGIsDeviceOfType())
  {
    return 178;
  }

  v6 = -937652876;
  *buf = xmmword_101C8B0C0;
  if (MGIsDeviceOfType())
  {
    return 179;
  }

  v6 = 1874287171;
  *buf = xmmword_101C8B0D4;
  if (MGIsDeviceOfType())
  {
    return 180;
  }

  v6 = -781324731;
  *buf = xmmword_101C8B0E8;
  if (MGIsDeviceOfType())
  {
    return 181;
  }

  v6 = 1214880059;
  *buf = xmmword_101C8B0FC;
  if (MGIsDeviceOfType())
  {
    return 182;
  }

  v6 = 426359977;
  *buf = xmmword_101C8B110;
  if (MGIsDeviceOfType())
  {
    return 183;
  }

  v6 = -1354433901;
  *buf = xmmword_101C8B124;
  if (MGIsDeviceOfType())
  {
    return 184;
  }

  v6 = 1021543808;
  *buf = xmmword_101C8B138;
  if (MGIsDeviceOfType())
  {
    return 185;
  }

  if (MGIsDeviceOfType())
  {
    return 186;
  }

  if (MGIsDeviceOfType())
  {
    return 187;
  }

  v6 = 1459208360;
  *buf = xmmword_101C8B14C;
  if (MGIsDeviceOfType())
  {
    return 188;
  }

  if (MGIsDeviceOfType())
  {
    return 189;
  }

  v6 = 431774303;
  *buf = xmmword_101C8B160;
  if (MGIsDeviceOfType())
  {
    return 180;
  }

  if (MGIsDeviceOfType())
  {
    return 190;
  }

  if (MGIsDeviceOfType())
  {
    return 191;
  }

  if (MGIsDeviceOfType())
  {
    return 163;
  }

  if (MGIsDeviceOfType())
  {
    return 192;
  }

  if (MGIsDeviceOfType())
  {
    return 164;
  }

  if (MGIsDeviceOfType())
  {
    return 165;
  }

  v6 = 345196535;
  *buf = xmmword_101C8B174;
  if (MGIsDeviceOfType())
  {
    return 193;
  }

  v6 = 440949464;
  *buf = xmmword_101C8B188;
  if (MGIsDeviceOfType())
  {
    return 194;
  }

  v6 = 688565114;
  *buf = xmmword_101C8B19C;
  if (MGIsDeviceOfType())
  {
    return 195;
  }

  v6 = -493418906;
  *buf = xmmword_101C8B1B0;
  if (MGIsDeviceOfType())
  {
    return 196;
  }

  if (MGIsDeviceOfType())
  {
    return 197;
  }

  v6 = -584398440;
  *buf = xmmword_101C8B1C4;
  if (MGIsDeviceOfType())
  {
    return 202;
  }

  if (MGIsDeviceOfType())
  {
    return 203;
  }

  v6 = -879476163;
  *buf = xmmword_101C8B1D8;
  if (MGIsDeviceOfType())
  {
    return 204;
  }

  v6 = -695298128;
  *buf = xmmword_101C8B1EC;
  *v8 = xmmword_101C8B200;
  v9 = 804488105;
  if (MGIsDeviceOneOfType())
  {
    return 205;
  }

  v6 = 1614584579;
  *buf = xmmword_101C8B214;
  *v8 = xmmword_101C8B228;
  v9 = 324288768;
  if (MGIsDeviceOneOfType())
  {
    return 206;
  }

  v6 = 460218192;
  *buf = xmmword_101C8B23C;
  *v8 = xmmword_101C8B250;
  v9 = 2144905009;
  if (MGIsDeviceOneOfType())
  {
    return 207;
  }

  v6 = 127894440;
  *buf = xmmword_101C8B264;
  *v8 = xmmword_101C8B278;
  v9 = 1070997468;
  if (MGIsDeviceOneOfType())
  {
    return 208;
  }

  v6 = 372777383;
  *buf = xmmword_101C8B28C;
  if (MGIsDeviceOfType())
  {
    return 209;
  }

  v6 = -858079590;
  *buf = xmmword_101C8B2A0;
  if (MGIsDeviceOfType())
  {
    return 210;
  }

  v6 = -212523443;
  *buf = xmmword_101C8B2B4;
  if (MGIsDeviceOfType())
  {
    return 211;
  }

  v6 = 646100384;
  *buf = xmmword_101C8B2C8;
  if (MGIsDeviceOfType())
  {
    return 212;
  }

  v6 = -340360463;
  *buf = xmmword_101C8B2DC;
  if (MGIsDeviceOfType())
  {
    return 213;
  }

  v6 = 1605231531;
  *buf = xmmword_101C8B2F0;
  if (MGIsDeviceOfType())
  {
    return 214;
  }

  if (MGIsDeviceOfType())
  {
    return 215;
  }

  if (MGIsDeviceOfType())
  {
    return 216;
  }

  v6 = -545612308;
  *buf = xmmword_101C8B304;
  if (MGIsDeviceOfType())
  {
    return 217;
  }

  v6 = 1178062702;
  *buf = xmmword_101C8B318;
  if (MGIsDeviceOfType())
  {
    return 218;
  }

  v6 = 958549802;
  *buf = xmmword_101C8B32C;
  if (MGIsDeviceOfType())
  {
    return 219;
  }

  v6 = 1377540371;
  *buf = xmmword_101C8B340;
  if (MGIsDeviceOfType())
  {
    return 220;
  }

  v6 = -1047119348;
  *buf = xmmword_101C8B354;
  if (MGIsDeviceOfType())
  {
    return 221;
  }

  v6 = -1346985080;
  *buf = xmmword_101C8B368;
  if (MGIsDeviceOfType())
  {
    return 222;
  }

  if (MGIsDeviceOfType())
  {
    return 223;
  }

  if (MGIsDeviceOfType())
  {
    return 224;
  }

  v6 = -1243071412;
  *buf = xmmword_101C8B37C;
  if (MGIsDeviceOfType())
  {
    return 225;
  }

  v6 = 2017356181;
  *buf = xmmword_101C8B390;
  if (MGIsDeviceOfType())
  {
    return 226;
  }

  if (MGIsDeviceOfType())
  {
    return 227;
  }

  if (MGIsDeviceOfType())
  {
    return 228;
  }

  v6 = -1231738393;
  *buf = xmmword_101C8B3A4;
  if (MGIsDeviceOfType())
  {
    return 229;
  }

  v6 = 164967128;
  *buf = xmmword_101C8B3B8;
  if (MGIsDeviceOfType())
  {
    return 230;
  }

  if (MGIsDeviceOfType())
  {
    return 231;
  }

  if (MGIsDeviceOfType())
  {
    return 232;
  }

  v6 = -1431778695;
  *buf = xmmword_101C8B3CC;
  if (MGIsDeviceOfType())
  {
    return 233;
  }

  v6 = 533419158;
  *buf = xmmword_101C8B3E0;
  if (MGIsDeviceOfType())
  {
    return 234;
  }

  v6 = 1106979518;
  *buf = xmmword_101C8B3F4;
  if (MGIsDeviceOfType())
  {
    return 235;
  }

  v6 = -609570151;
  *buf = xmmword_101C8B408;
  if (MGIsDeviceOfType())
  {
    return 236;
  }

  v6 = -874769875;
  *buf = xmmword_101C8B41C;
  if (MGIsDeviceOfType())
  {
    return 237;
  }

  v6 = 1223847566;
  *buf = xmmword_101C8B430;
  if (MGIsDeviceOfType())
  {
    return 238;
  }

  v6 = 185580364;
  *buf = xmmword_101C8B444;
  if (MGIsDeviceOfType())
  {
    return 239;
  }

  v6 = -1379821877;
  *buf = xmmword_101C8B458;
  if (MGIsDeviceOfType())
  {
    return 240;
  }

  if (MGIsDeviceOfType())
  {
    return 241;
  }

  v6 = 1878025452;
  *buf = xmmword_101C8B46C;
  if (MGIsDeviceOfType())
  {
    return 242;
  }

  v6 = 1725957070;
  *buf = xmmword_101C8B480;
  if (MGIsDeviceOfType())
  {
    return 243;
  }

  v6 = 538967431;
  *buf = xmmword_101C8B494;
  if (MGIsDeviceOfType())
  {
    return 244;
  }

  v6 = 2060712151;
  *buf = xmmword_101C8B4A8;
  if (MGIsDeviceOfType())
  {
    return 245;
  }

  v6 = 802516499;
  *buf = xmmword_101C8B4BC;
  if (MGIsDeviceOfType())
  {
    return 246;
  }

  v6 = -1919324456;
  *buf = xmmword_101C8B4D0;
  if (MGIsDeviceOfType())
  {
    return 247;
  }

  v6 = 1127969586;
  *buf = xmmword_101C8B4E4;
  if (MGIsDeviceOfType())
  {
    return 248;
  }

  v6 = 1292009573;
  *buf = xmmword_101C8B4F8;
  if (MGIsDeviceOfType())
  {
    return 249;
  }

  v6 = 1656760039;
  *buf = xmmword_101C8B50C;
  if (MGIsDeviceOfType())
  {
    return 250;
  }

  v6 = -2071977621;
  *buf = xmmword_101C8B520;
  if (MGIsDeviceOfType())
  {
    return 251;
  }

  v6 = -543210860;
  *buf = xmmword_101C8B534;
  if (MGIsDeviceOfType())
  {
    return 252;
  }

  v6 = -1597604211;
  *buf = xmmword_101C8B548;
  if (MGIsDeviceOfType())
  {
    return 253;
  }

  if (MGIsDeviceOfType())
  {
    return 142;
  }

  if (qword_1026590E8 != -1)
  {
    sub_10191B9D0();
  }

  if (sub_100717D04())
  {
    return 1;
  }

  if (MGIsDeviceOfType())
  {
    return 254;
  }

  v6 = -12497897;
  *buf = xmmword_101C8B55C;
  if (MGIsDeviceOfType())
  {
    return 255;
  }

  v6 = -518121279;
  *buf = xmmword_101C8B570;
  if (MGIsDeviceOfType())
  {
    return 256;
  }

  v6 = -773054213;
  *buf = xmmword_101C8B584;
  if (MGIsDeviceOfType())
  {
    return 257;
  }

  v6 = -1204420428;
  *buf = xmmword_101C8B598;
  if (MGIsDeviceOfType())
  {
    return 258;
  }

  if (MGIsDeviceOfType())
  {
    return 280;
  }

  v1 = MGCopyAnswer();
  if (v1)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10191B9F8();
    }

    v2 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
    {
      *buf = 138477827;
      *&buf[4] = v1;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_ERROR, "unknown HW model %{private}@; file radar to CoreMotion Factory | 1.0", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_10191BA20(v1);
    }

    CFRelease(v1);
    return 0;
  }

  if (qword_1025D4870 != -1)
  {
    sub_10191B9F8();
  }

  v3 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_ERROR))
  {
    sub_1000238CC(@"HWModelStr", buf);
    v4 = v7 >= 0 ? buf : *buf;
    *v8 = 136380675;
    *&v8[4] = v4;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_ERROR, "unknown HW model %{private}s; file radar to CoreMotion Factory | 1.0", v8, 0xCu);
    if (v7 < 0)
    {
      operator delete(*buf);
    }
  }

  result = sub_10000A100(121, 0);
  if (result)
  {
    sub_10191BB24();
    return 0;
  }

  return result;
}

BOOL sub_100717D04()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  v3 = v2 == CFBooleanGetTypeID() && CFBooleanGetValue(v1) != 0;
  CFRelease(v1);
  return v3;
}

void sub_100717D78(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFBooleanGetTypeID() && CFBooleanGetValue(v2))
    {
      v4 = 4;
    }

    else
    {
      v4 = sub_100714F54();
    }

    dword_1026592D0 = v4;

    CFRelease(v2);
  }

  else
  {
    dword_1026592D0 = sub_100714F54();
  }
}

void sub_100717E0C(id a1)
{
  v1 = _CFCopyServerVersionDictionary();
  if (v1 || (v1 = _CFCopySystemVersionDictionary()) != 0)
  {
    v2 = v1;
    sub_100005548(v25, v1);
    CFRelease(v2);
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    __p = 0;
    v17 = 0;
    v18 = 0;
    if (!sub_100005050(v25, _kCFSystemVersionProductNameKey, &v19))
    {
      if (SHIBYTE(v21) < 0)
      {
        v20 = 6;
        v3 = v19;
      }

      else
      {
        HIBYTE(v21) = 6;
        v3 = &v19;
      }

      strcpy(v3, "<name>");
    }

    if (!sub_100005050(v25, _kCFSystemVersionProductVersionKey, &v22))
    {
      if (SHIBYTE(v24) < 0)
      {
        v23 = 9;
        v4 = v22;
      }

      else
      {
        HIBYTE(v24) = 9;
        v4 = &v22;
      }

      strcpy(v4, "<version>");
    }

    if (!sub_100005050(v25, _kCFSystemVersionBuildVersionKey, &__p))
    {
      if (SHIBYTE(v18) < 0)
      {
        v17 = 7;
        p_p = __p;
      }

      else
      {
        HIBYTE(v18) = 7;
        p_p = &__p;
      }

      strcpy(p_p, "<build>");
    }

    sub_1003CCADC(&v19, &v22, &v14);
    v6 = std::string::append(&v14, "/", 1uLL);
    v7 = *&v6->__r_.__value_.__l.__data_;
    v15.__r_.__value_.__r.__words[2] = v6->__r_.__value_.__r.__words[2];
    *&v15.__r_.__value_.__l.__data_ = v7;
    v6->__r_.__value_.__l.__size_ = 0;
    v6->__r_.__value_.__r.__words[2] = 0;
    v6->__r_.__value_.__r.__words[0] = 0;
    if (v18 >= 0)
    {
      v8 = &__p;
    }

    else
    {
      v8 = __p;
    }

    if (v18 >= 0)
    {
      v9 = HIBYTE(v18);
    }

    else
    {
      v9 = v17;
    }

    v10 = std::string::append(&v15, v8, v9);
    v11 = v10->__r_.__value_.__r.__words[0];
    v26[0] = v10->__r_.__value_.__l.__size_;
    *(v26 + 7) = *(&v10->__r_.__value_.__r.__words[1] + 7);
    v12 = HIBYTE(v10->__r_.__value_.__r.__words[2]);
    v10->__r_.__value_.__l.__size_ = 0;
    v10->__r_.__value_.__r.__words[2] = 0;
    v10->__r_.__value_.__r.__words[0] = 0;
    if (byte_10265933F < 0)
    {
      operator delete(xmmword_102659328);
    }

    *&xmmword_102659328 = v11;
    *(&xmmword_102659328 + 1) = v26[0];
    *(&xmmword_102659328 + 15) = *(v26 + 7);
    byte_10265933F = v12;
    if (SHIBYTE(v15.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v15.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v14.__r_.__value_.__r.__words[2]) < 0)
    {
      operator delete(v14.__r_.__value_.__l.__data_);
    }

    if (SHIBYTE(v18) < 0)
    {
      operator delete(__p);
    }

    if (SHIBYTE(v21) < 0)
    {
      operator delete(v19);
    }

    if (SHIBYTE(v24) < 0)
    {
      operator delete(v22);
    }

    sub_100005DA4(v25);
  }

  else
  {
    if (byte_10265933F < 0)
    {
      *(&xmmword_102659328 + 1) = 6;
      v13 = xmmword_102659328;
    }

    else
    {
      v13 = &xmmword_102659328;
      byte_10265933F = 6;
    }

    strcpy(v13, "<null>");
  }
}

void sub_100718118(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, void *__p, uint64_t a17, int a18, __int16 a19, char a20, char a21, uint64_t a22, void *a23, uint64_t a24, int a25, __int16 a26, char a27, char a28, void *a29, uint64_t a30, int a31, __int16 a32, char a33, char a34)
{
  if (a21 < 0)
  {
    operator delete(__p);
  }

  if (a15 < 0)
  {
    operator delete(a10);
  }

  if (a28 < 0)
  {
    operator delete(a23);
  }

  if (a34 < 0)
  {
    operator delete(a29);
  }

  if (*(v34 - 73) < 0)
  {
    operator delete(*(v34 - 96));
  }

  sub_100005DA4(v34 - 72);
  _Unwind_Resume(a1);
}

double sub_1007181A0()
{
  sub_1007181FC("hw.model", &v1);
  if (byte_102659357 < 0)
  {
    operator delete(xmmword_102659340);
  }

  result = *&v1;
  xmmword_102659340 = v1;
  unk_102659350 = v2;
  return result;
}

_BYTE *sub_1007181FC@<X0>(char *a1@<X1>, _BYTE *a2@<X8>)
{
  v5 = 128;
  if (sysctlbyname(a1, v6, &v5, 0, 0))
  {
    v3 = "";
  }

  else
  {
    v3 = v6;
  }

  return sub_10000EC00(a2, v3);
}

void sub_10071828C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if ((atomic_load_explicit(&qword_1026592F0, memory_order_acquire) & 1) == 0)
  {
    v3 = a1;
    sub_10191BD38();
    a1 = v3;
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10071837C;
  block[3] = &unk_102449A78;
  block[4] = a1;
  if (qword_102659100 != -1)
  {
    dispatch_once(&qword_102659100, block);
  }

  if (byte_10265936F < 0)
  {
    sub_100007244(a2, xmmword_102659358, *(&xmmword_102659358 + 1));
  }

  else
  {
    *a2 = xmmword_102659358;
    *(a2 + 16) = unk_102659368;
  }
}

double sub_10071837C()
{
  sub_1007181FC("hw.machine", &v1);
  if (byte_10265936F < 0)
  {
    operator delete(xmmword_102659358);
  }

  result = *&v1;
  xmmword_102659358 = v1;
  unk_102659368 = v2;
  return result;
}

uint64_t sub_1007183D8()
{
  if (qword_102659108 != -1)
  {
    sub_10191BD9C();
  }

  return dword_1025D80B4;
}

void sub_100718410(id a1)
{
  v1 = MGCopyAnswer();
  if (!v1)
  {
    return;
  }

  v2 = v1;
  v3 = CFGetTypeID(v1);
  if (v3 == CFStringGetTypeID())
  {
    if (CFStringCompare(v2, @"Beta", 0) == kCFCompareEqualTo)
    {
      v4 = 0;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Carrier", 0) == kCFCompareEqualTo)
    {
      v4 = 1;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Internal", 0) == kCFCompareEqualTo)
    {
      v4 = 2;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Desense", 0) == kCFCompareEqualTo)
    {
      v4 = 3;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Lite Internal", 0) == kCFCompareEqualTo)
    {
      v4 = 4;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"Vendor", 0) == kCFCompareEqualTo)
    {
      v4 = 5;
      goto LABEL_18;
    }

    if (CFStringCompare(v2, @"NonUI", 0) == kCFCompareEqualTo)
    {
      v4 = 6;
LABEL_18:
      dword_1025D80B4 = v4;
    }
  }

  CFRelease(v2);
}

void sub_10071855C(id a1)
{
  sub_1005658E8(&__p);
  if ((__p.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    p_p = &__p;
  }

  else
  {
    p_p = __p.__r_.__value_.__r.__words[0];
  }

  v2 = sub_100053C00(p_p);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  if (v2)
  {
    v3 = CFGetTypeID(v2);
    if (v3 == CFStringGetTypeID())
    {
      v4 = CFURLCreateWithFileSystemPath(kCFAllocatorDefault, v2, kCFURLPOSIXPathStyle, 0);
      if (v4)
      {
        v5 = v4;
        v6 = CFBundleCreate(kCFAllocatorDefault, v4);
        if (v6)
        {
          v7 = v6;
          ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(v6, kCFBundleVersionKey);
          if (ValueForInfoDictionaryKey)
          {
            v9 = ValueForInfoDictionaryKey;
            v10 = CFGetTypeID(ValueForInfoDictionaryKey);
            if (v10 == CFStringGetTypeID())
            {
              sub_1000238CC(v9, &__p);
              if (byte_102659370[23] < 0)
              {
                operator delete(*byte_102659370);
              }

              *byte_102659370 = __p;
            }
          }

          CFRelease(v2);
          v2 = v5;
        }

        else
        {
          v7 = v5;
        }

        CFRelease(v2);
        v2 = v7;
      }
    }

    CFRelease(v2);
  }
}

void sub_1007186AC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void sub_1007186C8(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_102659308, memory_order_acquire) & 1) == 0)
  {
    sub_10191BE28();
  }

  if (qword_102659118 != -1)
  {
    sub_10191BE8C();
  }

  if (byte_1026593B7 < 0)
  {
    v2 = xmmword_1026593A0;

    sub_100007244(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1026593A0;
    *(a1 + 16) = unk_1026593B0;
  }
}

void sub_100718768(id a1)
{
  v1 = IOServiceMatching("IOPlatformExpertDevice");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v1);
  if (MatchingService)
  {
    v3 = MatchingService;
    CFProperty = IORegistryEntryCreateCFProperty(MatchingService, @"IOPlatformSerialNumber", kCFAllocatorDefault, 0);
    if (CFProperty)
    {
      v5 = CFProperty;
      sub_1000238CC(CFProperty, &v6);
      if (byte_1026593B7 < 0)
      {
        operator delete(xmmword_1026593A0);
      }

      xmmword_1026593A0 = v6;
      unk_1026593B0 = v7;
      CFRelease(v5);
    }

    IOObjectRelease(v3);
  }
}

void sub_100718824(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_102659120, memory_order_acquire) & 1) == 0)
  {
    sub_10191BEA0();
  }

  if (qword_102659128 != -1)
  {
    sub_10191BEFC();
  }

  if (byte_1025D80CF < 0)
  {
    v2 = *aNotavailable;
    v3 = *&aNotavailable[8];

    sub_100007244(a1, v2, v3);
  }

  else
  {
    *a1 = *aNotavailable;
    *(a1 + 16) = unk_1025D80C8;
  }
}

void sub_1007188C4(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID())
    {
      CFStringGetCString(v2, buffer, 1024, 0x8000100u);
      sub_10000EC00(&v4, buffer);
      if (byte_1025D80CF < 0)
      {
        operator delete(*aNotavailable);
      }

      *aNotavailable = v4;
      unk_1025D80C8 = v5;
    }

    CFRelease(v2);
  }
}

void sub_1007189A4(uint64_t a1@<X8>)
{
  if ((atomic_load_explicit(&qword_102659310, memory_order_acquire) & 1) == 0)
  {
    sub_10191BF10();
  }

  if (qword_102659130 != -1)
  {
    sub_10191BF74();
  }

  if (byte_1026593CF < 0)
  {
    v2 = xmmword_1026593B8;

    sub_100007244(a1, v2, *(&v2 + 1));
  }

  else
  {
    *a1 = xmmword_1026593B8;
    *(a1 + 16) = unk_1026593C8;
  }
}

void sub_100718A44(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFStringGetTypeID())
    {
      sub_1000238CC(v2, &v4);
      if (byte_1026593CF < 0)
      {
        operator delete(xmmword_1026593B8);
      }

      xmmword_1026593B8 = v4;
      unk_1026593C8 = v5;
    }

    CFRelease(v2);
  }
}

void sub_100718AD8(id a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v1 = 7381266;
  switch(dword_1026592D0)
  {
    case 1:
    case 198:
    case 199:
    case 200:
    case 201:
    case 259:
    case 260:
    case 261:
    case 262:
    case 263:
    case 264:
    case 265:
    case 266:
    case 267:
    case 268:
    case 269:
    case 270:
    case 271:
    case 272:
    case 273:
    case 274:
    case 275:
    case 276:
    case 277:
    case 278:
    case 279:
      v1 = 33562886;
      break;
    case 2:
    case 5:
    case 19:
    case 20:
    case 52:
    case 53:
    case 60:
    case 61:
    case 158:
    case 159:
    case 160:
    case 162:
    case 163:
    case 164:
    case 165:
    case 192:
    case 202:
    case 203:
    case 204:
      v1 = 532482;
      break;
    case 3:
    case 43:
    case 148:
      break;
    case 4:
      v1 = 8454;
      break;
    case 6:
    case 166:
    case 167:
      goto LABEL_32;
    case 7:
    case 10:
    case 13:
    case 14:
    case 29:
    case 31:
    case 33:
    case 35:
    case 44:
    case 46:
    case 48:
    case 62:
    case 64:
    case 76:
    case 134:
    case 136:
    case 144:
    case 146:
    case 154:
    case 156:
    case 193:
    case 195:
    case 205:
    case 207:
    case 209:
    case 211:
    case 213:
    case 215:
    case 217:
    case 219:
    case 220:
    case 221:
    case 223:
    case 225:
    case 227:
    case 229:
    case 231:
    case 241:
    case 242:
    case 244:
    case 246:
    case 248:
    case 250:
    case 252:
    case 254:
    case 257:
      v1 = 7905558;
      break;
    case 8:
    case 11:
    case 12:
    case 15:
    case 16:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 54:
    case 55:
    case 56:
      v1 = 8236319;
      break;
    case 9:
    case 17:
    case 18:
      v1 = 16624927;
      break;
    case 21:
      v1 = 4202498;
      break;
    case 30:
    case 32:
    case 34:
    case 36:
    case 45:
    case 47:
    case 49:
    case 63:
    case 65:
    case 77:
    case 135:
    case 137:
    case 145:
    case 155:
    case 157:
    case 194:
    case 196:
    case 197:
    case 210:
    case 212:
    case 214:
    case 216:
    case 218:
    case 222:
    case 224:
    case 226:
    case 228:
    case 230:
    case 232:
    case 255:
    case 256:
    case 258:
      v1 = 16624923;
      break;
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
      v1 = 37789954;
      break;
    case 50:
    case 51:
    case 74:
    case 75:
    case 81:
    case 82:
    case 83:
    case 84:
    case 89:
    case 90:
    case 95:
    case 96:
      v1 = 37789962;
      break;
    case 57:
    case 58:
    case 59:
      v1 = 8234271;
      break;
    case 66:
    case 67:
    case 85:
    case 86:
    case 87:
    case 88:
    case 91:
    case 92:
    case 93:
    case 94:
    case 97:
    case 98:
      v1 = 38120715;
      break;
    case 68:
    case 69:
    case 70:
    case 78:
    case 79:
    case 80:
    case 139:
    case 141:
    case 142:
    case 143:
      v1 = 41788703;
      break;
    case 71:
    case 72:
    case 73:
      v1 = 41790751;
      break;
    case 99:
    case 100:
    case 103:
    case 104:
    case 107:
    case 108:
    case 111:
    case 112:
    case 116:
    case 117:
    case 120:
    case 121:
    case 126:
    case 127:
    case 130:
    case 131:
      v1 = 38314250;
      break;
    case 101:
    case 102:
    case 105:
    case 106:
    case 109:
    case 110:
    case 113:
    case 114:
    case 115:
    case 118:
    case 119:
    case 122:
    case 123:
    case 124:
    case 125:
    case 128:
    case 129:
    case 132:
    case 133:
    case 280:
      v1 = 38645003;
      break;
    case 149:
      v1 = 4235530;
      break;
    case 150:
    case 151:
    case 152:
    case 153:
      v1 = 41226;
      break;
    case 168:
    case 169:
    case 170:
    case 171:
    case 172:
    case 173:
    case 174:
    case 175:
    case 176:
    case 177:
    case 178:
    case 179:
    case 180:
    case 181:
    case 182:
    case 183:
    case 184:
    case 185:
    case 186:
    case 187:
    case 188:
    case 189:
    case 190:
    case 191:
    case 233:
    case 234:
    case 235:
    case 236:
    case 237:
    case 238:
    case 239:
    case 240:
      v1 = 108899615;
      break;
    case 206:
    case 208:
    case 243:
    case 245:
    case 247:
    case 249:
    case 251:
    case 253:
      v1 = 83733787;
      break;
    default:
      if (qword_1025D4870 != -1)
      {
        sub_10191BF9C();
      }

      v2 = qword_1025D4878;
      if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
      {
        if (qword_1026592D8 != -1)
        {
          sub_10191B9BC();
        }

        v4[0] = 67174657;
        v4[1] = dword_1026592D0;
        _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_FAULT, "unknown hardware type %{private}d", v4, 8u);
      }

      v3 = sub_10000A100(121, 0);
      v1 = 0;
      if (v3)
      {
        sub_10191BFB0();
LABEL_32:
        v1 = 0;
      }

      break;
  }

  dword_102659138 = v1;
}

uint64_t sub_100718D20()
{
  if (sub_1000733FC())
  {
    return 1;
  }

  return sub_1000734AC();
}

BOOL sub_100718D58()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return dword_1026592D0 == 187;
}

BOOL sub_100718DAC()
{
  result = sub_10006FE64();
  if (result)
  {
    return !sub_10006FF1C();
  }

  return result;
}

BOOL sub_100718DD0()
{
  if (!sub_10006FE30())
  {
    goto LABEL_6;
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    v0 = 1;
  }

  else
  {
LABEL_6:
    v0 = sub_100718E94();
  }

  sub_10001CAF4(&v5);
  v7 = 0;
  v1 = sub_10001CB4C(v5, "supportsTimeFreqFromDiscreteGnss", &v7);
  v2 = v7;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return v0;
  }
}

void sub_100718E7C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100718E94()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 125) > 8 || ((1 << (dword_1026592D0 - 125)) & 0x199) == 0)
  {
    return dword_1026592D0 == 280;
  }

  return result;
}

BOOL sub_100718F08()
{
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168 != 1)
  {
    return 0;
  }

  if (sub_1000733FC() & 1) != 0 || (sub_1000734AC())
  {
    return 1;
  }

  return sub_100718F78();
}

BOOL sub_100718F78()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if ((dword_1026592D0 - 174) > 0x3A || ((1 << (dword_1026592D0 + 82)) & 0x44400000001D003) == 0)
  {
    return dword_1026592D0 == 251 || dword_1026592D0 == 253;
  }

  return result;
}

BOOL sub_100719004()
{
  if ((sub_1000734AC() & 1) != 0 || (sub_1000733FC() & 1) != 0 || (sub_100265CB8() & 1) != 0 || sub_100718F78())
  {
    return 1;
  }

  return sub_100718E94();
}

BOOL sub_100719054()
{
  if (sub_1002658E0() || (sub_1000733FC() & 1) != 0 || (sub_1000734AC() & 1) != 0 || (sub_100265CB8() & 1) != 0 || sub_100718F78())
  {
    return 1;
  }

  return sub_100718E94();
}

uint64_t sub_1007190AC()
{
  result = sub_10006FDD0();
  if (result)
  {
    if (sub_10006FDD0())
    {

      return sub_10006FEAC();
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL sub_1007190EC()
{
  if (sub_100265838() & 1) != 0 || sub_100718F78() || (sub_1007190AC())
  {
    return 1;
  }

  return sub_100718E94();
}

uint64_t sub_100719138()
{
  if (sub_10006FDD0() & 1) != 0 || (sub_1000733FC())
  {
    return 1;
  }

  return sub_1000734AC();
}

uint64_t sub_10071917C()
{
  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  v0 = byte_102659168;
  if ((byte_102659168 & 1) == 0)
  {
    sub_100714E94();
  }

  return v0;
}

uint64_t sub_1007191C4()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return ((dword_1026592D0 - 182) < 0x3A) & (0x300000000000003uLL >> (dword_1026592D0 + 74));
}

BOOL sub_100719250()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return dword_1026592D0 == 174;
}

uint64_t sub_1007192A4()
{
  result = sub_1001B9C14();
  if (result)
  {
    if (sub_10006FCD4() || sub_10006FD4C())
    {
      return 0;
    }

    else
    {
      return sub_1007191C4() ^ 1;
    }
  }

  return result;
}

void sub_1007192E0(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"iPad"))
    {
      byte_102659148 = 1;
    }

    CFRelease(v2);
  }
}

void sub_100719378(id a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v1 = 1;
  if ((dword_1026592D0 - 259) >= 0x15)
  {
    v1 = (dword_1026592D0 - 198) < 4 || dword_1026592D0 == 1;
  }

  byte_102659158 = v1;
}

void sub_1007193D8(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"iPhone"))
    {
      byte_102659168 = 1;
    }

    CFRelease(v2);
  }
}

uint64_t sub_100719448()
{
  if (qword_102659180 != -1)
  {
    sub_10191C120();
  }

  return byte_102659178;
}

void sub_100719480(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"iPod"))
    {
      byte_102659178 = 1;
    }

    CFRelease(v2);
  }
}

uint64_t sub_1007194F0()
{
  if (qword_102659190 != -1)
  {
    sub_10191C134();
  }

  return byte_102659188;
}

void sub_100719528(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"AppleTV"))
    {
      byte_102659188 = 1;
    }

    CFRelease(v2);
  }
}

BOOL sub_100719598()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  return (dword_1026592D0 & 0xFFFFFFFE) == 166;
}

uint64_t sub_1007195F0()
{
  if (qword_1026591A0 != -1)
  {
    sub_10191C148();
  }

  return byte_102659198;
}

void sub_100719628(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    if (CFEqual(v1, @"AudioAccessory"))
    {
      byte_102659198 = 1;
    }

    CFRelease(v2);
  }
}

BOOL sub_100719698()
{
  if (qword_102659190 != -1)
  {
    sub_10191C134();
  }

  if (byte_102659188)
  {
    return 1;
  }

  if (qword_1026591A0 != -1)
  {
    sub_10191C148();
  }

  if (byte_102659198)
  {
    return 1;
  }

  return sub_100719598();
}

BOOL sub_100719710(uint64_t a1, std::string *a2)
{
  sub_1007186C8(&__str);
  v3 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  if ((__str.__r_.__value_.__r.__words[2] & 0x8000000000000000) == 0)
  {
    size = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  else
  {
    size = __str.__r_.__value_.__l.__size_;
  }

  if (size)
  {
    std::string::operator=(a2, &__str);
    v3 = HIBYTE(__str.__r_.__value_.__r.__words[2]);
  }

  if (v3 < 0)
  {
    operator delete(__str.__r_.__value_.__l.__data_);
  }

  return size != 0;
}

void sub_10071977C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

BOOL sub_100719798()
{
  v0 = MGCopyAnswer();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = CFGetTypeID(v0);
  if (v2 == CFBooleanGetTypeID())
  {
    Value = CFBooleanGetValue(v1);
    v4 = Value != 0;
    if (qword_1025D4870 != -1)
    {
      sub_10191BF9C();
    }

    v5 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
    {
      v7[0] = 67109120;
      v7[1] = Value != 0;
      _os_log_impl(dword_100000000, v5, OS_LOG_TYPE_DEBUG, "isDisableTilesWhileLocked = %d", v7, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191C15C((Value != 0));
    }
  }

  else
  {
    v4 = 0;
  }

  CFRelease(v1);
  return v4;
}

uint64_t sub_1007198D4(uint64_t a1)
{
  sub_100241350(a1, __p);
  if (qword_1026592D8 != -1)
  {
    sub_10191C250();
  }

  v1 = dword_1026592D0;
  if (qword_102659150 != -1)
  {
    sub_10191C278();
  }

  if (byte_102659148 != 1 || ((v2 = 1, (v1 - 8) > 0x39) || ((1 << (v1 - 8)) & 0x28000A01140079BLL) == 0) && v1 != 77)
  {
    v2 = 0;
  }

  if (qword_1025D4870 != -1)
  {
    sub_10191B9F8();
  }

  v3 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEBUG))
  {
    v4 = __p;
    if (v9 < 0)
    {
      v4 = __p[0];
    }

    *buf = 67109634;
    v17 = v1;
    v18 = 2080;
    v19 = v4;
    v20 = 1024;
    v21 = v2;
    _os_log_impl(dword_100000000, v3, OS_LOG_TYPE_DEBUG, "CAMP: device id [%d] [%s], camping support [%d]", buf, 0x18u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191C2A0(buf);
    v6 = __p;
    if (v9 < 0)
    {
      v6 = __p[0];
    }

    v10 = 67109634;
    v11 = v1;
    v12 = 2080;
    v13 = v6;
    v14 = 1024;
    v15 = v2;
    v7 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "BOOL CLPlatformInfo::supportsCampOnly()", "%s\n", v7);
    if (v7 != buf)
    {
      free(v7);
    }
  }

  if (v9 < 0)
  {
    operator delete(__p[0]);
  }

  return v2;
}

void sub_100719B3C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *__p, uint64_t a13, int a14, __int16 a15, char a16, char a17)
{
  if (a17 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_100719B64()
{
  v0 = __CFADD__(qword_1026592D8, 1);
  v1 = qword_1026592D8 == -1;
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  if (v1 || !v0)
  {
    switch(dword_1026592D0)
    {
      case 8:
      case 9:
      case 11:
      case 12:
      case 15:
      case 16:
      case 17:
      case 18:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 30:
      case 32:
      case 36:
      case 45:
      case 47:
      case 54:
      case 55:
      case 56:
      case 63:
      case 65:
      case 71:
      case 72:
      case 73:
      case 77:
      case 78:
      case 79:
      case 80:
        return result;
      case 10:
      case 13:
      case 14:
      case 19:
      case 20:
      case 21:
      case 29:
      case 31:
      case 33:
      case 34:
      case 35:
      case 37:
      case 38:
      case 39:
      case 40:
      case 41:
      case 42:
      case 43:
      case 44:
      case 46:
      case 48:
      case 49:
      case 50:
      case 51:
      case 52:
      case 53:
      case 57:
      case 58:
      case 59:
      case 60:
      case 61:
      case 62:
      case 64:
      case 66:
      case 67:
      case 68:
      case 69:
      case 70:
      case 74:
      case 75:
      case 76:
        return 0;
      default:
        JUMPOUT(0);
    }
  }

  v3 = (dword_1026592D0 - 139) > 0x34 || ((1 << (dword_1026592D0 + 117)) & 0x1FFFFFE000001DLL) == 0;
  if (v3 && (dword_1026592D0 - 233) >= 8)
  {
    return 0;
  }

  return result;
}

uint64_t sub_100719C04()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 1;
  switch(dword_1026592D0)
  {
    case 8:
    case 9:
    case 11:
    case 12:
    case 15:
    case 16:
    case 17:
    case 18:
    case 22:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 28:
    case 30:
    case 32:
    case 36:
    case 44:
    case 45:
    case 47:
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 59:
    case 63:
    case 65:
    case 68:
    case 69:
    case 70:
    case 71:
    case 72:
    case 73:
    case 77:
    case 78:
    case 79:
    case 80:
      return result;
    case 10:
    case 13:
    case 14:
    case 19:
    case 20:
    case 21:
    case 29:
    case 31:
    case 33:
    case 34:
    case 35:
    case 37:
    case 38:
    case 39:
    case 40:
    case 41:
    case 42:
    case 43:
    case 46:
    case 48:
    case 49:
    case 50:
    case 51:
    case 52:
    case 53:
    case 60:
    case 61:
    case 62:
    case 64:
    case 66:
    case 67:
    case 74:
    case 75:
    case 76:
      goto LABEL_11;
    default:
      v1 = (dword_1026592D0 - 139) > 0x34 || ((1 << (dword_1026592D0 + 117)) & 0x1FFFFFE000001DLL) == 0;
      if (v1 && (dword_1026592D0 - 233) >= 8)
      {
LABEL_11:
        result = 0;
      }

      break;
  }

  return result;
}

uint64_t sub_100719CA4()
{
  if (!sub_10006FDD0() || (sub_10006FEAC() & 1) != 0)
  {
    return 0;
  }

  return sub_10006FDD0();
}

BOOL sub_100719CE4()
{
  if (qword_1026591B0 != -1)
  {
    sub_10191C2E4();
  }

  result = (byte_1026591A8 & 1) != 0 || sub_1001B589C();
  byte_1026591A8 = result;
  return result;
}

void sub_100719D34(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    byte_1026591A8 = 1;

    CFRelease(v1);
  }
}

uint64_t sub_100719D80()
{
  if (sub_100719DCC())
  {
    if (qword_102659150 != -1)
    {
      sub_10191C0F8();
    }

    v0 = byte_102659148 ^ 1;
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

BOOL sub_100719DCC()
{
  result = sub_1001AE054();
  if (result)
  {
    if ((sub_1000733FC() & 1) != 0 || (sub_1000734AC() & 1) != 0 || sub_10006FE30())
    {
      if (qword_102659170 != -1)
      {
        sub_10191C0D0();
      }

      if (byte_102659168)
      {
        return 1;
      }
    }

    if (sub_10006FDD0() && !sub_10006FEAC())
    {
      return 1;
    }

    else
    {

      return sub_100718F78();
    }
  }

  return result;
}

uint64_t sub_100719E50()
{
  if (qword_1026591C0 != -1)
  {
    sub_10191C2F8();
  }

  return byte_1026591B8;
}

void sub_100719E88(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    byte_1026591B8 = CFEqual(v1, @"NonUI") != 0;

    CFRelease(v2);
  }
}

void sub_100719EF8(id a1)
{
  v1 = MGCopyAnswer();
  if (v1)
  {
    v2 = v1;
    v3 = CFGetTypeID(v1);
    if (v3 == CFBooleanGetTypeID() && CFBooleanGetValue(v2) == 1)
    {
      byte_1026591C8 = 1;
    }

    CFRelease(v2);
  }
}

uint64_t sub_100719F7C()
{
  v5 = 0;
  sub_10001CAF4(buf);
  v0 = sub_10001CB4C(*buf, "GpsForceSuplSupportIgnoringHw", &v5);
  v1 = (v0 & v5);
  if (v7)
  {
    sub_100008080(v7);
  }

  if (v1)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10191B9F8();
    }

    v2 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#Warning SUPL: ignoring hw. forceSuplSupport,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191C320(&v5);
    }

    v3 = v5;
  }

  else if (sub_10006FDD0())
  {
    if (qword_102659150 != -1)
    {
      sub_10191C278();
    }

    v3 = byte_102659148 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

void sub_10071A0CC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071A0EC()
{
  v4 = 0;
  sub_10001CAF4(buf);
  v0 = sub_10001CB4C(*buf, "GpsForceLppSupport", &v4);
  v1 = v0 & v4;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (!v1)
  {
    return sub_10006FDD0();
  }

  if (qword_1025D4870 != -1)
  {
    sub_10191B9F8();
  }

  v2 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v4;
    _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#Warning LPP: ignoring hw. forceLppSupport,%d\n", buf, 8u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10191C41C(&v4);
  }

  return 1;
}

void sub_10071A208(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071A228()
{
  v4 = 0;
  sub_10001CAF4(buf);
  v0 = sub_10001CB4C(*buf, "GpsForceLPPOverNRSupport", &v4);
  v1 = v0 & v4;
  if (v6)
  {
    sub_100008080(v6);
  }

  if (v1)
  {
    if (qword_1025D4650 != -1)
    {
      sub_10191C518();
    }

    v2 = qword_1025D4658;
    if (os_log_type_enabled(qword_1025D4658, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v4;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "Test mode, forceLPPOverNRSupport,%d\n", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191C540(&v4);
    }

    return 1;
  }

  else
  {
    result = sub_10006FDD0();
    if (result)
    {
      return sub_10006FC6C() ^ 1;
    }
  }

  return result;
}

void sub_10071A350(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071A370()
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  v0 = -7;
  switch(dword_1026592D0)
  {
    case 7:
    case 8:
    case 9:
    case 13:
    case 14:
    case 15:
    case 16:
    case 23:
    case 31:
      v0 = -6;
      break;
    case 17:
    case 18:
    case 32:
      return v0;
    case 22:
      v0 = -4;
      break;
    case 24:
    case 25:
    case 29:
    case 30:
      v0 = -5;
      break;
    case 27:
    case 28:
    case 43:
    case 62:
    case 63:
      v0 = -3;
      break;
    case 64:
    case 65:
      v0 = -2;
      break;
    default:
      v0 = 0;
      break;
  }

  return v0;
}

BOOL sub_10071A418()
{
  v0 = MGCopyAnswer();
  v1 = MGCopyAnswer();
  if (v0)
  {
    CFRelease(v0);
  }

  if (v1)
  {
    CFRelease(v1);
  }

  if (v0)
  {
    v2 = v1 == 0;
  }

  else
  {
    v2 = 1;
  }

  return !v2;
}

uint64_t sub_10071A480()
{
  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_102659170 != -1)
  {
    sub_10191C0D0();
  }

  if (byte_102659168)
  {
    return 1;
  }

  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_102659150 != -1)
  {
    sub_10191C0F8();
  }

  if (byte_102659148)
  {
    return 1;
  }

  if (qword_1026590E8 != -1)
  {
    sub_10015EEE0();
  }

  if (qword_1025D4630 != -1)
  {
    sub_10191C63C();
  }

  v1 = qword_1025D4638;
  if (os_log_type_enabled(qword_1025D4638, OS_LOG_TYPE_DEFAULT))
  {
    sub_1001AF89C(__p);
    if (v4 >= 0)
    {
      v2 = __p;
    }

    else
    {
      v2 = __p[0];
    }

    *buf = 136446210;
    v6 = v2;
    _os_log_impl(dword_100000000, v1, OS_LOG_TYPE_DEFAULT, "@WsbReg, not supported, %{public}s", buf, 0xCu);
    if (v4 < 0)
    {
      operator delete(__p[0]);
    }
  }

  result = sub_10000A100(121, 2);
  if (result)
  {
    sub_10191C650();
    return 0;
  }

  return result;
}

uint64_t sub_10071A610(uint64_t a1)
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10071A6A0;
  block[3] = &unk_102449A78;
  block[4] = a1;
  if (qword_1026591E0 != -1)
  {
    dispatch_once(&qword_1026591E0, block);
  }

  return byte_1026591D8;
}

void sub_10071A6A0()
{
  if (qword_102659140 != -1)
  {
    sub_10191BF88();
  }

  if ((dword_102659138 & 0x8000) != 0)
  {
    if (qword_1026592D8 != -1)
    {
      sub_10191B9BC();
    }

    v0 = 1;
    switch(dword_1026592D0)
    {
      case 134:
      case 135:
      case 136:
      case 137:
      case 139:
      case 141:
      case 142:
      case 143:
      case 146:
      case 154:
      case 155:
      case 156:
      case 157:
      case 168:
      case 169:
      case 170:
      case 171:
      case 172:
      case 173:
      case 176:
      case 177:
      case 178:
      case 179:
      case 193:
      case 194:
      case 195:
      case 196:
      case 205:
      case 206:
      case 207:
      case 208:
      case 214:
      case 216:
      case 217:
      case 218:
      case 233:
      case 234:
      case 235:
      case 241:
      case 242:
      case 243:
      case 244:
      case 245:
      case 246:
      case 247:
      case 248:
      case 249:
        break;
      case 138:
      case 140:
      case 144:
      case 145:
      case 147:
      case 148:
      case 149:
      case 150:
      case 151:
      case 152:
      case 153:
      case 158:
      case 159:
      case 160:
      case 161:
      case 162:
      case 163:
      case 164:
      case 165:
      case 166:
      case 167:
      case 174:
      case 175:
      case 180:
      case 181:
      case 182:
      case 183:
      case 184:
      case 185:
      case 186:
      case 187:
      case 188:
      case 189:
      case 190:
      case 191:
      case 192:
      case 197:
      case 198:
      case 199:
      case 200:
      case 201:
      case 202:
      case 203:
      case 204:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 215:
      case 219:
      case 220:
      case 221:
      case 222:
      case 223:
      case 224:
      case 225:
      case 226:
      case 227:
      case 228:
      case 229:
      case 230:
      case 231:
      case 232:
      case 236:
      case 237:
      case 238:
      case 239:
      case 240:
        goto LABEL_11;
      default:
        if ((dword_1026592D0 - 33) > 0x2E || ((1 << (dword_1026592D0 - 33)) & 0x600000018003) == 0)
        {
LABEL_11:
          v0 = 0;
        }

        break;
    }

    byte_1026591D8 = v0;
  }
}

uint64_t sub_10071A760(uint64_t a1)
{
  if (qword_102659160 != -1)
  {
    sub_10191C10C();
  }

  if (byte_102659158)
  {
    return 0;
  }

  if (sub_10071A610(a1))
  {
    return 360;
  }

  return 180;
}

uint64_t sub_10071A7C4(uint64_t a1)
{
  if (qword_102659160 != -1)
  {
    sub_10191C10C();
  }

  if (byte_102659158)
  {
    return 0;
  }

  if (sub_10071A610(a1))
  {
    return 320;
  }

  return 140;
}

uint64_t sub_10071A828()
{
  if (qword_1026591F0 != -1)
  {
    sub_10191C780();
  }

  return byte_1026591E8;
}

void sub_10071A860(id a1)
{
  v1 = MGCopyAnswer();
  v2 = v1;
  if (v1)
  {
    v3 = CFGetTypeID(v1);
    if (v3 == CFBooleanGetTypeID())
    {
      byte_1026591E8 = CFBooleanGetValue(v2) != 0;
LABEL_11:
      CFRelease(v2);
      goto LABEL_12;
    }
  }

  if (qword_1025D4870 != -1)
  {
    sub_10191BF9C();
  }

  v4 = qword_1025D4878;
  if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_FAULT))
  {
    *buf = 0;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_FAULT, "unexpected MGCopyAnswer answer", buf, 2u);
  }

  if (sub_10000A100(121, 0))
  {
    sub_10191C794();
  }

  if (v2)
  {
    goto LABEL_11;
  }

LABEL_12:
  v7 = 0;
  sub_10001CAF4(buf);
  v5 = sub_10001CB4C(*buf, "ForceSupportBarometer", &v7);
  if (v9)
  {
    sub_100008080(v9);
  }

  if (v5)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10191B9F8();
    }

    v6 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v7;
      _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEFAULT, "#Warning ForceSupportBarometer,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191C880(&v7);
    }

    byte_1026591E8 = v7;
  }
}

void sub_10071AA40(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

unint64_t sub_10071AA60()
{
  if (!sub_10006FF1C())
  {
    return 0;
  }

  sub_10001CAF4(&v3);
  v5 = 0;
  v0 = sub_10005BBE4(v3, "RavenDailyBudget", &v5);
  v1 = v5;
  if (v4)
  {
    sub_100008080(v4);
  }

  if (v0)
  {
    return v1 | dword_100000000;
  }

  else
  {
    return 0x100000E10;
  }
}

void sub_10071AAE0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071AAF8()
{
  if (qword_102659150 != -1)
  {
    sub_10191C0F8();
  }

  if (byte_102659148)
  {
    return 1;
  }

  if (qword_102659290 != -1)
  {
    sub_10191C97C();
  }

  return BYTE3(qword_102659298) & 1;
}

BOOL sub_10071AB5C()
{
  v5 = 0;
  sub_10001CAF4(buf);
  v0 = sub_10001CB4C(*buf, "EEDRequestForceHWSupport", &v5);
  v1 = v0 & v5;
  if (v7)
  {
    sub_100008080(v7);
  }

  if (v1)
  {
    if (qword_1025D4870 != -1)
    {
      sub_10191B9F8();
    }

    v2 = qword_1025D4878;
    if (os_log_type_enabled(qword_1025D4878, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *&buf[4] = v5;
      _os_log_impl(dword_100000000, v2, OS_LOG_TYPE_DEFAULT, "#Warning #EED,ignoring hw,forceHWSupport,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191C9B8(&v5);
    }

    return v5;
  }

  else
  {
    if (qword_102659170 != -1)
    {
      sub_10191C990();
    }

    return byte_102659168 == 1 && ((sub_10006FB70() & 1) != 0 || sub_100718F78());
  }
}

void sub_10071ACBC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, std::__shared_weak_count *a12)
{
  if (a12)
  {
    sub_100008080(a12);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071ACDC()
{
  result = sub_100719DCC();
  if (result)
  {
    result = sub_10006FDD0();
    if (result)
    {
      return sub_10006FEAC() ^ 1;
    }
  }

  return result;
}

uint64_t sub_10071AD08()
{
  v5 = 0;
  sub_10001CAF4(&v3);
  v0 = sub_10001CB4C(v3, "GnssForceSupportsInsAiding", &v5);
  if (v4)
  {
    sub_100008080(v4);
  }

  if (v0)
  {
    v1 = v5;
  }

  else if (sub_10006FE64() || (sub_1000733FC() & 1) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1000734AC();
  }

  return v1 & 1;
}

void sub_10071AD8C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, std::__shared_weak_count *a11)
{
  if (a11)
  {
    sub_100008080(a11);
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_10071ADA4()
{
  result = sub_10006FE30();
  if (result)
  {
    if (qword_102659170 != -1)
    {
      sub_10191C0D0();
    }

    return byte_102659168;
  }

  return result;
}

uint64_t sub_10071ADE0()
{
  if ((sub_1000733FC() & 1) != 0 || (result = sub_1000734AC(), result))
  {
    result = sub_100718F78();
    if (result)
    {
      return sub_1000733FC() ^ 1;
    }
  }

  return result;
}

uint64_t sub_10071AE18(uint64_t a1)
{
  if (qword_1026592D8 != -1)
  {
    sub_10191B9BC();
  }

  result = 0;
  if (dword_1026592D0 > 176)
  {
    switch(dword_1026592D0)
    {
      case 206:
        v9 = xmmword_101C8A490;
        goto LABEL_35;
      case 207:
      case 209:
      case 210:
      case 211:
      case 212:
      case 213:
      case 215:
      case 217:
      case 219:
      case 220:
      case 221:
      case 223:
      case 224:
      case 225:
      case 227:
      case 228:
      case 229:
      case 231:
      case 232:
      case 241:
      case 242:
      case 244:
      case 246:
      case 248:
      case 250:
      case 251:
      case 252:
      case 253:
      case 254:
      case 257:
        return result;
      case 208:
        v9 = xmmword_101C8A480;
LABEL_35:
        *a1 = v9;
        v3 = 1082340147;
        goto LABEL_48;
      case 214:
      case 216:
        v5 = xmmword_101C8A3D0;
        goto LABEL_39;
      case 218:
        v8 = xmmword_101C8A420;
        goto LABEL_37;
      case 222:
      case 255:
        *(a1 + 16) = 1080872141;
        v6 = xmmword_101C8A3A0;
        goto LABEL_46;
      case 226:
      case 256:
        *(a1 + 16) = 1080872141;
        v6 = xmmword_101C8A390;
        goto LABEL_46;
      case 230:
      case 247:
      case 249:
        *a1 = xmmword_101C8A350;
        v3 = 1080872141;
        goto LABEL_48;
      case 233:
        *a1 = xmmword_101C8A410;
        v3 = 1082969293;
        goto LABEL_48;
      case 234:
        v8 = xmmword_101C8A400;
        goto LABEL_37;
      case 235:
        v8 = xmmword_101C8A3F0;
LABEL_37:
        *a1 = v8;
        v3 = 1077516698;
        goto LABEL_48;
      case 236:
      case 237:
        *a1 = xmmword_101C8A3E0;
        v3 = 1082759578;
        goto LABEL_48;
      case 238:
        v10 = xmmword_101C8A370;
        goto LABEL_44;
      case 239:
        v10 = xmmword_101C8A360;
LABEL_44:
        *a1 = v10;
        v3 = 1081711002;
        goto LABEL_48;
      case 240:
        v5 = xmmword_101C8A340;
LABEL_39:
        *a1 = v5;
        v3 = 1082549862;
        goto LABEL_48;
      case 243:
        *(a1 + 16) = 1082549862;
        v6 = xmmword_101C8A3C0;
        goto LABEL_46;
      case 245:
        *(a1 + 16) = 1082549862;
        v6 = xmmword_101C8A3B0;
        goto LABEL_46;
      case 258:
        *(a1 + 16) = 1080872141;
        v6 = xmmword_101C8A380;
LABEL_46:
        *a1 = v6;
        return 1;
      default:
        if (dword_1026592D0 == 177)
        {
          *a1 = xmmword_101C8A440;
          v3 = 1080033280;
          goto LABEL_48;
        }

        if (dword_1026592D0 != 196)
        {
          return result;
        }

        v4 = xmmword_101C8A430;
        break;
    }

    goto LABEL_26;
  }

  if (dword_1026592D0 <= 170)
  {
    if (dword_1026592D0 == 168)
    {
      *a1 = xmmword_101C8A4D0;
      v3 = 1083598438;
      goto LABEL_48;
    }

    if (dword_1026592D0 != 169)
    {
      if (dword_1026592D0 != 170)
      {
        return result;
      }

      *a1 = xmmword_101C8A4A0;
      v3 = 1085485875;
      goto LABEL_48;
    }

    v7 = xmmword_101C8A4C0;
    goto LABEL_29;
  }

  if (dword_1026592D0 <= 172)
  {
    if (dword_1026592D0 != 171)
    {
      *a1 = xmmword_101C8A470;
      v3 = 1083388723;
      goto LABEL_48;
    }

    v7 = xmmword_101C8A4B0;
LABEL_29:
    *a1 = v7;
    v3 = 1085276160;
    goto LABEL_48;
  }

  if (dword_1026592D0 == 173)
  {
    v4 = xmmword_101C8A460;
LABEL_26:
    *a1 = v4;
    v3 = 1080452710;
    goto LABEL_48;
  }

  if (dword_1026592D0 != 176)
  {
    return result;
  }

  *a1 = xmmword_101C8A450;
  v3 = 1079613850;
LABEL_48:
  *(a1 + 16) = v3;
  return 1;
}