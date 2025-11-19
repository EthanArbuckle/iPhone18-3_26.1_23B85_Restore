@interface APLegacyTypeTranslator
+ ($F24F406B2B787EFB06265DBA3D28CBD5)adSizeForContainerSize:(id)a3 adData:(id)a4;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)errorAdSizeForContainerSize:(id)result;
+ (id)base64Decode:(id)a3;
+ (id)numericParameterArrayToDictionary:(id)a3;
+ (id)parameterArrayToDictionary:(id)a3;
+ (id)parameterArrayToDictionaryForMetadata:(id)a3;
+ (id)valueTranslated:(id)a3 forKey:(id)a4;
+ (int)AdDataUnfilledReasonCodeToASECode:(int)a3;
+ (int)connectionTypeToAPPBAdConnection:(int64_t)a3;
+ (int)placementTypeToCreativeType:(int64_t)a3;
+ (int)unfilledReasonCodeToASEStatusCode:(int64_t)a3;
+ (int64_t)AdDataUnfilledReasonCodeToUnfilledReasonCode:(int)a3;
+ (int64_t)AppStoreViewTemplateTypeToTemplateType:(int)a3;
+ (int64_t)RelevantIdentifierToRelevantIdentifierType:(int)a3;
+ (int64_t)clickActionTypeToTapActionType:(int)a3;
+ (int64_t)creativeTypeToPlacementType:(int)a3;
+ (int64_t)directionToGradientOrientation:(int)a3;
+ (unint64_t)adPrivacyMarkPositionToAdPrivacyMarkerPosition:(int)a3;
+ (unint64_t)adPrivacyMarkerTypeToPrivacyMarkerType:(int)a3;
+ (void)_invalidElementError:(int64_t)a3;
@end

@implementation APLegacyTypeTranslator

+ (void)_invalidElementError:(int64_t)a3
{
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 134217984;
    v6 = a3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "LegacyTypeTranslator error - InvalidElement: %ld", &v5, 0xCu);
  }
}

+ (int)placementTypeToCreativeType:(int64_t)a3
{
  if (a3 < 8 && ((0x9Fu >> a3) & 1) != 0)
  {
    return dword_1003F06A0[a3];
  }

  [a1 _invalidElementError:{v3, v4}];
  return 0;
}

+ (int64_t)creativeTypeToPlacementType:(int)a3
{
  if (a3 < 0xC && ((0xF35u >> a3) & 1) != 0)
  {
    return qword_1003F06C0[a3];
  }

  [a1 _invalidElementError:{a3, v3, v4}];
  return -1;
}

+ (unint64_t)adPrivacyMarkPositionToAdPrivacyMarkerPosition:(int)a3
{
  v6 = 0;
  v4 = xmmword_1003F0680;
  v5 = xmmword_1003F0690;
  if (a3 < 5)
  {
    return *(&v4 + a3);
  }

  [a1 _invalidElementError:{a3, v4, v5, v6}];
  return 0;
}

+ (unint64_t)adPrivacyMarkerTypeToPrivacyMarkerType:(int)a3
{
  if (!a3)
  {
    return 0;
  }

  if (a3 == 1)
  {
    return 1;
  }

  [a1 _invalidElementError:{a3, v3, v4}];
  return 0;
}

+ (int64_t)clickActionTypeToTapActionType:(int)a3
{
  if (a3 < 0xE && ((0x3D03u >> a3) & 1) != 0)
  {
    return qword_1003F0720[a3];
  }

  [a1 _invalidElementError:{a3, v3, v4}];
  return 0;
}

+ (int64_t)RelevantIdentifierToRelevantIdentifierType:(int)a3
{
  if ((a3 - 15001) < 5)
  {
    return a3;
  }

  [a1 _invalidElementError:{a3, v3, v4}];
  return 0;
}

+ (int)AdDataUnfilledReasonCodeToASECode:(int)a3
{
  if ((a3 - 201) < 5)
  {
    return dword_1003F0790[a3 - 201];
  }

  [a1 _invalidElementError:{a3, v3, v4}];
  return 0;
}

+ (int64_t)AdDataUnfilledReasonCodeToUnfilledReasonCode:(int)a3
{
  if ((a3 - 201) < 5)
  {
    return a3;
  }

  [a1 _invalidElementError:{a3, v3, v4}];
  return 0;
}

+ (int64_t)AppStoreViewTemplateTypeToTemplateType:(int)a3
{
  v3 = (a3 - 4781);
  if (v3 >= 0xA)
  {
    return 4780;
  }

  else
  {
    return v3 + 4781;
  }
}

+ (int)unfilledReasonCodeToASEStatusCode:(int64_t)a3
{
  if (a3 <= 1009)
  {
    if (a3 > 203)
    {
      switch(a3)
      {
        case 204:
          return 14;
        case 205:
          return 15;
        case 1000:
          return 2;
      }
    }

    else
    {
      switch(a3)
      {
        case 201:
          return 3;
        case 202:
          return 12;
        case 203:
          return 13;
      }
    }
  }

  else if (a3 > 1023)
  {
    switch(a3)
    {
      case 1024:
        return 4;
      case 1029:
        return 360;
      case 1030:
        return 370;
    }
  }

  else
  {
    if ((a3 - 1021) < 3)
    {
      return 9;
    }

    if (a3 == 1010)
    {
      return 3001;
    }
  }

  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 134349056;
    v7 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to determine ASE status code with unfilled reason code: %{public}ld.", &v6, 0xCu);
  }

  return 0;
}

+ (int)connectionTypeToAPPBAdConnection:(int64_t)a3
{
  if (a3 < 0xA)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

+ (id)parameterArrayToDictionary:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 key];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 value];

          if (v13)
          {
            v14 = [v10 value];
            v15 = [v10 key];
            [v4 setValue:v14 forKey:v15];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)numericParameterArrayToDictionary:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 key];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 value];

          if (v13)
          {
            v14 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v10 value]);
            v15 = [v10 key];
            [v4 setValue:v14 forKey:v15];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)parameterArrayToDictionaryForMetadata:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v11 = [v10 key];
        if (v11)
        {
          v12 = v11;
          v13 = [v10 value];

          if (v13)
          {
            v14 = [v10 value];
            v15 = [v10 key];
            v16 = [APLegacyTypeTranslator valueTranslated:v14 forKey:v15];

            v17 = [v10 key];
            [v4 setValue:v16 forKey:v17];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)valueTranslated:(id)a3 forKey:(id)a4
{
  v5 = a3;
  v14[0] = @"adCampaignBlacklistedKeywords";
  v14[1] = @"adGloballyBlacklistedKeywords";
  v14[2] = @"adCampaignBlacklistedCategories";
  v14[3] = @"adGloballyBlacklistedCategories";
  v6 = a4;
  v7 = [NSArray arrayWithObjects:v14 count:4];
  v8 = [v7 containsObject:v6];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = [NSCharacterSet characterSetWithCharactersInString:@"[]"];
    v10 = [v5 stringByTrimmingCharactersInSet:v11];

    v9 = [v10 componentsSeparatedByString:{@", "}];
  }

  else
  {
    v9 = v5;
    v10 = v9;
  }

  v12 = v9;

  return v12;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)errorAdSizeForContainerSize:(id)result
{
  v3 = 50.0;
  result.var1 = v3;
  return result;
}

+ ($F24F406B2B787EFB06265DBA3D28CBD5)adSizeForContainerSize:(id)a3 adData:(id)a4
{
  v4 = a4;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    var0 = a3.var0;
    v40 = 2048;
    var1 = a3.var1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Attempting to find best fit for container (%.0f, %.0f)", buf, 0x16u);
  }

  v6 = [v4 creativeSizes];
  v7 = v6;
  if (v6 && [v6 count])
  {
    v31 = v7;
    v32 = v4;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v34 objects:v50 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v35;
      v12 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v35 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v16 = *(*(&v34 + 1) + 8 * i);
          v17 = [v16 width];
          v18 = [v16 height];
          v19 = APLogForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 134218496;
            var0 = v17;
            v40 = 2048;
            var1 = v18;
            v42 = 2048;
            v43 = v17 / v18;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Candidate size: (%.0f, %.0f) Aspect: %.2f", buf, 0x20u);
          }

          if (a3.var0 / v17 >= a3.var1 / v18)
          {
            v20 = a3.var1 / v18;
          }

          else
          {
            v20 = a3.var0 / v17;
          }

          v21 = v20 * v17;
          v22 = v20 * v18;
          v23 = APLogForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 134219264;
            var0 = v20 * v17;
            v40 = 2048;
            var1 = v20 * v18;
            v42 = 2048;
            v43 = v21 / v22;
            v44 = 2048;
            v45 = v20;
            v46 = 2048;
            v47 = a3.var0;
            v48 = 2048;
            v49 = a3.var1;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Scaling candidate to (%.0f, %.0f) Aspect: %.2f, Scale factor: %.2f, to fit in container (%.0f, %.0f)", buf, 0x3Eu);
          }

          v25 = APLogForCategory();
          v24 = v21 * v22;
          v26 = v24;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            var0 = v26 / (a3.var1 * a3.var0);
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Scaled candidate fill ratio: %.2f", buf, 0xCu);
          }

          if (v12 < v26)
          {
            v12 = v26;
            v13 = v18;
            v14 = v17;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v34 objects:v50 count:16];
      }

      while (v10);
    }

    else
    {
      v13 = 0.0;
      v14 = 0.0;
    }

    v7 = v31;
    v4 = v32;
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0;
    if ([v4 hasUnfilledReasonCode])
    {
      [APLegacyTypeTranslator errorAdSizeForContainerSize:a3.var0, a3.var1];
      v14 = v27;
      v13 = v28;
    }
  }

  v29 = v14;
  v30 = v13;
  result.var1 = v30;
  result.var0 = v29;
  return result;
}

+ (id)base64Decode:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [[NSData alloc] initWithBase64EncodedString:v3 options:0];
    if (v4)
    {
      v5 = [[NSString alloc] initWithData:v4 encoding:4];
      goto LABEL_10;
    }

    v6 = APLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to decode Base64.", v8, 2u);
    }
  }

  else
  {
    v4 = APLogForCategory();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "We can't decode a nil string.", buf, 2u);
    }
  }

  v5 = 0;
LABEL_10:

  return v5;
}

+ (int64_t)directionToGradientOrientation:(int)a3
{
  if (a3 == 90)
  {
    return 20001;
  }

  else
  {
    return 20002;
  }
}

@end