@interface MOBundleQualityManager
- (BOOL)_isInterestingLocationBasedOnBasedOnMUIDCategory:(id)a3;
- (BOOL)_isInterestingLocationBasedOnPOICategory:(id)a3;
- (BOOL)_isSensitiveLocationBasedOnMUIDCategory:(id)a3;
- (BOOL)_isSensitiveLocationBasedOnPOICategory:(id)a3;
- (BOOL)_isSingleBundleSensitive:(id)a3;
- (BOOL)_isUninterestingLocationBasedOnBasedOnMUIDCategory:(id)a3;
- (BOOL)_isUninterestingLocationBasedOnPOICategory:(id)a3;
- (MOBundleQualityManager)initWithUniverse:(id)a3;
- (id)loadMapCategoryJSONFromFilePath;
- (void)_InterestingLocationForBundle:(id)a3 handler:(id)a4;
- (void)_applyQualityChecksForBundle:(id)a3 handler:(id)a4;
- (void)_applyQualityChecksForBundles:(id)a3 handler:(id)a4;
- (void)_sensitiveLocationForBundle:(id)a3 handler:(id)a4;
- (void)_uninterestingLocationForBundle:(id)a3 handler:(id)a4;
- (void)applyQualityChecksForBundles:(id)a3 handler:(id)a4;
- (void)loadMapCategoryJSONFromFilePath;
- (void)setMUIDLists;
@end

@implementation MOBundleQualityManager

- (MOBundleQualityManager)initWithUniverse:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = MOBundleQualityManager;
  v6 = [(MOBundleQualityManager *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_fUniverse, a3);
    v8 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v9 = dispatch_queue_create("MOBundleQualityManager", v8);
    queue = v7->_queue;
    v7->_queue = v9;

    fUniverse = v7->_fUniverse;
    v12 = objc_opt_class();
    v13 = NSStringFromClass(v12);
    v14 = [(MODaemonUniverse *)fUniverse getService:v13];
    eventBundleRanking = v7->_eventBundleRanking;
    v7->_eventBundleRanking = v14;

    v16 = +[NSMutableDictionary dictionary];
    cachedBundles = v7->_cachedBundles;
    v7->_cachedBundles = v16;

    [(MOBundleQualityManager *)v7 setMUIDLists];
  }

  return v7;
}

- (void)setMUIDLists
{
  v6 = [(MOBundleQualityManager *)self loadMapCategoryJSONFromFilePath];
  v3 = [v6 objectForKeyedSubscript:@"sensitive"];
  [(MOBundleQualityManager *)self setSensitiveMUIDList:v3];

  v4 = [v6 objectForKeyedSubscript:@"uninteresting"];
  [(MOBundleQualityManager *)self setUninterestingMUIDList:v4];

  v5 = [v6 objectForKeyedSubscript:@"interesting"];
  [(MOBundleQualityManager *)self setInterestingMUIDList:v5];
}

- (BOOL)_isSensitiveLocationBasedOnPOICategory:(id)a3
{
  if (a3)
  {
    return [sensitivePOICategories containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isSensitiveLocationBasedOnMUIDCategory:(id)a3
{
  if (a3)
  {
    return [(NSArray *)self->_sensitiveMUIDList containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (void)_sensitiveLocationForBundle:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 place];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  v10 = [v6 place];
  v11 = [v10 placeName];

  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v6 place];
  if ([v12 placeUserType])
  {
    v13 = [v6 place];
    v14 = [v13 placeUserType];

    if (v14 != 100)
    {
LABEL_5:
      v7[2](v7, 4, 0);
      goto LABEL_6;
    }
  }

  else
  {
  }

  if ([v6 interfaceType] == 13)
  {
    v59 = v7;
    v15 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v67 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "sensitiveLocationforSubBundle, testing sensitivity of trip %@", buf, 0xCu);
    }

    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v16 = [v6 subSuggestionIDs];
    v17 = [v16 countByEnumeratingWithState:&v62 objects:v72 count:16];
    if (!v17)
    {
      goto LABEL_26;
    }

    v18 = v17;
    v19 = *v63;
    v20 = @"SensitiveLocation";
    v60 = v16;
LABEL_13:
    v21 = 0;
    while (1)
    {
      if (*v63 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v62 + 1) + 8 * v21);
      v23 = [(MOBundleQualityManager *)self cachedBundles];
      v24 = [v23 objectForKey:v22];

      if ([v24 interfaceType] == 2)
      {
        v25 = [v6 metaDataForRank];
        v26 = [v25 objectForKey:v20];

        if ([v26 isEqualToNumber:&off_1003690D0])
        {
          if ([v26 isEqualToNumber:&off_1003690E8])
          {
            v56 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
            if (!os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              v57 = 6;
              goto LABEL_49;
            }

            v51 = [v24 place];
            v52 = [v51 categoryMuid];
            v53 = [v24 suggestionID];
            *buf = 134218498;
            v57 = 6;
            v67 = 6;
            v68 = 2112;
            v69 = v52;
            v70 = 2112;
            v71 = v53;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "sensitiveLocationforSubBundle, sensitive location type, %lu, muid: %@, for input subBundleID, %@", buf, 0x20u);

            goto LABEL_47;
          }

          if ([v26 isEqualToNumber:&off_100369100])
          {
            v56 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
            v57 = 1;
            if (!os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              goto LABEL_49;
            }

            v51 = [v24 suggestionID];
            *buf = 134218242;
            v57 = 1;
            v67 = 1;
            v68 = 2112;
            v69 = v51;
            _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "sensitiveLocationforSubBundle, sensitive location type, %lu, for input subBundleID, %@", buf, 0x16u);
LABEL_47:

            goto LABEL_49;
          }
        }

        else
        {
          v27 = v6;
          v28 = v18;
          v29 = v20;
          v61 = v26;
          v30 = v27;
          v31 = [v24 place];
          v32 = [v31 categoryMuid];
          v33 = [(MOBundleQualityManager *)self _isSensitiveLocationBasedOnMUIDCategory:v32];

          if (v33)
          {
            v56 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              v54 = [v24 place];
              v55 = [v54 categoryMuid];
              *buf = 138412802;
              v67 = v55;
              v68 = 2048;
              v57 = 6;
              v69 = 6;
              v70 = 2112;
              v71 = v24;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "sensitiveLocationforSubBundle, sensitive location type found from MUID: %@, %lu, for input subBundle, %@", buf, 0x20u);
            }

            else
            {
              v57 = 6;
            }

            v6 = v30;
            v7 = v59;
            v16 = v60;
            v26 = v61;
            goto LABEL_52;
          }

          v34 = [v24 place];
          v35 = [v34 poiCategory];
          v36 = [(MOBundleQualityManager *)self _isSensitiveLocationBasedOnPOICategory:v35];

          v37 = v30;
          v16 = v60;
          v26 = v61;
          v20 = v29;
          v18 = v28;
          v6 = v37;
          if (v36)
          {
            v56 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
            v57 = 1;
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              *buf = 134218242;
              v57 = 1;
              v67 = 1;
              v68 = 2112;
              v69 = v24;
              _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "sensitiveLocationforSubBundle, sensitive location type, %lu, for input subBundle, %@", buf, 0x16u);
            }

LABEL_49:
            v7 = v59;
LABEL_52:

            v7[2](v7, v57, 0);
            goto LABEL_6;
          }
        }
      }

      if (v18 == ++v21)
      {
        v18 = [v16 countByEnumeratingWithState:&v62 objects:v72 count:16];
        if (v18)
        {
          goto LABEL_13;
        }

LABEL_26:

        v7 = v59;
LABEL_38:
        v7[2](v7, 5, 0);
        goto LABEL_6;
      }
    }
  }

  v38 = [v6 place];
  v39 = [v38 categoryMuid];
  v40 = [(MOBundleQualityManager *)self _isSensitiveLocationBasedOnMUIDCategory:v39];

  if (v40)
  {
    v41 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      v42 = [v6 place];
      v43 = [v42 categoryMuid];
      *buf = 138412802;
      v67 = v43;
      v68 = 2048;
      v69 = 6;
      v70 = 2112;
      v71 = v6;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_INFO, "sensitiveLocationforBundle, sensitive location type found from MUID: %@, %lu, for input subBundle, %@", buf, 0x20u);
    }

    v7[2](v7, 6, 0);
  }

  else
  {
    v44 = [v6 place];
    v45 = [v44 poiCategory];
    v46 = [(MOBundleQualityManager *)self _isSensitiveLocationBasedOnPOICategory:v45];

    v47 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
    v48 = os_log_type_enabled(v47, OS_LOG_TYPE_INFO);
    if (!v46)
    {
      if (v48)
      {
        *buf = 134218242;
        v67 = 5;
        v68 = 2112;
        v69 = v6;
        _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "sensitiveLocationforBundle, not sensitive location type, %lu, for input bundle, %@", buf, 0x16u);
      }

      goto LABEL_38;
    }

    if (v48)
    {
      v49 = [v6 place];
      v50 = [v49 poiCategory];
      *buf = 134218498;
      v67 = 1;
      v68 = 2112;
      v69 = v50;
      v70 = 2112;
      v71 = v6;
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_INFO, "sensitiveLocationforBundle, sensitive location type, %lu, poiCategory: %@, for input bundle, %@", buf, 0x20u);
    }

    v7[2](v7, 1, 0);
  }

LABEL_6:
}

- (BOOL)_isSingleBundleSensitive:(id)a3
{
  v3 = a3;
  v4 = [v3 metaDataForRank];
  if (v4)
  {
    v5 = [v3 metaDataForRank];
    v6 = [v5 objectForKey:@"SensitiveLocation"];

    if (v6)
    {
      v7 = [v3 metaDataForRank];
      v8 = [v7 objectForKey:@"SensitiveLocation"];

      LOBYTE(v4) = ([v8 isEqualToNumber:&off_100369100] & 1) != 0 || objc_msgSend(v8, "isEqualToNumber:", &off_1003690E8);
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  return v4;
}

- (BOOL)_isUninterestingLocationBasedOnPOICategory:(id)a3
{
  if (a3)
  {
    return [nonInterestingPOIcategories containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isUninterestingLocationBasedOnBasedOnMUIDCategory:(id)a3
{
  if (a3)
  {
    return [(NSArray *)self->_uninterestingMUIDList containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (void)_uninterestingLocationForBundle:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 place];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  v10 = [v6 place];
  v11 = [v10 placeName];

  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v6 place];
  if ([v12 placeUserType])
  {
    v13 = [v6 place];
    v14 = [v13 placeUserType];

    if (v14 != 100)
    {
LABEL_5:
      v7[2](v7, 4, 0);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = [v6 place];
  [v15 placeNameConfidence];
  if (v16 >= 0.75)
  {
    v17 = [v6 place];
    v18 = [v17 categoryMuid];
    v19 = [(MOBundleQualityManager *)self _isUninterestingLocationBasedOnBasedOnMUIDCategory:v18];

    if (v19)
    {
      v20 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v6 place];
        v22 = [v21 categoryMuid];
        v23 = [v6 bundleIdentifier];
        v24 = [v6 place];
        [v24 placeNameConfidence];
        v43 = 134218754;
        v44 = 6;
        v45 = 2112;
        v46 = v22;
        v47 = 2112;
        v48 = v23;
        v49 = 2048;
        v50 = v25;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "uninterestingLocationforBundle, uninteresting location type, %lu, muid: %@, for input bundleID, %@, placeNameConfidence: %f", &v43, 0x2Au);
      }

      v7[2](v7, 6, 0);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v26 = [v6 place];
  [v26 placeNameConfidence];
  if (v27 < 0.75)
  {
LABEL_17:

LABEL_18:
    v30 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
    {
      v31 = [v6 bundleIdentifier];
      v32 = [v6 place];
      [v32 placeNameConfidence];
      v43 = 134218498;
      v44 = 5;
      v45 = 2112;
      v46 = v31;
      v47 = 2048;
      v48 = v33;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "uninterestingLocationforBundle, no uninteresting GEOPOICategory or MUID found. location type, %lu, for input bundleID: %@, placeNameConfidence: %f", &v43, 0x20u);
    }

    v7[2](v7, 5, 0);
    goto LABEL_6;
  }

  v28 = [v6 place];
  [v28 placeNameConfidence];
  if (v29 < 0.75)
  {

    goto LABEL_17;
  }

  v34 = [v6 place];
  v35 = [v34 poiCategory];
  v36 = [(MOBundleQualityManager *)self _isUninterestingLocationBasedOnPOICategory:v35];

  if (!v36)
  {
    goto LABEL_18;
  }

  v37 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
  if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
  {
    v38 = [v6 place];
    v39 = [v38 poiCategory];
    v40 = [v6 bundleIdentifier];
    v41 = [v6 place];
    [v41 placeNameConfidence];
    v43 = 134218754;
    v44 = 1;
    v45 = 2112;
    v46 = v39;
    v47 = 2112;
    v48 = v40;
    v49 = 2048;
    v50 = v42;
    _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "uninterestingLocationforBundle, uninteresting location type, %lu, POICategory: %@, for input bundleID: %@, placeNameConfidence: %f", &v43, 0x2Au);
  }

  v7[2](v7, 1, 0);
LABEL_6:
}

- (BOOL)_isInterestingLocationBasedOnPOICategory:(id)a3
{
  if (a3)
  {
    return [interestingPOIcategories containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (BOOL)_isInterestingLocationBasedOnBasedOnMUIDCategory:(id)a3
{
  if (a3)
  {
    return [(NSArray *)self->_interestingMUIDList containsObject:?];
  }

  else
  {
    return 0;
  }
}

- (void)_InterestingLocationForBundle:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 place];
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  v10 = [v6 place];
  v11 = [v10 placeName];

  if (!v11)
  {
    goto LABEL_5;
  }

  v12 = [v6 place];
  if ([v12 placeUserType])
  {
    v13 = [v6 place];
    v14 = [v13 placeUserType];

    if (v14 != 100)
    {
LABEL_5:
      v7[2](v7, 4, 0);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v15 = [v6 place];
  [v15 placeNameConfidence];
  if (v16 >= 0.75)
  {
    v17 = [v6 place];
    v18 = [v17 categoryMuid];
    v19 = [(MOBundleQualityManager *)self _isInterestingLocationBasedOnBasedOnMUIDCategory:v18];

    if (v19)
    {
      v20 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v21 = [v6 place];
        v22 = [v21 categoryMuid];
        v23 = [v6 bundleIdentifier];
        v24 = [v6 place];
        [v24 placeNameConfidence];
        v41 = 134218754;
        v42 = 6;
        v43 = 2112;
        v44 = v22;
        v45 = 2112;
        v46 = v23;
        v47 = 2048;
        v48 = v25;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "interestingLocationforBundle, interesting location type, %lu, muid: %@, for input bundleID, %@, placeNameConfidence: %f", &v41, 0x2Au);
      }

      v7[2](v7, 6, 0);
      goto LABEL_6;
    }
  }

  else
  {
  }

  v26 = [v6 place];
  [v26 placeNameConfidence];
  if (v27 < 0.75)
  {

LABEL_20:
    v37 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = [v6 bundleIdentifier];
      v39 = [v6 place];
      [v39 placeNameConfidence];
      v41 = 134218498;
      v42 = 5;
      v43 = 2112;
      v44 = v38;
      v45 = 2048;
      v46 = v40;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "interestingLocationforBundle, no interesting GEOPOICategory or MUID found. location type, %lu, for input bundleID, %@, placeNameConfidence: %f", &v41, 0x20u);
    }

    v7[2](v7, 5, 0);
    goto LABEL_6;
  }

  v28 = [v6 place];
  v29 = [v28 poiCategory];
  v30 = [(MOBundleQualityManager *)self _isInterestingLocationBasedOnPOICategory:v29];

  if (!v30)
  {
    goto LABEL_20;
  }

  v31 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    v32 = [v6 place];
    v33 = [v32 categoryMuid];
    v34 = [v6 bundleIdentifier];
    v35 = [v6 place];
    [v35 placeNameConfidence];
    v41 = 134218754;
    v42 = 1;
    v43 = 2112;
    v44 = v33;
    v45 = 2112;
    v46 = v34;
    v47 = 2048;
    v48 = v36;
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_INFO, "interestingLocationforBundle, interesting location type, %lu, POICategory: %@,for input bundleID, %@, placeNameConfidence: %f", &v41, 0x2Au);
  }

  v7[2](v7, 1, 0);
LABEL_6:
}

- (void)_applyQualityChecksForBundle:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 interfaceType] == 1)
  {
    v7[2](v7, v6, 0);
  }

  else
  {
    v8 = dispatch_group_create();
    dispatch_group_enter(v8);
    v37[0] = 0;
    v37[1] = v37;
    v37[2] = 0x2020000000;
    v37[3] = 0;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = __63__MOBundleQualityManager__applyQualityChecksForBundle_handler___block_invoke;
    v33[3] = &unk_100336A08;
    v36 = v37;
    v9 = v6;
    v34 = v9;
    v10 = v8;
    v35 = v10;
    [(MOBundleQualityManager *)self _sensitiveLocationForBundle:v9 handler:v33];
    dispatch_group_enter(v10);
    v32[0] = 0;
    v32[1] = v32;
    v32[2] = 0x2020000000;
    v32[3] = 0;
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = __63__MOBundleQualityManager__applyQualityChecksForBundle_handler___block_invoke_135;
    v28[3] = &unk_100336A08;
    v31 = v32;
    v11 = v9;
    v29 = v11;
    v12 = v10;
    v30 = v12;
    [(MOBundleQualityManager *)self _uninterestingLocationForBundle:v11 handler:v28];
    dispatch_group_enter(v12);
    v27[0] = 0;
    v27[1] = v27;
    v27[2] = 0x2020000000;
    v27[3] = 0;
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = __63__MOBundleQualityManager__applyQualityChecksForBundle_handler___block_invoke_136;
    v23[3] = &unk_100336A08;
    v26 = v27;
    v13 = v11;
    v24 = v13;
    v14 = v12;
    v25 = v14;
    [(MOBundleQualityManager *)self _InterestingLocationForBundle:v13 handler:v23];
    v15 = [(MOBundleQualityManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __63__MOBundleQualityManager__applyQualityChecksForBundle_handler___block_invoke_137;
    block[3] = &unk_100336A30;
    v20 = v37;
    v21 = v32;
    v22 = v27;
    v17 = v13;
    v18 = self;
    v19 = v7;
    dispatch_group_notify(v14, v15, block);

    _Block_object_dispose(v27, 8);
    _Block_object_dispose(v32, 8);

    _Block_object_dispose(v37, 8);
  }
}

void __63__MOBundleQualityManager__applyQualityChecksForBundle_handler___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "applyQualityChecksForBundle, sensitive location type, %lu, for input bundle, %@", &v6, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __63__MOBundleQualityManager__applyQualityChecksForBundle_handler___block_invoke_135(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "applyQualityChecksForBundle, uninteresting location type, %lu, for input bundle, %@", &v6, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __63__MOBundleQualityManager__applyQualityChecksForBundle_handler___block_invoke_136(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) = a2;
  v4 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = *(a1 + 32);
    v6 = 134218242;
    v7 = a2;
    v8 = 2112;
    v9 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "applyQualityChecksForBundle, interesting location type, %lu, for input bundle, %@", &v6, 0x16u);
  }

  dispatch_group_leave(*(a1 + 40));
}

void __63__MOBundleQualityManager__applyQualityChecksForBundle_handler___block_invoke_137(uint64_t a1)
{
  v2 = objc_opt_new();
  v3 = [*(a1 + 32) metaDataForRank];

  if (v3)
  {
    v4 = [*(a1 + 32) metaDataForRank];
    v5 = [v4 mutableCopy];

    v2 = v5;
  }

  v6 = [NSNumber numberWithUnsignedInteger:*(*(*(a1 + 56) + 8) + 24)];
  [v2 setObject:v6 forKey:@"SensitiveLocation"];

  v7 = [NSNumber numberWithUnsignedInteger:*(*(*(a1 + 64) + 8) + 24)];
  [v2 setObject:v7 forKey:@"UninterestingLocation"];

  v8 = [NSNumber numberWithUnsignedInteger:*(*(*(a1 + 72) + 8) + 24)];
  [v2 setObject:v8 forKey:@"InterestingLocation"];

  v9 = *(*(*(a1 + 64) + 8) + 24);
  if (v9 == 1 || v9 == 6)
  {
    v11 = &off_10036E840;
LABEL_9:
    [v2 setObject:v11 forKey:@"PoiCategory"];
    goto LABEL_10;
  }

  v16 = *(*(*(a1 + 72) + 8) + 24);
  v11 = &off_10036E850;
  if (v16 == 6 || v16 == 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  [*(a1 + 32) setMetaDataForRank:v2];
  if ([*(a1 + 40) _isSingleBundleSensitive:*(a1 + 32)])
  {
    [*(a1 + 32) setIsSensitive:1];
  }

  v12 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = [*(a1 + 32) isSensitive];
    v14 = *(a1 + 32);
    v17[0] = 67109378;
    v17[1] = v13;
    v18 = 2112;
    v19 = v14;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "sensitivity: %d for bundle: %@", v17, 0x12u);
  }

  v15 = *(a1 + 32);
  (*(*(a1 + 48) + 16))();
}

- (void)applyQualityChecksForBundles:(id)a3 handler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(MOBundleQualityManager *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = __63__MOBundleQualityManager_applyQualityChecksForBundles_handler___block_invoke;
  block[3] = &unk_100336A58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_applyQualityChecksForBundles:(id)a3 handler:(id)a4
{
  v25 = a3;
  v24 = a4;
  v6 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    LODWORD(buf) = 134217984;
    *(&buf + 4) = [v25 count];
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "applyQualityChecksForBundles, input bundles count,  %lu", &buf, 0xCu);
  }

  if ([v25 count])
  {
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v7 = v25;
    v8 = [v7 countByEnumeratingWithState:&v39 objects:v49 count:16];
    if (v8)
    {
      v9 = *v40;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v40 != v9)
          {
            objc_enumerationMutation(v7);
          }

          v11 = *(*(&v39 + 1) + 8 * i);
          v12 = [v11 suggestionID];
          v13 = [v12 UUIDString];

          v14 = [(MOBundleQualityManager *)self cachedBundles];
          [v14 setObject:v11 forKey:v13];
        }

        v8 = [v7 countByEnumeratingWithState:&v39 objects:v49 count:16];
      }

      while (v8);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v45 = 0x3032000000;
    v46 = __Block_byref_object_copy__4;
    v47 = __Block_byref_object_dispose__4;
    v48 = objc_alloc_init(NSMutableArray);
    v15 = dispatch_group_create();
    v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v17 = dispatch_queue_create("com.apple.bundle.BundleQuality", v16);

    v37 = 0u;
    v38 = 0u;
    v36 = 0u;
    v35 = 0u;
    obj = v7;
    v18 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v18)
    {
      v19 = *v36;
      do
      {
        for (j = 0; j != v18; j = j + 1)
        {
          if (*v36 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v35 + 1) + 8 * j);
          dispatch_group_enter(v15);
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = __64__MOBundleQualityManager__applyQualityChecksForBundles_handler___block_invoke;
          v30[3] = &unk_100336AA8;
          v22 = v17;
          p_buf = &buf;
          v31 = v22;
          v32 = v21;
          v33 = v15;
          [(MOBundleQualityManager *)self _applyQualityChecksForBundle:v21 handler:v30];
        }

        v18 = [obj countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v18);
    }

    v23 = [(MOBundleQualityManager *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = __64__MOBundleQualityManager__applyQualityChecksForBundles_handler___block_invoke_145;
    block[3] = &unk_100336AD0;
    v29 = &buf;
    block[4] = self;
    v28 = v24;
    dispatch_group_notify(v15, v23, block);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    (*(v24 + 2))(v24, v25, 0);
  }
}

void __64__MOBundleQualityManager__applyQualityChecksForBundles_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = __64__MOBundleQualityManager__applyQualityChecksForBundles_handler___block_invoke_2;
  v11[3] = &unk_100336A80;
  v7 = *(a1 + 56);
  v12 = v6;
  v13 = v5;
  v8 = *(a1 + 32);
  v14 = *(a1 + 40);
  v15 = v7;
  v9 = v5;
  v10 = v6;
  dispatch_sync(v8, v11);
  dispatch_group_leave(*(a1 + 48));
}

void __64__MOBundleQualityManager__applyQualityChecksForBundles_handler___block_invoke_2(void *a1)
{
  v2 = a1 + 4;
  if (a1[4])
  {
    v3 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __64__MOBundleQualityManager__applyQualityChecksForBundles_handler___block_invoke_2_cold_1(a1, v2, v3);
    }
  }

  else
  {
    v4 = *(*(a1[7] + 8) + 40);
    v5 = a1[5];

    [v4 addObject:v5];
  }
}

uint64_t __64__MOBundleQualityManager__applyQualityChecksForBundles_handler___block_invoke_145(uint64_t a1)
{
  v2 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = [*(*(*(a1 + 48) + 8) + 40) count];
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "applyQualityChecksForBundles, output bundles count,  %lu", &v7, 0xCu);
  }

  v4 = [*(a1 + 32) cachedBundles];
  [v4 removeAllObjects];

  v5 = *(*(*(a1 + 48) + 8) + 40);
  return (*(*(a1 + 40) + 16))();
}

- (id)loadMapCategoryJSONFromFilePath
{
  v11 = 0;
  v2 = [NSData dataWithContentsOfFile:@"/System/Library/Moments/MUIDCategories.json" options:0 error:&v11];
  v3 = v11;
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = v2 == 0;
  }

  if (v4)
  {
    v7 = v3;
    v5 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      [(MOBundleQualityManager *)v7 loadMapCategoryJSONFromFilePath];
    }

    goto LABEL_13;
  }

  v10 = 0;
  v6 = [NSJSONSerialization JSONObjectWithData:v2 options:0 error:&v10];
  v7 = v10;
  v8 = _mo_log_facility_get_os_log(&MOLogFacilityBundleQuality);
  v5 = v8;
  if (!v6)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(MOBundleQualityManager *)v7 loadMapCategoryJSONFromFilePath];
    }

LABEL_13:
    v6 = 0;
    goto LABEL_14;
  }

  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    *buf = 138412290;
    v13 = @"/System/Library/Moments/MUIDCategories.json";
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "The MUID json file was successfully read from path, %@", buf, 0xCu);
  }

LABEL_14:

  return v6;
}

void __64__MOBundleQualityManager__applyQualityChecksForBundles_handler___block_invoke_2_cold_1(uint64_t a1, uint64_t *a2, os_log_t log)
{
  v3 = *(a1 + 48);
  v4 = *a2;
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = v4;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "fail to set quality flags for bundle: %@ with error %@", &v5, 0x16u);
}

- (void)loadMapCategoryJSONFromFilePath
{
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "Could not read the MUID JSON file, error: %@", &v2, 0xCu);
}

@end