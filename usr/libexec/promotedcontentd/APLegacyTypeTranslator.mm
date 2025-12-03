@interface APLegacyTypeTranslator
+ ($F24F406B2B787EFB06265DBA3D28CBD5)adSizeForContainerSize:(id)size adData:(id)data;
+ ($F24F406B2B787EFB06265DBA3D28CBD5)errorAdSizeForContainerSize:(id)result;
+ (id)base64Decode:(id)decode;
+ (id)numericParameterArrayToDictionary:(id)dictionary;
+ (id)parameterArrayToDictionary:(id)dictionary;
+ (id)parameterArrayToDictionaryForMetadata:(id)metadata;
+ (id)valueTranslated:(id)translated forKey:(id)key;
+ (int)AdDataUnfilledReasonCodeToASECode:(int)code;
+ (int)connectionTypeToAPPBAdConnection:(int64_t)connection;
+ (int)placementTypeToCreativeType:(int64_t)type;
+ (int)unfilledReasonCodeToASEStatusCode:(int64_t)code;
+ (int64_t)AdDataUnfilledReasonCodeToUnfilledReasonCode:(int)code;
+ (int64_t)AppStoreViewTemplateTypeToTemplateType:(int)type;
+ (int64_t)RelevantIdentifierToRelevantIdentifierType:(int)type;
+ (int64_t)clickActionTypeToTapActionType:(int)type;
+ (int64_t)creativeTypeToPlacementType:(int)type;
+ (int64_t)directionToGradientOrientation:(int)orientation;
+ (unint64_t)adPrivacyMarkPositionToAdPrivacyMarkerPosition:(int)position;
+ (unint64_t)adPrivacyMarkerTypeToPrivacyMarkerType:(int)type;
+ (void)_invalidElementError:(int64_t)error;
@end

@implementation APLegacyTypeTranslator

+ (void)_invalidElementError:(int64_t)error
{
  v4 = APLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v5 = 134217984;
    errorCopy = error;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "LegacyTypeTranslator error - InvalidElement: %ld", &v5, 0xCu);
  }
}

+ (int)placementTypeToCreativeType:(int64_t)type
{
  if (type < 8 && ((0x9Fu >> type) & 1) != 0)
  {
    return dword_1003F06A0[type];
  }

  [self _invalidElementError:{v3, v4}];
  return 0;
}

+ (int64_t)creativeTypeToPlacementType:(int)type
{
  if (type < 0xC && ((0xF35u >> type) & 1) != 0)
  {
    return qword_1003F06C0[type];
  }

  [self _invalidElementError:{type, v3, v4}];
  return -1;
}

+ (unint64_t)adPrivacyMarkPositionToAdPrivacyMarkerPosition:(int)position
{
  v6 = 0;
  v4 = xmmword_1003F0680;
  v5 = xmmword_1003F0690;
  if (position < 5)
  {
    return *(&v4 + position);
  }

  [self _invalidElementError:{position, v4, v5, v6}];
  return 0;
}

+ (unint64_t)adPrivacyMarkerTypeToPrivacyMarkerType:(int)type
{
  if (!type)
  {
    return 0;
  }

  if (type == 1)
  {
    return 1;
  }

  [self _invalidElementError:{type, v3, v4}];
  return 0;
}

+ (int64_t)clickActionTypeToTapActionType:(int)type
{
  if (type < 0xE && ((0x3D03u >> type) & 1) != 0)
  {
    return qword_1003F0720[type];
  }

  [self _invalidElementError:{type, v3, v4}];
  return 0;
}

+ (int64_t)RelevantIdentifierToRelevantIdentifierType:(int)type
{
  if ((type - 15001) < 5)
  {
    return type;
  }

  [self _invalidElementError:{type, v3, v4}];
  return 0;
}

+ (int)AdDataUnfilledReasonCodeToASECode:(int)code
{
  if ((code - 201) < 5)
  {
    return dword_1003F0790[code - 201];
  }

  [self _invalidElementError:{code, v3, v4}];
  return 0;
}

+ (int64_t)AdDataUnfilledReasonCodeToUnfilledReasonCode:(int)code
{
  if ((code - 201) < 5)
  {
    return code;
  }

  [self _invalidElementError:{code, v3, v4}];
  return 0;
}

+ (int64_t)AppStoreViewTemplateTypeToTemplateType:(int)type
{
  v3 = (type - 4781);
  if (v3 >= 0xA)
  {
    return 4780;
  }

  else
  {
    return v3 + 4781;
  }
}

+ (int)unfilledReasonCodeToASEStatusCode:(int64_t)code
{
  if (code <= 1009)
  {
    if (code > 203)
    {
      switch(code)
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
      switch(code)
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

  else if (code > 1023)
  {
    switch(code)
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
    if ((code - 1021) < 3)
    {
      return 9;
    }

    if (code == 1010)
    {
      return 3001;
    }
  }

  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v6 = 134349056;
    codeCopy = code;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Unable to determine ASE status code with unfilled reason code: %{public}ld.", &v6, 0xCu);
  }

  return 0;
}

+ (int)connectionTypeToAPPBAdConnection:(int64_t)connection
{
  if (connection < 0xA)
  {
    return connection + 1;
  }

  else
  {
    return 0;
  }
}

+ (id)parameterArrayToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = +[NSMutableDictionary dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = dictionaryCopy;
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
          value = [v10 value];

          if (value)
          {
            value2 = [v10 value];
            v15 = [v10 key];
            [v4 setValue:value2 forKey:v15];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)numericParameterArrayToDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v4 = +[NSMutableDictionary dictionary];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = dictionaryCopy;
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
          value = [v10 value];

          if (value)
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

+ (id)parameterArrayToDictionaryForMetadata:(id)metadata
{
  metadataCopy = metadata;
  v4 = +[NSMutableDictionary dictionary];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = metadataCopy;
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
          value = [v10 value];

          if (value)
          {
            value2 = [v10 value];
            v15 = [v10 key];
            v16 = [APLegacyTypeTranslator valueTranslated:value2 forKey:v15];

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

+ (id)valueTranslated:(id)translated forKey:(id)key
{
  translatedCopy = translated;
  v14[0] = @"adCampaignBlacklistedKeywords";
  v14[1] = @"adGloballyBlacklistedKeywords";
  v14[2] = @"adCampaignBlacklistedCategories";
  v14[3] = @"adGloballyBlacklistedCategories";
  keyCopy = key;
  v7 = [NSArray arrayWithObjects:v14 count:4];
  v8 = [v7 containsObject:keyCopy];

  if (v8 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    v11 = [NSCharacterSet characterSetWithCharactersInString:@"[]"];
    v10 = [translatedCopy stringByTrimmingCharactersInSet:v11];

    v9 = [v10 componentsSeparatedByString:{@", "}];
  }

  else
  {
    v9 = translatedCopy;
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

+ ($F24F406B2B787EFB06265DBA3D28CBD5)adSizeForContainerSize:(id)size adData:(id)data
{
  dataCopy = data;
  v5 = APLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134218240;
    var0 = size.var0;
    v40 = 2048;
    var1 = size.var1;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "Attempting to find best fit for container (%.0f, %.0f)", buf, 0x16u);
  }

  creativeSizes = [dataCopy creativeSizes];
  v7 = creativeSizes;
  if (creativeSizes && [creativeSizes count])
  {
    v31 = v7;
    v32 = dataCopy;
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
          width = [v16 width];
          height = [v16 height];
          v19 = APLogForCategory();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            *buf = 134218496;
            var0 = width;
            v40 = 2048;
            var1 = height;
            v42 = 2048;
            v43 = width / height;
            _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "Candidate size: (%.0f, %.0f) Aspect: %.2f", buf, 0x20u);
          }

          if (size.var0 / width >= size.var1 / height)
          {
            v20 = size.var1 / height;
          }

          else
          {
            v20 = size.var0 / width;
          }

          v21 = v20 * width;
          v22 = v20 * height;
          v23 = APLogForCategory();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
          {
            *buf = 134219264;
            var0 = v20 * width;
            v40 = 2048;
            var1 = v20 * height;
            v42 = 2048;
            v43 = v21 / v22;
            v44 = 2048;
            v45 = v20;
            v46 = 2048;
            v47 = size.var0;
            v48 = 2048;
            v49 = size.var1;
            _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Scaling candidate to (%.0f, %.0f) Aspect: %.2f, Scale factor: %.2f, to fit in container (%.0f, %.0f)", buf, 0x3Eu);
          }

          v25 = APLogForCategory();
          v24 = v21 * v22;
          v26 = v24;
          if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
          {
            *buf = 134217984;
            var0 = v26 / (size.var1 * size.var0);
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "Scaled candidate fill ratio: %.2f", buf, 0xCu);
          }

          if (v12 < v26)
          {
            v12 = v26;
            v13 = height;
            v14 = width;
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
    dataCopy = v32;
  }

  else
  {
    v13 = 0.0;
    v14 = 0.0;
    if ([dataCopy hasUnfilledReasonCode])
    {
      [APLegacyTypeTranslator errorAdSizeForContainerSize:size.var0, size.var1];
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

+ (id)base64Decode:(id)decode
{
  decodeCopy = decode;
  if (decodeCopy)
  {
    v4 = [[NSData alloc] initWithBase64EncodedString:decodeCopy options:0];
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

+ (int64_t)directionToGradientOrientation:(int)orientation
{
  if (orientation == 90)
  {
    return 20001;
  }

  else
  {
    return 20002;
  }
}

@end