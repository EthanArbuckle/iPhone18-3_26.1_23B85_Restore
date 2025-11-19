@interface MOMetaDataCurationUtility
+ (id)getPersonFromBirthdayPhotoTrait:(id)a3 eventBundle:(id)a4;
+ (id)selectBirthdayFromPhotoTraits:(id)a3;
+ (id)selectHolidayFromPhotoTraits:(id)a3;
+ (unint64_t)getTheBestPersonRelationtshipTagFor:(id)a3 useRelationshipInference:(BOOL)a4;
@end

@implementation MOMetaDataCurationUtility

+ (unint64_t)getTheBestPersonRelationtshipTagFor:(id)a3 useRelationshipInference:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = 1.0;
  v7 = 1.0;
  v8 = 1.0;
  v9 = 1.0;
  if (v4)
  {
    v9 = 0.927661;
    v8 = 0.959;
    v7 = 0.949924;
    v6 = 0.96;
  }

  v10 = objc_opt_new();
  v11 = [v5 personRelationships];
  v12 = [v11 count];

  if (v12)
  {
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v13 = [v5 personRelationships];
    v14 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v35;
      do
      {
        for (i = 0; i != v15; i = i + 1)
        {
          if (*v35 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v34 + 1) + 8 * i);
          if ([v18 relationship] == 4)
          {
            [v18 score];
            v19 = &off_10036A318;
            if (v20 >= v9)
            {
              goto LABEL_19;
            }
          }

          if ([v18 relationship] == 15)
          {
            [v18 score];
            v19 = &off_10036A330;
            if (v21 >= v8)
            {
              goto LABEL_19;
            }
          }

          if ([v18 relationship] != 27 || (objc_msgSend(v18, "score"), v19 = &off_10036A348, v22 < 1.0))
          {
            if ([v18 relationship] != 21 || (objc_msgSend(v18, "score"), v19 = &off_10036A360, v23 < v7))
            {
              if ([v18 relationship] != 22)
              {
                continue;
              }

              [v18 score];
              v19 = &off_10036A378;
              if (v24 < v6)
              {
                continue;
              }
            }
          }

LABEL_19:
          [v18 score];
          v25 = [NSNumber numberWithDouble:?];
          [v10 setObject:v25 forKeyedSubscript:v19];
        }

        v15 = [v13 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v15);
    }

    if ([v10 count])
    {
      v26 = [v10 keysOfEntriesPassingTest:&__block_literal_global_32];
      if ([v26 count])
      {
        if (([v26 containsObject:&off_10036A330]& 1) != 0)
        {
          goto LABEL_40;
        }

        if (([v26 containsObject:&off_10036A348]& 1) != 0)
        {
LABEL_26:
          v27 = 27;
          goto LABEL_41;
        }

        if (([v26 containsObject:&off_10036A318]& 1) != 0)
        {
LABEL_38:
          v27 = 4;
          goto LABEL_41;
        }

        if (([v26 containsObject:&off_10036A360]& 1) != 0)
        {
          goto LABEL_44;
        }

        if (([v26 containsObject:&off_10036A378]& 1) != 0)
        {
          v27 = 22;
          goto LABEL_41;
        }
      }

      v28 = [v10 objectForKey:&off_10036A318];

      if (v28)
      {
        goto LABEL_38;
      }

      v29 = [v10 objectForKey:&off_10036A330];

      if (v29)
      {
LABEL_40:
        v27 = 15;
        goto LABEL_41;
      }

      v31 = [v10 objectForKey:&off_10036A348];

      if (v31)
      {
        goto LABEL_26;
      }

      v32 = [v10 objectForKey:&off_10036A360];

      if (v32)
      {
LABEL_44:
        v27 = 21;
        goto LABEL_41;
      }

      v33 = [v10 objectForKey:&off_10036A378];

      if (v33)
      {
        v27 = 22;
      }

      else
      {
        v27 = 1;
      }
    }

    else
    {
      v26 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
      {
        [MOMetaDataCurationUtility getTheBestPersonRelationtshipTagFor:v5 useRelationshipInference:?];
      }

      v27 = 1;
    }
  }

  else
  {
    v26 = _mo_log_facility_get_os_log(&MOLogFacilityPatternEmbedding);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
    {
      [MOMetaDataCurationUtility getTheBestPersonRelationtshipTagFor:v5 useRelationshipInference:?];
    }

    v27 = 0;
  }

LABEL_41:

  return v27;
}

+ (id)selectHolidayFromPhotoTraits:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    v16 = 0;
    goto LABEL_20;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = v4;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (!v6)
  {
    v19 = 0;
    goto LABEL_19;
  }

  v7 = v6;
  v19 = 0;
  v8 = 0;
  v9 = *v21;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v21 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v20 + 1) + 8 * i);
      v12 = [v11 labelType];
      if ([v12 isEqualToString:@"holiday"])
      {
        v13 = [v11 relevantAssetUUIDs];
        if ([v13 count] <= v8)
        {
        }

        else
        {
          v14 = [v11 name];

          if (!v14)
          {
            continue;
          }

          v15 = [v11 relevantAssetUUIDs];
          v8 = [v15 count];

          v12 = v19;
          v19 = v11;
        }
      }
    }

    v7 = [v5 countByEnumeratingWithState:&v20 objects:v24 count:16];
  }

  while (v7);
LABEL_19:

  v4 = v18;
  v16 = v19;
LABEL_20:

  return v16;
}

+ (id)selectBirthdayFromPhotoTraits:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3 || ![v3 count])
  {
    v23 = 0;
    goto LABEL_23;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v25 = v4;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v6)
  {
    v26 = 0;
    goto LABEL_22;
  }

  v7 = v6;
  v28 = 0;
  v8 = *v30;
  v9 = @"Birthday";
  v26 = 0;
  v27 = *v30;
  do
  {
    for (i = 0; i != v7; i = i + 1)
    {
      if (*v30 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v11 = *(*(&v29 + 1) + 8 * i);
      v12 = [v11 labelType];
      if (![v12 isEqualToString:@"meaning"])
      {
        goto LABEL_15;
      }

      v13 = [v11 meaningIdentifier];
      if (([v13 isEqualToString:v9] & 1) == 0)
      {

        goto LABEL_15;
      }

      v14 = v5;
      v15 = v9;
      v16 = [v11 relevantAssetUUIDs];
      v17 = [v16 count];

      if (v17 > v28)
      {
        v18 = [v11 associatedPersonLocalIdentifiers];
        if (v18)
        {
          v19 = v18;
          v20 = [v11 associatedPersonLocalIdentifiers];
          v21 = [v20 count];

          if (v21)
          {
            v22 = [v11 relevantAssetUUIDs];
            v28 = [v22 count];

            v12 = v26;
            v26 = v11;
            v9 = v15;
            v5 = v14;
            v8 = v27;
LABEL_15:

            continue;
          }
        }
      }

      v9 = v15;
      v5 = v14;
      v8 = v27;
    }

    v7 = [v5 countByEnumeratingWithState:&v29 objects:v33 count:16];
  }

  while (v7);
LABEL_22:

  v4 = v25;
  v23 = v26;
LABEL_23:

  return v23;
}

+ (id)getPersonFromBirthdayPhotoTrait:(id)a3 eventBundle:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  v8 = 0;
  if (!v5 || !v6)
  {
    goto LABEL_22;
  }

  v9 = [v5 associatedPersonLocalIdentifiers];
  v8 = [v9 firstObject];
  if (!v8)
  {

    goto LABEL_22;
  }

  v10 = [v7 persons];
  if (!v10)
  {

    goto LABEL_20;
  }

  v11 = v10;
  v12 = [v7 persons];
  v13 = [v12 count];

  if (!v13)
  {
LABEL_20:
    v8 = 0;
    goto LABEL_22;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v25 = v7;
  obj = [v7 persons];
  v14 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v28;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v28 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v27 + 1) + 8 * i);
        v19 = [v18 localIdentifier];
        v20 = [v5 associatedPersonLocalIdentifiers];
        v21 = [v20 firstObject];
        if ([v19 isEqualToString:v21])
        {
          v22 = [v18 name];
          v23 = [v22 length];

          if (v23)
          {
            v8 = v18;

            goto LABEL_21;
          }
        }

        else
        {
        }
      }

      v15 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v15);
  }

  v8 = 0;
LABEL_21:
  v7 = v25;
LABEL_22:

  return v8;
}

+ (void)getTheBestPersonRelationtshipTagFor:(void *)a1 useRelationshipInference:.cold.1(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_6(&_mh_execute_header, v2, v3, "None of personalRelationships are confident enough to generate the best relationship tag for person %{private}@", v4, v5, v6, v7, 3u);
}

+ (void)getTheBestPersonRelationtshipTagFor:(void *)a1 useRelationshipInference:.cold.2(void *a1)
{
  v1 = [a1 name];
  OUTLINED_FUNCTION_0_6(&_mh_execute_header, v2, v3, "No personalRelationship is available for person %{private}@", v4, v5, v6, v7, 3u);
}

@end