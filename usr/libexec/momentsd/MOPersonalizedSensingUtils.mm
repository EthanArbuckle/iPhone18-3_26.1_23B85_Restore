@interface MOPersonalizedSensingUtils
+ (BOOL)_shouldRemoveBundle:(id)bundle checkVisibilityCategoryForUI:(BOOL)i;
+ (id)getPersonalizedSensingAllowedBundles:(id)bundles allowVisits:(BOOL)visits;
@end

@implementation MOPersonalizedSensingUtils

+ (BOOL)_shouldRemoveBundle:(id)bundle checkVisibilityCategoryForUI:(BOOL)i
{
  LODWORD(v4) = i;
  bundleCopy = bundle;
  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    if ([bundleCopy interfaceType] == 15 && (objc_msgSend(bundleCopy, "bundleSubType") == 902 || objc_msgSend(bundleCopy, "bundleSubType") == 906))
    {
      v4 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        bundleIdentifier = [bundleCopy bundleIdentifier];
        suggestionID = [bundleCopy suggestionID];
        bundleSubType = [bundleCopy bundleSubType];
        labels = [bundleCopy labels];
        firstObject = [labels firstObject];
        v30 = 138413058;
        v31 = bundleIdentifier;
        v32 = 2112;
        v33 = suggestionID;
        v34 = 2048;
        v35 = bundleSubType;
        v36 = 2112;
        v37 = firstObject;
        v11 = "#bundlecuration, filtered cluster bundle, reason shouldAllowActivityBundles=False & activity cluster, bundleId %@, suggestionId %@, bundleSubType %lu, label, %@";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v11, &v30, 0x2Au);

        goto LABEL_26;
      }

      goto LABEL_27;
    }

    if ([bundleCopy interfaceType] == 12 && objc_msgSend(bundleCopy, "bundleSuperType") == 2)
    {
      v4 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        bundleIdentifier = [bundleCopy bundleIdentifier];
        suggestionID = [bundleCopy suggestionID];
        bundleSubType2 = [bundleCopy bundleSubType];
        labels = [bundleCopy labels];
        firstObject = [labels firstObject];
        v30 = 138413058;
        v31 = bundleIdentifier;
        v32 = 2112;
        v33 = suggestionID;
        v34 = 2048;
        v35 = bundleSubType2;
        v36 = 2112;
        v37 = firstObject;
        v11 = "#bundlecuration, filtered activity summary bundle, reason shouldAllowActivityBundles=False & activity bundle, bundleId %@, suggestionId %@, bundleSubType %lu, label, %@";
        goto LABEL_25;
      }

LABEL_27:

      LOBYTE(v4) = 1;
      goto LABEL_30;
    }
  }

  if ([bundleCopy interfaceType] == 13)
  {
    rankingDictionary = [bundleCopy rankingDictionary];
    v14 = [rankingDictionary objectForKeyedSubscript:@"visibilityCategoryForUI"];
    intValue = [v14 intValue];

    if (intValue != 4)
    {
LABEL_29:
      LOBYTE(v4) = 0;
      goto LABEL_30;
    }
  }

  if ([bundleCopy bundleSuperType] == 9)
  {
    clusterMetadata = [bundleCopy clusterMetadata];
    isFiltered = [clusterMetadata isFiltered];

    if (isFiltered)
    {
      v4 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        bundleIdentifier = [bundleCopy bundleIdentifier];
        suggestionID = [bundleCopy suggestionID];
        bundleSubType3 = [bundleCopy bundleSubType];
        labels = [bundleCopy labels];
        firstObject = [labels firstObject];
        v30 = 138413058;
        v31 = bundleIdentifier;
        v32 = 2112;
        v33 = suggestionID;
        v34 = 2048;
        v35 = bundleSubType3;
        v36 = 2112;
        v37 = firstObject;
        v11 = "#bundlecuration, filtered cluster bundle, reason clusterMetadata.isFiltered, bundleId %@, suggestionId %@, bundleSubType %lu, label, %@";
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    v26 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [bundleCopy bundleSubType]);
    v27 = [&off_10036D8C0 containsObject:v26];

    if ((v27 & 1) == 0)
    {
      v4 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        bundleIdentifier = [bundleCopy bundleIdentifier];
        suggestionID = [bundleCopy suggestionID];
        bundleSubType4 = [bundleCopy bundleSubType];
        labels = [bundleCopy labels];
        firstObject = [labels firstObject];
        v30 = 138413058;
        v31 = bundleIdentifier;
        v32 = 2112;
        v33 = suggestionID;
        v34 = 2048;
        v35 = bundleSubType4;
        v36 = 2112;
        v37 = firstObject;
        v11 = "#bundlecuration, filtered cluster bundle, reason unsupported subtype, bundleId %@, suggestionId %@, bundleSubType %lu, label, %@";
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    goto LABEL_29;
  }

  if (v4)
  {
    rankingDictionary2 = [bundleCopy rankingDictionary];
    v20 = [rankingDictionary2 objectForKeyedSubscript:@"visibilityCategoryForUI"];
    if ([v20 intValue] == 4)
    {
      rankingDictionary3 = [bundleCopy rankingDictionary];
      v22 = [rankingDictionary3 objectForKeyedSubscript:@"isBundleOrSubBundlesSelectedOrQuickAdded"];
      bOOLValue = [v22 BOOLValue];

      if ((bOOLValue & 1) == 0)
      {
        v4 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
        if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
        {
          bundleIdentifier = [bundleCopy bundleIdentifier];
          suggestionID = [bundleCopy suggestionID];
          labels2 = [bundleCopy labels];
          firstObject2 = [labels2 firstObject];
          v30 = 138412802;
          v31 = bundleIdentifier;
          v32 = 2112;
          v33 = suggestionID;
          v34 = 2112;
          v35 = firstObject2;
          _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "#bundlecuration, filtered bundle, reason UIrejected, id, %@, suggestion id, %@, label, %@", &v30, 0x20u);

LABEL_26:
          goto LABEL_27;
        }

        goto LABEL_27;
      }
    }

    else
    {
    }

    goto LABEL_29;
  }

LABEL_30:

  return v4;
}

+ (id)getPersonalizedSensingAllowedBundles:(id)bundles allowVisits:(BOOL)visits
{
  bundlesCopy = bundles;
  v7 = [bundlesCopy count];
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  v9 = v8;
  if (v7)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v37 = [bundlesCopy count];
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "total count of fetched bundles %lu", buf, 0xCu);
    }

    v10 = [NSMutableSet setWithObjects:&off_100368B78, &off_100368B90, &off_100368BA8, &off_100368BC0, &off_100368BD8, &off_100368BF0, 0];
    v11 = objc_opt_new();
    v12 = objc_opt_new();
    if (_os_feature_enabled_impl())
    {
      [v10 addObject:&off_100368C08];
    }

    else
    {
      v14 = [NSPredicate predicateWithFormat:@"interfaceType == %luu AND bundleSuperType == %luu", 12, 2];
      v15 = [bundlesCopy filteredArrayUsingPredicate:v14];
      v33[0] = _NSConcreteStackBlock;
      v33[1] = 3221225472;
      v33[2] = __79__MOPersonalizedSensingUtils_getPersonalizedSensingAllowedBundles_allowVisits___block_invoke;
      v33[3] = &unk_100335B80;
      v16 = v11;
      v34 = v16;
      v35 = v12;
      [v15 enumerateObjectsUsingBlock:v33];
      v17 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = [v16 count];
        *buf = 134217984;
        v37 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "Activity bundle was disabled. Collecting subBundleIDs of activity summaries to recover visit subbundles. subBundleID count=%lu", buf, 0xCu);
      }

      v19 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        +[MOPersonalizedSensingUtils getPersonalizedSensingAllowedBundles:allowVisits:];
      }

      v20 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
      {
        +[MOPersonalizedSensingUtils getPersonalizedSensingAllowedBundles:allowVisits:];
      }
    }

    v26[0] = _NSConcreteStackBlock;
    v26[1] = 3221225472;
    v26[2] = __79__MOPersonalizedSensingUtils_getPersonalizedSensingAllowedBundles_allowVisits___block_invoke_126;
    v26[3] = &unk_100335BA8;
    visitsCopy = visits;
    v27 = v10;
    v28 = v11;
    v29 = v12;
    selfCopy = self;
    v21 = objc_opt_new();
    v30 = v21;
    v22 = v12;
    v23 = v11;
    v9 = v10;
    [bundlesCopy enumerateObjectsUsingBlock:v26];
    v24 = v30;
    v13 = v21;
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "no bundle context is extracted due to 0 bundle fetched", buf, 2u);
    }

    v13 = &__NSArray0__struct;
  }

  return v13;
}

void __79__MOPersonalizedSensingUtils_getPersonalizedSensingAllowedBundles_allowVisits___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v4 subBundleIDs];
  [v3 addObjectsFromArray:v5];

  v6 = *(a1 + 40);
  v7 = [v4 subSuggestionIDs];

  [v6 addObjectsFromArray:v7];
}

void __79__MOPersonalizedSensingUtils_getPersonalizedSensingAllowedBundles_allowVisits___block_invoke_126(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if ((*(a1 + 72) & 1) == 0)
  {
    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    v5 = [v3 events];
    v6 = [v5 countByEnumeratingWithState:&v53 objects:v69 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v54;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v54 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([*(*(&v53 + 1) + 8 * i) category] == 1)
          {
            v13 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              __79__MOPersonalizedSensingUtils_getPersonalizedSensingAllowedBundles_allowVisits___block_invoke_126_cold_1();
            }

            goto LABEL_33;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v53 objects:v69 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  v10 = *(a1 + 32);
  v11 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v4 interfaceType]);
  LOBYTE(v10) = [v10 containsObject:v11];

  if ((v10 & 1) == 0)
  {
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      __79__MOPersonalizedSensingUtils_getPersonalizedSensingAllowedBundles_allowVisits___block_invoke_126_cold_2(v4, v12);
    }

    goto LABEL_18;
  }

  if ((_os_feature_enabled_impl() & 1) == 0)
  {
    v14 = *(a1 + 40);
    v15 = [v4 bundleIdentifier];
    v16 = [v15 UUIDString];
    if ([v14 containsObject:v16])
    {
    }

    else
    {
      v17 = *(a1 + 48);
      v18 = [v4 suggestionID];
      v19 = [v18 UUIDString];
      LODWORD(v17) = [v17 containsObject:v19];

      if (!v17)
      {
        goto LABEL_13;
      }
    }

    if ([v4 bundleSuperType] != 2)
    {
      v20 = [v4 rankingDictionary];
      v21 = [v20 objectForKeyedSubscript:@"kRejectedByVisitHeuristicsFilter"];
      if (([v21 BOOLValue] & 1) == 0)
      {
        v22 = [v4 rankingDictionary];
        v23 = [v22 objectForKeyedSubscript:@"bundleGoodnessScore"];
        [v23 floatValue];
        v25 = v24;
        v26 = [v4 rankingDictionary];
        v27 = [v26 objectForKeyedSubscript:@"suggestionAcceptThreshold"];
        [v27 floatValue];
        if (v25 > v28)
        {
          v29 = [*(a1 + 64) _shouldRemoveBundle:v4 checkVisibilityCategoryForUI:0];

          if ((v29 & 1) == 0)
          {
            v30 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
            {
              v31 = [v4 bundleIdentifier];
              v32 = [v4 suggestionID];
              v33 = [v4 bundleSubType];
              v34 = [v4 rankingDictionary];
              v35 = [v34 objectForKeyedSubscript:@"bundleGoodnessScore"];
              [v35 floatValue];
              v37 = v36;
              v38 = [v4 rankingDictionary];
              v39 = [v38 objectForKeyedSubscript:@"suggestionAcceptThreshold"];
              [v39 floatValue];
              *buf = 138413314;
              v58 = v31;
              v59 = 2112;
              v60 = v32;
              v61 = 2048;
              v62 = v33;
              v63 = 2048;
              v64 = v37;
              v65 = 2048;
              v66 = v40;
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "SubBundle of activity summary was recovered. bundleID %@, suggestionID %@, bundleSubType %lu, goodnessScore %.3f, acceptThreshold %.3f", buf, 0x34u);
            }

            goto LABEL_32;
          }

          goto LABEL_36;
        }
      }
    }

LABEL_36:
    v12 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v41 = [v4 bundleIdentifier];
      v42 = [v4 suggestionID];
      v52 = [v4 bundleSubType];
      v43 = [v4 rankingDictionary];
      v44 = [v43 objectForKeyedSubscript:@"kRejectedByVisitHeuristicsFilter"];
      v45 = [v4 rankingDictionary];
      v46 = [v45 objectForKeyedSubscript:@"bundleGoodnessScore"];
      [v46 floatValue];
      v48 = v47;
      v49 = [v4 rankingDictionary];
      v50 = [v49 objectForKeyedSubscript:@"suggestionAcceptThreshold"];
      [v50 floatValue];
      *buf = 138413570;
      v58 = v41;
      v59 = 2112;
      v60 = v42;
      v61 = 2048;
      v62 = v52;
      v63 = 2112;
      v64 = *&v44;
      v65 = 2048;
      v66 = v48;
      v67 = 2048;
      v68 = v51;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "SubBundle of activity summary was suppressed. bundleID %@, suggestionID %@, bundleSubType %lu, rejectedByVisitHeuristicsFilter, %@ goodnessScore %.3f, acceptThreshold %.3f", buf, 0x3Eu);
    }

    goto LABEL_18;
  }

LABEL_13:
  if (![*(a1 + 64) _shouldRemoveBundle:v4 checkVisibilityCategoryForUI:1])
  {
LABEL_32:
    [*(a1 + 56) addObject:v4];
    goto LABEL_33;
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityPersonalizedSensing);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    __79__MOPersonalizedSensingUtils_getPersonalizedSensingAllowedBundles_allowVisits___block_invoke_126_cold_3();
  }

LABEL_18:

LABEL_33:
}

void __79__MOPersonalizedSensingUtils_getPersonalizedSensingAllowedBundles_allowVisits___block_invoke_126_cold_2(void *a1, NSObject *a2)
{
  [a1 interfaceType];
  OUTLINED_FUNCTION_1();
  v5 = 2112;
  v6 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "Not allowed bundle by category (%lu): %@", v4, 0x16u);
}

@end