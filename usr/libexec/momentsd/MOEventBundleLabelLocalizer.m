@interface MOEventBundleLabelLocalizer
+ (BOOL)internalInstall;
+ (BOOL)isPreferredLanguageMidSentenceCaseCapable;
+ (BOOL)isPreferredLanguageNounCap;
+ (BOOL)isPreferredLanguageTitlecaseCapable;
+ (id)_MomentsBundle;
+ (id)_MomentsDefaultLanguageBundle;
+ (id)_Moments_AllCapitalizedStringForKey:(id)a3;
+ (id)_Moments_CapitalizedStringForKey:(id)a3;
+ (id)_Moments_LocalizedNounForKey:(id)a3;
+ (id)_Moments_LocalizedStringForKey:(id)a3 withTable:(id)a4;
+ (id)_Moments_LocalizedStringWithFormat:(id)a3 arguments:(id)a4;
+ (id)_Moments_LowercaseNounForKey:(id)a3;
+ (id)_Moments_TitleCapitalizedStringForKey:(id)a3;
+ (id)__Moments_TitleCapitalizedStringForKey:(id)a3;
+ (id)preferredLocalization;
@end

@implementation MOEventBundleLabelLocalizer

+ (id)_MomentsBundle
{
  v2 = objc_opt_class();

  return [NSBundle bundleForClass:v2];
}

+ (id)_MomentsDefaultLanguageBundle
{
  v2 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  v3 = [v2 pathForResource:@"en" ofType:@"lproj"];
  v4 = [NSBundle bundleWithPath:v3];

  return v4;
}

+ (id)preferredLocalization
{
  v2 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  v3 = [v2 preferredLocalizations];
  v4 = [v3 firstObject];

  if (!v4)
  {
    v5 = +[MOEventBundleLabelLocalizer _MomentsDefaultLanguageBundle];

    v6 = [v5 preferredLocalizations];
    v4 = [v6 firstObject];

    v2 = v5;
  }

  return v4;
}

+ (BOOL)isPreferredLanguageNounCap
{
  v2 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  v3 = [v2 preferredLocalizations];
  v4 = [v3 firstObject];

  LOBYTE(v3) = [v4 isEqualToString:@"de"];
  return v3;
}

+ (BOOL)isPreferredLanguageTitlecaseCapable
{
  v2 = [NSSet setWithArray:&off_10036DC08];
  v3 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  v4 = [v3 preferredLocalizations];
  v5 = [v4 firstObject];

  LOBYTE(v4) = [v2 containsObject:v5];
  return v4;
}

+ (BOOL)isPreferredLanguageMidSentenceCaseCapable
{
  v2 = [NSSet setWithArray:&off_10036DC20];
  v3 = +[MOEventBundleLabelLocalizer _MomentsBundle];
  v4 = [v3 preferredLocalizations];
  v5 = [v4 firstObject];

  LOBYTE(v4) = [v2 containsObject:v5];
  return v4 ^ 1;
}

+ (id)_Moments_LocalizedNounForKey:(id)a3
{
  v3 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:a3];
  if (+[MOEventBundleLabelLocalizer isPreferredLanguageNounCap])
  {
    v4 = [MOEventBundleLabelLocalizer __Moments_TitleCapitalizedStringForKey:v3];

    v3 = v4;
  }

  return v3;
}

+ (id)_Moments_LocalizedStringForKey:(id)a3 withTable:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (v7)
  {
    if ([v7 length])
    {
      v9 = +[MOEventBundleLabelLocalizer _MomentsBundle];
      v10 = [v9 localizedStringForKey:v7 value:@"_Key_Not_Found_" table:v8];
      if ([@"_Key_Not_Found_" isEqualToString:v10])
      {
        v11 = +[MOEventBundleLabelLocalizer _MomentsDefaultLanguageBundle];
        v12 = [v11 localizedStringForKey:v7 value:@"_Key_Not_Found_" table:v8];
        v13 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v20 = 138412802;
          v21 = v7;
          v22 = 2112;
          v23 = v11;
          v24 = 2112;
          v25 = v12;
          _os_log_error_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "MOEventBundleLabelLocalizer key is not found, key, %@, default language bundle, %@, default localized string, %@", &v20, 0x20u);
        }

        v14 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(MOEventBundleLabelLocalizer *)v7 _Moments_LocalizedStringForKey:v9 withTable:v14];
        }

        if ([@"_Key_Not_Found_" isEqualToString:v10])
        {
          v15 = v7;

          v12 = v15;
        }

        else if (!v12)
        {
          v12 = v7;
        }
      }

      else
      {
        v18 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v7 withTable:v10];
        }

        v12 = v10;
      }
    }

    else
    {
      v12 = v7;
    }
  }

  else
  {
    v16 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v16 withTable:?];
    }

    v17 = +[NSAssertionHandler currentHandler];
    [v17 handleFailureInMethod:a2 object:a1 file:@"MOEventBundleLabelLocalizer.m" lineNumber:93 description:@"Invalid parameter not satisfying: key"];

    v12 = 0;
  }

  return v12;
}

+ (id)_Moments_LocalizedStringWithFormat:(id)a3 arguments:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v23 = _mo_log_facility_get_os_log(&MOLogFacilityGeneral);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelFormat initWithFormat:v23 capitalizationType:?];
    }

    v9 = +[NSAssertionHandler currentHandler];
    [v9 handleFailureInMethod:a2 object:a1 file:@"MOEventBundleLabelLocalizer.m" lineNumber:138 description:@"Invalid parameter not satisfying: format"];
    goto LABEL_26;
  }

  v9 = [MOEventBundleLabelLocalizer _Moments_LocalizedStringForKey:v7];
  v10 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:v9 arguments:v8];
  }

  v11 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:v9 arguments:v8];
  }

  if (!v9)
  {
    v24 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:v7 arguments:v24];
    }

LABEL_26:
    v21 = 0;
    goto LABEL_31;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v27 = v8;
  v12 = v8;
  v13 = [v12 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v29;
    do
    {
      v16 = 0;
      do
      {
        if (*v29 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v28 + 1) + 8 * v16);
        v18 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
        {
          [(MOEventBundleLabelLocalizer *)v32 _Moments_LocalizedStringWithFormat:v17 arguments:&v33, v18];
        }

        v16 = v16 + 1;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v14);
  }

  if ([v12 count])
  {
    v19 = [v12 count];
    v20 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", 8 * [v12 count]);
    [v12 getObjects:objc_msgSend(v20 range:{"mutableBytes"), 0, v19}];
    v21 = [[NSString alloc] initWithFormat:v9 arguments:objc_msgSend(v20, "mutableBytes")];
    v22 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:v21 arguments:?];
    }
  }

  else
  {
    v25 = _mo_log_facility_get_os_log(&MOLogFacilityFramework);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      [MOEventBundleLabelLocalizer _Moments_LocalizedStringWithFormat:v9 arguments:v25];
    }

    v9 = v9;
    v21 = v9;
  }

  v8 = v27;
LABEL_31:

  return v21;
}

+ (id)_Moments_CapitalizedStringForKey:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = v4;
    if ([v5 length] > 1)
    {
      v7 = [v5 substringToIndex:1];
      v8 = [v7 uppercaseString];
      v9 = [v5 substringFromIndex:1];
      v6 = [v8 stringByAppendingString:v9];

      v5 = v7;
    }

    else
    {
      v6 = [v5 localizedCapitalizedString];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)_Moments_TitleCapitalizedStringForKey:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length])
  {
    if ([a1 isPreferredLanguageTitlecaseCapable])
    {
      v6 = [MOEventBundleLabelLocalizer __Moments_TitleCapitalizedStringForKey:v5];
    }

    else
    {
      v6 = v5;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)__Moments_TitleCapitalizedStringForKey:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = +[NSLocale currentLocale];
    v6 = [v4 mutableCopy];
    v7 = [v6 length];
    v12 = _NSConcreteStackBlock;
    v13 = 3221225472;
    v14 = __70__MOEventBundleLabelLocalizer___Moments_TitleCapitalizedStringForKey___block_invoke;
    v15 = &unk_10033C3D0;
    v16 = v6;
    v17 = v5;
    v8 = v5;
    v9 = v6;
    [v9 enumerateSubstringsInRange:0 options:v7 usingBlock:{1027, &v12}];
    v10 = [v9 copy];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t __70__MOEventBundleLabelLocalizer___Moments_TitleCapitalizedStringForKey___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (v7)
  {
    v15 = v7;
    v7 = [v7 length];
    v8 = v15;
    if (v7)
    {
      v9 = +[NSCharacterSet lowercaseLetterCharacterSet];
      v10 = [v9 characterIsMember:{objc_msgSend(v15, "characterAtIndex:", 0)}];

      v11 = +[NSCharacterSet whitespaceCharacterSet];
      if (a3)
      {
        if (([v11 characterIsMember:{objc_msgSend(*(a1 + 32), "characterAtIndex:", a3 - 1)}] & v10 & 1) == 0)
        {
LABEL_6:

          v8 = v15;
          goto LABEL_7;
        }
      }

      else if (!v10)
      {
        goto LABEL_6;
      }

      v12 = *(a1 + 32);
      v13 = [v15 capitalizedStringWithLocale:*(a1 + 40)];
      [v12 replaceCharactersInRange:a3 withString:{a4, v13}];

      goto LABEL_6;
    }
  }

LABEL_7:

  return _objc_release_x1(v7, v8);
}

+ (id)_Moments_AllCapitalizedStringForKey:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 length])
  {
    v5 = [v4 localizedUppercaseString];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (id)_Moments_LowercaseNounForKey:(id)a3
{
  v3 = a3;
  if (+[MOEventBundleLabelLocalizer isPreferredLanguageNounCap])
  {
    v4 = v3;
  }

  else
  {
    v4 = [v3 lowercaseString];
  }

  v5 = v4;

  return v5;
}

+ (BOOL)internalInstall
{
  v2 = MGCopyAnswer();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = CFGetTypeID(v2);
  v5 = v4 == CFBooleanGetTypeID() && CFBooleanGetValue(v3) == 1;
  CFRelease(v3);
  return v5;
}

+ (void)_Moments_LocalizedStringForKey:(uint64_t)a1 withTable:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v7 = [a2 mask];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)_Moments_LocalizedStringForKey:(NSObject *)a3 withTable:.cold.2(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = +[NSLocale preferredLanguages];
  v7 = [v6 firstObject];
  v8 = +[NSLocale currentLocale];
  v9 = [v8 localeIdentifier];
  v10 = [a2 preferredLocalizations];
  v11 = [v10 firstObject];
  v12 = 138413058;
  v13 = a1;
  v14 = 2112;
  v15 = v7;
  v16 = 2112;
  v17 = v9;
  v18 = 2112;
  v19 = v11;
  _os_log_error_impl(&_mh_execute_header, a3, OS_LOG_TYPE_ERROR, "MOEventBundleLabelLocalizer key is not found, key, %@, locale preferredLanguage, %@, locale, %@, framework preferredLocalization, %@", &v12, 0x2Au);
}

+ (void)_Moments_LocalizedStringWithFormat:(uint64_t)a1 arguments:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  [a2 count];
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)_Moments_LocalizedStringWithFormat:(uint64_t)a1 arguments:(void *)a2 .cold.2(uint64_t a1, void *a2)
{
  [a2 count];
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
}

+ (void)_Moments_LocalizedStringWithFormat:(void *)a3 arguments:(NSObject *)a4 .cold.3(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = [a2 mask];
  *a1 = 138412290;
  *a3 = v7;
  _os_log_debug_impl(&_mh_execute_header, a4, OS_LOG_TYPE_DEBUG, "MOEventBundleLabelLocalizer arg, %@", a1, 0xCu);
}

+ (void)_Moments_LocalizedStringWithFormat:(void *)a1 arguments:.cold.4(void *a1)
{
  v6 = [a1 mask];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0xCu);
}

+ (void)_Moments_LocalizedStringWithFormat:(uint64_t)a1 arguments:(NSObject *)a2 .cold.5(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "MOEventBundleLabelLocalizer output string, %@", &v2, 0xCu);
}

+ (void)_Moments_LocalizedStringWithFormat:(uint64_t)a1 arguments:(NSObject *)a2 .cold.6(uint64_t a1, NSObject *a2)
{
  v2 = 138412546;
  v3 = a1;
  v4 = 2112;
  v5 = 0;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "MOEventBundleLabelLocalizer return nil for format, %@, localizedFormat, %@", &v2, 0x16u);
}

@end