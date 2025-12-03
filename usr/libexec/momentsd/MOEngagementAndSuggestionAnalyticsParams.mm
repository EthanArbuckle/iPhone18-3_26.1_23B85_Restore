@interface MOEngagementAndSuggestionAnalyticsParams
+ (BOOL)isEventBundleSubType:(unint64_t)type mappedToAnalyticsSuggestionType:(unint64_t)suggestionType;
+ (id)WeeklyRotationMetricsAggregationWindowMap;
+ (id)aggregatedEngagementAnalyticsAddressMap;
+ (id)allMetricsAggregationWindowMap;
+ (id)analyticsDeviceTypeToBMDeviceType:(unint64_t)type;
+ (id)defaultMetricsAggregationWindowMap;
+ (id)eventBundleVisibilityCategoryForUIForAnalyticsSuggestionUIVisibilityCategory:(unint64_t)category;
+ (id)updateOnboardingStatusDictionaryKeys:(id)keys;
+ (unint64_t)getCharacterCountBin:(float)bin;
@end

@implementation MOEngagementAndSuggestionAnalyticsParams

+ (BOOL)isEventBundleSubType:(unint64_t)type mappedToAnalyticsSuggestionType:(unint64_t)suggestionType
{
  LOBYTE(v4) = 1;
  switch(suggestionType)
  {
    case 1uLL:
      return v4 & 1;
    case 2uLL:
      v5 = type - 101;
      v6 = type - 101 >= 6;
      v7 = 47;
      goto LABEL_9;
    case 3uLL:
      LOBYTE(v4) = type == 105;
      return v4 & 1;
    case 4uLL:
      v5 = type + 55;
      v6 = type - 201 >= 5;
      v7 = 23;
      goto LABEL_9;
    case 5uLL:
      v5 = type + 52;
      v6 = type - 204 >= 5;
      v7 = 29;
LABEL_9:
      v4 = v7 >> v5;
      if (v6)
      {
        LOBYTE(v4) = 0;
      }

      return v4 & 1;
    case 6uLL:
      v9 = type - 301;
      goto LABEL_21;
    case 7uLL:
      v10 = type - 401;
      goto LABEL_16;
    case 8uLL:
      v8 = type - 407 >= 4;
      goto LABEL_22;
    case 9uLL:
      v9 = type - 501;
LABEL_21:
      v8 = v9 >= 3;
      goto LABEL_22;
    case 0xAuLL:
      v8 = type - 601 >= 0x11;
      goto LABEL_22;
    case 0xBuLL:
      LOBYTE(v4) = type - 701 < 9 || type == 504;
      return v4 & 1;
    case 0xCuLL:
      v8 = type - 801 >= 2;
      goto LABEL_22;
    case 0xDuLL:
      v8 = type - 901 >= 0xA;
      goto LABEL_22;
    case 0xEuLL:
      v10 = type - 1001;
LABEL_16:
      v8 = v10 >= 6;
LABEL_22:
      LOBYTE(v4) = !v8;
      break;
    default:
      LOBYTE(v4) = 0;
      break;
  }

  return v4 & 1;
}

+ (id)analyticsDeviceTypeToBMDeviceType:(unint64_t)type
{
  if (type - 1 > 6)
  {
    return &__NSArray0__struct;
  }

  else
  {
    return off_10033D450[type - 1];
  }
}

+ (id)updateOnboardingStatusDictionaryKeys:(id)keys
{
  v12[0] = @"onboardingStatus";
  v12[1] = @"onboardingDurationBin";
  v13[0] = @"onboardingCompletion";
  v13[1] = @"onboardingDurationBin";
  v12[2] = @"settingSwitchActivity";
  v12[3] = @"settingSwitchCommunication";
  v13[2] = @"isActivitySettingsSwitchEnabled";
  v13[3] = @"isCommunicationSettingsSwitchEnabled";
  v12[4] = @"settingSwitchLocation";
  v12[5] = @"settingSwitchMedia";
  v13[4] = @"isSignificantLocationSettingsSwitchEnabled";
  v13[5] = @"isMediaSettingsSwitchEnabled";
  v12[6] = @"settingSwitchPeople";
  v12[7] = @"settingSwitchPhoto";
  v13[6] = @"isNearbyPeopleSettingsSwitchEnabled";
  v13[7] = @"isPhotoSettingsSwitchEnabled";
  v12[8] = @"settingSwitchStateOfMind";
  v12[9] = @"settingSwitchReflection";
  v13[8] = @"isStateOfMindSettingsSwitchEnabled";
  v13[9] = @"isReflectionSettingsSwitchEnabled";
  v12[10] = @"settingBroaderSwitchLocation";
  v12[11] = @"appNotificationsEnabled";
  v13[10] = @"isBroadSystemLocationSettingsSwitchEnabled";
  v13[11] = @"appNotificationsEnabled";
  v12[12] = @"systemNotificationsEnabled";
  v12[13] = @"appIsJournalAppUsed";
  v13[12] = @"systemNotificationsEnabled";
  v13[13] = @"appIsJournalAppUsed";
  v12[14] = @"appOtherJournalAppUsed";
  v12[15] = @"journalConfigSkipSuggestions";
  v13[14] = @"appOtherJournalAppUsed";
  v13[15] = @"journalConfigSkipSuggestions";
  v12[16] = @"journalConfigLockJournal";
  v12[17] = @"journalIsInstalled";
  v13[16] = @"journalConfigLockJournal";
  v13[17] = @"journalIsInstalled";
  keysCopy = keys;
  [NSDictionary dictionaryWithObjects:v13 forKeys:v12 count:18];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = __81__MOEngagementAndSuggestionAnalyticsParams_updateOnboardingStatusDictionaryKeys___block_invoke;
  v10 = v9[3] = &unk_10033D430;
  v4 = objc_opt_new();
  v11 = v4;
  v5 = v10;
  [keysCopy enumerateKeysAndObjectsUsingBlock:v9];

  v6 = v11;
  v7 = v4;

  return v4;
}

void __81__MOEngagementAndSuggestionAnalyticsParams_updateOnboardingStatusDictionaryKeys___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v5 = [*(a1 + 32) objectForKeyedSubscript:a2];
  if (v5)
  {
    [*(a1 + 40) setObject:v6 forKeyedSubscript:v5];
  }
}

+ (id)allMetricsAggregationWindowMap
{
  v4[0] = &off_10036AD80;
  v4[1] = &off_10036ADB0;
  v5[0] = &off_10036AD98;
  v5[1] = &off_10036ADC8;
  v4[2] = &off_10036ADE0;
  v5[2] = &off_10036ADF8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

+ (id)defaultMetricsAggregationWindowMap
{
  v4[0] = &off_10036AD80;
  v4[1] = &off_10036ADE0;
  v5[0] = &off_10036AD98;
  v5[1] = &off_10036ADF8;
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:2];

  return v2;
}

+ (id)WeeklyRotationMetricsAggregationWindowMap
{
  v4 = &off_10036ADB0;
  v5 = &off_10036ADC8;
  v2 = [NSDictionary dictionaryWithObjects:&v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)aggregatedEngagementAnalyticsAddressMap
{
  v4[0] = &off_10036AD80;
  v4[1] = &off_10036ADB0;
  v5[0] = @"com.apple.Moments.EngagementAggregatedMetricsOneDay";
  v5[1] = @"com.apple.Moments.EngagementAggregatedMetricsSevenDayV2";
  v4[2] = &off_10036ADE0;
  v5[2] = @"com.apple.Moments.EngagementAggregatedMetricsTwentyEightDay";
  v2 = [NSDictionary dictionaryWithObjects:v5 forKeys:v4 count:3];

  return v2;
}

+ (id)eventBundleVisibilityCategoryForUIForAnalyticsSuggestionUIVisibilityCategory:(unint64_t)category
{
  if (category - 1 > 5)
  {
    return 0;
  }

  else
  {
    return off_10033D488[category - 1];
  }
}

+ (unint64_t)getCharacterCountBin:(float)bin
{
  if (bin == 0.0)
  {
    return 1;
  }

  if (bin > 0.0 && bin <= 10.0)
  {
    return 2;
  }

  if (bin <= 10.0 || bin > 200.0)
  {
    return 4 * (bin > 200.0);
  }

  else
  {
    return 3;
  }
}

@end