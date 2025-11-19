@interface MOPhotoMomentTags
+ (id)getCoarseInferenceTag:(id)a3;
+ (id)getInferenceTagMap;
@end

@implementation MOPhotoMomentTags

+ (id)getInferenceTagMap
{
  v4[0] = &off_10036A540;
  v4[1] = &off_10036A558;
  v5[0] = @"baby";
  v5[1] = @"pet";
  v4[2] = &off_10036A570;
  v4[3] = &off_10036A588;
  v5[2] = @"trip";
  v5[3] = @"nature";
  v4[4] = &off_10036A5A0;
  v4[5] = &off_10036A5B8;
  v5[4] = @"mountain";
  v5[5] = @"beach";
  v4[6] = &off_10036A5D0;
  v4[7] = &off_10036A5E8;
  v5[6] = @"home";
  v5[7] = @"work";
  v4[8] = &off_10036A600;
  v4[9] = &off_10036A618;
  v5[8] = @"frequentLocation";
  v5[9] = @"Activity";
  v4[10] = &off_10036A630;
  v4[11] = &off_10036A648;
  v5[10] = @"Hiking";
  v5[11] = @"Climbing";
  v4[12] = &off_10036A660;
  v4[13] = &off_10036A678;
  v5[12] = @"Beaching";
  v5[13] = @"Diving";
  v4[14] = &off_10036A690;
  v4[15] = &off_10036A6A8;
  v5[14] = @"WinterSport";
  v5[15] = @"Entertainment";
  v4[16] = &off_10036A6C0;
  v4[17] = &off_10036A6D8;
  v5[16] = @"AmusementPark";
  v5[17] = @"Performance";
  v4[18] = &off_10036A6F0;
  v4[19] = &off_10036A708;
  v5[18] = @"Concert";
  v5[19] = @"Festival";
  v4[20] = &off_10036A720;
  v4[21] = &off_10036A738;
  v5[20] = @"Theater";
  v5[21] = @"Dance";
  v4[22] = &off_10036A750;
  v4[23] = &off_10036A768;
  v5[22] = @"SportEvent";
  v5[23] = @"NightOut";
  v4[24] = &off_10036A780;
  v4[25] = &off_10036A798;
  v5[24] = @"Museum";
  v5[25] = @"Celebration";
  v4[26] = &off_10036A7B0;
  v4[27] = &off_10036A7C8;
  v5[26] = @"Birthday";
  v5[27] = @"Anniversary";
  v4[28] = &off_10036A7E0;
  v4[29] = &off_10036A7F8;
  v5[28] = @"Wedding";
  v5[29] = @"HolidayEvent";
  v4[30] = &off_10036A810;
  v5[30] = @"Gathering";
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:31];

  return v2;
}

+ (id)getCoarseInferenceTag:(id)a3
{
  v7[0] = &off_10036A5D0;
  v7[1] = &off_10036A5E8;
  v8[0] = &off_10036A828;
  v8[1] = &off_10036A828;
  v7[2] = &off_10036A600;
  v7[3] = &off_10036A738;
  v8[2] = &off_10036A828;
  v8[3] = &off_10036A840;
  v7[4] = &off_10036A768;
  v7[5] = &off_10036A7F8;
  v8[4] = &off_10036A840;
  v8[5] = &off_10036A840;
  v7[6] = &off_10036A810;
  v7[7] = &off_10036A6C0;
  v8[6] = &off_10036A840;
  v8[7] = &off_10036A858;
  v7[8] = &off_10036A780;
  v7[9] = &off_10036A6D8;
  v8[8] = &off_10036A858;
  v8[9] = &off_10036A858;
  v7[10] = &off_10036A6F0;
  v7[11] = &off_10036A708;
  v8[10] = &off_10036A858;
  v8[11] = &off_10036A858;
  v7[12] = &off_10036A720;
  v7[13] = &off_10036A588;
  v8[12] = &off_10036A858;
  v8[13] = &off_10036A870;
  v7[14] = &off_10036A5A0;
  v7[15] = &off_10036A5B8;
  v8[14] = &off_10036A870;
  v8[15] = &off_10036A870;
  v7[16] = &off_10036A798;
  v7[17] = &off_10036A7B0;
  v8[16] = &off_10036A888;
  v8[17] = &off_10036A888;
  v7[18] = &off_10036A7C8;
  v7[19] = &off_10036A7E0;
  v8[18] = &off_10036A888;
  v8[19] = &off_10036A888;
  v7[20] = &off_10036A618;
  v7[21] = &off_10036A630;
  v8[20] = &off_10036A8A0;
  v8[21] = &off_10036A8A0;
  v7[22] = &off_10036A648;
  v7[23] = &off_10036A660;
  v8[22] = &off_10036A8A0;
  v8[23] = &off_10036A8A0;
  v7[24] = &off_10036A678;
  v7[25] = &off_10036A690;
  v8[24] = &off_10036A8A0;
  v8[25] = &off_10036A8A0;
  v7[26] = &off_10036A750;
  v7[27] = &off_10036A540;
  v8[26] = &off_10036A8A0;
  v8[27] = &off_10036A8B8;
  v7[28] = &off_10036A558;
  v7[29] = &off_10036A570;
  v8[28] = &off_10036A8B8;
  v8[29] = &off_10036A8D0;
  v7[30] = &off_10036A6A8;
  v8[30] = &off_10036A8D0;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:31];
  v5 = [v4 objectForKeyedSubscript:v3];

  return v5;
}

@end