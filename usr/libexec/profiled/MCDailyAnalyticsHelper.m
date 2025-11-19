@interface MCDailyAnalyticsHelper
+ (id)_allFalseSettingsKeys;
+ (id)_allPayloadCountKeys;
+ (id)_allTrueSettingsKeys;
+ (id)_falseRestrictionsDictionary;
+ (id)_falseSettingsDictionary;
+ (id)_getCounterDictionaryFromKeySet:(id)a3;
+ (id)_intersectionRestrictionsDictionary;
+ (id)_objectRestrictionsDictionary;
+ (id)_payloadCountDictionary;
+ (id)_trueRestrictionsDictionary;
+ (id)_trueSettingsDictionary;
+ (id)_valueRestrictionsDictionary;
+ (void)addCloudConfigInfoWithEventPayload:(id)a3;
+ (void)addMDMConfigInfoWithEventPayload:(id)a3;
+ (void)addPasscodeInfoWithEventPayload:(id)a3;
+ (void)addProfileAndPayloadInfoWithEventPayload:(id)a3;
+ (void)addRestrictionInfoWithEventPayload:(id)a3;
+ (void)addSettingsInfoWithEventPayload:(id)a3;
+ (void)addSharediPadInfoWithEventPayload:(id)a3;
@end

@implementation MCDailyAnalyticsHelper

+ (void)addCloudConfigInfoWithEventPayload:(id)a3
{
  v3 = a3;
  v6 = +[MDMCloudConfiguration sharedConfiguration];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isSupervised]);
  [v3 setObject:v4 forKeyedSubscript:@"isSupervised"];

  v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v6 isTeslaEnrolled]);
  [v3 setObject:v5 forKeyedSubscript:@"isDEP"];
}

+ (void)addMDMConfigInfoWithEventPayload:(id)a3
{
  v15 = a3;
  v4 = +[MDMConfiguration sharedConfiguration];
  v5 = [v4 managingProfileIdentifier];
  v6 = v5 != 0;

  v7 = [NSNumber numberWithBool:v6];
  [v15 setObject:v7 forKeyedSubscript:@"isMDMEnrolled"];

  v8 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v4 isUserEnrollment]);
  [v15 setObject:v8 forKeyedSubscript:@"isUserEnrollment"];

  v9 = [v4 personaID];
  v10 = [NSNumber numberWithBool:v9 != 0];
  [v15 setObject:v10 forKeyedSubscript:@"isDataSeparated"];

  v11 = [v4 enrollmentMode];
  v12 = [v11 isEqualToString:kMDMEnrollmentModeBYOD];
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v3 = [v4 enrollmentMode];
    v13 = [v3 isEqualToString:kMDMEnrollmentModeADDE];
  }

  v14 = [NSNumber numberWithBool:v13];
  [v15 setObject:v14 forKeyedSubscript:@"isAccountDrivenEnrollment"];

  if ((v12 & 1) == 0)
  {
  }
}

+ (void)addSharediPadInfoWithEventPayload:(id)a3
{
  v3 = a3;
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", +[DMCMultiUserModeUtilities isSharediPad]);
  [v3 setObject:v4 forKeyedSubscript:@"isSharediPad"];
}

+ (void)addProfileAndPayloadInfoWithEventPayload:(id)a3
{
  v33 = a3;
  v4 = +[MCManifest sharedManifest];
  v34 = objc_alloc_init(MCProfileTrustEvaluator);
  v5 = [NSSet alloc];
  v6 = [v4 identifiersOfProfilesWithFilterFlags:2];
  v37 = [v5 initWithArray:v6];

  v7 = +[MCDailyAnalyticsHelper _payloadCountDictionary];
  v8 = [a1 _allPayloadCountKeys];
  v9 = [a1 _getCounterDictionaryFromKeySet:v8];

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v39 = v4;
  obj = [v4 allInstalledProfileIdentifiers];
  v40 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
  v10 = 0;
  if (v40)
  {
    v36 = 0;
    v11 = 0;
    v12 = 0;
    v38 = *v53;
    do
    {
      for (i = 0; i != v40; i = i + 1)
      {
        if (*v53 != v38)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v52 + 1) + 8 * i);
        v15 = [v39 installedProfileWithIdentifier:v14];
        if (v15)
        {
          v46 = v11;
          v47 = v10;
          v45 = v12;
          v44 = i;
          v42 = [v37 containsObject:v14];
          if ([v15 isSigned])
          {
            v16 = [v15 signerCertificates];
            v17 = [v34 sanitizedProfileSignerCertificateChainIsAllowedToWriteDefaults:v16];

            v36 += v17;
          }

          v41 = [v15 isEncrypted];
          v48 = 0u;
          v49 = 0u;
          v50 = 0u;
          v51 = 0u;
          v43 = v15;
          v18 = [v15 payloads];
          v19 = [v18 countByEnumeratingWithState:&v48 objects:v56 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v49;
            do
            {
              for (j = 0; j != v20; j = j + 1)
              {
                if (*v49 != v21)
                {
                  objc_enumerationMutation(v18);
                }

                v23 = [*(*(&v48 + 1) + 8 * j) type];
                v24 = [v7 objectForKeyedSubscript:v23];

                if (v24)
                {
                  v25 = [v9 objectForKeyedSubscript:v24];

                  if (v25)
                  {
                    v26 = [v9 objectForKeyedSubscript:v24];
                    v27 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v26 unsignedIntValue] + 1);
                    [v9 setObject:v27 forKeyedSubscript:v24];
                  }
                }
              }

              v20 = [v18 countByEnumeratingWithState:&v48 objects:v56 count:16];
            }

            while (v20);
          }

          v12 = (v45 + 1);
          v11 = v46 + v42;
          v10 = v47 + v41;

          v15 = v43;
          i = v44;
        }
      }

      v40 = [obj countByEnumeratingWithState:&v52 objects:v57 count:16];
    }

    while (v40);
  }

  else
  {
    v36 = 0;
    v11 = 0;
    v12 = 0;
  }

  v28 = [NSNumber numberWithUnsignedInt:v12];
  [v33 setObject:v28 forKeyedSubscript:@"profile_count"];

  v29 = [NSNumber numberWithUnsignedInt:v11];
  [v33 setObject:v29 forKeyedSubscript:@"profile_count_carrier"];

  v30 = [NSNumber numberWithUnsignedInt:v10];
  [v33 setObject:v30 forKeyedSubscript:@"profile_count_encrypted"];

  v31 = [NSNumber numberWithUnsignedInt:v36];
  [v33 setObject:v31 forKeyedSubscript:@"profile_count_signed"];

  v32 = [NSNumber numberWithUnsignedInt:v36];
  [v33 setObject:v32 forKeyedSubscript:@"profile_count_signedByApple"];

  [v33 addEntriesFromDictionary:v9];
}

+ (void)addRestrictionInfoWithEventPayload:(id)a3
{
  v3 = a3;
  v4 = +[MCRestrictionManager sharedManager];
  v5 = [v4 combinedProfileRestrictions];

  v6 = +[MCDailyAnalyticsHelper _falseRestrictionsDictionary];
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100042234;
  v33[3] = &unk_10011C430;
  v7 = v5;
  v34 = v7;
  v8 = v3;
  v35 = v8;
  [v6 enumerateKeysAndObjectsUsingBlock:v33];
  v9 = +[MCDailyAnalyticsHelper _trueRestrictionsDictionary];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_1000422C8;
  v30[3] = &unk_10011C430;
  v10 = v7;
  v31 = v10;
  v11 = v8;
  v32 = v11;
  [v9 enumerateKeysAndObjectsUsingBlock:v30];
  v12 = +[MCDailyAnalyticsHelper _objectRestrictionsDictionary];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10004235C;
  v27[3] = &unk_10011C430;
  v13 = v10;
  v28 = v13;
  v14 = v11;
  v29 = v14;
  [v12 enumerateKeysAndObjectsUsingBlock:v27];
  v15 = +[MCDailyAnalyticsHelper _intersectionRestrictionsDictionary];
  v24[0] = _NSConcreteStackBlock;
  v24[1] = 3221225472;
  v24[2] = sub_100042404;
  v24[3] = &unk_10011C430;
  v16 = v13;
  v25 = v16;
  v17 = v14;
  v26 = v17;
  [v15 enumerateKeysAndObjectsUsingBlock:v24];
  v18 = +[MCDailyAnalyticsHelper _valueRestrictionsDictionary];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000424AC;
  v21[3] = &unk_10011C430;
  v22 = v16;
  v23 = v17;
  v19 = v17;
  v20 = v16;
  [v18 enumerateKeysAndObjectsUsingBlock:v21];
}

+ (void)addSettingsInfoWithEventPayload:(id)a3
{
  v3 = a3;
  v4 = +[MCRestrictionManager sharedManager];
  v5 = [v4 userSettings];

  v23 = +[MCDailyAnalyticsHelper _falseSettingsDictionary];
  +[MCDailyAnalyticsHelper _allFalseSettingsKeys];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v31 = 0u;
  v6 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = [v23 objectForKeyedSubscript:v10];
        if ([MCRestrictionManager BOOLSettingForFeature:v11 withUserSettingDictionary:v5]== 2)
        {
          v12 = &__kCFBooleanTrue;
        }

        else
        {
          v12 = &__kCFBooleanFalse;
        }

        [v3 setObject:v12 forKeyedSubscript:v10];
      }

      v7 = [obj countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v7);
  }

  v13 = +[MCDailyAnalyticsHelper _trueSettingsDictionary];
  +[MCDailyAnalyticsHelper _allTrueSettingsKeys];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v14 = v27 = 0u;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * j);
        v20 = [v13 objectForKeyedSubscript:v19];
        if ([MCRestrictionManager BOOLSettingForFeature:v20 withUserSettingDictionary:v5]== 1)
        {
          v21 = &__kCFBooleanTrue;
        }

        else
        {
          v21 = &__kCFBooleanFalse;
        }

        [v3 setObject:v21 forKeyedSubscript:v19];
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }
}

+ (void)addPasscodeInfoWithEventPayload:(id)a3
{
  v3 = a3;
  v12 = +[MCPasscodeManager sharedManager];
  v4 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [v12 isPasscodeSet]);
  [v3 setObject:v4 forKeyedSubscript:@"passcode_hasPasscode"];

  v5 = +[MCRestrictionManager sharedManager];
  v6 = [v5 currentRestrictions];
  v7 = [NSNumber numberWithBool:[MCPasscodeManager restrictionsEnforcePasscodePolicy:v6]];
  [v3 setObject:v7 forKeyedSubscript:@"passcode_hasPasscodePolicy"];

  v8 = [NSNumber numberWithBool:MCKeybagMementoBlobExists()];
  [v3 setObject:v8 forKeyedSubscript:@"passcode_hasRecoveryPasscode"];

  v9 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v12 currentUnlockScreenType]);
  [v3 setObject:v9 forKeyedSubscript:@"passcode_unlockScreenType"];

  v10 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 currentUnlockSimplePasscodeType]);
  [v3 setObject:v10 forKeyedSubscript:@"passcode_simpleType"];

  v11 = [NSNumber numberWithBool:MCKeybagMementoSupported()];
  [v3 setObject:v11 forKeyedSubscript:@"passcode_supportsPasscodeRecovery"];
}

+ (id)_allPayloadCountKeys
{
  if (qword_100136AA8 != -1)
  {
    sub_1000C25F0();
  }

  v3 = qword_100136AA0;

  return v3;
}

+ (id)_payloadCountDictionary
{
  if (qword_100136AB8 != -1)
  {
    sub_1000C2604();
  }

  v3 = qword_100136AB0;

  return v3;
}

+ (id)_falseRestrictionsDictionary
{
  if (qword_100136AC8 != -1)
  {
    sub_1000C2618();
  }

  v3 = qword_100136AC0;

  return v3;
}

+ (id)_trueRestrictionsDictionary
{
  if (qword_100136AD8 != -1)
  {
    sub_1000C262C();
  }

  v3 = qword_100136AD0;

  return v3;
}

+ (id)_objectRestrictionsDictionary
{
  if (qword_100136AE8 != -1)
  {
    sub_1000C2640();
  }

  v3 = qword_100136AE0;

  return v3;
}

+ (id)_intersectionRestrictionsDictionary
{
  if (qword_100136AF8 != -1)
  {
    sub_1000C2654();
  }

  v3 = qword_100136AF0;

  return v3;
}

+ (id)_valueRestrictionsDictionary
{
  if (qword_100136B08 != -1)
  {
    sub_1000C2668();
  }

  v3 = qword_100136B00;

  return v3;
}

+ (id)_allFalseSettingsKeys
{
  if (qword_100136B18 != -1)
  {
    sub_1000C267C();
  }

  v3 = qword_100136B10;

  return v3;
}

+ (id)_falseSettingsDictionary
{
  if (qword_100136B28 != -1)
  {
    sub_1000C2690();
  }

  v3 = qword_100136B20;

  return v3;
}

+ (id)_allTrueSettingsKeys
{
  if (qword_100136B38 != -1)
  {
    sub_1000C26A4();
  }

  v3 = qword_100136B30;

  return v3;
}

+ (id)_trueSettingsDictionary
{
  if (qword_100136B48 != -1)
  {
    sub_1000C26B8();
  }

  v3 = qword_100136B40;

  return v3;
}

+ (id)_getCounterDictionaryFromKeySet:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(NSMutableDictionary);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
          objc_enumerationMutation(v5);
        }

        [v4 setObject:&off_1001271C8 forKeyedSubscript:{*(*(&v11 + 1) + 8 * i), v11}];
      }

      v7 = [v5 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return v4;
}

@end