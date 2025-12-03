@interface CLIndoorSettings
+ (id)settingToSet:(id)set;
- (CLIndoorSettings)initWithSettings:(id)settings;
- (id).cxx_construct;
- (optional<double>)indoorPrefetchClusterMergeRadius;
- (optional<double>)indoorTilePrefetchRadius;
- (optional<double>)regionalPrefetchClusterMergeRadius;
- (optional<double>)regionalTilePrefetchRadius;
- (optional<unsigned)indoorTilePrefetchMaxCount;
- (optional<unsigned)regionalTilePrefetchMaxCount;
@end

@implementation CLIndoorSettings

+ (id)settingToSet:(id)set
{
  setCopy = set;
  if (setCopy)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [NSSet setWithArray:setCopy];
LABEL_9:
      v5 = v4;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = setCopy;
      goto LABEL_16;
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      v4 = [NSSet setWithObject:setCopy];
      goto LABEL_9;
    }

    if (qword_10045B060 != -1)
    {
      sub_100382898();
    }

    v6 = qword_10045B068;
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = [setCopy description];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Cannot cast %{public}@ to a set", &v9, 0xCu);
    }
  }

  v5 = 0;
LABEL_16:

  return v5;
}

- (CLIndoorSettings)initWithSettings:(id)settings
{
  settingsCopy = settings;
  v77.receiver = self;
  v77.super_class = CLIndoorSettings;
  v5 = [(CLIndoorSettings *)&v77 init];
  if (v5)
  {
    v6 = [settingsCopy objectForKeyedSubscript:off_10045B338];
    v65 = v6;
    if (v6)
    {
      bOOLValue = [v6 BOOLValue];
    }

    else
    {
      bOOLValue = 1;
    }

    v5->_pipelinedEnabled = bOOLValue;
    v8 = [settingsCopy objectForKeyedSubscript:off_10045B340];
    v9 = [CLIndoorSettings settingToSet:v8];
    [(CLIndoorSettings *)v5 setDisabledVenues:v9];

    v10 = [settingsCopy objectForKeyedSubscript:off_10045B348];
    v64 = v10;
    if (v10)
    {
      [v10 doubleValue];
    }

    else
    {
      v11 = 10.0;
    }

    [(CLIndoorSettings *)v5 setDebounceInterval:v11];
    v12 = [settingsCopy objectForKeyedSubscript:off_10045B350];
    v63 = v12;
    if (v12)
    {
      [v12 doubleValue];
    }

    else
    {
      v13 = 5.0;
    }

    [(CLIndoorSettings *)v5 setErrorBackoffDuration:(v13 * 1000000000.0)];
    v14 = [settingsCopy objectForKeyedSubscript:off_10045B3B0];
    v62 = v14;
    if (v14)
    {
      intValue = [v14 intValue];
    }

    else
    {
      intValue = 86400;
    }

    v5->_tilePrefetchActivityInterval.__rep_ = intValue;
    v71 = [settingsCopy objectForKeyedSubscript:off_10045B3B8];
    if (v71)
    {
      v5->_tilePrefetchPredictionActivityCycleAllowance.m_storage = [v71 unsignedIntValue];
      v5->_tilePrefetchPredictionActivityCycleAllowance.m_initialized = 1;
    }

    v70 = [settingsCopy objectForKeyedSubscript:off_10045B358];
    if (v70)
    {
      [v70 doubleValue];
      [(CLIndoorSettings *)v5 setTilePrefetchRadius:1, v16];
    }

    v69 = [settingsCopy objectForKeyedSubscript:off_10045B360];
    if (v69)
    {
      [v69 doubleValue];
      [(CLIndoorSettings *)v5 setTilePrefetchMaxCount:1, v17];
    }

    v68 = [settingsCopy objectForKeyedSubscript:off_10045B368];
    if (v68)
    {
      [v68 doubleValue];
      [(CLIndoorSettings *)v5 setPrefetchClusterMergeRadius:1, v18];
    }

    v67 = [settingsCopy objectForKeyedSubscript:off_10045B370];
    if (v67)
    {
      [v67 doubleValue];
      [(CLIndoorSettings *)v5 setTilePrefetchRadius:1, v19];
    }

    v20 = [settingsCopy objectForKeyedSubscript:off_10045B378];
    v21 = v20;
    if (v20)
    {
      [v20 doubleValue];
      [(CLIndoorSettings *)v5 setTilePrefetchMaxCount:1, v22];
    }

    v23 = [settingsCopy objectForKeyedSubscript:off_10045B380];
    v24 = v23;
    if (v23)
    {
      [v23 doubleValue];
      [(CLIndoorSettings *)v5 setPrefetchClusterMergeRadius:1, v25];
    }

    v26 = [settingsCopy objectForKeyedSubscript:off_10045B388];
    v27 = v26;
    if (v26)
    {
      [v26 doubleValue];
      [(CLIndoorSettings *)v5 setRegionalTilePrefetchRadius:1, v28];
    }

    v66 = [settingsCopy objectForKeyedSubscript:off_10045B390];
    if (v21)
    {
      [v66 doubleValue];
      [(CLIndoorSettings *)v5 setRegionalTilePrefetchMaxCount:1, v29];
    }

    v30 = [settingsCopy objectForKeyedSubscript:off_10045B398];
    v31 = v30;
    if (v30)
    {
      [v30 doubleValue];
      [(CLIndoorSettings *)v5 setRegionalPrefetchClusterMergeRadius:1, v32];
    }

    v5->_tilePrefetchRelevancyWindow.__rep_ = 604800;
    v33 = [settingsCopy objectForKeyedSubscript:off_10045B330];
    v34 = +[GEOCountryConfiguration sharedConfiguration];
    v35 = [v34 defaultForKey:@"CLPipelineAvailabilityServer" defaultValue:@"https://cl4.apple.com/2/m2/a.1/"];

    if (v33)
    {
      v36 = v33;
    }

    else
    {
      v36 = v35;
    }

    [(CLIndoorSettings *)v5 setIndoorAvailabilityTilesServerUrl:v36];
    if (qword_10045B060 != -1)
    {
      sub_1003828AC();
    }

    v37 = qword_10045B068;
    if (os_log_type_enabled(qword_10045B068, OS_LOG_TYPE_DEBUG))
    {
      indoorAvailabilityTilesServerUrl = v5->_indoorAvailabilityTilesServerUrl;
      *buf = 138477827;
      v79 = indoorAvailabilityTilesServerUrl;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "indoorAvailabilityTilesServerUrl = %{private}@", buf, 0xCu);
    }

    v39 = [settingsCopy objectForKeyedSubscript:off_10045B3A0];
    v40 = [CLIndoorSettings settingToSet:v39];
    [(CLIndoorSettings *)v5 setForcedVenues:v40];

    v41 = [settingsCopy objectForKeyedSubscript:off_10045B3A8];
    v42 = v41;
    if (v41)
    {
      v43 = [v41 objectForKeyedSubscript:@"lat"];
      [v43 doubleValue];
      v75 = v44;

      v45 = [v42 objectForKeyedSubscript:@"lon"];
      [v45 doubleValue];
      v76 = v46;

      v47 = [v42 objectForKeyedSubscript:@"horizontalAccuracy"];
      LOBYTE(v45) = v47 == 0;

      if (v45)
      {
        v73 = 0x4049000000000000;
      }

      else
      {
        v48 = [v42 objectForKeyedSubscript:@"horizontalAccuracy"];
        [v48 doubleValue];
        v73 = v49;
      }

      v51 = [v42 objectForKeyedSubscript:@"lifespan"];
      v52 = v51 == 0;

      if (v52)
      {
        v74 = 0xBFF0000000000000;
      }

      else
      {
        v53 = [v42 objectForKeyedSubscript:@"lifespan"];
        [v53 doubleValue];
        v74 = v54;
      }

      v55 = [[CLGpsPosition alloc] initWithLocation:v72 andPrivateLocation:buf];
      fakeLastFix = v5->_fakeLastFix;
      v5->_fakeLastFix = v55;
    }

    else
    {
      v50 = v5->_fakeLastFix;
      v5->_fakeLastFix = 0;
    }

    v57 = [settingsCopy objectForKeyedSubscript:off_10045B3C0];
    v58 = v57;
    if (v57)
    {
      [v57 doubleValue];
    }

    else
    {
      v59 = 250.0;
    }

    [(CLIndoorSettings *)v5 setVenueGroupDistance:v59];
    v60 = v5;
  }

  return v5;
}

- (optional<double>)indoorTilePrefetchRadius
{
  m_storage = self->_indoorTilePrefetchRadius.m_storage;
  v3 = *&self->_indoorTilePrefetchRadius.m_initialized;
  result.m_storage = m_storage;
  result.m_initialized = v3;
  return result;
}

- (optional<unsigned)indoorTilePrefetchMaxCount
{
  m_storage = self->_indoorTilePrefetchMaxCount.m_storage;
  v3 = *&self->_indoorTilePrefetchMaxCount.m_initialized;
  result.m_storage = m_storage;
  result.m_initialized = v3;
  return result;
}

- (optional<double>)indoorPrefetchClusterMergeRadius
{
  m_storage = self->_indoorPrefetchClusterMergeRadius.m_storage;
  v3 = *&self->_indoorPrefetchClusterMergeRadius.m_initialized;
  result.m_storage = m_storage;
  result.m_initialized = v3;
  return result;
}

- (optional<double>)regionalTilePrefetchRadius
{
  m_storage = self->_regionalTilePrefetchRadius.m_storage;
  v3 = *&self->_regionalTilePrefetchRadius.m_initialized;
  result.m_storage = m_storage;
  result.m_initialized = v3;
  return result;
}

- (optional<unsigned)regionalTilePrefetchMaxCount
{
  m_storage = self->_regionalTilePrefetchMaxCount.m_storage;
  v3 = *&self->_regionalTilePrefetchMaxCount.m_initialized;
  result.m_storage = m_storage;
  result.m_initialized = v3;
  return result;
}

- (optional<double>)regionalPrefetchClusterMergeRadius
{
  m_storage = self->_regionalPrefetchClusterMergeRadius.m_storage;
  v3 = *&self->_regionalPrefetchClusterMergeRadius.m_initialized;
  result.m_storage = m_storage;
  result.m_initialized = v3;
  return result;
}

- (id).cxx_construct
{
  *(self + 48) = 0;
  *(self + 96) = 0;
  *(self + 112) = 0;
  *(self + 128) = 0;
  *(self + 144) = 0;
  *(self + 160) = 0;
  *(self + 176) = 0;
  *(self + 192) = 0;
  *(self + 208) = 0;
  *(self + 224) = 0;
  return self;
}

@end