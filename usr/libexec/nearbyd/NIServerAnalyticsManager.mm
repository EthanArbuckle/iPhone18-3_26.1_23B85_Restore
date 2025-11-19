@interface NIServerAnalyticsManager
- (BOOL)_isSemiStaticFromVIO:(optional<nearby:(optional<nearby:(double)a5 :algorithms::common::Pose> *)a4 :algorithms::common::Pose> *)a3 ::;
- (NIServerAnalyticsManager)initWithBundleIdentifier:(id)a3;
- (VectorAggregateErrors)_calculateErrorStatsFromVector:(SEL)a3;
- (double)_deltaDistanceFromVIOPoses:(optional<nearby:(optional<nearby::algorithms::common::Pose> *)a4 :algorithms::common::Pose> *)a3 :;
- (double)_finderTimeFromFirstPoseTo:(double)a3;
- (id).cxx_construct;
- (id)_algorithmSourceToString:(int)a3;
- (void)_calculateAndLogErrorsFromIODeltaP:(NIServerAnalyticsManager *)self vioDeltaP:(SEL)a2 vioPos:;
- (void)_calculateIOMetrics:(double)a3;
- (void)_calculatePoseSplicingMetrics;
- (void)_calculateStraightLineDistance;
- (void)_onVIOReset;
- (void)_sessionStoppedWithTimestamp:(double)a3;
- (void)_submitFindingSessionEndStats;
- (void)_updateAlignedPDRMetrics:(const void *)a3;
- (void)_updateMinMaxRangeAndRSSI:(double)a3 uwbRSSI:(double)a4 nbRSSI:(optional<double>)a5;
- (void)_updateUserMovedDistanceWithPose:(const void *)a3 lastPoseInfo:(void *)a4;
- (void)appBecameNotVisibleWithTimestamp:(double)a3;
- (void)appBecameVisibleWithTimestamp:(double)a3;
- (void)appPresentedLiveActivity;
- (void)dealloc;
- (void)lifecycleTimeoutAfterTrackingForDiscoveryToken:(id)a3;
- (void)lifecycleTimeoutBeforeTrackingForDiscoveryToken:(id)a3;
- (void)nearbyObjectUpdated:(id)a3;
- (void)sessionConfiguredAccessoryWithTimestamp:(double)a3;
- (void)sessionConfiguredAccessoryWithTimestamp:(double)a3 withTxPower:(int)a4;
- (void)sessionConnectedToAccessoryWithTimestamp:(double)a3;
- (void)sessionInterruptedWithTimestamp:(double)a3;
- (void)sessionInvalidatedWithTimestamp:(double)a3;
- (void)sessionPausedWithTimestamp:(double)a3;
- (void)sessionSuccessfullyRanWithConfig:(id)a3 withTimestamp:(double)a4;
- (void)updateFindButtonTime:(double)a3;
- (void)updateWithAcquisitionReason:(int)a3;
- (void)updateWithBTRSSIMeasurementWithTimestamp:(double)a3 withRssi:(double)a4;
- (void)updateWithFindeePeerData:(const void *)a3;
- (void)updateWithFinderPeerData:(const void *)a3;
- (void)updateWithMissedRange;
- (void)updateWithNewRegion:(id)a3 withTimestamp:(double)a4;
- (void)updateWithPDR:(const void *)a3;
- (void)updateWithPeerLocationFromFMF;
- (void)updateWithPose:(const void *)a3;
- (void)updateWithRangeResult:(RangeResult *)a3;
- (void)updateWithRangingMode:(int)a3;
- (void)updateWithSASolution:(Solution *)a3;
- (void)updateWithSelfLocation:(const LocationInput *)a3;
- (void)updateWithSolution:(const void *)a3;
- (void)updateWithSuccessfulRange:(double)a3 uwbRSSI:(double)a4 nbRSSI:(optional<double>)a5;
- (void)updateWithVIOPose:(Pose *)a3;
@end

@implementation NIServerAnalyticsManager

- (NIServerAnalyticsManager)initWithBundleIdentifier:(id)a3
{
  v5 = a3;
  v26.receiver = self;
  v26.super_class = NIServerAnalyticsManager;
  v6 = [(NIServerAnalyticsManager *)&v26 init];
  v7 = v6;
  v8 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_bundleIdentifier, a3);
    bundleIdentifier = v8->_bundleIdentifier;
    if (bundleIdentifier)
    {
      v10 = [(NSString *)bundleIdentifier UTF8String];
      v11 = strlen(v10);
      if (v11 >= 0x7FFFFFFFFFFFFFF8)
      {
        sub_100013AEC();
      }

      v12 = v11;
      if (v11 >= 0x17)
      {
        operator new();
      }

      HIBYTE(v25) = v11;
      if (v11)
      {
        memmove(&__dst, v10, v11);
      }

      *(&__dst + v12) = 0;
      if (*(&v8->_bundleIdAsStdString.__rep_.__l + 23) < 0)
      {
        operator delete(v7->_bundleIdAsStdString.__rep_.__l.__data_);
      }

      *v7->_bundleIdAsStdString.__rep_.__s.__data_ = __dst;
      *(&v7->_bundleIdAsStdString.__rep_.__l + 2) = v25;
    }

    else
    {
      std::string::assign(&v7->_bundleIdAsStdString, "");
    }

    v8->_isRunning = 0;
    v8->_runTimestamp = 0.0;
    v8->_isVisible = 1;
    v8->_timeSpentVisible = 0.0;
    v8->_timeSpentNotVisible = 0.0;
    v8->_visibilityUpdateTimestamp = 0.0;
    *&v8->_isLiveActivityEverActive = 0;
    *&v8->_firstDistance = 0u;
    *&v8->_maxDistance = 0u;
    lifecycleTimeoutType = v8->_lifecycleTimeoutType;
    v8->_lifecycleTimeoutType = @"None";

    v8->_sessionType = 0;
    v8->_backgroundMode = 0;
    *&v8->_hasAccessoryDataRate = 0;
    v8->_hasVerticallyConverged = 0;
    *&v8->_lastVIOPosition[8] = 0;
    v8->_firstRangeMeasurementTime = 0.0;
    *v8->_lastVIOPosition = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&v8->_distanceMovedToHorizontalConvergence = _Q0;
    *&v8->_totalDistanceMoved = _Q0;
    v22 = _Q0;
    *&v8->_rangeAtVerticalConvergence = _Q0;
    v8->_timeToVerticalConvergence = -1.0;
    *&v8->_numberOfInvalidPose = 0;
    v8->_numberOfLostVerticalConvergence = 0;
    v8->_timeAtLastLocationUpdate = -1.0;
    v8->_timeAtFirstLocationUpdate = -1.0;
    if (v8->_lastLocationType.__engaged_)
    {
      v8->_lastLocationType.__engaged_ = 0;
    }

    *&v7->_timeLocationFromPipeline = 0u;
    *&v7->_timeLocationFromWiFi = 0u;
    *&v7->_timeLocationFromGPSCoarse = 0u;
    *&v7->_timeLocationFromLOIOverride = 0u;
    *&v7->_timeLocationFromAccessory = 0u;
    *&v7->_timeLocationFromCompensated = 0u;
    *&v19 = -1;
    *(&v19 + 1) = -1;
    *&v7->_numberOfPeerData = v19;
    *&v7->_numberOfDeltaVelocityFromPeerData = v19;
    *&v7->_numberOfStatic = v19;
    v8->_timeAtFirstPeerData = -1.0;
    v8->_timeAtLastBoundedDisplacementUpdate = -1.0;
    if (v8->_lastMotionCategory.__engaged_)
    {
      v8->_lastMotionCategory.__engaged_ = 0;
    }

    *&v8->_timeFindeeWasSlowlyMoving = 0u;
    *&v8->_timeFindeeWasWalkingOrUnknown = 0u;
    *&v8->_pdrTimeAtFirstPDRUpdate = xmmword_100549700;
    *&v8->_pdrTimeAtLastPDRUpdate = xmmword_100549700;
    v8->_pdrIsYieldingDeltaPosition = 0;
    v8->_timeAtFirstPose = -1.0;
    *&v8->_timeAtFirstValidPose = v22;
    *&v8->_timeAtFirstOutputRange = v22;
    *&v8->_timeAtFirstFindeeData = v22;
    *&v8->_timeAtFirstSelfLocation = v22;
    *&v8->_timeAtFirstPeerLocationFromFindeeData = v22;
    *&v8->_timeAtFirstPDRFromFindeeData = v22;
    *&v8->_timeAtFirstDeltaVelocityFromFindeeData = v22;
    *&v8->_timeAtEndOfSession = v22;
    *&v8->_firstArrowAlgorithmSource = 0;
    v8->_armsReachAlgorithmSource = 0;
    *&v7->_numberOfArrowRevokes = -1;
    *&v7->_numberOfSolutions = -1;
    *&v7->_numberOfPeerDataFinder = -1;
    *&v8->_lastSolutionHadArrow = 0;
    v8->_lastPoseHadNormalTrackingState = 0;
    if (v8->_anon_3b8[72] == 1)
    {
      v8->_anon_3b8[72] = 0;
    }

    [(NIServerAnalyticsManager *)v8 _onVIOReset];
    if (v8->_isFinderAPhone.__engaged_)
    {
      v8->_isFinderAPhone.__engaged_ = 0;
    }

    if (v8->_isFindeeAPhone.__engaged_)
    {
      v8->_isFindeeAPhone.__engaged_ = 0;
    }

    v8->_timePDRAndVIOWasAvailable = 0.0;
    v8->_timeAtLastIOUpdate = -1.0;
    *&v7->_pdrPathLengthWhenVIOAvailable = 0u;
    if (v8->_anon_c28[72] == 1)
    {
      v8->_anon_c28[72] = 0;
    }

    *&v8->_pathLengthError = v23;
    *&v8->_radialDisplacementError = v23;
    *&v8->_stdSpeedFromVIO = v23;
    *&v8->_timeSSFromVIO = 0uLL;
    *&v8->_timeSSFromIOAndSSFromVIO = 0uLL;
    *&v8->_pdrSSDetectionTruePositiveRate = v23;
    *&v8->_percentTimeSSFromVIO = v23;
    *&v8->_runningMeanSpeedFromVIO = 0uLL;
    *&v8->_acquisitionReason = 0xFFFFFFFF00000000;
    v8->_firstDistance_finding = -1.0;
    *&v8->_firstNBRSSI = 0uLL;
    v8->_lastDistance_finding = -1.0;
    *&v7->_lastNBRSSI = 0uLL;
    v8->_maxDistance_finding = -1.79769313e308;
    *&v8->_maxNBRSSI = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *&v8->_minDistance_finding = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *&v8->_minYCoordinateFinder = xmmword_100549710;
    *&v8->_minUWBRSSI = xmmword_100549710;
    v8->_minYCoordinateFindee = 1.79769313e308;
    *&v8->_didFinderChangeFloor = 0;
    if (v8->_lastDisplacementSourceFindee.__engaged_)
    {
      v8->_lastDisplacementSourceFindee.__engaged_ = 0;
    }

    *&v7->_firstRawRangeValue = 0u;
    v8->_maxRawRangeValue = -1.79769313e308;
    *&v8->_minRawRangeValue = xmmword_100549720;
    v8->_rangeAtFirstArrow = -1.0;
    v8->_lastOdometryAvailabilityState = 0;
    v8->_vioPathLength = 0.0;
    *&v7->_vioAvailableTime = 0u;
    *&v7->_deltaVSourceTime = 0u;
    *&v7->_isOwner = 1;
    v8->_timeAtFindButton = -1.0;
    *&v8->_timeAtConnect = v23;
    v8->_rangingMode = -1;
    v8->_armsLengthDistance = 2.0;
    *&v8->_firstOutputDistance = v23;
    *&v8->_maxOutputDistance = v23;
    v8->_clientRequestIndex = 0;
    if (v7->_itemBtTxPower.__engaged_)
    {
      v7->_itemBtTxPower.__engaged_ = 0;
    }

    *&v8->_timeAtFirstBtRssiMeasurement = v23;
    v8->_lastBtRssi = -1.0;
    lastRegion = v8->_lastRegion;
    *&v8->_numberOfRegionFoundEvents = 0uLL;
  }

  return v8;
}

- (void)dealloc
{
  [(NIServerAnalyticsManager *)self _sessionStoppedWithTimestamp:sub_100005288()];
  v3.receiver = self;
  v3.super_class = NIServerAnalyticsManager;
  [(NIServerAnalyticsManager *)&v3 dealloc];
}

- (void)sessionSuccessfullyRanWithConfig:(id)a3 withTimestamp:(double)a4
{
  v7 = a3;
  if (!v7)
  {
    v83 = +[NSAssertionHandler currentHandler];
    [v83 handleFailureInMethod:a2 object:self file:@"NIServerAnalyticsManager.mm" lineNumber:679 description:{@"Invalid parameter not satisfying: %@", @"configuration"}];
  }

  v8 = qword_1009ECD20;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    *buf = 138412802;
    *&buf[4] = bundleIdentifier;
    v90 = 2112;
    *v91 = v7;
    *&v91[8] = 2048;
    v92 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#ni-ca,[%@] sessionSuccessfullyRanWithConfig: %@ withTimestamp: %f [s]", buf, 0x20u);
  }

  if (!self->_isRunning)
  {
LABEL_24:
    self->_isRunning = 1;
    self->_runTimestamp = a4;
    self->_visibilityUpdateTimestamp = a4;
    self->_receivedDistance = 0;
    self->_timeSpentVisible = 0.0;
    self->_timeSpentNotVisible = 0.0;
    *&self->_firstDistance = 0u;
    *&self->_maxDistance = 0u;
    lifecycleTimeoutType = self->_lifecycleTimeoutType;
    self->_lifecycleTimeoutType = @"None";

    *&self->_isCurrentlyTrackingVIO = 0;
    *&self->_receivedRangeMeasurement = 0;
    *&self->_lastVIOPosition[8] = 0;
    self->_firstRangeMeasurementTime = 0.0;
    *self->_lastVIOPosition = 0;
    __asm { FMOV            V0.2D, #-1.0 }

    *&self->_distanceMovedToHorizontalConvergence = _Q0;
    *&self->_totalDistanceMoved = _Q0;
    v84 = _Q0;
    *&self->_rangeAtVerticalConvergence = _Q0;
    self->_timeToVerticalConvergence = -1.0;
    *&self->_numberOfInvalidPose = 0;
    self->_numberOfLostVerticalConvergence = 0;
    self->_timeAtLastLocationUpdate = -1.0;
    self->_timeAtFirstLocationUpdate = -1.0;
    if (self->_lastLocationType.__engaged_)
    {
      self->_lastLocationType.__engaged_ = 0;
    }

    *&self->_timeLocationFromPipeline = 0u;
    *&self->_timeLocationFromWiFi = 0u;
    *&self->_timeLocationFromGPSCoarse = 0u;
    *&self->_timeLocationFromLOIOverride = 0u;
    *&self->_timeLocationFromAccessory = 0u;
    *&self->_timeLocationFromCompensated = 0u;
    *&v30 = -1;
    *(&v30 + 1) = -1;
    *&self->_numberOfPeerData = v30;
    *&self->_numberOfDeltaVelocityFromPeerData = v30;
    *&self->_numberOfStatic = v30;
    self->_timeAtFirstPeerData = -1.0;
    self->_timeAtLastBoundedDisplacementUpdate = -1.0;
    if (self->_lastMotionCategory.__engaged_)
    {
      self->_lastMotionCategory.__engaged_ = 0;
    }

    *&self->_timeFindeeWasSlowlyMoving = 0uLL;
    *&self->_timeFindeeWasWalkingOrUnknown = 0uLL;
    *&self->_pdrTimeAtFirstPDRUpdate = xmmword_100549700;
    *&self->_pdrTimeAtLastPDRUpdate = xmmword_100549700;
    self->_pdrIsYieldingDeltaPosition = 0;
    self->_timeAtFirstPose = -1.0;
    *&self->_timeAtFirstValidPose = _Q0;
    *&self->_timeAtFirstOutputRange = _Q0;
    self->_timeAtFirstRawUWBRange = -1.0;
    *&self->_timeAtFirstSelfLocation = _Q0;
    *&self->_timeAtFirstPeerLocationFromFindeeData = _Q0;
    *&self->_timeAtFirstPDRFromFindeeData = _Q0;
    *&self->_timeAtFirstDeltaVelocityFromFindeeData = _Q0;
    *&self->_timeAtEndOfSession = _Q0;
    *&self->_firstArrowAlgorithmSource = 0;
    self->_armsReachAlgorithmSource = 0;
    *&self->_numberOfArrowRevokes = -1;
    *&self->_numberOfSolutions = -1;
    *&self->_numberOfPeerDataFinder = -1;
    *&self->_lastSolutionHadArrow = 0;
    self->_lastPoseHadNormalTrackingState = 0;
    if (self->_anon_3b8[72] == 1)
    {
      self->_anon_3b8[72] = 0;
    }

    [(NIServerAnalyticsManager *)self _onVIOReset];
    if (self->_isFinderAPhone.__engaged_)
    {
      self->_isFinderAPhone.__engaged_ = 0;
    }

    if (self->_isFindeeAPhone.__engaged_)
    {
      self->_isFindeeAPhone.__engaged_ = 0;
    }

    self->_timePDRAndVIOWasAvailable = 0.0;
    self->_timeAtLastIOUpdate = -1.0;
    *&self->_pdrPathLengthWhenVIOAvailable = 0u;
    if (self->_anon_c28[72] == 1)
    {
      self->_anon_c28[72] = 0;
    }

    *&self->_pathLengthError = v84;
    *&self->_radialDisplacementError = v84;
    *&self->_stdSpeedFromVIO = v84;
    *&self->_timeSSFromVIO = 0uLL;
    *&self->_timeSSFromIOAndSSFromVIO = 0uLL;
    *&self->_pdrSSDetectionTruePositiveRate = v84;
    *&self->_percentTimeSSFromVIO = v84;
    *&self->_runningMeanSpeedFromVIO = 0uLL;
    *&self->_acquisitionReason = 0xFFFFFFFF00000000;
    self->_firstDistance_finding = -1.0;
    *&self->_firstNBRSSI = 0uLL;
    self->_lastDistance_finding = -1.0;
    *&self->_lastNBRSSI = 0uLL;
    self->_maxDistance_finding = -1.79769313e308;
    *&self->_maxNBRSSI = vdupq_n_s64(0xFFEFFFFFFFFFFFFFLL);
    *&self->_minDistance_finding = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    *&self->_minYCoordinateFinder = xmmword_100549710;
    *&self->_minUWBRSSI = xmmword_100549710;
    self->_minYCoordinateFindee = 1.79769313e308;
    *&self->_didFinderChangeFloor = 0;
    if (self->_lastDisplacementSourceFindee.__engaged_)
    {
      self->_lastDisplacementSourceFindee.__engaged_ = 0;
    }

    *&self->_firstRawRangeValue = 0u;
    self->_maxRawRangeValue = -1.79769313e308;
    *&self->_minRawRangeValue = xmmword_100549720;
    self->_rangeAtFirstArrow = -1.0;
    self->_askedToRange = 0;
    self->_timeAtFindButton = -1.0;
    *&self->_firstOutputDistance = v84;
    *&self->_maxOutputDistance = v84;
    if (self->_itemBtTxPower.__engaged_)
    {
      self->_itemBtTxPower.__engaged_ = 0;
    }

    *&self->_timeAtFirstBtRssiMeasurement = v84;
    self->_lastBtRssi = -1.0;
    lastRegion = self->_lastRegion;
    *&self->_numberOfRegionFoundEvents = 0uLL;

    self->_sessionType = 0;
    p_sessionType = &self->_sessionType;
    self->_backgroundMode = 0;
    p_backgroundMode = &self->_backgroundMode;
    *&self->_isCameraAssistanceEnabled = 0;
    v34 = objc_opt_class();
    if (v34 == objc_opt_class())
    {
      *p_sessionType = 1;
      v41 = v7;
      *p_backgroundMode = [v41 backgroundMode];
      self->_isCameraAssistanceEnabled = [v41 _internalIsCameraAssistanceEnabled];
      self->_isExtendedDistanceMeasurementEnabled = [v41 isExtendedDistanceMeasurementEnabled];
      goto LABEL_96;
    }

    v35 = objc_opt_class();
    if (v35 != objc_opt_class())
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_97;
      }

      v36 = v7;
      v37 = [v36 discoveryTokenVariant];
      if (v37 == 1)
      {
        if ([v36 isFinder])
        {
          self->_sessionType = 4;
          v40 = 2.0;
          goto LABEL_66;
        }

        v64 = 3;
      }

      else
      {
        if (v37 != 2)
        {
          goto LABEL_96;
        }

        v38 = [v36 preferredUpdateRate];
        self->_askedToRange = v38 == 2;
        if (v38 == 2)
        {
          [(NIServerAnalyticsManager *)self updateFindButtonTime:a4];
        }

        v39 = [v36 requestedMeasurementQuality];
        if (v39 != 3)
        {
          if (v39 == 1)
          {
            self->_sessionType = 5;
            v40 = 1.0;
LABEL_66:
            self->_armsLengthDistance = v40;
          }

LABEL_96:

LABEL_97:
          std::mutex::lock(&stru_1009E9B50);
          v66 = ++byte_1009ECD78;
          *buf = &self->_sessionType;
          v67 = sub_10004EFB0(&xmmword_1009ECD28, &self->_sessionType);
          v68 = *(v67 + 20) + 1;
          *(v67 + 20) = v68;
          if (self->_bundleIdentifier)
          {
            size = *(&self->_bundleIdAsStdString.__rep_.__l + 23);
            if ((size & 0x8000000000000000) != 0)
            {
              size = self->_bundleIdAsStdString.__rep_.__l.__size_;
            }

            if (!size)
            {
              __assert_rtn("[NIServerAnalyticsManager sessionSuccessfullyRanWithConfig:withTimestamp:]", "NIServerAnalyticsManager.mm", 1016, "!_bundleIdAsStdString.empty()");
            }

            *buf = &self->_bundleIdAsStdString;
            v70 = sub_10004F1E4(&xmmword_1009ECD50, &self->_bundleIdAsStdString);
            v71 = *(v70 + 40) + 1;
            *(v70 + 40) = v71;
            v72 = v71;
          }

          else
          {
            v72 = 0;
          }

          std::mutex::unlock(&stru_1009E9B50);
          v10 = objc_alloc_init(NSMutableDictionary);
          v73 = [NSNumber numberWithInt:v66];
          [v10 setObject:v73 forKey:@"numSimultaneousSessions_All"];

          v74 = *p_sessionType;
          if (*p_sessionType > 2)
          {
            if (v74 == 3)
            {
              v75 = [NSNumber numberWithInt:v68];
              [v10 setObject:v75 forKey:@"com.apple.nearbyinteraction.peopleFindingSession.FindeeSummary"];
              goto LABEL_112;
            }

            if (v74 == 4)
            {
              v75 = [NSNumber numberWithInt:v68];
              [v10 setObject:v75 forKey:@"com.apple.nearbyinteraction.peopleFindingSession.FinderSummary"];
              goto LABEL_112;
            }
          }

          else
          {
            if (v74 == 1)
            {
              v75 = [NSNumber numberWithInt:v68];
              [v10 setObject:v75 forKey:@"numSimultaneousSessions_Peer"];
              goto LABEL_112;
            }

            if (v74 == 2)
            {
              v75 = [NSNumber numberWithInt:v68];
              [v10 setObject:v75 forKey:@"numSimultaneousSessions_Accessory"];
LABEL_112:
            }
          }

          v76 = self->_bundleIdentifier;
          if (v76)
          {
            [v10 setObject:v76 forKey:@"appBundleID"];
            v77 = [NSNumber numberWithInt:v72];
            [v10 setObject:v77 forKey:@"numSimultaneousSessions_ThisApp"];
          }

          v78 = [v10 mutableCopy];
          v79 = qword_1009ECD20;
          if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
          {
            v80 = self->_bundleIdentifier;
            v81 = [v78 description];
            *buf = 138412802;
            *&buf[4] = v80;
            v90 = 2112;
            *v91 = @"com.apple.nearbyinteractionv2.start";
            *&v91[8] = 2112;
            v92 = *&v81;
            _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);
          }

          v85 = v78;
          AnalyticsSendEventLazy();

          goto LABEL_118;
        }

        v65 = qword_1009ECD20;
        if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "#ni-ca,NIItemFinderBTFinding", buf, 2u);
        }

        v64 = 6;
      }

      *p_sessionType = v64;
      goto LABEL_96;
    }

    *p_sessionType = 2;
    v42 = v7;
    *p_backgroundMode = [v42 backgroundMode];
    self->_isCameraAssistanceEnabled = [v42 _internalIsCameraAssistanceEnabled];
    v43 = [v42 accessoryConfigData];
    v44 = v43;
    v45 = [v43 bytes];

    v46 = [v42 accessoryConfigData];
    v47 = [v46 length];
    v86 = 0;
    v87 = 0;
    v88 = 0;
    sub_1000069DC(&v86, v45, v47 + v45, v47);

    v48 = v86;
    v49 = v87 - v86;
    if ((v87 - v86) < 0x14)
    {
      goto LABEL_52;
    }

    v50 = *v86;
    v51 = !v86[1] && v50 == 1;
    v52 = v86[1] && v50 == 1;
    v53 = v86[8];
    v54 = v86[9];
    v55 = &word_1005497B2;
    v56 = 16;
    while (__PAIR64__(v54, v53) != __PAIR64__(*v55, *(v55 - 1)))
    {
      v55 += 2;
      v56 -= 4;
      if (!v56)
      {
        v57 = 0;
        goto LABEL_68;
      }
    }

    v57 = 1;
LABEL_68:
    _ZF = v86[9] && v53 == 2;
    v59 = _ZF;
    v60 = v53 <= 2 ? v59 : 1;
    v61 = v50 > 1 || v51;
    if (((v61 | v52) & 1) == 0 || ((v57 | v60) & 1) == 0)
    {
      goto LABEL_52;
    }

    if (!v57)
    {
      if (v60)
      {
        if (v49 < 0x30 || *(v86 + 15) < 0x20u)
        {
          goto LABEL_53;
        }

        v49 = 48;
      }

      else
      {
        v49 = 0;
      }

LABEL_124:
      v94 = 0;
      memcpy(buf, v86, v49);
      v82 = buf[4];
      if (buf[4] <= 0x14u && ((1 << buf[4]) & 0x100401) != 0 && v93 <= 1u && v94 <= 1u && HIBYTE(v94) <= 8u && ((1 << SHIBYTE(v94)) & 0x10D) != 0)
      {
        self->_hasAccessoryDataRate = 1;
        self->_accessoryDataRate = v82;
      }

LABEL_52:
      if (!v48)
      {
        goto LABEL_96;
      }

LABEL_53:
      v87 = v48;
      operator delete(v48);
      goto LABEL_96;
    }

    if (v53 == 2)
    {
      if (!v86[9])
      {
        v62 = 32;
        v63 = 48;
        goto LABEL_122;
      }
    }

    else if (v53 == 1 && v54 < 3)
    {
      v62 = 2 * v54 + 19;
      v63 = 2 * v54 + 35;
LABEL_122:
      if (v49 != v63 || *(v86 + 15) != v62)
      {
        goto LABEL_53;
      }

      goto LABEL_124;
    }

    __assert_rtn("UWBConfigDataTotalLengthBytes", "NIFiRaDefinitions.h", 418, "false");
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v12 = 0;
LABEL_17:
    v20 = qword_1009ECD20;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = self->_bundleIdentifier;
      *buf = 138412290;
      *&buf[4] = v21;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "#ni-ca,[%@] Session is already running. Stop it first.", buf, 0xCu);
    }

    [(NIServerAnalyticsManager *)self _sessionStoppedWithTimestamp:a4];
    if (v12)
    {
      ++self->_clientRequestIndex;
      v22 = qword_1009ECD20;
      if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
      {
        v23 = self->_bundleIdentifier;
        clientRequestIndex = self->_clientRequestIndex;
        *buf = 138412546;
        *&buf[4] = v23;
        v90 = 1024;
        *v91 = clientRequestIndex;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "#ni-ca,[%@] NIItemFinderPrecisionFinding going back to prewarming - clientRequestIndex incremented to %d", buf, 0x12u);
      }
    }

    self->_isRunning = 0;
    goto LABEL_24;
  }

  v10 = v7;
  v11 = self->_sessionType - 5;
  v12 = v11 < 2;
  if (v11 > 1)
  {
LABEL_16:

    goto LABEL_17;
  }

  v13 = qword_1009ECD20;
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = self->_bundleIdentifier;
    *buf = 138412290;
    *&buf[4] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "#ni-ca,[%@] NIItemFinderPrecisionFinding ran again while running", buf, 0xCu);
  }

  askedToRange = self->_askedToRange;
  v16 = [v10 preferredUpdateRate] == 2;
  self->_askedToRange = v16;
  if (askedToRange != v16)
  {
    v17 = qword_1009ECD20;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = self->_bundleIdentifier;
      v19 = self->_askedToRange;
      *buf = 138412802;
      *&buf[4] = v18;
      v90 = 1024;
      *v91 = askedToRange;
      *&v91[4] = 1024;
      *&v91[6] = v19;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_INFO, "#ni-ca,[%@] NIItemFinderPrecisionFinding askedToRange changed from %d to %d", buf, 0x18u);
    }

    if (self->_askedToRange)
    {
      [(NIServerAnalyticsManager *)self updateFindButtonTime:a4];
      goto LABEL_118;
    }

    goto LABEL_16;
  }

LABEL_118:
}

- (void)sessionPausedWithTimestamp:(double)a3
{
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = 138412546;
    v8 = bundleIdentifier;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] sessionPausedWithTimestamp: %f [s]", &v7, 0x16u);
  }

  [(NIServerAnalyticsManager *)self _sessionStoppedWithTimestamp:a3];
}

- (void)sessionInterruptedWithTimestamp:(double)a3
{
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = 138412546;
    v8 = bundleIdentifier;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] sessionInterruptedWithTimestamp: %f [s]", &v7, 0x16u);
  }

  [(NIServerAnalyticsManager *)self _sessionStoppedWithTimestamp:a3];
}

- (void)sessionInvalidatedWithTimestamp:(double)a3
{
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v7 = 138412546;
    v8 = bundleIdentifier;
    v9 = 2048;
    v10 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] sessionInvalidatedWithTimestamp: %f [s]", &v7, 0x16u);
  }

  [(NIServerAnalyticsManager *)self _sessionStoppedWithTimestamp:a3];
}

- (void)appBecameVisibleWithTimestamp:(double)a3
{
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v9 = 138412546;
    v10 = bundleIdentifier;
    v11 = 2048;
    v12 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] appBecameVisibleWithTimestamp: %f [s]", &v9, 0x16u);
  }

  if (self->_isVisible)
  {
    v7 = qword_1009ECD20;
    if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
    {
      v8 = self->_bundleIdentifier;
      v9 = 138412290;
      v10 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#ni-ca,[%@] App already visible. Ignore duplicate call.", &v9, 0xCu);
    }
  }

  else
  {
    self->_timeSpentNotVisible = self->_timeSpentNotVisible + a3 - self->_visibilityUpdateTimestamp;
    self->_visibilityUpdateTimestamp = a3;
    self->_isVisible = 1;
  }
}

- (void)appBecameNotVisibleWithTimestamp:(double)a3
{
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v10 = 138412546;
    v11 = bundleIdentifier;
    v12 = 2048;
    v13 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] appBecameNotVisibleWithTimestamp: %f [s]", &v10, 0x16u);
  }

  if (self->_isVisible)
  {
    v7 = self->_timeSpentVisible + a3 - self->_visibilityUpdateTimestamp;
    self->_visibilityUpdateTimestamp = a3;
    self->_timeSpentVisible = v7;
    self->_isVisible = 0;
  }

  else
  {
    v8 = qword_1009ECD20;
    if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
    {
      v9 = self->_bundleIdentifier;
      v10 = 138412290;
      v11 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#ni-ca,[%@] App already not visible. Ignore duplicate call.", &v10, 0xCu);
    }
  }
}

- (void)appPresentedLiveActivity
{
  v3 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v5 = 138412290;
    v6 = bundleIdentifier;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "#ni-ca,[%@] appPresentedLiveActivity [s]", &v5, 0xCu);
  }

  self->_isLiveActivityEverActive = 1;
}

- (void)updateWithRangeResult:(RangeResult *)a3
{
  if (self->_isCameraAssistanceEnabled && !self->_receivedRangeMeasurement)
  {
    self->_receivedRangeMeasurement = 1;
    self->_firstRangeMeasurementTime = a3->var1;
  }
}

- (void)updateWithVIOPose:(Pose *)a3
{
  if (self->_isCameraAssistanceEnabled)
  {
    if (a3[1].source.var0.__val_ == 2)
    {
      if (!self->_isCurrentlyTrackingVIO)
      {
        self->_isCurrentlyTrackingVIO = 1;
      }

      lightEstimate = a3[1].lightEstimate;
      if (self->_hasStartedVIOTracking)
      {
        v4 = vsubq_f32(*self->_lastVIOPosition, lightEstimate);
        v5 = vmulq_f32(v4, v4);
        self->_totalDistanceMoved = self->_totalDistanceMoved + sqrtf(v5.f32[2] + vaddv_f32(*v5.f32));
      }

      else
      {
        self->_hasStartedVIOTracking = 1;
        self->_totalDistanceMoved = 0.0;
      }
    }

    else
    {
      if (!self->_isCurrentlyTrackingVIO)
      {
        return;
      }

      ++self->_numberOfInvalidPose;
      self->_isCurrentlyTrackingVIO = 0;
      lightEstimate = 0;
    }

    *self->_lastVIOPosition = lightEstimate;
  }
}

- (void)updateWithSASolution:(Solution *)a3
{
  if (self->_isCameraAssistanceEnabled)
  {
    if (a3->var2.__engaged_)
    {
      if (!self->_isCurrentlyHorizontallyConverged)
      {
        self->_isCurrentlyHorizontallyConverged = 1;
      }

      if (!self->_hasHorizontallyConverged)
      {
        self->_hasHorizontallyConverged = 1;
        if (!a3->var1.var1)
        {
          sub_10049CF74();
        }

        self->_timeToHorizontalConvergence = a3->var1.var0.var1.var1 - self->_firstRangeMeasurementTime;
        self->_rangeAtHorizontalConvergence = a3->var1.var0.var1.var2;
        self->_distanceMovedToHorizontalConvergence = self->_totalDistanceMoved;
      }
    }

    else if (self->_isCurrentlyHorizontallyConverged)
    {
      self->_isCurrentlyHorizontallyConverged = 0;
      ++self->_numberOfLostHorizontalConvergence;
    }

    if (a3->var0.var0 == 1)
    {
      if (!self->_isCurrentlyVerticallyConverged)
      {
        self->_isCurrentlyVerticallyConverged = 1;
      }

      if (!self->_hasVerticallyConverged)
      {
        self->_hasVerticallyConverged = 1;
        if (!a3->var1.var1)
        {
          sub_10049CFA0();
        }

        self->_timeToVerticalConvergence = a3->var1.var0.var1.var1 - self->_firstRangeMeasurementTime;
        self->_rangeAtVerticalConvergence = a3->var1.var0.var1.var2;
        self->_distanceMovedToVerticalConvergence = self->_totalDistanceMoved;
      }
    }

    else if (self->_isCurrentlyVerticallyConverged)
    {
      self->_isCurrentlyVerticallyConverged = 0;
      ++self->_numberOfLostVerticalConvergence;
    }
  }
}

- (void)updateWithFindeePeerData:(const void *)a3
{
  if (self->_sessionType != 3)
  {
    return;
  }

  numberOfPeerData = self->_numberOfPeerData;
  v6 = __CFADD__(numberOfPeerData, 1);
  v7 = numberOfPeerData + 1;
  if (v6)
  {
    v7 = 1;
  }

  self->_numberOfPeerData = v7;
  if (self->_timeAtFirstPeerData == -1.0)
  {
    self->_timeAtFirstPeerData = sub_100005288();
    if ((*(a3 + 16) & 1) == 0)
    {
      goto LABEL_40;
    }

    self->_lastMotionCategory.var0.__val_ = *(a3 + 2);
    self->_lastMotionCategory.__engaged_ = 1;
    self->_timeAtLastBoundedDisplacementUpdate = sub_100005288();
    if (*(a3 + 72) == 1)
    {
      self->_lastDisplacementSourceFindee.var0.__val_ = *(a3 + 10);
      self->_lastDisplacementSourceFindee.__engaged_ = 1;
    }
  }

  if (*(a3 + 16) == 1)
  {
    numberOfBoundedDisplacementFromPeerData = self->_numberOfBoundedDisplacementFromPeerData;
    v6 = __CFADD__(numberOfBoundedDisplacementFromPeerData, 1);
    v9 = numberOfBoundedDisplacementFromPeerData + 1;
    if (v6)
    {
      v9 = 1;
    }

    self->_numberOfBoundedDisplacementFromPeerData = v9;
    v10 = *(a3 + 2);
    if (v10 <= 2)
    {
      v11 = qword_1005497C0[v10];
      v12 = *(&self->super.isa + v11);
      v6 = __CFADD__(v12, 1);
      v13 = v12 + 1;
      if (v6)
      {
        v13 = 1;
      }

      *(&self->super.isa + v11) = v13;
    }

    if (self->_lastMotionCategory.__engaged_)
    {
      val = self->_lastMotionCategory.var0.__val_;
      if (val <= 2)
      {
        v15 = qword_1005497D8[val];
        *(&self->super.isa + v15) = *(&self->super.isa + v15) + sub_100005288() - self->_timeAtLastBoundedDisplacementUpdate;
        self->_lastMotionCategory.var0.__val_ = val;
        self->_lastMotionCategory.__engaged_ = 1;
      }

      self->_timeAtLastBoundedDisplacementUpdate = sub_100005288();
      goto LABEL_22;
    }

LABEL_40:
    sub_1000195BC();
  }

LABEL_22:
  if (*(a3 + 72) == 1)
  {
    v16 = 412;
    if (*(a3 + 10) == 1)
    {
      v16 = 400;
    }

    v17 = *(&self->super.isa + v16);
    v6 = __CFADD__(v17, 1);
    v18 = v17 + 1;
    if (v6)
    {
      v18 = 1;
    }

    *(&self->super.isa + v16) = v18;
  }

  if (*(a3 + 112) == 1)
  {
    numberOfDeltaVelocityFromPeerData = self->_numberOfDeltaVelocityFromPeerData;
    v6 = __CFADD__(numberOfDeltaVelocityFromPeerData, 1);
    v20 = numberOfDeltaVelocityFromPeerData + 1;
    if (v6)
    {
      v20 = 1;
    }

    self->_numberOfDeltaVelocityFromPeerData = v20;
  }

  if (*(a3 + 160) == 1)
  {
    numberOfLocationFromPeerData = self->_numberOfLocationFromPeerData;
    v6 = __CFADD__(numberOfLocationFromPeerData, 1);
    v22 = numberOfLocationFromPeerData + 1;
    if (v6)
    {
      v22 = 1;
    }

    self->_numberOfLocationFromPeerData = v22;
  }
}

- (void)updateWithMissedRange
{
  if (self->_sessionType == 3)
  {
    numberOfMissedRanges = self->_numberOfMissedRanges;
    v3 = __CFADD__(numberOfMissedRanges, 1);
    v4 = numberOfMissedRanges + 1;
    if (v3)
    {
      v4 = 1;
    }

    self->_numberOfMissedRanges = v4;
  }
}

- (void)_calculateAndLogErrorsFromIODeltaP:(NIServerAnalyticsManager *)self vioDeltaP:(SEL)a2 vioPos:
{
  v5 = v4;
  v6 = v3;
  v7 = v2;
  v9 = sub_100005288();
  v10 = atan2f((-COERCE_FLOAT(*(v7 + 8)) * COERCE_FLOAT(*v6)) + (COERCE_FLOAT(*v7) * COERCE_FLOAT(v6->i64[1])), vmuls_lane_f32(COERCE_FLOAT(*(v7 + 8)), *v6, 2) + (COERCE_FLOAT(*v7) * COERCE_FLOAT(*v6))) * 57.2957795;
  v19 = v10;
  LOBYTE(v17) = 0;
  v18 = 0;
  engaged = self->_lastAngleError.__engaged_;
  if (engaged)
  {
    v17 = v10 - self->_lastAngleError.var0.__val_;
    v18 = 1;
  }

  self->_lastAngleError.var0.__val_ = v10;
  self->_lastAngleError.__engaged_ = 1;
  if ((self->_deltaAngleErrorHistory.__end_ - self->_deltaAngleErrorHistory.__begin_) <= 0x4AF && (self->_angleErrorHistory.__end_ - self->_angleErrorHistory.__begin_) <= 0x4AF && v9 - self->_timeOfLastSplicedPoseErrorLogging >= 0.5 && (self->_pointToPointErrorHistory.__end_ - self->_pointToPointErrorHistory.__begin_) <= 0x4AF)
  {
    if (engaged)
    {
      sub_100046F58(&self->_deltaAngleErrorHistory.__begin_, &v17);
    }

    sub_100046F58(&self->_angleErrorHistory.__begin_, &v19);
    vioPathLength = self->_vioPathLength;
    if (vioPathLength > 0.0)
    {
      v13 = vsubq_f32(*self->_integratedPDRVIOFrame, *v5);
      v14 = vmulq_f32(v13, v13);
      v15 = sqrtf(v14.f32[2] + vaddv_f32(*v14.f32)) / vioPathLength;
      v16 = v15;
      sub_100046F58(&self->_pointToPointErrorHistory.__begin_, &v16);
    }

    self->_timeOfLastSplicedPoseErrorLogging = v9;
  }
}

- (void)_updateAlignedPDRMetrics:(const void *)a3
{
  v5 = sub_10003F5C8();
  v6 = sub_100005288();
  *v7.i64 = v6 - v5;
  v8 = *a3 + v6 - v5;
  if (!self->_timeAtFirstIOPose.__engaged_ && *(a3 + 32) == 1 && *(a3 + 48) == 1)
  {
    v9 = *(a3 + 24);
    v7.i64[1] = *(a3 + 5);
    *v7.f32 = vcvt_f32_f64(v7);
    *v7.i64 = sqrtf(vaddv_f32(vmul_f32(*v7.f32, *v7.f32))) / 0.1;
    if (*v7.i64 > 0.15)
    {
      self->_timeAtFirstIOPose.var0.__val_ = v6;
      self->_timeAtFirstIOPose.__engaged_ = 1;
    }
  }

  sub_1003FC0A8(&self->_pdrAligner, a3, &v27, v8, v7);
  v10 = sub_1003FBC7C(&self->_pdrAligner);
  v11.n128_f64[0] = v8;
  sub_1003FC038(&self->_pdrAligner._poseHistory.__map_.__first_, v24, v11);
  if (v10 != 5)
  {
    self->_lastOdometryAvailabilityState = v10;
    return;
  }

  if (self->_lastOdometryAvailabilityState == 5)
  {
    v22.i8[0] = 0;
    v23 = 0;
    if ((v26 & 1) == 0)
    {
      return;
    }
  }

  else
  {
    *self->_integratedPDRVIOFrame = 0u;
    self->_vioPathLength = 0.0;
    if (self->_anon_f72[14] == 1)
    {
      self->_anon_f72[14] = 0;
    }

    if (v26 != 1)
    {
      return;
    }

    *self->_currentVIOOffsetPosition = v25;
    self->_lastOdometryAvailabilityState = 5;
    v22.i8[0] = 0;
    v23 = 0;
  }

  v12 = vsubq_f32(v25, *self->_currentVIOOffsetPosition);
  v21 = 1;
  v20 = v12;
  v13 = self->_anon_f72[14];
  if (v13 != 1)
  {
    v17 = 0;
    LOBYTE(v13) = 1;
    goto LABEL_22;
  }

  if (!self->_timeOfLastPDRUpdate.__engaged_)
  {
    v17 = 0;
    goto LABEL_22;
  }

  v14 = vsubq_f32(v12, *&self->_previousAdjustedRotatedVioPosition.var0.__null_state_);
  v23 = 1;
  v22 = v14;
  v15 = v8 - self->_timeOfLastPDRUpdate.var0.__val_;
  if (v15 > 0.0)
  {
    LOBYTE(v13) = 0;
    v16 = vmulq_f32(v14, v14);
    *v16.i64 = sqrtf(v16.f32[2] + vaddv_f32(*v16.f32));
    self->_vioPathLength = self->_vioPathLength + *v16.i64;
    v17 = *v16.i64 / v15 > 0.15;
LABEL_22:
    *&self->_previousAdjustedRotatedVioPosition.var0.__null_state_ = v20;
    self->_anon_f72[14] = v21;
    self->_timeOfLastPDRUpdate.var0.__val_ = v8;
    self->_timeOfLastPDRUpdate.__engaged_ = 1;
    if (v28)
    {
      v18 = v27;
      *self->_integratedPDRVIOFrame = vaddq_f32(v27, *self->_integratedPDRVIOFrame);
      if ((v13 & 1) == 0)
      {
        v19 = vmulq_f32(v18, v18);
        if (sqrtf(v19.f32[2] + vaddv_f32(*v19.f32)) / 0.1 > 0.15 && v17)
        {
          [(NIServerAnalyticsManager *)self _calculateAndLogErrorsFromIODeltaP:&v27 vioDeltaP:&v22 vioPos:&v20];
        }
      }
    }

    return;
  }

  if (v28 == 1)
  {
    *self->_integratedPDRVIOFrame = vaddq_f32(v27, *self->_integratedPDRVIOFrame);
  }
}

- (void)updateWithPDR:(const void *)a3
{
  sessionType = self->_sessionType;
  if (sessionType == 4)
  {
    [(NIServerAnalyticsManager *)self _updateAlignedPDRMetrics:a3];
    timeAtLastIOUpdate = self->_timeAtLastIOUpdate;
    v8 = *a3;
    if (timeAtLastIOUpdate == -1.0)
    {
      self->_timeAtLastIOUpdate = v8;
      timeAtLastIOUpdate = v8;
    }

    v9 = *(a3 + 7);
    v70 = *(a3 + 6);
    v71 = v9;
    v10 = *(a3 + 9);
    v72 = *(a3 + 8);
    v73 = v10;
    v11 = *(a3 + 3);
    v66 = *(a3 + 2);
    v67 = v11;
    v12 = *(a3 + 5);
    v68 = *(a3 + 4);
    v69 = v12;
    v13 = *(a3 + 1);
    v64 = *a3;
    v65 = v13;
    if (![(NIServerAnalyticsManager *)self _isPDRAvailable:&v64]|| !self->_lastPoseHadNormalTrackingState)
    {
      goto LABEL_34;
    }

    v14 = v8 - timeAtLastIOUpdate;
    self->_timePDRAndVIOWasAvailable = v14 + self->_timePDRAndVIOWasAvailable;
    numberOfPDRUpdates = self->_numberOfPDRUpdates;
    if (numberOfPDRUpdates == -1.0)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = numberOfPDRUpdates + 1.0;
    }

    self->_numberOfPDRUpdates = v16;
    if ((*(a3 + 32) & 1) == 0 || (*(a3 + 48) & 1) == 0)
    {
      goto LABEL_36;
    }

    v17 = sqrt(*(a3 + 5) * *(a3 + 5) + *(a3 + 3) * *(a3 + 3));
    self->_pdrPathLengthWhenVIOAvailable = self->_pdrPathLengthWhenVIOAvailable + v17;
    v18 = *&self->_anon_3b8[56];
    v70 = *&self->_anon_3b8[40];
    v71 = v18;
    v72 = *&self->_anon_3b8[72];
    v19 = *&self->_lastPose.__engaged_;
    v66 = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
    v67 = v19;
    v20 = *&self->_anon_3b8[24];
    v68 = *&self->_anon_3b8[8];
    v69 = v20;
    lightEstimate = self->_lastPose.var0.__val_.lightEstimate;
    v64 = *&self->_lastPose.var0.__null_state_;
    v65 = lightEstimate;
    v22 = *&self->_anon_c28[24];
    v23 = *&self->_anon_c28[56];
    v61 = *&self->_anon_c28[40];
    v62 = v23;
    v63 = *&self->_anon_c28[72];
    v24 = self->_vioPoseAtLastPDRUpdate.var0.__val_.lightEstimate;
    v25 = *&self->_vioPoseAtLastPDRUpdate.__engaged_;
    v57 = *&self->_vioPoseAtLastPDRUpdate.var0.__val_.source.var0.__null_state_;
    v58 = v25;
    v59 = *&self->_anon_c28[8];
    v60 = v22;
    v55 = *&self->_vioPoseAtLastPDRUpdate.var0.__null_state_;
    v56 = v24;
    [(NIServerAnalyticsManager *)self _deltaDistanceFromVIOPoses:&v64];
    self->_vioPathLengthWhenPDRIsAvailable = v26 + self->_vioPathLengthWhenPDRIsAvailable;
    if (v14 <= 0.0)
    {
      v31 = 0;
    }

    else
    {
      v27 = v26 / v14;
      runningMeanSpeedFromVIO = self->_runningMeanSpeedFromVIO;
      v29 = v27 - runningMeanSpeedFromVIO;
      v30 = runningMeanSpeedFromVIO + (v27 - runningMeanSpeedFromVIO) / self->_numberOfPDRUpdates;
      self->_runningMeanSpeedFromVIO = v30;
      self->_m2 = self->_m2 + v29 * (v27 - v30);
      v31 = v17 / v14 == 0.0;
    }

    v40 = *&self->_anon_3b8[56];
    v70 = *&self->_anon_3b8[40];
    v71 = v40;
    v72 = *&self->_anon_3b8[72];
    v41 = *&self->_lastPose.__engaged_;
    v66 = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
    v67 = v41;
    v42 = *&self->_anon_3b8[24];
    v68 = *&self->_anon_3b8[8];
    v69 = v42;
    v43 = self->_lastPose.var0.__val_.lightEstimate;
    v64 = *&self->_lastPose.var0.__null_state_;
    v65 = v43;
    v44 = *&self->_anon_c28[56];
    v61 = *&self->_anon_c28[40];
    v62 = v44;
    v63 = *&self->_anon_c28[72];
    v45 = *&self->_vioPoseAtLastPDRUpdate.__engaged_;
    v57 = *&self->_vioPoseAtLastPDRUpdate.var0.__val_.source.var0.__null_state_;
    v58 = v45;
    v46 = *&self->_anon_c28[24];
    v59 = *&self->_anon_c28[8];
    v60 = v46;
    v47 = self->_vioPoseAtLastPDRUpdate.var0.__val_.lightEstimate;
    v55 = *&self->_vioPoseAtLastPDRUpdate.var0.__null_state_;
    v56 = v47;
    v48 = [(NIServerAnalyticsManager *)self _isSemiStaticFromVIO:&v64];
    if (v31)
    {
      if (v48)
      {
        self->_timeSSFromIOAndSSFromVIO = v14 + self->_timeSSFromIOAndSSFromVIO;
LABEL_30:
        v49 = 3248;
LABEL_33:
        *(&self->super.isa + v49) = v14 + *(&self->super.isa + v49);
LABEL_34:
        v50 = *&self->_anon_3b8[8];
        *&self->_anon_c28[24] = *&self->_anon_3b8[24];
        v51 = *&self->_anon_3b8[56];
        *&self->_anon_c28[40] = *&self->_anon_3b8[40];
        *&self->_anon_c28[56] = v51;
        v52 = *&self->_lastPose.var0.__null_state_;
        self->_vioPoseAtLastPDRUpdate.var0.__val_.lightEstimate = self->_lastPose.var0.__val_.lightEstimate;
        v53 = *&self->_lastPose.__engaged_;
        *&self->_vioPoseAtLastPDRUpdate.var0.__val_.source.var0.__null_state_ = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
        *&self->_vioPoseAtLastPDRUpdate.__engaged_ = v53;
        *&self->_anon_c28[8] = v50;
        self->_anon_c28[72] = self->_anon_3b8[72];
        *&self->_vioPoseAtLastPDRUpdate.var0.__null_state_ = v52;
        v54 = *a3;
        self->_pdrTimeAtLastPDRUpdate = *a3;
        self->_timeAtLastIOUpdate = v54;
        return;
      }

      self->_timeSSFromIOAndNotSSFromVIO = v14 + self->_timeSSFromIOAndNotSSFromVIO;
    }

    else if (v48)
    {
      goto LABEL_30;
    }

    v49 = 3256;
    goto LABEL_33;
  }

  if (sessionType == 3)
  {
    if (self->_pdrTimeAtFirstPDRUpdate == -1.0)
    {
      v6 = *a3;
      self->_pdrTimeAtFirstPDRUpdate = *a3;
LABEL_24:
      self->_pdrTimeAtLastPDRUpdate = v6;
      return;
    }

    pdrIsYieldingDeltaPosition = self->_pdrIsYieldingDeltaPosition;
    v33 = *(a3 + 7);
    v70 = *(a3 + 6);
    v71 = v33;
    v34 = *(a3 + 9);
    v72 = *(a3 + 8);
    v73 = v34;
    v35 = *(a3 + 3);
    v66 = *(a3 + 2);
    v67 = v35;
    v36 = *(a3 + 5);
    v68 = *(a3 + 4);
    v69 = v36;
    v37 = *(a3 + 1);
    v64 = *a3;
    v65 = v37;
    if (![(NIServerAnalyticsManager *)self _isPDRAvailable:&v64])
    {
LABEL_23:
      v6 = *a3;
      goto LABEL_24;
    }

    self->_pdrIsYieldingDeltaPosition = 1;
    if (*(a3 + 32) & 1) != 0 && (*(a3 + 48))
    {
      v38 = sqrt(*(a3 + 5) * *(a3 + 5) + *(a3 + 3) * *(a3 + 3));
      if (pdrIsYieldingDeltaPosition)
      {
        v39 = *a3 - self->_pdrTimeAtLastPDRUpdate;
        if (v38 / v39 < 0.1)
        {
          self->_timePDRIndicatesStatic = v39 + self->_timePDRIndicatesStatic;
        }
      }

      self->_distanceTraveledFromPDR = v38 + self->_distanceTraveledFromPDR;
      goto LABEL_23;
    }

LABEL_36:
    sub_1000195BC();
  }
}

- (void)updateWithSuccessfulRange:(double)a3 uwbRSSI:(double)a4 nbRSSI:(optional<double>)a5
{
  sessionType = self->_sessionType;
  switch(sessionType)
  {
    case 5:
      [(NIServerAnalyticsManager *)self _updateMinMaxRangeAndRSSI:*&a5.var0.__val_ uwbRSSI:*&a5.__engaged_ nbRSSI:a3, a4];
      if (self->_timeAtFirstRawUWBRange == -1.0)
      {
        self->_timeAtFirstRawUWBRange = sub_100005288();
        self->_firstRawRangeValue = a3;
        if (self->_timeAtFirstValidPose != -1.0)
        {
          v13 = *&self->_anon_3b8[8];
          *&self->_anon_5f8[24] = *&self->_anon_3b8[24];
          v14 = *&self->_anon_3b8[56];
          *&self->_anon_5f8[40] = *&self->_anon_3b8[40];
          *&self->_anon_5f8[56] = v14;
          v15 = *&self->_lastPose.var0.__null_state_;
          self->_firstInputRangePose.var0.__val_.lightEstimate = self->_lastPose.var0.__val_.lightEstimate;
          v16 = *&self->_lastPose.__engaged_;
          *&self->_firstInputRangePose.var0.__val_.source.var0.__null_state_ = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
          *&self->_firstInputRangePose.__engaged_ = v16;
          *&self->_anon_5f8[8] = v13;
          self->_anon_5f8[72] = self->_anon_3b8[72];
          *&self->_firstInputRangePose.var0.__null_state_ = v15;
        }
      }

      numberOfRawRanges = self->_numberOfRawRanges;
      v9 = __CFADD__(numberOfRawRanges, 1);
      v18 = numberOfRawRanges + 1;
      if (v9)
      {
        v18 = 1;
      }

      self->_numberOfRawRanges = v18;
      self->_currentRawRangeValue = a3;
      break;
    case 4:
      [(NIServerAnalyticsManager *)self _updateMinMaxRangeAndRSSI:*&a5.var0.__val_ uwbRSSI:*&a5.__engaged_ nbRSSI:a3, a4];
      if (self->_timeAtFirstRawUWBRange == -1.0)
      {
        self->_timeAtFirstRawUWBRange = sub_100005288();
      }

      v11 = self->_numberOfRawRanges;
      v9 = __CFADD__(v11, 1);
      v12 = v11 + 1;
      if (v9)
      {
        v12 = 1;
      }

      self->_numberOfRawRanges = v12;
      break;
    case 3:
      numberOfSuccessfulRanges = self->_numberOfSuccessfulRanges;
      v9 = __CFADD__(numberOfSuccessfulRanges, 1);
      v10 = numberOfSuccessfulRanges + 1;
      if (v9)
      {
        v10 = 1;
      }

      self->_numberOfSuccessfulRanges = v10;

      [(NIServerAnalyticsManager *)self _updateMinMaxRangeAndRSSI:*&a5.var0.__val_ uwbRSSI:*&a5.__engaged_ nbRSSI:a3, a4];
      break;
  }
}

- (void)updateWithSelfLocation:(const LocationInput *)a3
{
  sessionType = self->_sessionType;
  if (sessionType == 3)
  {
    var11 = a3->var11;
    timeAtFirstLocationUpdate = self->_timeAtFirstLocationUpdate;
    v7 = sub_100005288();
    if (timeAtFirstLocationUpdate == -1.0)
    {
      self->_timeAtFirstLocationUpdate = v7;
LABEL_7:
      self->_lastLocationType.var0.__val_ = var11;
      self->_lastLocationType.__engaged_ = 1;
      self->_timeAtLastLocationUpdate = sub_100005288();
      return;
    }

    if (!self->_lastLocationType.__engaged_)
    {
      sub_1000195BC();
    }

    val = self->_lastLocationType.var0.__val_;
    if (val > 7)
    {
      if (val > 10)
      {
        switch(val)
        {
          case 11:
            v16 = v7 - self->_timeAtLastLocationUpdate;
            if (v16 > 10.0)
            {
              v16 = 10.0;
            }

            self->_timeLocationFromWiFi2 = self->_timeLocationFromWiFi2 + v16;
            goto LABEL_7;
          case 12:
            v19 = v7 - self->_timeAtLastLocationUpdate;
            if (v19 > 10.0)
            {
              v19 = 10.0;
            }

            self->_timeLocationFromCompensated = self->_timeLocationFromCompensated + v19;
            goto LABEL_7;
          case 13:
            v11 = v7 - self->_timeAtLastLocationUpdate;
            if (v11 > 10.0)
            {
              v11 = 10.0;
            }

            self->_timeLocationFromLOIOverride = self->_timeLocationFromLOIOverride + v11;
            goto LABEL_7;
        }

        goto LABEL_58;
      }

      if (val == 8)
      {
        v14 = v7 - self->_timeAtLastLocationUpdate;
        if (v14 > 10.0)
        {
          v14 = 10.0;
        }

        self->_timeLocationFromMCC = self->_timeLocationFromMCC + v14;
        goto LABEL_7;
      }

      if (val == 9)
      {
        v18 = v7 - self->_timeAtLastLocationUpdate;
        if (v18 > 10.0)
        {
          v18 = 10.0;
        }

        self->_timeLocationFromGPSCoarse = self->_timeLocationFromGPSCoarse + v18;
        goto LABEL_7;
      }
    }

    else
    {
      if (val <= 3)
      {
        switch(val)
        {
          case 0:
            v13 = v7 - self->_timeAtLastLocationUpdate;
            if (v13 > 10.0)
            {
              v13 = 10.0;
            }

            self->_timeLocationFromUnknown = self->_timeLocationFromUnknown + v13;
            goto LABEL_7;
          case 1:
            v17 = v7 - self->_timeAtLastLocationUpdate;
            if (v17 > 10.0)
            {
              v17 = 10.0;
            }

            self->_timeLocationFromGPS = self->_timeLocationFromGPS + v17;
            goto LABEL_7;
          case 3:
            v9 = v7 - self->_timeAtLastLocationUpdate;
            if (v9 > 10.0)
            {
              v9 = 10.0;
            }

            self->_timeLocationFromAccessory = self->_timeLocationFromAccessory + v9;
            goto LABEL_7;
        }

LABEL_58:
        v20 = qword_1009ECD20;
        if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_ERROR))
        {
          sub_10049CFCC(v20);
        }

        goto LABEL_7;
      }

      if (val == 4)
      {
        v15 = v7 - self->_timeAtLastLocationUpdate;
        if (v15 > 10.0)
        {
          v15 = 10.0;
        }

        self->_timeLocationFromWiFi = self->_timeLocationFromWiFi + v15;
        goto LABEL_7;
      }

      if (val != 6)
      {
        if (val == 7)
        {
          v10 = v7 - self->_timeAtLastLocationUpdate;
          if (v10 > 10.0)
          {
            v10 = 10.0;
          }

          self->_timeLocationFromLAC = self->_timeLocationFromLAC + v10;
          goto LABEL_7;
        }

        goto LABEL_58;
      }
    }

    v12 = v7 - self->_timeAtLastLocationUpdate;
    if (v12 > 10.0)
    {
      v12 = 10.0;
    }

    self->_timeLocationFromCell = self->_timeLocationFromCell + v12;
    goto LABEL_7;
  }

  if (sessionType == 4 && self->_timeAtFirstSelfLocation == -1.0)
  {
    self->_timeAtFirstSelfLocation = sub_100005288();
  }
}

- (void)updateWithAcquisitionReason:(int)a3
{
  if ((self->_sessionType - 3) <= 1)
  {
    self->_acquisitionReason = a3;
    v4 = objc_alloc_init(NSMutableDictionary);
    v5 = [NSNumber numberWithInt:self->_acquisitionReason];
    [v4 setObject:v5 forKey:@"AcquisitionReason"];

    v6 = [v4 mutableCopy];
    v7 = qword_1009ECD20;
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      bundleIdentifier = self->_bundleIdentifier;
      v9 = [v6 description];
      *buf = 138412802;
      v12 = bundleIdentifier;
      v13 = 2112;
      v14 = @"com.apple.nearbyinteraction.findingsession.begin";
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);
    }

    v10 = v6;
    AnalyticsSendEventLazy();
  }
}

- (void)updateWithPose:(const void *)a3
{
  if ((self->_sessionType & 0xFFFFFFFE) == 4)
  {
    v5 = sub_100005288();
    if (!self->_lastPoseHadNormalTrackingState || *(a3 + 20) == 2)
    {
      v7 = v5;
      if (self->_timeAtFirstPose == -1.0)
      {
        self->_timeAtFirstPose = v5;
        self->_rangeAtFirstPose = self->_lastDistance_finding;
      }

      v8 = *(a3 + 5);
      v118[4] = *(a3 + 4);
      v119 = v8;
      v9 = *(a3 + 7);
      v120 = *(a3 + 6);
      v121 = v9;
      v10 = *(a3 + 1);
      v118[0] = *a3;
      v118[1] = v10;
      v11 = *(a3 + 3);
      v118[2] = *(a3 + 2);
      v118[3] = v11;
      if (self->_lastSolutionHadDriftingVIO)
      {
        LODWORD(v119) = 1;
      }

      sub_1003FCA04(&self->_pdrAligner, v118, &v117);
      if (*(a3 + 20) == 2)
      {
        self->_lastPoseHadNormalTrackingState = 1;
        minYCoordinateFinder = *(a3 + 17);
        maxYCoordinateFinder = self->_maxYCoordinateFinder;
        if (maxYCoordinateFinder <= minYCoordinateFinder)
        {
          maxYCoordinateFinder = *(a3 + 17);
        }

        self->_maxYCoordinateFinder = maxYCoordinateFinder;
        if (self->_minYCoordinateFinder < minYCoordinateFinder)
        {
          minYCoordinateFinder = self->_minYCoordinateFinder;
        }

        self->_minYCoordinateFinder = minYCoordinateFinder;
        self->_didFinderChangeFloor |= maxYCoordinateFinder - minYCoordinateFinder > 2.5;
        if (self->_timeAtFirstValidPose == -1.0)
        {
          self->_timeAtFirstValidPose = v7;
          p_firstPose = &self->_firstPose;
          v15 = *a3;
          v16 = *(a3 + 1);
          v17 = *(a3 + 3);
          if (self->_anon_328[72] == 1)
          {
            *&self->_firstPose.var0.__val_.source.var0.__null_state_ = *(a3 + 2);
            *&self->_firstPose.__engaged_ = v17;
            *&p_firstPose->var0.__null_state_ = v15;
            self->_firstPose.var0.__val_.lightEstimate = v16;
            v18 = *(a3 + 4);
            v19 = *(a3 + 5);
            v20 = *(a3 + 6);
            *&self->_anon_328[56] = *(a3 + 14);
            *&self->_anon_328[24] = v19;
            *&self->_anon_328[40] = v20;
            *&self->_anon_328[8] = v18;
          }

          else
          {
            *&self->_firstPose.var0.__val_.source.var0.__null_state_ = *(a3 + 2);
            *&self->_firstPose.__engaged_ = v17;
            *&p_firstPose->var0.__null_state_ = v15;
            self->_firstPose.var0.__val_.lightEstimate = v16;
            v24 = *(a3 + 4);
            v25 = *(a3 + 5);
            v26 = *(a3 + 7);
            *&self->_anon_328[40] = *(a3 + 6);
            *&self->_anon_328[56] = v26;
            *&self->_anon_328[8] = v24;
            *&self->_anon_328[24] = v25;
            self->_anon_328[72] = 1;
          }

          p_firstArrowUserMovedDistance = &self->_firstArrowUserMovedDistance;
          v28 = *a3;
          v29 = *(a3 + 1);
          v30 = *(a3 + 3);
          if (self->_anon_778[8] == 1)
          {
            *&self->_firstArrowUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(a3 + 2);
            *&self->_firstArrowUserMovedDistance.previousPoseOfUser.__engaged_ = v30;
            *&p_firstArrowUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v28;
            self->_firstArrowUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v29;
            v31 = *(a3 + 4);
            v32 = *(a3 + 5);
            v33 = *(a3 + 6);
            self->_firstArrowUserMovedDistance.traveledDistance = *(a3 + 14);
            *&self->_firstArrowUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v32;
            *&self->_firstArrowUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = v33;
            *&self->_firstArrowUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v31;
          }

          else
          {
            *&self->_firstArrowUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(a3 + 2);
            *&self->_firstArrowUserMovedDistance.previousPoseOfUser.__engaged_ = v30;
            *&p_firstArrowUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v28;
            self->_firstArrowUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v29;
            v34 = *(a3 + 4);
            v35 = *(a3 + 5);
            v36 = *(a3 + 7);
            *&self->_firstArrowUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = *(a3 + 6);
            *&self->_firstArrowUserMovedDistance.traveledDistance = v36;
            *&self->_firstArrowUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v34;
            *&self->_firstArrowUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v35;
            self->_anon_778[8] = 1;
          }

          p_firstOutputRangeUserMovedDistance = &self->_firstOutputRangeUserMovedDistance;
          v38 = *a3;
          v39 = *(a3 + 1);
          v40 = *(a3 + 3);
          if (self->_anon_8a8[8] == 1)
          {
            *&self->_firstOutputRangeUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(a3 + 2);
            *&self->_firstOutputRangeUserMovedDistance.previousPoseOfUser.__engaged_ = v40;
            *&p_firstOutputRangeUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v38;
            self->_firstOutputRangeUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v39;
            v41 = *(a3 + 4);
            v42 = *(a3 + 5);
            v43 = *(a3 + 6);
            self->_firstOutputRangeUserMovedDistance.traveledDistance = *(a3 + 14);
            *&self->_firstOutputRangeUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v42;
            *&self->_firstOutputRangeUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = v43;
            *&self->_firstOutputRangeUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v41;
          }

          else
          {
            *&self->_firstOutputRangeUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(a3 + 2);
            *&self->_firstOutputRangeUserMovedDistance.previousPoseOfUser.__engaged_ = v40;
            *&p_firstOutputRangeUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v38;
            self->_firstOutputRangeUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v39;
            v44 = *(a3 + 4);
            v45 = *(a3 + 5);
            v46 = *(a3 + 7);
            *&self->_firstOutputRangeUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = *(a3 + 6);
            *&self->_firstOutputRangeUserMovedDistance.traveledDistance = v46;
            *&self->_firstOutputRangeUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v44;
            *&self->_firstOutputRangeUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v45;
            self->_anon_8a8[8] = 1;
          }

          p_armsReachUserMovedDistance = &self->_armsReachUserMovedDistance;
          v48 = *a3;
          v49 = *(a3 + 1);
          v50 = *(a3 + 3);
          if (self->_anon_9d8[8] == 1)
          {
            *&self->_armsReachUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(a3 + 2);
            *&self->_armsReachUserMovedDistance.previousPoseOfUser.__engaged_ = v50;
            *&p_armsReachUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v48;
            self->_armsReachUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v49;
            v51 = *(a3 + 4);
            v52 = *(a3 + 5);
            v53 = *(a3 + 6);
            self->_armsReachUserMovedDistance.traveledDistance = *(a3 + 14);
            *&self->_armsReachUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v52;
            *&self->_armsReachUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = v53;
            *&self->_armsReachUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v51;
          }

          else
          {
            *&self->_armsReachUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(a3 + 2);
            *&self->_armsReachUserMovedDistance.previousPoseOfUser.__engaged_ = v50;
            *&p_armsReachUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v48;
            self->_armsReachUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v49;
            v54 = *(a3 + 4);
            v55 = *(a3 + 5);
            v56 = *(a3 + 7);
            *&self->_armsReachUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = *(a3 + 6);
            *&self->_armsReachUserMovedDistance.traveledDistance = v56;
            *&self->_armsReachUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v54;
            *&self->_armsReachUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v55;
            self->_anon_9d8[8] = 1;
          }

          p_totalUserMovedDistance = &self->_totalUserMovedDistance;
          v58 = *a3;
          v59 = *(a3 + 1);
          v60 = *(a3 + 3);
          if (self->_anon_b08[8] == 1)
          {
            *&self->_totalUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(a3 + 2);
            *&self->_totalUserMovedDistance.previousPoseOfUser.__engaged_ = v60;
            *&p_totalUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v58;
            self->_totalUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v59;
            v61 = *(a3 + 4);
            v62 = *(a3 + 5);
            v63 = *(a3 + 6);
            self->_totalUserMovedDistance.traveledDistance = *(a3 + 14);
            *&self->_totalUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v62;
            *&self->_totalUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = v63;
            *&self->_totalUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v61;
          }

          else
          {
            *&self->_totalUserMovedDistance.previousPoseOfUser.var0.__val_.source.var0.__null_state_ = *(a3 + 2);
            *&self->_totalUserMovedDistance.previousPoseOfUser.__engaged_ = v60;
            *&p_totalUserMovedDistance->previousPoseOfUser.var0.__null_state_ = v58;
            self->_totalUserMovedDistance.previousPoseOfUser.var0.__val_.lightEstimate = v59;
            v64 = *(a3 + 4);
            v65 = *(a3 + 5);
            v66 = *(a3 + 7);
            *&self->_totalUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.odometryAvailability.var0.__null_state_ = *(a3 + 6);
            *&self->_totalUserMovedDistance.traveledDistance = v66;
            *&self->_totalUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.trackingState = v64;
            *&self->_totalUserMovedDistance.oldPreviousPoseOfUser.var0.__val_.lightEstimate.__engaged_ = v65;
            self->_anon_b08[8] = 1;
          }

          v67 = &self->_anon_778[24];
          v68 = *a3;
          v69 = *(a3 + 1);
          v70 = *(a3 + 3);
          if (self->_anon_778[152] == 1)
          {
            *&self->_anon_778[56] = *(a3 + 2);
            *&self->_anon_778[72] = v70;
            *v67 = v68;
            *&self->_anon_778[40] = v69;
            v71 = *(a3 + 4);
            v72 = *(a3 + 5);
            v73 = *(a3 + 6);
            *&self->_anon_778[136] = *(a3 + 14);
            *&self->_anon_778[104] = v72;
            *&self->_anon_778[120] = v73;
            *&self->_anon_778[88] = v71;
          }

          else
          {
            *&self->_anon_778[56] = *(a3 + 2);
            *&self->_anon_778[72] = v70;
            *v67 = v68;
            *&self->_anon_778[40] = v69;
            v74 = *(a3 + 4);
            v75 = *(a3 + 5);
            v76 = *(a3 + 7);
            *&self->_anon_778[120] = *(a3 + 6);
            *&self->_anon_778[136] = v76;
            *&self->_anon_778[88] = v74;
            *&self->_anon_778[104] = v75;
            self->_anon_778[152] = 1;
          }

          v77 = &self->_anon_8a8[24];
          v78 = *a3;
          v79 = *(a3 + 1);
          v80 = *(a3 + 3);
          if (self->_anon_8a8[152] == 1)
          {
            *&self->_anon_8a8[56] = *(a3 + 2);
            *&self->_anon_8a8[72] = v80;
            *v77 = v78;
            *&self->_anon_8a8[40] = v79;
            v81 = *(a3 + 4);
            v82 = *(a3 + 5);
            v83 = *(a3 + 6);
            *&self->_anon_8a8[136] = *(a3 + 14);
            *&self->_anon_8a8[104] = v82;
            *&self->_anon_8a8[120] = v83;
            *&self->_anon_8a8[88] = v81;
          }

          else
          {
            *&self->_anon_8a8[56] = *(a3 + 2);
            *&self->_anon_8a8[72] = v80;
            *v77 = v78;
            *&self->_anon_8a8[40] = v79;
            v84 = *(a3 + 4);
            v85 = *(a3 + 5);
            v86 = *(a3 + 7);
            *&self->_anon_8a8[120] = *(a3 + 6);
            *&self->_anon_8a8[136] = v86;
            *&self->_anon_8a8[88] = v84;
            *&self->_anon_8a8[104] = v85;
            self->_anon_8a8[152] = 1;
          }

          v87 = &self->_anon_9d8[24];
          v88 = *a3;
          v89 = *(a3 + 1);
          v90 = *(a3 + 3);
          if (self->_anon_9d8[152] == 1)
          {
            *&self->_anon_9d8[56] = *(a3 + 2);
            *&self->_anon_9d8[72] = v90;
            *v87 = v88;
            *&self->_anon_9d8[40] = v89;
            v91 = *(a3 + 4);
            v92 = *(a3 + 5);
            v93 = *(a3 + 6);
            *&self->_anon_9d8[136] = *(a3 + 14);
            *&self->_anon_9d8[104] = v92;
            *&self->_anon_9d8[120] = v93;
            *&self->_anon_9d8[88] = v91;
          }

          else
          {
            *&self->_anon_9d8[56] = *(a3 + 2);
            *&self->_anon_9d8[72] = v90;
            *v87 = v88;
            *&self->_anon_9d8[40] = v89;
            v94 = *(a3 + 4);
            v95 = *(a3 + 5);
            v96 = *(a3 + 7);
            *&self->_anon_9d8[120] = *(a3 + 6);
            *&self->_anon_9d8[136] = v96;
            *&self->_anon_9d8[88] = v94;
            *&self->_anon_9d8[104] = v95;
            self->_anon_9d8[152] = 1;
          }

          v97 = &self->_anon_b08[24];
          v98 = *a3;
          v99 = *(a3 + 1);
          v100 = *(a3 + 3);
          if (self->_anon_b08[152] == 1)
          {
            *&self->_anon_b08[56] = *(a3 + 2);
            *&self->_anon_b08[72] = v100;
            *v97 = v98;
            *&self->_anon_b08[40] = v99;
            v101 = *(a3 + 4);
            v102 = *(a3 + 5);
            v103 = *(a3 + 6);
            *&self->_anon_b08[136] = *(a3 + 14);
            *&self->_anon_b08[104] = v102;
            *&self->_anon_b08[120] = v103;
            *&self->_anon_b08[88] = v101;
          }

          else
          {
            *&self->_anon_b08[56] = *(a3 + 2);
            *&self->_anon_b08[72] = v100;
            *v97 = v98;
            *&self->_anon_b08[40] = v99;
            v104 = *(a3 + 4);
            v105 = *(a3 + 5);
            v106 = *(a3 + 7);
            *&self->_anon_b08[120] = *(a3 + 6);
            *&self->_anon_b08[136] = v106;
            *&self->_anon_b08[88] = v104;
            *&self->_anon_b08[104] = v105;
            self->_anon_b08[152] = 1;
          }

          *&self->_anon_778[168] = 0;
          *&self->_anon_8a8[168] = 0;
          *&self->_anon_9d8[168] = 0;
          *&self->_anon_b08[168] = 0;
        }

        if (self->_timeAtFirstArrow == -1.0)
        {
          [(NIServerAnalyticsManager *)self _updateUserMovedDistanceWithPose:a3 lastPoseInfo:&self->_firstArrowUserMovedDistance];
        }

        if (self->_timeAtFirstOutputRange == -1.0)
        {
          [(NIServerAnalyticsManager *)self _updateUserMovedDistanceWithPose:a3 lastPoseInfo:&self->_firstOutputRangeUserMovedDistance];
        }

        if (self->_timeAtArmsLength == -1.0)
        {
          [(NIServerAnalyticsManager *)self _updateUserMovedDistanceWithPose:a3 lastPoseInfo:&self->_armsReachUserMovedDistance];
        }

        [(NIServerAnalyticsManager *)self _updateUserMovedDistanceWithPose:a3 lastPoseInfo:&self->_totalUserMovedDistance];
      }

      p_lastPose = &self->_lastPose;
      v108 = *a3;
      v109 = *(a3 + 1);
      v110 = *(a3 + 3);
      if (self->_anon_3b8[72] == 1)
      {
        *&self->_lastPose.var0.__val_.source.var0.__null_state_ = *(a3 + 2);
        *&self->_lastPose.__engaged_ = v110;
        *&p_lastPose->var0.__null_state_ = v108;
        self->_lastPose.var0.__val_.lightEstimate = v109;
        v111 = *(a3 + 4);
        v112 = *(a3 + 5);
        v113 = *(a3 + 6);
        *&self->_anon_3b8[56] = *(a3 + 14);
        *&self->_anon_3b8[24] = v112;
        *&self->_anon_3b8[40] = v113;
        *&self->_anon_3b8[8] = v111;
      }

      else
      {
        *&self->_lastPose.var0.__val_.source.var0.__null_state_ = *(a3 + 2);
        *&self->_lastPose.__engaged_ = v110;
        *&p_lastPose->var0.__null_state_ = v108;
        self->_lastPose.var0.__val_.lightEstimate = v109;
        v114 = *(a3 + 4);
        v115 = *(a3 + 5);
        v116 = *(a3 + 7);
        *&self->_anon_3b8[40] = *(a3 + 6);
        *&self->_anon_3b8[56] = v116;
        *&self->_anon_3b8[8] = v114;
        *&self->_anon_3b8[24] = v115;
        self->_anon_3b8[72] = 1;
      }
    }

    else
    {
      numberOfVIOResets = self->_numberOfVIOResets;
      v22 = __CFADD__(numberOfVIOResets, 1);
      v23 = numberOfVIOResets + 1;
      if (v22)
      {
        v23 = 1;
      }

      self->_numberOfVIOResets = v23;
      [(NIServerAnalyticsManager *)self _onVIOReset];
      self->_lastPoseHadNormalTrackingState = 0;
      self->_maxYCoordinateFindee = -1.79769313e308;
      self->_minYCoordinateFindee = 1.79769313e308;
    }
  }
}

- (void)_updateUserMovedDistanceWithPose:(const void *)a3 lastPoseInfo:(void *)a4
{
  if (*(a4 + 128) == 1 && *(a4 + 272) == 1)
  {
    v4 = *(a3 + 4);
    v5 = vsubq_f32(*(a4 + 4), v4);
    v6 = vmulq_f32(v5, v5);
    v7 = vsubq_f32(*(a4 + 13), v4);
    v8 = vmulq_f32(v7, v7);
    v9 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v6, v6, 8uLL)), vadd_f32(vzip1_s32(*v8.i8, *v6.i8), vzip2_s32(*v8.i8, *v6.i8))));
    *v8.i8 = vcgt_f32(v9, 0x3F0000003F000000);
    if (v8.i32[1] & v8.i32[0])
    {
      *(a4 + 36) = *(a4 + 36) + v9.f32[1];
      v10 = *(a4 + 3);
      *(a4 + 11) = *(a4 + 2);
      *(a4 + 12) = v10;
      *(a4 + 272) = *(a4 + 128);
      v11 = *(a4 + 7);
      *(a4 + 15) = *(a4 + 6);
      *(a4 + 16) = v11;
      v12 = *(a4 + 5);
      *(a4 + 13) = *(a4 + 4);
      *(a4 + 14) = v12;
      v13 = *(a4 + 1);
      *(a4 + 9) = *a4;
      *(a4 + 10) = v13;
      v14 = *a3;
      v15 = *(a3 + 1);
      v16 = *(a3 + 3);
      *(a4 + 2) = *(a3 + 2);
      *(a4 + 3) = v16;
      *a4 = v14;
      *(a4 + 1) = v15;
      v17 = *(a3 + 4);
      v18 = *(a3 + 5);
      v19 = *(a3 + 6);
      *(a4 + 14) = *(a3 + 14);
      *(a4 + 5) = v18;
      *(a4 + 6) = v19;
      *(a4 + 4) = v17;
    }
  }
}

- (void)updateWithFinderPeerData:(const void *)a3
{
  if (self->_sessionType != 4)
  {
    return;
  }

  v5 = sub_100005288();
  if (self->_timeAtFirstPeerData == -1.0)
  {
    self->_timeAtFirstPeerData = v5;
    if (*(a3 + 72) == 1)
    {
      self->_lastDisplacementSourceFindee.var0.__val_ = *(a3 + 10);
      self->_lastDisplacementSourceFindee.__engaged_ = 1;
    }
  }

  if (*(a3 + 72) == 1)
  {
    v6 = *(a3 + 10);
    if (self->_timeAtFirstPDRFromFindeeData == -1.0 && v6 == 1)
    {
      p_timeAtFirstPDRFromFindeeData = &self->_timeAtFirstPDRFromFindeeData;
    }

    else
    {
      if (self->_timeAtFirstVIOFromFindeeData != -1.0 || v6 != 0)
      {
        goto LABEL_19;
      }

      p_timeAtFirstPDRFromFindeeData = &self->_timeAtFirstVIOFromFindeeData;
    }

    *p_timeAtFirstPDRFromFindeeData = v5;
LABEL_19:
    if (self->_lastDisplacementSourceFindee.__engaged_ && self->_lastDisplacementSourceFindee.var0.__val_ == v6)
    {
      minYCoordinateFindee = *(a3 + 8);
      maxYCoordinateFindee = self->_maxYCoordinateFindee;
      if (minYCoordinateFindee >= maxYCoordinateFindee)
      {
        maxYCoordinateFindee = *(a3 + 8);
      }

      self->_maxYCoordinateFindee = maxYCoordinateFindee;
      if (self->_minYCoordinateFindee < minYCoordinateFindee)
      {
        minYCoordinateFindee = self->_minYCoordinateFindee;
      }

      self->_minYCoordinateFindee = minYCoordinateFindee;
      self->_didFindeeChangeFloor |= vabdd_f64(maxYCoordinateFindee, minYCoordinateFindee) > 2.5;
      if ((*(a3 + 72) & 1) == 0)
      {
        sub_1000195BC();
      }
    }

    else
    {
      self->_maxYCoordinateFindee = -1.79769313e308;
      self->_minYCoordinateFindee = 1.79769313e308;
    }

    self->_lastDisplacementSourceFindee.var0.__val_ = v6;
    self->_lastDisplacementSourceFindee.__engaged_ = 1;
    goto LABEL_29;
  }

  self->_maxYCoordinateFindee = -1.79769313e308;
  self->_minYCoordinateFindee = 1.79769313e308;
LABEL_29:
  if (*(a3 + 112) == 1 && self->_timeAtFirstDeltaVelocityFromFindeeData == -1.0)
  {
    self->_timeAtFirstDeltaVelocityFromFindeeData = v5;
  }

  if (*(a3 + 16) == 1 && !*(a3 + 2) && self->_timeAtFirstStaticFromFindeeData == -1.0)
  {
    self->_timeAtFirstStaticFromFindeeData = v5;
  }

  if (*(a3 + 160) == 1)
  {
    if (self->_timeAtFirstPeerLocationFromFindeeData == -1.0)
    {
      self->_timeAtFirstPeerLocationFromFindeeData = v5;
    }

    if (self->_timeAtFirstPeerLocation == -1.0)
    {
      self->_timeAtFirstPeerLocation = v5;
    }
  }

  numberOfPeerDataFinder = self->_numberOfPeerDataFinder;
  v13 = __CFADD__(numberOfPeerDataFinder, 1);
  v14 = numberOfPeerDataFinder + 1;
  if (v13)
  {
    v14 = 1;
  }

  self->_numberOfPeerDataFinder = v14;
}

- (void)updateWithSolution:(const void *)a3
{
  if ((self->_sessionType & 0xFFFFFFFE) == 4)
  {
    v5 = sub_100005288();
    if (*(a3 + 408) == 1 && self->_lastSolutionTime.__engaged_)
    {
      v6 = *(a3 + 101);
      if (v6 <= 5)
      {
        *(&self->super.isa + qword_1005497F0[v6]) = v5 - self->_lastSolutionTime.var0.__val_ + *(&self->super.isa + qword_1005497F0[v6]);
      }
    }

    if (self->_timeAtFirstPose != -1.0)
    {
      if (self->_lastSolutionHadArrow && (*(a3 + 256) & 1) == 0 && self->_timeAtArmsLength == -1.0)
      {
        numberOfArrowRevokes = self->_numberOfArrowRevokes;
        v8 = __CFADD__(numberOfArrowRevokes, 1);
        v9 = numberOfArrowRevokes + 1;
        if (v8)
        {
          v9 = 1;
        }

        self->_numberOfArrowRevokes = v9;
      }

      self->_lastSolutionHadDriftingVIO = *(a3 + 428);
      if (*(a3 + 256) == 1)
      {
        self->_lastSolutionHadArrow = 1;
        timeAtFirstArrow = self->_timeAtFirstArrow;
        if (timeAtFirstArrow == -1.0)
        {
          self->_timeAtFirstArrow = v5;
          if (*(a3 + 416))
          {
            v11 = *(a3 + 103);
          }

          else
          {
            v11 = 0;
          }

          self->_firstArrowAlgorithmSource = v11;
          if (*(a3 + 240) == 1)
          {
            v12 = *(a3 + 6);
            if (v12 != 1.1755e-38)
            {
              self->_rangeAtFirstArrow = v12;
            }
          }

          timeAtFirstArrow = v5;
          if (self->_timeAtFirstValidPose != -1.0)
          {
            v13 = *&self->_anon_3b8[8];
            *&self->_anon_448[24] = *&self->_anon_3b8[24];
            v14 = *&self->_anon_3b8[56];
            *&self->_anon_448[40] = *&self->_anon_3b8[40];
            *&self->_anon_448[56] = v14;
            v15 = *&self->_lastPose.var0.__null_state_;
            self->_firstArrowPose.var0.__val_.lightEstimate = self->_lastPose.var0.__val_.lightEstimate;
            v16 = *&self->_lastPose.__engaged_;
            *&self->_firstArrowPose.var0.__val_.source.var0.__null_state_ = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
            *&self->_firstArrowPose.__engaged_ = v16;
            *&self->_anon_448[8] = v13;
            v17 = self->_anon_3b8[72];
            *&self->_firstArrowPose.var0.__null_state_ = v15;
            timeAtFirstArrow = v5;
            self->_anon_448[72] = v17;
          }
        }

        if (timeAtFirstArrow != -1.0 && self->_timeAtArmsLength == -1.0)
        {
          numberOfArrowAvailabilityAfterFirstArrow = self->_numberOfArrowAvailabilityAfterFirstArrow;
          v8 = __CFADD__(numberOfArrowAvailabilityAfterFirstArrow, 1);
          v19 = numberOfArrowAvailabilityAfterFirstArrow + 1;
          if (v8)
          {
            v19 = 1;
          }

          self->_numberOfArrowAvailabilityAfterFirstArrow = v19;
        }
      }

      else
      {
        self->_lastSolutionHadArrow = 0;
      }

      if (*(a3 + 240) == 1 && *(a3 + 6) != 1.1755e-38)
      {
        if (self->_timeAtFirstOutputRange == -1.0)
        {
          self->_timeAtFirstOutputRange = v5;
          v20 = *(a3 + 416) ? *(a3 + 103) : 0;
          self->_firstOutputRangeAlgorithmSource = v20;
          if (self->_timeAtFirstValidPose != -1.0)
          {
            v21 = *&self->_anon_3b8[24];
            *&self->_anon_568[8] = *&self->_anon_3b8[8];
            v22 = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
            *&self->_firstOutputRangePose.__engaged_ = *&self->_lastPose.__engaged_;
            *&self->_firstOutputRangePose.var0.__val_.source.var0.__null_state_ = v22;
            v23 = *&self->_lastPose.var0.__null_state_;
            self->_firstOutputRangePose.var0.__val_.lightEstimate = self->_lastPose.var0.__val_.lightEstimate;
            v24 = *&self->_anon_3b8[40];
            *&self->_anon_568[56] = *&self->_anon_3b8[56];
            *&self->_anon_568[40] = v24;
            *&self->_anon_568[24] = v21;
            self->_anon_568[72] = self->_anon_3b8[72];
            *&self->_firstOutputRangePose.var0.__null_state_ = v23;
            if ((*(a3 + 240) & 1) == 0)
            {
              sub_1000195BC();
            }
          }
        }

        v25 = *(a3 + 6);
        if (self->_firstOutputDistance == -1.0)
        {
          self->_firstOutputDistance = v25;
          minOutputDistance = v25;
          maxOutputDistance = v25;
        }

        else
        {
          maxOutputDistance = self->_maxOutputDistance;
          minOutputDistance = self->_minOutputDistance;
        }

        self->_lastOutputDistance = v25;
        if (maxOutputDistance <= v25)
        {
          maxOutputDistance = v25;
        }

        self->_maxOutputDistance = maxOutputDistance;
        if (minOutputDistance >= v25)
        {
          minOutputDistance = v25;
        }

        self->_minOutputDistance = minOutputDistance;
        if (self->_timeAtArmsLength == -1.0 && self->_armsLengthDistance >= v25)
        {
          self->_timeAtArmsLength = v5;
          v28 = *(a3 + 416) ? *(a3 + 103) : 0;
          self->_armsReachAlgorithmSource = v28;
          if (self->_timeAtFirstValidPose != -1.0)
          {
            v29 = *&self->_anon_3b8[8];
            *&self->_anon_4d8[24] = *&self->_anon_3b8[24];
            v30 = *&self->_anon_3b8[56];
            *&self->_anon_4d8[40] = *&self->_anon_3b8[40];
            *&self->_anon_4d8[56] = v30;
            v31 = *&self->_lastPose.var0.__null_state_;
            self->_armsReachPose.var0.__val_.lightEstimate = self->_lastPose.var0.__val_.lightEstimate;
            v32 = *&self->_lastPose.__engaged_;
            *&self->_armsReachPose.var0.__val_.source.var0.__null_state_ = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
            *&self->_armsReachPose.__engaged_ = v32;
            *&self->_anon_4d8[8] = v29;
            self->_anon_4d8[72] = self->_anon_3b8[72];
            *&self->_armsReachPose.var0.__null_state_ = v31;
          }
        }
      }

      if (self->_timeAtFirstArrow != -1.0 && self->_timeAtArmsLength == -1.0)
      {
        numberOfSolutions = self->_numberOfSolutions;
        v8 = __CFADD__(numberOfSolutions, 1);
        v34 = numberOfSolutions + 1;
        if (v8)
        {
          v34 = 1;
        }

        self->_numberOfSolutions = v34;
      }
    }

    self->_lastSolutionTime.var0.__val_ = v5;
    self->_lastSolutionTime.__engaged_ = 1;
  }
}

- (void)updateWithPeerLocationFromFMF
{
  if (self->_sessionType == 4)
  {
    v3 = sub_100005288();
    if (self->_timeAtFirstPeerLocation == -1.0)
    {
      self->_timeAtFirstPeerLocation = v3;
    }

    if (self->_timeAtFirstPeerLocationFromFMF == -1.0)
    {
      self->_timeAtFirstPeerLocationFromFMF = v3;
    }
  }
}

- (void)nearbyObjectUpdated:(id)a3
{
  v4 = a3;
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v14 = 138412546;
    v15 = bundleIdentifier;
    v16 = 2112;
    v17 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] nearbyObjectUpdated: %@", &v14, 0x16u);
  }

  [v4 distance];
  if (v7 == NINearbyObjectDistanceNotAvailable)
  {
    v8 = qword_1009ECD20;
    if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
    {
      v9 = self->_bundleIdentifier;
      v14 = 138412290;
      v15 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "#ni-ca,[%@] nearby object does not contain distance", &v14, 0xCu);
    }
  }

  else
  {
    [v4 distance];
    v11 = v10;
    if (self->_receivedDistance)
    {
      maxDistance = self->_maxDistance;
      minDistance = self->_minDistance;
      if (maxDistance <= v11)
      {
        maxDistance = v11;
      }

      self->_lastDistance = v11;
      self->_maxDistance = maxDistance;
      if (minDistance < v11)
      {
        v11 = minDistance;
      }

      self->_minDistance = v11;
    }

    else
    {
      self->_firstDistance = v11;
      self->_lastDistance = v11;
      self->_maxDistance = v11;
      self->_minDistance = v11;
      self->_receivedDistance = 1;
    }
  }
}

- (void)lifecycleTimeoutBeforeTrackingForDiscoveryToken:(id)a3
{
  v4 = a3;
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = 138412546;
    v9 = bundleIdentifier;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] lifecycleTimeoutBeforeTrackingForDiscoveryToken: %@", &v8, 0x16u);
  }

  lifecycleTimeoutType = self->_lifecycleTimeoutType;
  self->_lifecycleTimeoutType = @"Before Tracking";
}

- (void)lifecycleTimeoutAfterTrackingForDiscoveryToken:(id)a3
{
  v4 = a3;
  v5 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v8 = 138412546;
    v9 = bundleIdentifier;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "#ni-ca,[%@] lifecycleTimeoutAfterTrackingForDiscoveryToken: %@", &v8, 0x16u);
  }

  lifecycleTimeoutType = self->_lifecycleTimeoutType;
  self->_lifecycleTimeoutType = @"After Tracking";
}

- (void)updateFindButtonTime:(double)a3
{
  if (self->_timeAtFindButton == -1.0)
  {
    self->_timeAtFindButton = a3;
  }
}

- (void)sessionConnectedToAccessoryWithTimestamp:(double)a3
{
  if (self->_timeAtConnect == -1.0)
  {
    self->_timeAtConnect = a3;
    if (self->_timeAtFirstValidPose != -1.0)
    {
      v3 = *&self->_anon_3b8[8];
      *&self->_anon_688[24] = *&self->_anon_3b8[24];
      v4 = *&self->_anon_3b8[56];
      *&self->_anon_688[40] = *&self->_anon_3b8[40];
      *&self->_anon_688[56] = v4;
      v5 = *&self->_lastPose.var0.__null_state_;
      self->_firstBTConnectionPose.var0.__val_.lightEstimate = self->_lastPose.var0.__val_.lightEstimate;
      v6 = *&self->_lastPose.__engaged_;
      *&self->_firstBTConnectionPose.var0.__val_.source.var0.__null_state_ = *&self->_lastPose.var0.__val_.source.var0.__null_state_;
      *&self->_firstBTConnectionPose.__engaged_ = v6;
      *&self->_anon_688[8] = v3;
      self->_anon_688[72] = self->_anon_3b8[72];
      *&self->_firstBTConnectionPose.var0.__null_state_ = v5;
    }
  }
}

- (void)sessionConfiguredAccessoryWithTimestamp:(double)a3
{
  if (self->_timeAtConfigure == -1.0)
  {
    self->_timeAtConfigure = a3;
  }
}

- (void)sessionConfiguredAccessoryWithTimestamp:(double)a3 withTxPower:(int)a4
{
  if (self->_timeAtConfigure == -1.0)
  {
    self->_timeAtConfigure = a3;
    self->_itemBtTxPower.var0.__val_ = a4;
    self->_itemBtTxPower.__engaged_ = 1;
  }
}

- (void)updateWithRangingMode:(int)a3
{
  if (self->_rangingMode == -1)
  {
    self->_rangingMode = a3;
  }
}

- (void)updateWithBTRSSIMeasurementWithTimestamp:(double)a3 withRssi:(double)a4
{
  if (self->_timeAtFirstBtRssiMeasurement == -1.0)
  {
    self->_timeAtFirstBtRssiMeasurement = a3;
    self->_firstBtRssi = a4;
  }

  self->_lastBtRssi = a4;
}

- (void)updateWithNewRegion:(id)a3 withTimestamp:(double)a4
{
  v6 = a3;
  v7 = v6;
  lastRegion = self->_lastRegion;
  if (v6 && !lastRegion)
  {
    ++self->_numberOfRegionFoundEvents;
LABEL_8:
    if ([(NIRegionPredicate *)v6 devicePresencePreset]== 1 && self->_timeAtArmsLength == -1.0)
    {
      self->_timeAtArmsLength = a4;
    }

    goto LABEL_11;
  }

  if (!v6 && lastRegion)
  {
    ++self->_numberOfRegionRevokes;
    goto LABEL_11;
  }

  if (v6)
  {
    goto LABEL_8;
  }

LABEL_11:
  v9 = self->_lastRegion;
  self->_lastRegion = v7;
}

- (void)_updateMinMaxRangeAndRSSI:(double)a3 uwbRSSI:(double)a4 nbRSSI:(optional<double>)a5
{
  if (self->_firstDistance_finding == -1.0)
  {
    self->_firstDistance_finding = a3;
    self->_firstUWBRSSI = a4;
  }

  lastNBRSSI = self->_lastNBRSSI;
  v6 = lastNBRSSI != 0.0 && a5.__engaged_;
  if (lastNBRSSI == 0.0 && a5.__engaged_)
  {
    self->_firstNBRSSI = a5.var0.__val_;
    self->_lastNBRSSI = a5.var0.__val_;
    v6 = 1;
  }

  self->_lastDistance_finding = a3;
  maxDistance_finding = self->_maxDistance_finding;
  if (maxDistance_finding <= a3)
  {
    maxDistance_finding = a3;
  }

  self->_maxDistance_finding = maxDistance_finding;
  minUWBRSSI = self->_minUWBRSSI;
  if (minUWBRSSI >= a4)
  {
    minUWBRSSI = a4;
  }

  self->_minUWBRSSI = minUWBRSSI;
  v9 = *&self->_maxUWBRSSI;
  v10.f64[0] = self->_maxUWBRSSI;
  v10.f64[1] = a3;
  v11.f64[1] = self->_minDistance_finding;
  v11.f64[0] = a4;
  self->_lastUWBRSSI = a4;
  v12 = vcgtq_f64(v10, v11);
  v10.f64[0] = a4;
  *&self->_maxUWBRSSI = vbslq_s8(v12, v9, v10);
  if (v6)
  {
    val = a5.var0.__val_;
    self->_lastNBRSSI = a5.var0.__val_;
    minNBRSSI = self->_minNBRSSI;
    if (minNBRSSI >= a5.var0.__val_)
    {
      minNBRSSI = a5.var0.__val_;
    }

    self->_minNBRSSI = minNBRSSI;
    if (self->_maxNBRSSI > a5.var0.__val_)
    {
      val = self->_maxNBRSSI;
    }

    self->_maxNBRSSI = val;
  }
}

- (double)_finderTimeFromFirstPoseTo:(double)a3
{
  v3 = -1.0;
  if (a3 != -1.0)
  {
    timeAtFirstPose = self->_timeAtFirstPose;
    if (timeAtFirstPose != -1.0)
    {
      return a3 - timeAtFirstPose;
    }
  }

  return v3;
}

- (id)_algorithmSourceToString:(int)a3
{
  if (a3 > 7)
  {
    return @"None";
  }

  else
  {
    return off_10098B5F0[a3];
  }
}

- (void)_calculateStraightLineDistance
{
  if (self->_anon_328[72] == 1)
  {
    v4 = *&self->_anon_328[8];
    if (self->_anon_448[72] == 1)
    {
      v5 = vsubq_f32(v4, *&self->_anon_448[8]);
      v6 = vmulq_f32(v5, v5);
      self->_firstArrowStraightLineDistance = sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
    }

    if (self->_anon_568[72] == 1)
    {
      v7 = vsubq_f32(v4, *&self->_anon_568[8]);
      v8 = vmulq_f32(v7, v7);
      self->_firstOutputRangeStraightLineDistance = sqrtf(v8.f32[2] + vaddv_f32(*v8.f32));
    }

    if (self->_anon_4d8[72] == 1)
    {
      v9 = vsubq_f32(v4, *&self->_anon_4d8[8]);
      v10 = vmulq_f32(v9, v9);
      self->_armsReachStraightLineDistance = sqrtf(v10.f32[2] + vaddv_f32(*v10.f32));
    }

    if (self->_anon_3b8[72] == 1)
    {
      v11 = vsubq_f32(*&self->_firstPose.__engaged_, *&self->_lastPose.__engaged_);
      self->_radialDisplacementFromVIO = sqrtf(vaddv_f32(*&vmulq_f32(v11, v11)));
    }

    if (self->_anon_688[72] == 1 && self->_anon_5f8[72] == 1)
    {
      v12 = vsubq_f32(*&self->_anon_688[8], *&self->_anon_5f8[8]);
      v13 = vmulq_f32(v12, v12);
      self->_straightLineDistanceFromConnectToFirstRange = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
    }
  }

  else
  {
    v16 = v2;
    v17 = v3;
    v14 = qword_1009ECD20;
    if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "#ni-ca,Unable to calculate straight line distance between finder and findee (first pose doesn't have value)", v15, 2u);
    }
  }
}

- (void)_onVIOReset
{
  if (self->_anon_778[152] == 1)
  {
    self->_anon_778[152] = 0;
  }

  if (self->_anon_778[8] == 1)
  {
    self->_anon_778[8] = 0;
  }

  if (self->_anon_8a8[152] == 1)
  {
    self->_anon_8a8[152] = 0;
  }

  if (self->_anon_8a8[8] == 1)
  {
    self->_anon_8a8[8] = 0;
  }

  *&self->_anon_778[168] = 0xBFF0000000000000;
  if (self->_anon_9d8[152] == 1)
  {
    self->_anon_9d8[152] = 0;
  }

  if (self->_anon_9d8[8] == 1)
  {
    self->_anon_9d8[8] = 0;
  }

  *&self->_anon_9d8[168] = 0xBFF0000000000000;
  if (self->_anon_b08[152] == 1)
  {
    self->_anon_b08[152] = 0;
  }

  if (self->_anon_b08[8] == 1)
  {
    self->_anon_b08[8] = 0;
  }

  *&self->_anon_b08[168] = 0xBFF0000000000000;
  if (self->_anon_448[72] == 1)
  {
    self->_anon_448[72] = 0;
  }

  if (self->_anon_5f8[72] == 1)
  {
    self->_anon_5f8[72] = 0;
  }

  if (self->_anon_568[72] == 1)
  {
    self->_anon_568[72] = 0;
  }

  if (self->_anon_4d8[72] == 1)
  {
    self->_anon_4d8[72] = 0;
  }

  if (self->_anon_328[72] == 1)
  {
    self->_anon_328[72] = 0;
  }

  if (self->_anon_688[72] == 1)
  {
    self->_anon_688[72] = 0;
  }

  __asm { FMOV            V0.2D, #-1.0 }

  *&self->_firstArrowStraightLineDistance = _Q0;
  self->_radialDisplacementFromVIO = -1.0;
  *&self->_firstOutputRangeStraightLineDistance = _Q0;
  *self->_integratedPDRVIOFrame = 0u;
  self->_vioPathLength = 0.0;
}

- (double)_deltaDistanceFromVIOPoses:(optional<nearby:(optional<nearby::algorithms::common::Pose> *)a4 :algorithms::common::Pose> *)a3 :
{
  result = 0.0;
  if (a3[2].var0.__val_.lightEstimate.var0.__null_state_ == 1 && a4[2].var0.__val_.lightEstimate.var0.__null_state_ == 1)
  {
    v5 = vsubq_f32(*&a4[1].var0.__val_.trackingState, *&a3[1].var0.__val_.trackingState);
    v6 = vmulq_f32(v5, v5);
    return sqrtf(v6.f32[2] + vaddv_f32(*v6.f32));
  }

  return result;
}

- (BOOL)_isSemiStaticFromVIO:(optional<nearby:(optional<nearby:(double)a5 :algorithms::common::Pose> *)a4 :algorithms::common::Pose> *)a3 ::
{
  if (a3[2].var0.__val_.lightEstimate.var0.__null_state_ != 1)
  {
    return 0;
  }

  if (a4[2].var0.__val_.lightEstimate.var0.__null_state_ != 1)
  {
    return 0;
  }

  v6 = *&a3[2].var0.__null_state_;
  v17[6] = *&a3[1].var0.__val_.odometryAvailability.var0.__null_state_;
  v17[7] = v6;
  v17[8] = a3[2].var0.__val_.lightEstimate;
  v7 = *&a3->__engaged_;
  v17[2] = *&a3->var0.__val_.source.var0.__null_state_;
  v17[3] = v7;
  v8 = *&a3[1].var0.__val_.lightEstimate.__engaged_;
  v17[4] = *&a3[1].var0.__val_.trackingState;
  v17[5] = v8;
  lightEstimate = a3->var0.__val_.lightEstimate;
  v17[0] = *&a3->var0.__null_state_;
  v17[1] = lightEstimate;
  v10 = *&a4[2].var0.__null_state_;
  v16[6] = *&a4[1].var0.__val_.odometryAvailability.var0.__null_state_;
  v16[7] = v10;
  v16[8] = a4[2].var0.__val_.lightEstimate;
  v11 = *&a4->__engaged_;
  v16[2] = *&a4->var0.__val_.source.var0.__null_state_;
  v16[3] = v11;
  v12 = *&a4[1].var0.__val_.lightEstimate.__engaged_;
  v16[4] = *&a4[1].var0.__val_.trackingState;
  v16[5] = v12;
  v13 = a4->var0.__val_.lightEstimate;
  v16[0] = *&a4->var0.__null_state_;
  v16[1] = v13;
  [(NIServerAnalyticsManager *)self _deltaDistanceFromVIOPoses:v17];
  return v14 / a5 < 0.15;
}

- (void)_calculateIOMetrics:(double)a3
{
  vioPathLengthWhenPDRIsAvailable = self->_vioPathLengthWhenPDRIsAvailable;
  if (vioPathLengthWhenPDRIsAvailable > 0.0)
  {
    self->_pathLengthError = (self->_pdrPathLengthWhenVIOAvailable - vioPathLengthWhenPDRIsAvailable) / vioPathLengthWhenPDRIsAvailable;
  }

  timePDRAndVIOWasAvailable = self->_timePDRAndVIOWasAvailable;
  if (timePDRAndVIOWasAvailable <= 0.0)
  {
    timeSSFromVIO = self->_timeSSFromVIO;
  }

  else
  {
    self->_meanSpeedFromVIO = vioPathLengthWhenPDRIsAvailable / timePDRAndVIOWasAvailable;
    self->_meanSpeedFromVIOError = (self->_pdrPathLengthWhenVIOAvailable - vioPathLengthWhenPDRIsAvailable) / timePDRAndVIOWasAvailable;
    timeSSFromVIO = self->_timeSSFromVIO;
    self->_percentTimeSSFromVIO = timeSSFromVIO / timePDRAndVIOWasAvailable;
  }

  if (timeSSFromVIO > 0.0)
  {
    self->_pdrSSDetectionTruePositiveRate = self->_timeSSFromIOAndSSFromVIO / timeSSFromVIO;
  }

  timeNotSSFromVIO = self->_timeNotSSFromVIO;
  if (timeNotSSFromVIO > 0.0)
  {
    self->_pdrSSDetectionFalsePositiveRate = self->_timeSSFromIOAndNotSSFromVIO / timeNotSSFromVIO;
  }

  numberOfPDRUpdates = self->_numberOfPDRUpdates;
  if (numberOfPDRUpdates > 2.0)
  {
    self->_stdSpeedFromVIO = self->_m2 / numberOfPDRUpdates;
  }
}

- (VectorAggregateErrors)_calculateErrorStatsFromVector:(SEL)a3
{
  if (a4->__end_ == a4->__begin_)
  {
    sub_10049D010();
  }

  result = std::__sort<std::__less<float,float> &,float *>();
  begin = a4->__begin_;
  end = a4->__end_;
  v9 = end - a4->__begin_;
  v10 = v9 >> 2;
  v11 = &a4->__begin_[v9 >> 3];
  if ((v9 & 4) != 0)
  {
    v12 = *v11;
  }

  else
  {
    v12 = (*(v11 - 1) + *v11) * 0.5;
  }

  v13 = begin[(v10 * 0.95)];
  if (begin == end)
  {
    v17 = 0.0 / v10;
    v18 = 0.0;
  }

  else
  {
    v14 = 0.0;
    v15 = a4->__begin_;
    do
    {
      v16 = *v15++;
      v14 = v14 + v16;
    }

    while (v15 != end);
    v17 = v14 / v10;
    v18 = 0.0;
    do
    {
      v19 = *begin++;
      v18 = v18 + (v19 * v19);
    }

    while (begin != end);
  }

  retstr->var0 = v17;
  retstr->var1 = sqrt(v18 / v10 - (v17 * v17));
  retstr->var2 = v12;
  retstr->var3 = v13;
  retstr->var4 = v10;
  return result;
}

- (void)_calculatePoseSplicingMetrics
{
  begin = self->_angleErrorHistory.__begin_;
  end = self->_angleErrorHistory.__end_;
  std::__sort<std::__less<float,float> &,float *>();
  v5 = self->_angleErrorHistory.__end_;
  v6 = self->_angleErrorHistory.__begin_;
  v7 = v5 - v6;
  v8 = &v6[(v5 - v6) >> 3];
  if (((v5 - v6) & 4) != 0)
  {
    v9 = *v8;
  }

  else
  {
    v9 = (*(v8 - 1) + *v8) * 0.5;
  }

  if (v6 == v5)
  {
    v13 = 0.0;
    v10 = 0.0;
  }

  else
  {
    v10 = 0.0;
    v11 = self->_angleErrorHistory.__begin_;
    do
    {
      v12 = *v11++;
      v10 = v10 + v12;
    }

    while (v11 != v5);
    v13 = 0.0;
    v14 = self->_angleErrorHistory.__begin_;
    do
    {
      v15 = *v14++;
      v13 = v13 + (v15 * v15);
    }

    while (v14 != v5);
  }

  v16 = v6[(v7 * 0.95)];
  v17 = qword_1009ECD20;
  if (os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_DEFAULT))
  {
    v18 = v10 / v7;
    v19 = 134218752;
    v20 = v18;
    v21 = 2048;
    v22 = sqrt(v13 / v7 - (v18 * v18));
    v23 = 2048;
    v24 = v9;
    v25 = 2048;
    v26 = v16;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "#ni-ca,DoT error, mean: %f, std: %f, median: %f, 95th: %f", &v19, 0x2Au);
  }
}

- (void)_submitFindingSessionEndStats
{
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = [NSNumber numberWithDouble:self->_firstDistance_finding];
  [v3 setObject:v4 forKey:@"FirstDistance"];

  v5 = [NSNumber numberWithDouble:self->_lastDistance_finding];
  [v3 setObject:v5 forKey:@"LastDistance"];

  v6 = [NSNumber numberWithDouble:self->_firstNBRSSI];
  [v3 setObject:v6 forKey:@"FirstNBRSSI"];

  v7 = [NSNumber numberWithDouble:self->_lastNBRSSI];
  [v3 setObject:v7 forKey:@"LastNBRSSI"];

  v8 = [NSNumber numberWithDouble:self->_minNBRSSI];
  [v3 setObject:v8 forKey:@"MinNBRSSI"];

  v9 = [NSNumber numberWithDouble:self->_maxNBRSSI];
  [v3 setObject:v9 forKey:@"MaxNBRSSI"];

  v10 = [NSNumber numberWithDouble:self->_firstUWBRSSI];
  [v3 setObject:v10 forKey:@"FirstUWBRSSI"];

  v11 = [NSNumber numberWithDouble:self->_lastUWBRSSI];
  [v3 setObject:v11 forKey:@"LastUWBRSSI"];

  v12 = [NSNumber numberWithDouble:self->_minUWBRSSI];
  [v3 setObject:v12 forKey:@"MinUWBRSSI"];

  v13 = [NSNumber numberWithDouble:self->_maxUWBRSSI];
  [v3 setObject:v13 forKey:@"MaxUWBRSSI"];

  if (self->_sessionType == 4)
  {
    [NSNumber numberWithInt:1];
  }

  else
  {
    [NSNumber numberWithInt:2];
  }
  v14 = ;
  [v3 setObject:v14 forKey:@"RangingRole"];

  v15 = [v3 mutableCopy];
  v16 = qword_1009ECD20;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    bundleIdentifier = self->_bundleIdentifier;
    v18 = [v15 description];
    *buf = 138412802;
    v21 = bundleIdentifier;
    v22 = 2112;
    v23 = @"com.apple.nearbyinteraction.findingsession.end";
    v24 = 2112;
    v25 = v18;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);
  }

  v19 = v15;
  AnalyticsSendEventLazy();
}

- (void)_sessionStoppedWithTimestamp:(double)a3
{
  if (!self->_isRunning)
  {
    v24 = qword_1009ECD20;
    if (!os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
    {
      return;
    }

    bundleIdentifier = self->_bundleIdentifier;
    *buf = 138412290;
    *&buf[4] = bundleIdentifier;
    v26 = "#ni-ca,[%@] Session already stopped. Ignore duplicate call.";
    goto LABEL_21;
  }

  self->_isRunning = 0;
  runTimestamp = self->_runTimestamp;
  v6 = a3 - self->_visibilityUpdateTimestamp;
  v7 = 80;
  if (self->_isVisible)
  {
    v7 = 72;
  }

  *(&self->super.isa + v7) = *(&self->super.isa + v7) + v6;
  timeAtFirstLocationUpdate = self->_timeAtFirstLocationUpdate;
  pdrTimeAtLastPDRUpdate = self->_pdrTimeAtLastPDRUpdate;
  pdrTimeAtFirstPDRUpdate = self->_pdrTimeAtFirstPDRUpdate;
  self->_timeToSessionEnd = a3 - self->_timeAtFirstPeerData;
  std::mutex::lock(&stru_1009E9B50);
  --byte_1009ECD78;
  p_sessionType = &self->_sessionType;
  *buf = &self->_sessionType;
  v12 = sub_10004EFB0(&xmmword_1009ECD28, &self->_sessionType);
  --*(v12 + 20);
  if (self->_bundleIdentifier)
  {
    size = *(&self->_bundleIdAsStdString.__rep_.__l + 23);
    if ((size & 0x8000000000000000) != 0)
    {
      size = self->_bundleIdAsStdString.__rep_.__l.__size_;
    }

    if (!size)
    {
      __assert_rtn("[NIServerAnalyticsManager _sessionStoppedWithTimestamp:]", "NIServerAnalyticsManager.mm", 2339, "!_bundleIdAsStdString.empty()");
    }

    *buf = &self->_bundleIdAsStdString;
    v14 = sub_10004F1E4(&xmmword_1009ECD50, &self->_bundleIdAsStdString);
    --*(v14 + 40);
  }

  std::mutex::unlock(&stru_1009E9B50);
  if (!self->_bundleIdentifier)
  {
    v24 = qword_1009ECD20;
    if (!os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v27 = self->_bundleIdentifier;
    *buf = 138412290;
    *&buf[4] = v27;
    v26 = "#ni-ca,[%@] Not logging summary event without bundle identifier.";
    goto LABEL_21;
  }

  if (!*p_sessionType)
  {
    v24 = qword_1009ECD20;
    if (!os_log_type_enabled(qword_1009ECD20, OS_LOG_TYPE_INFO))
    {
      return;
    }

    v28 = self->_bundleIdentifier;
    *buf = 138412290;
    *&buf[4] = v28;
    v26 = "#ni-ca,[%@] Not logging summary event for unspecified session types.";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, v26, buf, 0xCu);
    return;
  }

  v386 = objc_alloc_init(NSMutableDictionary);
  [v386 setObject:self->_bundleIdentifier forKey:@"appBundleID"];
  v15 = a3 - runTimestamp;
  v16 = [NSNumber numberWithDouble:v15];
  [v386 setObject:v16 forKey:@"totalDuration"];

  v17 = [NSNumber numberWithDouble:self->_timeSpentNotVisible];
  [v386 setObject:v17 forKey:@"backgroundDuration"];

  [v386 setObject:&off_1009C3D88 forKey:@"sessionCount"];
  v18 = [NSNumber numberWithInt:LODWORD(self->_backgroundMode)];
  [v386 setObject:v18 forKey:@"configuredBackgroundMode"];

  [v386 setObject:self->_lifecycleTimeoutType forKey:@"lifecycleTimeout"];
  v19 = [NSNumber numberWithBool:self->_isCameraAssistanceEnabled];
  [v386 setObject:v19 forKey:@"isCameraAssistanceEnabled"];

  v20 = [NSNumber numberWithBool:self->_isExtendedDistanceMeasurementEnabled];
  [v386 setObject:v20 forKey:@"isExtendedDistanceMeasurementEnabled"];

  v21 = [NSNumber numberWithBool:self->_isLiveActivityEverActive];
  [v386 setObject:v21 forKey:@"isLiveActivityActive"];

  v22 = *p_sessionType;
  if (*p_sessionType > 3)
  {
    switch(v22)
    {
      case 4:
        v23 = @"Finder";
        break;
      case 5:
        v23 = @"ItemPrecisionFinding";
        break;
      case 6:
        v23 = @"ItemBTFinding";
        break;
      default:
        goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v23 = @"Accessory";
    }

    else
    {
      v23 = @"Findee";
    }

    goto LABEL_31;
  }

  if (v22 == 1)
  {
    v23 = @"Peer";
LABEL_31:
    [v386 setObject:v23 forKey:@"configType"];
    goto LABEL_32;
  }

  if (!v22)
  {
    __assert_rtn("[NIServerAnalyticsManager _sessionStoppedWithTimestamp:]", "NIServerAnalyticsManager.mm", 2390, "false");
  }

LABEL_32:
  if (self->_hasAccessoryDataRate)
  {
    v29 = [NSNumber numberWithInt:self->_accessoryDataRate];
    [v386 setObject:v29 forKey:@"configuredAccessoryDataRate"];
  }

  if (self->_receivedDistance)
  {
    v30 = [NSNumber numberWithDouble:self->_firstDistance];
    [v386 setObject:v30 forKey:@"firstDistance"];

    v31 = [NSNumber numberWithDouble:self->_lastDistance];
    [v386 setObject:v31 forKey:@"lastDistance"];

    v32 = [NSNumber numberWithDouble:self->_minDistance];
    [v386 setObject:v32 forKey:@"minDistance"];

    v33 = [NSNumber numberWithDouble:self->_maxDistance];
    [v386 setObject:v33 forKey:@"maxDistance"];
  }

  v385 = [v386 mutableCopy];
  v34 = qword_1009ECD20;
  if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
  {
    v35 = self->_bundleIdentifier;
    v36 = [v385 description];
    *buf = 138412802;
    *&buf[4] = v35;
    v418 = 2112;
    v419 = @"com.apple.nearbyinteraction.sessionV2.summary";
    v420 = 2112;
    v421 = *&v36;
    _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);
  }

  v412 = _NSConcreteStackBlock;
  v413 = 3221225472;
  v414 = sub_10004DE3C;
  v415 = &unk_10098AED8;
  v37 = v385;
  v416 = v37;
  AnalyticsSendEventLazy();
  if (!self->_isCameraAssistanceEnabled)
  {
    goto LABEL_49;
  }

  v38 = objc_alloc_init(NSMutableDictionary);
  [v38 setObject:self->_bundleIdentifier forKey:@"appBundleID"];
  v39 = *p_sessionType;
  if (*p_sessionType == 1)
  {
    v40 = @"Peer";
  }

  else
  {
    if (v39 != 2)
    {
      if (!v39)
      {
        __assert_rtn("[NIServerAnalyticsManager _sessionStoppedWithTimestamp:]", "NIServerAnalyticsManager.mm", 2435, "false");
      }

      goto LABEL_46;
    }

    v40 = @"Accessory";
  }

  [v38 setObject:v40 forKey:@"configType"];
LABEL_46:
  v41 = [NSNumber numberWithDouble:self->_distanceMovedToHorizontalConvergence];
  [v38 setObject:v41 forKey:@"DistanceMovedToHorizontalConvergence"];

  v42 = [NSNumber numberWithDouble:self->_distanceMovedToVerticalConvergence];
  [v38 setObject:v42 forKey:@"DistanceMovedToVerticalConvergence"];

  v43 = [NSNumber numberWithInt:self->_numberOfInvalidPose];
  [v38 setObject:v43 forKey:@"NumberOfInvalidPoseEvents"];

  v44 = [NSNumber numberWithInt:self->_numberOfLostVerticalConvergence];
  [v38 setObject:v44 forKey:@"NumberOfLostConvergence"];

  v45 = [NSNumber numberWithInt:self->_numberOfLostHorizontalConvergence];
  [v38 setObject:v45 forKey:@"NumberOfLostHorizontalConvergence"];

  v46 = [NSNumber numberWithDouble:self->_rangeAtHorizontalConvergence];
  [v38 setObject:v46 forKey:@"RangeAtHorizontalConvergence"];

  v47 = [NSNumber numberWithDouble:self->_rangeAtVerticalConvergence];
  [v38 setObject:v47 forKey:@"RangeAtVerticalConvergence"];

  v48 = [NSNumber numberWithDouble:self->_timeToHorizontalConvergence];
  [v38 setObject:v48 forKey:@"TimeToHorizontalConvergence"];

  v49 = [NSNumber numberWithDouble:self->_timeToVerticalConvergence];
  [v38 setObject:v49 forKey:@"TimeToVerticalConvergence"];

  v50 = [NSNumber numberWithDouble:self->_totalDistanceMoved];
  [v38 setObject:v50 forKey:@"TotalDistanceMoved"];

  v51 = [v38 mutableCopy];
  v52 = qword_1009ECD20;
  if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
  {
    v53 = v37;
    v54 = self->_bundleIdentifier;
    v55 = [v51 description];
    *buf = 138412802;
    *&buf[4] = v54;
    v418 = 2112;
    v419 = @"com.apple.nearbyinteraction.camereEnabledSession.summary";
    v420 = 2112;
    v421 = *&v55;
    _os_log_impl(&_mh_execute_header, v52, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);

    v37 = v53;
    p_sessionType = &self->_sessionType;
  }

  v407 = _NSConcreteStackBlock;
  v408 = 3221225472;
  v409 = sub_10004DE44;
  v410 = &unk_10098AED8;
  v411 = v51;
  AnalyticsSendEventLazy();

LABEL_49:
  v56 = *p_sessionType;
  if (*p_sessionType == 3)
  {
    if (self->_numberOfPeerData == -1)
    {
      v57 = qword_1009ECD20;
      if (os_log_type_enabled(v57, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_INFO, "#ni-ca,Dummy findee CA event", buf, 2u);
      }
    }

    else
    {
      [(NIServerAnalyticsManager *)self _submitFindingSessionEndStats];
      v57 = objc_alloc_init(NSMutableDictionary);
      [v57 setObject:self->_bundleIdentifier forKey:@"appBundleID"];
      numberOfBoundedDisplacementFromPeerData = self->_numberOfBoundedDisplacementFromPeerData;
      v59 = 0.0;
      if (numberOfBoundedDisplacementFromPeerData != -1)
      {
        numberOfPeerData = self->_numberOfPeerData;
        if (numberOfPeerData)
        {
          v59 = (numberOfBoundedDisplacementFromPeerData / numberOfPeerData);
        }
      }

      v61 = [NSNumber numberWithDouble:v59];
      [v57 setObject:v61 forKey:@"SessionWithBoundedDisplacement_percentage"];

      numberOfPDRFromPeerData = self->_numberOfPDRFromPeerData;
      v63 = 0.0;
      if (numberOfPDRFromPeerData != -1)
      {
        v64 = self->_numberOfPeerData;
        if (v64)
        {
          v63 = (numberOfPDRFromPeerData / v64);
        }
      }

      v65 = [NSNumber numberWithDouble:v63];
      [v57 setObject:v65 forKey:@"SessionWithDeltaPositionPDR_percentage"];

      numberOfVIOFromPeerData = self->_numberOfVIOFromPeerData;
      v67 = 0.0;
      if (numberOfVIOFromPeerData != -1)
      {
        v68 = self->_numberOfPeerData;
        if (v68)
        {
          v67 = (numberOfVIOFromPeerData / v68);
        }
      }

      v69 = [NSNumber numberWithDouble:v67];
      [v57 setObject:v69 forKey:@"SessionWithVIO_percentage"];

      numberOfDeltaVelocityFromPeerData = self->_numberOfDeltaVelocityFromPeerData;
      v71 = 0.0;
      if (numberOfDeltaVelocityFromPeerData != -1)
      {
        v72 = self->_numberOfPeerData;
        if (v72)
        {
          v71 = (numberOfDeltaVelocityFromPeerData / v72);
        }
      }

      v73 = [NSNumber numberWithDouble:v71];
      [v57 setObject:v73 forKey:@"SessionWithDeltaVelocity_percentage"];

      numberOfLocationFromPeerData = self->_numberOfLocationFromPeerData;
      v75 = 0.0;
      if (numberOfLocationFromPeerData != -1)
      {
        v76 = self->_numberOfPeerData;
        if (v76)
        {
          v75 = (numberOfLocationFromPeerData / v76);
        }
      }

      v77 = [NSNumber numberWithDouble:v75];
      [v57 setObject:v77 forKey:@"SessionWithLocation_percentage"];

      numberOfStatic = self->_numberOfStatic;
      v79 = 0.0;
      if (numberOfStatic != -1)
      {
        v80 = self->_numberOfBoundedDisplacementFromPeerData;
        if (v80)
        {
          v79 = (numberOfStatic / v80);
        }
      }

      v81 = [NSNumber numberWithDouble:v79];
      [v57 setObject:v81 forKey:@"Findee_Static_percentage"];

      numberOfSlowlyMoving = self->_numberOfSlowlyMoving;
      v83 = 0.0;
      if (numberOfSlowlyMoving != -1)
      {
        v84 = self->_numberOfBoundedDisplacementFromPeerData;
        if (v84)
        {
          v83 = (numberOfSlowlyMoving / v84);
        }
      }

      v85 = [NSNumber numberWithDouble:v83];
      [v57 setObject:v85 forKey:@"Findee_SlowlyMoving_percentage"];

      numberOfWalkingOrkUnknown = self->_numberOfWalkingOrkUnknown;
      v87 = 0.0;
      if (numberOfWalkingOrkUnknown != -1)
      {
        v88 = self->_numberOfBoundedDisplacementFromPeerData;
        if (v88)
        {
          v87 = (numberOfWalkingOrkUnknown / v88);
        }
      }

      v89 = [NSNumber numberWithDouble:v87];
      [v57 setObject:v89 forKey:@"Findee_WalkingOrUnknown_percentage"];

      if (self->_timeAtFirstLocationUpdate != -1.0)
      {
        v90 = a3 - timeAtFirstLocationUpdate;
        timeLocationFromAccessory = self->_timeLocationFromAccessory;
        v92 = 0.0;
        if (timeLocationFromAccessory != -1.0 && v90 != 0.0)
        {
          v93 = timeLocationFromAccessory;
          v94 = v90;
          v92 = (v93 / v94);
        }

        v95 = [NSNumber numberWithDouble:v92];
        [v57 setObject:v95 forKey:@"LocationFromAccessory_percentage"];

        timeLocationFromCell = self->_timeLocationFromCell;
        v97 = 0.0;
        if (timeLocationFromCell != -1.0 && v90 != 0.0)
        {
          v98 = timeLocationFromCell;
          v99 = v90;
          v97 = (v98 / v99);
        }

        v100 = [NSNumber numberWithDouble:v97];
        [v57 setObject:v100 forKey:@"LocationFromCell_percentage"];

        timeLocationFromCompensated = self->_timeLocationFromCompensated;
        v102 = 0.0;
        if (timeLocationFromCompensated != -1.0 && v90 != 0.0)
        {
          v103 = timeLocationFromCompensated;
          v104 = v90;
          v102 = (v103 / v104);
        }

        v105 = [NSNumber numberWithDouble:v102];
        [v57 setObject:v105 forKey:@"LocationFromCompensated_percentage"];

        timeLocationFromGPS = self->_timeLocationFromGPS;
        v107 = 0.0;
        if (timeLocationFromGPS != -1.0 && v90 != 0.0)
        {
          v108 = timeLocationFromGPS;
          v109 = v90;
          v107 = (v108 / v109);
        }

        v110 = [NSNumber numberWithDouble:v107];
        [v57 setObject:v110 forKey:@"LocationFromGPS_percentage"];

        timeLocationFromGPSCoarse = self->_timeLocationFromGPSCoarse;
        v112 = 0.0;
        if (timeLocationFromGPSCoarse != -1.0 && v90 != 0.0)
        {
          v113 = timeLocationFromGPSCoarse;
          v114 = v90;
          v112 = (v113 / v114);
        }

        v115 = [NSNumber numberWithDouble:v112];
        [v57 setObject:v115 forKey:@"LocationFromGPSCoarse_percentage"];

        v116 = self->_timeLocationFromCell;
        v117 = 0.0;
        if (v116 != -1.0 && v90 != 0.0)
        {
          v118 = v116;
          v119 = v90;
          v117 = (v118 / v119);
        }

        v120 = [NSNumber numberWithDouble:v117];
        [v57 setObject:v120 forKey:@"LocationFromCell_percentage"];

        timeLocationFromLAC = self->_timeLocationFromLAC;
        v122 = 0.0;
        if (timeLocationFromLAC != -1.0 && v90 != 0.0)
        {
          v123 = timeLocationFromLAC;
          v124 = v90;
          v122 = (v123 / v124);
        }

        v125 = [NSNumber numberWithDouble:v122];
        [v57 setObject:v125 forKey:@"LocationFromLAC_percentage"];

        timeLocationFromLOIOverride = self->_timeLocationFromLOIOverride;
        v127 = 0.0;
        if (timeLocationFromLOIOverride != -1.0 && v90 != 0.0)
        {
          v128 = timeLocationFromLOIOverride;
          v129 = v90;
          v127 = (v128 / v129);
        }

        v130 = [NSNumber numberWithDouble:v127];
        [v57 setObject:v130 forKey:@"LocationFromLOIOverride_percentage"];

        timeLocationFromMCC = self->_timeLocationFromMCC;
        v132 = 0.0;
        if (timeLocationFromMCC != -1.0 && v90 != 0.0)
        {
          v133 = timeLocationFromMCC;
          v134 = v90;
          v132 = (v133 / v134);
        }

        v135 = [NSNumber numberWithDouble:v132];
        [v57 setObject:v135 forKey:@"LocationFromMCC_percentage"];

        timeLocationFromPipeline = self->_timeLocationFromPipeline;
        v137 = 0.0;
        if (timeLocationFromPipeline != -1.0 && v90 != 0.0)
        {
          v138 = timeLocationFromPipeline;
          v139 = v90;
          v137 = (v138 / v139);
        }

        v140 = [NSNumber numberWithDouble:v137];
        [v57 setObject:v140 forKey:@"LocationFromPipeline_percentage"];

        timeLocationFromUnknown = self->_timeLocationFromUnknown;
        v142 = 0.0;
        if (timeLocationFromUnknown != -1.0 && v90 != 0.0)
        {
          v143 = timeLocationFromUnknown;
          v144 = v90;
          v142 = (v143 / v144);
        }

        v145 = [NSNumber numberWithDouble:v142];
        [v57 setObject:v145 forKey:@"LocationFromUnknown_percentage"];

        timeLocationFromWiFi = self->_timeLocationFromWiFi;
        v147 = 0.0;
        if (timeLocationFromWiFi != -1.0 && v90 != 0.0)
        {
          v148 = timeLocationFromWiFi;
          v149 = v90;
          v147 = (v148 / v149);
        }

        v150 = [NSNumber numberWithDouble:v147];
        [v57 setObject:v150 forKey:@"LocationFromWiFi_percentage"];

        timeLocationFromWiFi2 = self->_timeLocationFromWiFi2;
        v152 = 0.0;
        if (timeLocationFromWiFi2 != -1.0 && v90 != 0.0)
        {
          v153 = timeLocationFromWiFi2;
          v154 = v90;
          v152 = (v153 / v154);
        }

        v155 = [NSNumber numberWithDouble:v152];
        [v57 setObject:v155 forKey:@"LocationFromWiFi2_percentage"];
      }

      if (self->_pdrTimeAtFirstPDRUpdate != -1.0)
      {
        timePDRIndicatesStatic = self->_timePDRIndicatesStatic;
        v157 = 0.0;
        if (timePDRIndicatesStatic != -1.0 && pdrTimeAtLastPDRUpdate - pdrTimeAtFirstPDRUpdate != 0.0)
        {
          v158 = timePDRIndicatesStatic;
          v159 = pdrTimeAtLastPDRUpdate - pdrTimeAtFirstPDRUpdate;
          v157 = (v158 / v159);
        }

        v160 = [NSNumber numberWithDouble:v157];
        [v57 setObject:v160 forKey:@"PDR_indicates_static_percentage"];
      }

      if (self->_timeAtFirstPeerData != -1.0)
      {
        v161 = [NSNumber numberWithDouble:self->_timeFindeeWasStatic];
        [v57 setObject:v161 forKey:@"TimeFindeeWasStatic"];

        v162 = [NSNumber numberWithDouble:self->_timeFindeeWasSlowlyMoving];
        [v57 setObject:v162 forKey:@"TimeFindeeWasSlowlyMoving"];

        v163 = [NSNumber numberWithDouble:self->_timeFindeeWasWalkingOrUnknown];
        [v57 setObject:v163 forKey:@"TimeFindeeWasWalkingOrUnknown"];

        v164 = [NSNumber numberWithDouble:self->_timeToSessionEnd];
        [v57 setObject:v164 forKey:@"TimeToSessionEnd"];
      }

      v165 = [NSNumber numberWithDouble:self->_distanceTraveledFromPDR];
      [v57 setObject:v165 forKey:@"DistanceTraveledFromPDR"];

      numberOfMissedRanges = self->_numberOfMissedRanges;
      if (numberOfMissedRanges == -1)
      {
        v167 = 0;
      }

      else
      {
        v167 = numberOfMissedRanges;
      }

      v168 = [NSNumber numberWithInt:v167];
      [v57 setObject:v168 forKey:@"NumberOfMissedRanges"];

      numberOfSuccessfulRanges = self->_numberOfSuccessfulRanges;
      if (numberOfSuccessfulRanges == -1)
      {
        v170 = 0;
      }

      else
      {
        v170 = numberOfSuccessfulRanges;
      }

      v171 = [NSNumber numberWithInt:v170];
      [v57 setObject:v171 forKey:@"NumberOfSuccessfulRanges"];

      v172 = self->_numberOfSuccessfulRanges;
      v173 = 0.0;
      if (v172 != -1)
      {
        v174 = self->_numberOfMissedRanges + v172;
        if (v174)
        {
          v173 = (v172 / v174);
        }
      }

      v175 = [NSNumber numberWithDouble:v173];
      [v57 setObject:v175 forKey:@"SuccesfulRangesToTotalRangingAttempts_percentage"];

      if (self->_isFinderAPhone.__engaged_)
      {
        v176 = [NSNumber numberWithBool:self->_isFinderAPhone.var0.__null_state_];
        [v57 setObject:v176 forKey:@"FinderIsPhone"];
      }

      v177 = [v57 mutableCopy];
      v178 = qword_1009ECD20;
      if (os_log_type_enabled(v178, OS_LOG_TYPE_INFO))
      {
        v179 = p_sessionType;
        v180 = v37;
        v181 = self->_bundleIdentifier;
        v182 = [v177 description];
        *buf = 138412802;
        *&buf[4] = v181;
        v418 = 2112;
        v419 = @"com.apple.nearbyinteraction.peopleFindingSession.FindeeSummary";
        v420 = 2112;
        v421 = *&v182;
        _os_log_impl(&_mh_execute_header, v178, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);

        v37 = v180;
        p_sessionType = v179;
      }

      v402 = _NSConcreteStackBlock;
      v403 = 3221225472;
      v404 = sub_10004DE4C;
      v405 = &unk_10098AED8;
      v406 = v177;
      AnalyticsSendEventLazy();
    }

    v56 = *p_sessionType;
  }

  p_engaged = &self->_lastSolutionTime.__engaged_;
  if (v56 == 4)
  {
    [(NIServerAnalyticsManager *)self _submitFindingSessionEndStats];
    if (self->_timeAtFirstPose == -1.0)
    {
      v184 = qword_1009ECD20;
      if (os_log_type_enabled(v184, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v184, OS_LOG_TYPE_INFO, "#ni-ca,Dummy finder CA event", buf, 2u);
      }
    }

    else
    {
      v184 = objc_alloc_init(NSMutableDictionary);
      [v184 setObject:self->_bundleIdentifier forKey:@"appBundleID"];
      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:a3];
      v186 = v185;
      if (self->_timeAtFirstOutputRange != -1.0)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:?];
        v187 = [NSNumber numberWithDouble:?];
        [v184 setObject:v187 forKey:@"TimeToFirstOutputRange"];
      }

      if (self->_timeAtFirstPeerLocation != -1.0)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:?];
        v188 = [NSNumber numberWithDouble:?];
        [v184 setObject:v188 forKey:@"TimeToFirstPeerLocation"];
      }

      if (self->_timeAtFirstPeerLocationFromFMF != -1.0)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:?];
        v189 = [NSNumber numberWithDouble:?];
        [v184 setObject:v189 forKey:@"TimeToFirstPeerLocationFromFMF"];
      }

      if (self->_timeAtFirstPeerLocationFromFindeeData != -1.0)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:?];
        v190 = [NSNumber numberWithDouble:?];
        [v184 setObject:v190 forKey:@"TimeToFirstPeerLocationFromFindeeData"];
      }

      if (self->_timeAtFirstRawUWBRange != -1.0)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:?];
        v191 = [NSNumber numberWithDouble:?];
        [v184 setObject:v191 forKey:@"TimeToFirstRawUWBRange"];
      }

      if (self->_timeAtFirstArrow != -1.0)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:?];
        v192 = [NSNumber numberWithDouble:?];
        [v184 setObject:v192 forKey:@"TimeToFirstArrow"];
      }

      if (self->_timeAtArmsLength != -1.0)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:?];
        v193 = [NSNumber numberWithDouble:?];
        [v184 setObject:v193 forKey:@"TimeToArmsReach"];
      }

      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstValidPose];
      v194 = [NSNumber numberWithDouble:?];
      [v184 setObject:v194 forKey:@"TimeToFirstPose"];

      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstPeerData];
      v195 = [NSNumber numberWithDouble:?];
      [v184 setObject:v195 forKey:@"TimeToFirstFindeeData"];

      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstSelfLocation];
      v196 = [NSNumber numberWithDouble:?];
      [v184 setObject:v196 forKey:@"TimeToFirstSelfLocation"];

      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstPDRFromFindeeData];
      v197 = [NSNumber numberWithDouble:?];
      [v184 setObject:v197 forKey:@"TimeToFirstPDRFromFindeeData"];

      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstVIOFromFindeeData];
      v198 = [NSNumber numberWithDouble:?];
      [v184 setObject:v198 forKey:@"TimeToFirstVIOFromFindeeData"];

      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstDeltaVelocityFromFindeeData];
      v199 = [NSNumber numberWithDouble:?];
      [v184 setObject:v199 forKey:@"TimeToFirstDeltaVelocityFromFindeeData"];

      [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstStaticFromFindeeData];
      v200 = [NSNumber numberWithDouble:?];
      [v184 setObject:v200 forKey:@"TimeToFirstStaticFromFindeeData"];

      v201 = [NSNumber numberWithDouble:v186];
      [v184 setObject:v201 forKey:@"TimeToEndSession"];

      v202 = [(NIServerAnalyticsManager *)self _algorithmSourceToString:self->_firstArrowAlgorithmSource];
      [v184 setObject:v202 forKey:@"FirstArrowAlgorithmSource"];

      v203 = [(NIServerAnalyticsManager *)self _algorithmSourceToString:self->_firstOutputRangeAlgorithmSource];
      [v184 setObject:v203 forKey:@"FirstOutputRangeAlgorithmSource"];

      v204 = [(NIServerAnalyticsManager *)self _algorithmSourceToString:self->_armsReachAlgorithmSource];
      [v184 setObject:v204 forKey:@"ArmsReachAlgorithmSource"];

      numberOfArrowAvailabilityAfterFirstArrow = self->_numberOfArrowAvailabilityAfterFirstArrow;
      v206 = 0.0;
      if (numberOfArrowAvailabilityAfterFirstArrow != -1)
      {
        numberOfSolutions = self->_numberOfSolutions;
        if (numberOfSolutions)
        {
          v206 = (numberOfArrowAvailabilityAfterFirstArrow / numberOfSolutions);
        }
      }

      v208 = [NSNumber numberWithDouble:v206];
      [v184 setObject:v208 forKey:@"ArrowAvailabilityAfterFirstArrow"];

      numberOfArrowRevokes = self->_numberOfArrowRevokes;
      if (numberOfArrowRevokes == -1)
      {
        v210 = 0;
      }

      else
      {
        v210 = numberOfArrowRevokes;
      }

      v211 = [NSNumber numberWithInt:v210];
      [v184 setObject:v211 forKey:@"NumberOfArrowRevokes"];

      numberOfVIOResets = self->_numberOfVIOResets;
      if (numberOfVIOResets == -1)
      {
        v213 = 0;
      }

      else
      {
        v213 = numberOfVIOResets;
      }

      v214 = [NSNumber numberWithInt:v213];
      [v184 setObject:v214 forKey:@"NumberOfVIOResets"];

      numberOfPeerDataFinder = self->_numberOfPeerDataFinder;
      v216 = 0.0;
      if (numberOfPeerDataFinder != -1)
      {
        numberOfRawRanges = self->_numberOfRawRanges;
        if (numberOfRawRanges)
        {
          v216 = (numberOfPeerDataFinder / numberOfRawRanges);
        }
      }

      v218 = [NSNumber numberWithDouble:v216];
      [v184 setObject:v218 forKey:@"RatioOfSuccessfulPeerDataToTotalNumRange"];

      v219 = [NSNumber numberWithBool:self->_didFinderChangeFloor];
      [v184 setObject:v219 forKey:@"DidFinderChangeFloors"];

      v220 = [NSNumber numberWithBool:self->_didFindeeChangeFloor];
      [v184 setObject:v220 forKey:@"DidFindeeChangeFloors"];

      if (self->_numberOfRawRanges >= 1)
      {
        v221 = [NSNumber numberWithDouble:self->_maxDistance_finding];
        [v184 setObject:v221 forKey:@"MaxRawRangeValueDuringSession"];

        v222 = [NSNumber numberWithDouble:self->_minDistance_finding];
        [v184 setObject:v222 forKey:@"MinimumRange"];

        v223 = [NSNumber numberWithDouble:self->_firstDistance_finding];
        [v184 setObject:v223 forKey:@"FirstRawRangeValueDuringSession"];

        v224 = [NSNumber numberWithDouble:self->_lastDistance_finding];
        [v184 setObject:v224 forKey:@"LastRange"];

        v225 = [NSNumber numberWithDouble:self->_rangeAtFirstPose];
        [v184 setObject:v225 forKey:@"RangeAtFirstPose"];

        v226 = [NSNumber numberWithDouble:self->_rangeAtFirstArrow];
        [v184 setObject:v226 forKey:@"RangeAtFirstArrow"];

        v227 = [NSNumber numberWithBool:vabdd_f64(self->_lastDistance_finding, self->_rangeAtFirstPose) < 2.0];
        [v184 setObject:v227 forKey:@"SessionEndedWithNoRange"];
      }

      if (self->_numberOfVIOResets == -1)
      {
        [(NIServerAnalyticsManager *)self _calculateStraightLineDistance];
        v229 = [NSNumber numberWithDouble:self->_firstArrowStraightLineDistance];
        [v184 setObject:v229 forKey:@"StraightLineDistanceToFirstArrow"];

        v230 = [NSNumber numberWithDouble:self->_firstOutputRangeStraightLineDistance];
        [v184 setObject:v230 forKey:@"StraightLineDistanceToFirstArrow"];

        v231 = [NSNumber numberWithDouble:self->_armsReachStraightLineDistance];
        [v184 setObject:v231 forKey:@"StraightLineDistanceToArmsReach"];

        v232 = [NSNumber numberWithDouble:self->_radialDisplacementFromVIO];
        [v184 setObject:v232 forKey:@"RadialDisplacementVIO"];

        v233 = [NSNumber numberWithDouble:*&self->_anon_778[168]];
        [v184 setObject:v233 forKey:@"UserMovedDistanceToFirstArrow"];

        v234 = [NSNumber numberWithDouble:*&self->_anon_8a8[168]];
        [v184 setObject:v234 forKey:@"UserMovedDistanceToFirstOutputRange"];

        v235 = [NSNumber numberWithDouble:*&self->_anon_9d8[168]];
        [v184 setObject:v235 forKey:@"UserMovedDistanceToArmsReach"];

        v236 = [NSNumber numberWithDouble:*&self->_anon_b08[168]];
        [v184 setObject:v236 forKey:@"TotalUserMovedDistance"];

        [(NIServerAnalyticsManager *)self _calculateIOMetrics:v186];
        v237 = [NSNumber numberWithDouble:self->_stdSpeedFromVIO];
        [v184 setObject:v237 forKey:@"PDRSpeedErrorStandardDeviation"];

        v238 = [NSNumber numberWithDouble:self->_pathLengthError];
        [v184 setObject:v238 forKey:@"PathLengthPDRVsVIOError"];

        v239 = [NSNumber numberWithDouble:self->_radialDisplacementError];
        [v184 setObject:v239 forKey:@"RadialDisplacementError"];

        v240 = [NSNumber numberWithDouble:self->_meanSpeedFromVIO];
        [v184 setObject:v240 forKey:@"MeanSpeedFromVIO"];

        v241 = [NSNumber numberWithDouble:self->_meanSpeedFromVIOError];
        [v184 setObject:v241 forKey:@"MeanSpeedFromVIOError"];

        v242 = [NSNumber numberWithDouble:self->_pdrSSDetectionTruePositiveRate];
        [v184 setObject:v242 forKey:@"PDRStationaryDetectionTruePositiveRate"];

        v243 = [NSNumber numberWithDouble:self->_pdrSSDetectionFalsePositiveRate];
        [v184 setObject:v243 forKey:@"PDRStationaryDetectionTrueNegativeRate"];

        v228 = [NSNumber numberWithDouble:self->_percentTimeSSFromVIO];
        [v184 setObject:v228 forKey:@"TimeSSFromVIO_percentage"];
      }

      else
      {
        v228 = qword_1009ECD20;
        if (os_log_type_enabled(v228, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v228, OS_LOG_TYPE_INFO, "#ni-ca,Unable to send user distances between finder and findee (we had VIO reset(s))", buf, 2u);
        }
      }

      if (self->_timeAtFirstIOPose.__engaged_)
      {
        [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstIOPose.var0.__val_];
        v244 = [NSNumber numberWithDouble:?];
        [v184 setObject:v244 forKey:@"TimeToFirstIOPoseAfterFindButtonPressed"];

        v245 = qword_1009ECD20;
        if (os_log_type_enabled(v245, OS_LOG_TYPE_DEFAULT))
        {
          [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstValidPose];
          if (!self->_timeAtFirstIOPose.__engaged_)
          {
            sub_1000195BC();
          }

          v247 = v246;
          [(NIServerAnalyticsManager *)self _finderTimeFromFirstPoseTo:self->_timeAtFirstIOPose.var0.__val_];
          *buf = 134218240;
          *&buf[4] = v247;
          v418 = 2048;
          v419 = v248;
          _os_log_impl(&_mh_execute_header, v245, OS_LOG_TYPE_DEFAULT, "#ni-ca,pose times, vio: %f, io: %f", buf, 0x16u);
        }
      }

      vioAvailableTime = self->_vioAvailableTime;
      ioSourceTime = self->_ioSourceTime;
      deltaVSourceTime = self->_deltaVSourceTime;
      noOdometryAvailableTime = self->_noOdometryAvailableTime;
      v253 = vioAvailableTime + ioSourceTime + deltaVSourceTime + noOdometryAvailableTime;
      v254 = vioAvailableTime / v253;
      v255 = ioSourceTime / v253;
      v256 = deltaVSourceTime / v253;
      v257 = noOdometryAvailableTime / v253;
      v258 = qword_1009ECD20;
      if (os_log_type_enabled(v258, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218752;
        *&buf[4] = v254;
        v418 = 2048;
        v419 = *&v255;
        v420 = 2048;
        v421 = v256;
        v422 = 2048;
        v423 = v257;
        _os_log_impl(&_mh_execute_header, v258, OS_LOG_TYPE_DEFAULT, "#ni-ca,odometry source ratio, VIO: %f, IO: %f, DeltaV: %f, None: %f", buf, 0x2Au);
      }

      v259 = [NSNumber numberWithDouble:v254];
      [v184 setObject:v259 forKey:@"OdometrySourceVIO"];

      v260 = [NSNumber numberWithDouble:v255];
      [v184 setObject:v260 forKey:@"OdometrySourceIO"];

      v261 = [NSNumber numberWithDouble:v256];
      [v184 setObject:v261 forKey:@"OdometrySourceDeltaV"];

      v262 = [NSNumber numberWithDouble:v257];
      [v184 setObject:v262 forKey:@"OdometrySourceNone"];

      end = self->_pointToPointErrorHistory.__end_;
      begin = self->_pointToPointErrorHistory.__begin_;
      v265 = end - begin;
      if (v265 >= 0xB)
      {
        v401 = 0;
        v399 = 0u;
        v400 = 0u;
        v397 = 0;
        v398 = 0;
        __p = 0;
        sub_10004F564(&__p, begin, end, v265);
        [(NIServerAnalyticsManager *)self _calculateErrorStatsFromVector:&__p];
        if (__p)
        {
          v397 = __p;
          operator delete(__p);
        }

        v266 = qword_1009ECD20;
        if (os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134219008;
          *&buf[4] = v399;
          v418 = 2048;
          v419 = *(&v399 + 1);
          v420 = 2048;
          v421 = *&v400;
          v422 = 2048;
          v423 = *(&v400 + 1);
          v424 = 2048;
          v425 = v401;
          _os_log_impl(&_mh_execute_header, v266, OS_LOG_TYPE_DEFAULT, "#ni-ca,point errors mean: %f, std: %f, median: %f, 95th: %f, n: %zu", buf, 0x34u);
        }

        v267 = [NSNumber numberWithDouble:*&v399];
        [v184 setObject:v267 forKey:@"PointToPointErrorMean"];

        v268 = [NSNumber numberWithDouble:*(&v399 + 1)];
        [v184 setObject:v268 forKey:@"PointToPointErrorStd"];

        v269 = [NSNumber numberWithDouble:*&v400];
        [v184 setObject:v269 forKey:@"PointToPointErrorMedian"];

        v270 = [NSNumber numberWithDouble:*(&v400 + 1)];
        [v184 setObject:v270 forKey:@"PointToPointError95th"];

        v271 = [NSNumber numberWithDouble:v401];
        [v184 setObject:v271 forKey:@"PointToPointErrorN"];
      }

      v272 = self->_deltaAngleErrorHistory.__end_;
      v273 = self->_deltaAngleErrorHistory.__begin_;
      v274 = v272 - v273;
      if (v274 >= 0xB)
      {
        v401 = 0;
        v399 = 0u;
        v400 = 0u;
        v394 = 0;
        v395 = 0;
        v393 = 0;
        sub_10004F564(&v393, v273, v272, v274);
        [(NIServerAnalyticsManager *)self _calculateErrorStatsFromVector:&v393];
        if (v393)
        {
          v394 = v393;
          operator delete(v393);
        }

        v275 = qword_1009ECD20;
        if (os_log_type_enabled(v275, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134219008;
          *&buf[4] = v399;
          v418 = 2048;
          v419 = *(&v399 + 1);
          v420 = 2048;
          v421 = *&v400;
          v422 = 2048;
          v423 = *(&v400 + 1);
          v424 = 2048;
          v425 = v401;
          _os_log_impl(&_mh_execute_header, v275, OS_LOG_TYPE_DEFAULT, "#ni-ca,delta dot errors mean: %f, std: %f, median: %f, 95th: %f, n: %zu", buf, 0x34u);
        }

        v276 = [NSNumber numberWithDouble:*&v399];
        [v184 setObject:v276 forKey:@"IODirectionOfTravelErrorDeltaDegreesMean"];

        v277 = [NSNumber numberWithDouble:*(&v399 + 1)];
        [v184 setObject:v277 forKey:@"IODirectionOfTravelErrorDeltaDegreesStd"];

        v278 = [NSNumber numberWithDouble:*&v400];
        [v184 setObject:v278 forKey:@"IODirectionOfTravelErrorDeltaDegreesMedian"];

        v279 = [NSNumber numberWithDouble:*(&v400 + 1)];
        [v184 setObject:v279 forKey:@"IODirectionOfTravelErrorDeltaDegrees95th"];

        v280 = [NSNumber numberWithDouble:v401];
        [v184 setObject:v280 forKey:@"IODirectionOfTravelErrorDeltaDegreesN"];
      }

      v281 = self->_angleErrorHistory.__end_;
      v282 = self->_angleErrorHistory.__begin_;
      v283 = v281 - v282;
      if (v283 >= 0xB)
      {
        v401 = 0;
        v399 = 0u;
        v400 = 0u;
        v391 = 0;
        v392 = 0;
        v390 = 0;
        sub_10004F564(&v390, v282, v281, v283);
        [(NIServerAnalyticsManager *)self _calculateErrorStatsFromVector:&v390];
        if (v390)
        {
          v391 = v390;
          operator delete(v390);
        }

        v284 = qword_1009ECD20;
        if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134219008;
          *&buf[4] = v399;
          v418 = 2048;
          v419 = *(&v399 + 1);
          v420 = 2048;
          v421 = *&v400;
          v422 = 2048;
          v423 = *(&v400 + 1);
          v424 = 2048;
          v425 = v401;
          _os_log_impl(&_mh_execute_header, v284, OS_LOG_TYPE_DEFAULT, "#ni-ca,dot errors mean: %f, std: %f, median: %f, 95th: %f, n: %zu", buf, 0x34u);
        }

        v285 = [NSNumber numberWithDouble:*&v399];
        [v184 setObject:v285 forKey:@"IODirectionOfTravelErrorDegreesMean"];

        v286 = [NSNumber numberWithDouble:*(&v399 + 1)];
        [v184 setObject:v286 forKey:@"IODirectionOfTravelErrorDegreesStd"];

        v287 = [NSNumber numberWithDouble:*&v400];
        [v184 setObject:v287 forKey:@"IODirectionOfTravelErrorDegreesMedian"];

        v288 = [NSNumber numberWithDouble:*(&v400 + 1)];
        [v184 setObject:v288 forKey:@"IODirectionOfTravelErrorDegrees95th"];

        v289 = [NSNumber numberWithDouble:v401];
        [v184 setObject:v289 forKey:@"IODirectionOfTravelErrorDegreesN"];
      }

      if (self->_isFindeeAPhone.__engaged_)
      {
        v290 = [NSNumber numberWithBool:self->_isFindeeAPhone.var0.__null_state_];
        [v184 setObject:v290 forKey:@"FindeeIsPhone"];
      }

      v291 = [v184 mutableCopy];
      v292 = qword_1009ECD20;
      if (os_log_type_enabled(v292, OS_LOG_TYPE_INFO))
      {
        v293 = self->_bundleIdentifier;
        v294 = [v291 description];
        *buf = 138412802;
        *&buf[4] = v293;
        v418 = 2112;
        v419 = @"com.apple.nearbyinteraction.peopleFindingSession.FinderSummary";
        v420 = 2112;
        v421 = *&v294;
        _os_log_impl(&_mh_execute_header, v292, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);

        p_engaged = &self->_lastSolutionTime.__engaged_;
      }

      v389 = v291;
      AnalyticsSendEventLazy();
    }
  }

  v295 = *p_sessionType;
  if (*p_sessionType == 5)
  {
    v296 = qword_1009ECD20;
    if (os_log_type_enabled(v296, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v296, OS_LOG_TYPE_INFO, "#ni-ca,Item PF event submission", buf, 2u);
    }

    v297 = objc_alloc_init(NSMutableDictionary);
    v298 = [NSNumber numberWithDouble:v15];
    [v297 setObject:v298 forKey:@"sessionDuration"];

    v299 = [NSNumber numberWithBool:p_engaged[80]];
    [v297 setObject:v299 forKey:@"isOwner"];

    v300 = [NSNumber numberWithInt:self->_clientRequestIndex];
    [v297 setObject:v300 forKey:@"clientRequestIndex"];

    typeName = self->_typeName;
    if (typeName)
    {
      [v297 setObject:typeName forKey:@"productName"];
    }

    v302 = [NSNumber numberWithBool:p_engaged[81]];
    [v297 setObject:v302 forKey:@"askedToRange"];

    timeAtFindButton = self->_timeAtFindButton;
    if (timeAtFindButton != -1.0)
    {
      v304 = [NSNumber numberWithDouble:timeAtFindButton - self->_runTimestamp];
      [v297 setObject:v304 forKey:@"timeToRangeRequest"];

      v305 = [NSNumber numberWithDouble:a3 - self->_timeAtFindButton];
      [v297 setObject:v305 forKey:@"rangingDuration"];

      timeAtFirstRawUWBRange = self->_timeAtFirstRawUWBRange;
      if (timeAtFirstRawUWBRange == -1.0)
      {
        [v297 setObject:&off_1009C3DA0 forKey:@"timeToFirstRange"];
        [v297 setObject:&off_1009C3DA0 forKey:@"timeFromFindButtonToFirstRange"];
        [v297 setObject:&off_1009C3DA0 forKey:@"timeFromConnectToFirstRange"];
        [v297 setObject:&off_1009C3DA0 forKey:@"firstRawRange"];
        [v297 setObject:&off_1009C3DA0 forKey:@"lastRawRange"];
      }

      else
      {
        v307 = [NSNumber numberWithDouble:timeAtFirstRawUWBRange - self->_runTimestamp];
        [v297 setObject:v307 forKey:@"timeToFirstRange"];

        v308 = [NSNumber numberWithDouble:self->_timeAtFirstRawUWBRange - self->_timeAtFindButton];
        [v297 setObject:v308 forKey:@"timeFromFindButtonToFirstRange"];

        v309 = [NSNumber numberWithDouble:self->_timeAtFirstRawUWBRange - self->_timeAtConnect];
        [v297 setObject:v309 forKey:@"timeFromConnectToFirstRange"];

        v310 = [NSNumber numberWithDouble:self->_firstDistance_finding];
        [v297 setObject:v310 forKey:@"firstRawRange"];

        v311 = [NSNumber numberWithDouble:self->_lastDistance_finding];
        [v297 setObject:v311 forKey:@"lastRawRange"];
      }

      if (self->_firstOutputDistance == -1.0)
      {
        [v297 setObject:&off_1009C3DA0 forKey:@"firstOutputRange"];
        [v297 setObject:&off_1009C3DA0 forKey:@"lastOutputRange"];
        [v297 setObject:&off_1009C3DA0 forKey:@"maximumOutputRange"];
        [v297 setObject:&off_1009C3DA0 forKey:@"minimumOutputRange"];
      }

      else
      {
        v312 = [NSNumber numberWithDouble:?];
        [v297 setObject:v312 forKey:@"firstOutputRange"];

        v313 = [NSNumber numberWithDouble:self->_lastOutputDistance];
        [v297 setObject:v313 forKey:@"lastOutputRange"];

        v314 = [NSNumber numberWithDouble:self->_maxOutputDistance];
        [v297 setObject:v314 forKey:@"maximumOutputRange"];

        v315 = [NSNumber numberWithDouble:self->_minOutputDistance];
        [v297 setObject:v315 forKey:@"minimumOutputRange"];
      }

      timeAtFirstValidPose = self->_timeAtFirstValidPose;
      if (timeAtFirstValidPose == -1.0)
      {
        [v297 setObject:&off_1009C3DA0 forKey:@"timeToFirstPose"];
        [v297 setObject:&off_1009C3DA0 forKey:@"timeFromFindButtonToFirstPose"];
      }

      else
      {
        v317 = [NSNumber numberWithDouble:timeAtFirstValidPose - self->_runTimestamp];
        [v297 setObject:v317 forKey:@"timeToFirstPose"];

        v318 = [NSNumber numberWithDouble:self->_timeAtFirstValidPose - self->_timeAtFindButton];
        [v297 setObject:v318 forKey:@"timeFromFindButtonToFirstPose"];

        v319 = self->_numberOfVIOResets;
        if (v319 == -1)
        {
          v320 = 0;
        }

        else
        {
          v320 = v319;
        }

        v321 = [NSNumber numberWithInt:v320];
        [v297 setObject:v321 forKey:@"numberOfVIOResets"];

        if (self->_numberOfVIOResets == -1)
        {
          [(NIServerAnalyticsManager *)self _calculateStraightLineDistance];
          v322 = [NSNumber numberWithDouble:self->_firstArrowStraightLineDistance];
          [v297 setObject:v322 forKey:@"straightLineDistanceToFirstArrow"];

          v323 = [NSNumber numberWithDouble:self->_firstOutputRangeStraightLineDistance];
          [v297 setObject:v323 forKey:@"straightLineDistanceToFirstOutputRange"];

          v324 = [NSNumber numberWithDouble:self->_armsReachStraightLineDistance];
          [v297 setObject:v324 forKey:@"straightLineDistanceToArmsReach"];

          v325 = [NSNumber numberWithDouble:*&self->_anon_778[168]];
          [v297 setObject:v325 forKey:@"userMovedDistanceToFirstArrow"];

          v326 = [NSNumber numberWithDouble:*&self->_anon_8a8[168]];
          [v297 setObject:v326 forKey:@"userMovedDistanceToFirstOutputRange"];

          v327 = [NSNumber numberWithDouble:*&self->_anon_9d8[168]];
          [v297 setObject:v327 forKey:@"userMovedDistanceToArmsReach"];

          v328 = [NSNumber numberWithDouble:*&self->_anon_b08[168]];
          [v297 setObject:v328 forKey:@"totalUserMovedDistance"];

          if (self->_anon_688[72] == 1 && self->_anon_5f8[72] == 1)
          {
            v329 = [NSNumber numberWithDouble:self->_straightLineDistanceFromConnectToFirstRange];
            [v297 setObject:v329 forKey:@"straightLineDistanceFromConnectToFirstRange"];
          }
        }
      }

      timeAtFirstArrow = self->_timeAtFirstArrow;
      if (timeAtFirstArrow == -1.0)
      {
        [v297 setObject:&off_1009C3DA0 forKey:@"timeToFirstArrow"];
        [v297 setObject:&off_1009C3DA0 forKey:@"timeFromFindButtonToFirstArrow"];
        [v297 setObject:&off_1009C3DA0 forKey:@"timeFromFirstRangeToFirstArrow"];
        [v297 setObject:&off_1009C3DA0 forKey:@"numberOfArrowRevokes"];
        [v297 setObject:&off_1009C3DA0 forKey:@"arrowAvailabilityAfterFirstArrow"];
        [v297 setObject:&off_1009C3DA0 forKey:@"rangeAtFirstArrow"];
      }

      else
      {
        v331 = [NSNumber numberWithDouble:timeAtFirstArrow - self->_runTimestamp];
        [v297 setObject:v331 forKey:@"timeToFirstArrow"];

        v332 = [NSNumber numberWithDouble:self->_timeAtFirstArrow - self->_timeAtFindButton];
        [v297 setObject:v332 forKey:@"timeFromFindButtonToFirstArrow"];

        v333 = [NSNumber numberWithDouble:self->_timeAtFirstArrow - self->_timeAtFirstRawUWBRange];
        [v297 setObject:v333 forKey:@"timeFromFirstRangeToFirstArrow"];

        v334 = self->_numberOfArrowRevokes;
        if (v334 == -1)
        {
          v335 = 0;
        }

        else
        {
          v335 = v334;
        }

        v336 = [NSNumber numberWithInt:v335];
        [v297 setObject:v336 forKey:@"numberOfArrowRevokes"];

        v337 = self->_numberOfArrowAvailabilityAfterFirstArrow;
        v338 = -1.0;
        if (v337 != -1)
        {
          v339 = self->_numberOfSolutions;
          if (v339)
          {
            v338 = (v337 / v339);
          }
        }

        v340 = [NSNumber numberWithDouble:v338];
        [v297 setObject:v340 forKey:@"arrowAvailabilityAfterFirstArrow"];

        v341 = [NSNumber numberWithDouble:self->_rangeAtFirstArrow];
        [v297 setObject:v341 forKey:@"rangeAtFirstArrow"];
      }

      if (self->_timeAtArmsLength == -1.0)
      {
        v342 = [NSNumber numberWithBool:0];
        [v297 setObject:v342 forKey:@"enteredArmsReach"];

        [v297 setObject:&off_1009C3DA0 forKey:@"timeToArmsReach"];
        [v297 setObject:&off_1009C3DA0 forKey:@"timeFromFindButtonToArmsReach"];
        [v297 setObject:&off_1009C3DA0 forKey:@"timeFromFirstRangeToArmsReach"];
      }

      else
      {
        v343 = [NSNumber numberWithBool:1];
        [v297 setObject:v343 forKey:@"enteredArmsReach"];

        v344 = [NSNumber numberWithDouble:self->_timeAtArmsLength - self->_runTimestamp];
        [v297 setObject:v344 forKey:@"timeToArmsReach"];

        v345 = [NSNumber numberWithDouble:self->_timeAtArmsLength - self->_timeAtFindButton];
        [v297 setObject:v345 forKey:@"timeFromFindButtonToArmsReach"];

        v346 = [NSNumber numberWithDouble:self->_timeAtArmsLength - self->_timeAtFirstRawUWBRange];
        [v297 setObject:v346 forKey:@"timeFromFirstRangeToArmsReach"];
      }
    }

    timeAtConnect = self->_timeAtConnect;
    if (timeAtConnect == -1.0)
    {
      [v297 setObject:&off_1009C3DA0 forKey:@"timeToConnect"];
    }

    else
    {
      v348 = [NSNumber numberWithDouble:timeAtConnect - self->_runTimestamp];
      [v297 setObject:v348 forKey:@"timeToConnect"];

      v349 = self->_timeAtFindButton;
      if (v349 != -1.0)
      {
        v350 = [NSNumber numberWithDouble:self->_timeAtConnect - v349];
        [v297 setObject:v350 forKey:@"timeFromFindButtonToConnect"];
      }
    }

    timeAtConfigure = self->_timeAtConfigure;
    if (timeAtConfigure == -1.0)
    {
      [v297 setObject:&off_1009C3DA0 forKey:@"timeToConfigure"];
    }

    else
    {
      v352 = [NSNumber numberWithDouble:timeAtConfigure - self->_runTimestamp];
      [v297 setObject:v352 forKey:@"timeToConfigure"];

      v353 = self->_timeAtFindButton;
      if (v353 != -1.0)
      {
        v354 = [NSNumber numberWithDouble:self->_timeAtConfigure - v353];
        [v297 setObject:v354 forKey:@"timeFromFindButtonToConfigure"];
      }
    }

    if (self->_rangingMode != -1)
    {
      v355 = [NSNumber numberWithInt:?];
      [v297 setObject:v355 forKey:@"rangingMode"];
    }

    v356 = [v297 mutableCopy];
    v357 = qword_1009ECD20;
    if (os_log_type_enabled(v357, OS_LOG_TYPE_INFO))
    {
      v384 = v297;
      v358 = p_engaged;
      v359 = self->_bundleIdentifier;
      v360 = [v356 description];
      *buf = 138412802;
      *&buf[4] = v359;
      v418 = 2112;
      v419 = @"com.apple.nearbyinteraction.itemLocalizerSession.Summary";
      v420 = 2112;
      v421 = *&v360;
      _os_log_impl(&_mh_execute_header, v357, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);

      p_engaged = v358;
      v297 = v384;
    }

    v388 = v356;
    AnalyticsSendEventLazy();

    v295 = *p_sessionType;
  }

  if (v295 == 6)
  {
    v361 = qword_1009ECD20;
    if (os_log_type_enabled(v361, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v361, OS_LOG_TYPE_INFO, "#ni-ca,Item BT finding event submission", buf, 2u);
    }

    v362 = objc_alloc_init(NSMutableDictionary);
    v363 = [NSNumber numberWithDouble:v15];
    [v362 setObject:v363 forKey:@"sessionDuration"];

    v364 = [NSNumber numberWithBool:p_engaged[80]];
    [v362 setObject:v364 forKey:@"isOwner"];

    v365 = self->_typeName;
    if (v365)
    {
      [v362 setObject:v365 forKey:@"productName"];
    }

    v366 = self->_timeAtConnect;
    if (v366 == -1.0)
    {
      [v362 setObject:&off_1009C3DA0 forKey:@"timeToConnect"];
    }

    else
    {
      v367 = [NSNumber numberWithDouble:v366 - self->_runTimestamp];
      [v362 setObject:v367 forKey:@"timeToConnect"];
    }

    v368 = self->_timeAtConfigure;
    if (v368 == -1.0)
    {
      [v362 setObject:&off_1009C3DA0 forKey:@"timeToConfigure"];
    }

    else
    {
      v369 = [NSNumber numberWithDouble:v368 - self->_runTimestamp];
      [v362 setObject:v369 forKey:@"timeToConfigure"];

      if (p_engaged[168] == 1)
      {
        v370 = [NSNumber numberWithInt:self->_itemBtTxPower.var0.__val_];
        [v362 setObject:v370 forKey:@"txPower"];
      }
    }

    timeAtFirstBtRssiMeasurement = self->_timeAtFirstBtRssiMeasurement;
    if (timeAtFirstBtRssiMeasurement != -1.0)
    {
      v372 = [NSNumber numberWithDouble:timeAtFirstBtRssiMeasurement - self->_runTimestamp];
      [v362 setObject:v372 forKey:@"timeToFirstMeasurement"];

      v373 = [NSNumber numberWithDouble:self->_firstBtRssi];
      [v362 setObject:v373 forKey:@"firstRSSI"];

      v374 = [NSNumber numberWithDouble:self->_lastBtRssi];
      [v362 setObject:v374 forKey:@"finalRSSI"];
    }

    timeAtArmsLength = self->_timeAtArmsLength;
    if (timeAtArmsLength == -1.0)
    {
      [v362 setObject:&off_1009C3DA0 forKey:@"timeToArmsReach"];
      [NSNumber numberWithBool:0];
    }

    else
    {
      v377 = [NSNumber numberWithDouble:timeAtArmsLength - self->_runTimestamp];
      [v362 setObject:v377 forKey:@"timeToArmsReach"];

      [NSNumber numberWithBool:1];
    }
    v376 = ;
    [v362 setObject:v376 forKey:@"enteredArmsReach"];

    v378 = [NSNumber numberWithInt:self->_numberOfRegionFoundEvents];
    [v362 setObject:v378 forKey:@"numberOfLevelFoundEvents"];

    v379 = [NSNumber numberWithInt:self->_numberOfRegionRevokes];
    [v362 setObject:v379 forKey:@"numberOfRevokes"];

    v380 = [v362 mutableCopy];
    v381 = qword_1009ECD20;
    if (os_log_type_enabled(v381, OS_LOG_TYPE_INFO))
    {
      v382 = self->_bundleIdentifier;
      v383 = [v380 description];
      *buf = 138412802;
      *&buf[4] = v382;
      v418 = 2112;
      v419 = @"com.apple.nearbyinteraction.btLocalizerSession.Summary";
      v420 = 2112;
      v421 = *&v383;
      _os_log_impl(&_mh_execute_header, v381, OS_LOG_TYPE_INFO, "#ni-ca,[%@] send analytics event %@:\n%@\n", buf, 0x20u);
    }

    v387 = v380;
    AnalyticsSendEventLazy();
  }
}

- (id).cxx_construct
{
  p_engaged = &self->_lastSolutionTime.__engaged_;
  *self->_bundleIdAsStdString.__rep_.__s.__data_ = 0uLL;
  *(&self->_bundleIdAsStdString.__rep_.__l + 2) = 0;
  self->_lastLocationType.var0.__null_state_ = 0;
  self->_lastLocationType.__engaged_ = 0;
  self->_lastMotionCategory.var0.__null_state_ = 0;
  self->_lastMotionCategory.__engaged_ = 0;
  self->_firstPose.var0.__null_state_ = 0;
  self->_anon_328[72] = 0;
  self->_lastPose.var0.__null_state_ = 0;
  self->_anon_3b8[72] = 0;
  self->_firstArrowPose.var0.__null_state_ = 0;
  self->_anon_448[72] = 0;
  self->_armsReachPose.var0.__null_state_ = 0;
  self->_anon_4d8[72] = 0;
  self->_firstOutputRangePose.var0.__null_state_ = 0;
  self->_anon_568[72] = 0;
  self->_firstInputRangePose.var0.__null_state_ = 0;
  self->_anon_5f8[72] = 0;
  self->_firstBTConnectionPose.var0.__null_state_ = 0;
  self->_anon_688[72] = 0;
  self->_firstArrowUserMovedDistance.previousPoseOfUser.var0.__null_state_ = 0;
  self->_anon_778[8] = 0;
  self->_anon_778[24] = 0;
  self->_anon_778[152] = 0;
  self->_firstOutputRangeUserMovedDistance.previousPoseOfUser.var0.__null_state_ = 0;
  self->_anon_8a8[8] = 0;
  self->_anon_8a8[24] = 0;
  self->_anon_8a8[152] = 0;
  self->_armsReachUserMovedDistance.previousPoseOfUser.var0.__null_state_ = 0;
  self->_anon_9d8[8] = 0;
  self->_anon_9d8[24] = 0;
  self->_anon_9d8[152] = 0;
  self->_totalUserMovedDistance.previousPoseOfUser.var0.__null_state_ = 0;
  self->_anon_b08[8] = 0;
  self->_anon_b08[24] = 0;
  self->_anon_b08[152] = 0;
  self->_vioPoseAtLastPDRUpdate.var0.__null_state_ = 0;
  self->_anon_c28[72] = 0;
  self->_lastDisplacementSourceFindee.var0.__null_state_ = 0;
  self->_lastDisplacementSourceFindee.__engaged_ = 0;
  *&self->_isFinderAPhone.var0.__null_state_ = 0;
  sub_1003FBC84(&self->_pdrAligner);
  self->_previousAdjustedRotatedVioPosition.var0.__null_state_ = 0;
  self->_anon_f72[14] = 0;
  self->_timeOfLastPDRUpdate.var0.__null_state_ = 0;
  self->_timeOfLastPDRUpdate.__engaged_ = 0;
  self->_lastAngleError.__engaged_ = 0;
  self->_lastSolutionTime.var0.__null_state_ = 0;
  *p_engaged = 0;
  p_engaged[48] = 0;
  p_engaged[56] = 0;
  p_engaged[164] = 0;
  p_engaged[168] = 0;
  *&self->_angleErrorHistory.__begin_ = 0u;
  *&self->_angleErrorHistory.__cap_ = 0u;
  *&self->_deltaAngleErrorHistory.__end_ = 0u;
  *&self->_pointToPointErrorHistory.__begin_ = 0u;
  *(&self->_pointToPointErrorHistory.__end_ + 1) = 0u;
  return self;
}

@end