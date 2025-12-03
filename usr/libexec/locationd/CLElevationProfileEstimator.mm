@interface CLElevationProfileEstimator
- (BOOL)_fetchWorkoutPressureArray:(id)array withStartTime:(double)time andEndTime:(double)endTime;
- (BOOL)_forwardProcessingWithLocationArray:(id)array andElevationArray:(id)elevationArray andKFEstimatesBuffer:(id)buffer andKeepAllLocations:(BOOL)locations andTaskType:(unint64_t)type;
- (BOOL)_queryVisitStateByTimestamp:(double)timestamp withHistoricalVisits:(id)visits andVisitSearchStartIndex:(int)index;
- (BOOL)_rejectOutlyingLocation:(id)location withKFEstimates:(id)estimates;
- (CLElevationProfileEstimator)initWithContextManager:(id)manager withBuffers:(void *)buffers withSourceAggregator:(id)aggregator;
- (double)_getTimestampWithAltitudeArray:(id)array atIndex:(unsigned int)index;
- (double)_getTimestampWithElevationArray:(id)array atIndex:(unsigned int)index;
- (double)_getTimestampWithLocationArray:(id)array atIndex:(unsigned int)index;
- (id).cxx_construct;
- (int)_getLastPredictionIndexWithKFEstimatesBuffer:(id)buffer fromIndex:(int)index;
- (void)_alignElevationArray:(id)array andLocationArray:(id)locationArray;
- (void)_backwardProcessingWithKFEstimatesBuffer:(id)buffer andKSEstimatesBuffer:(id)estimatesBuffer;
- (void)_computeWorkoutElevationProfile:(id)profile withGpsAltitude:(id)altitude andPressureArray:(id)array;
- (void)_decimateElevationsWithStartTime:(double)time andEndTime:(double)endTime andLocationArray:(id)array andElevationArray:(id)elevationArray andAggregatedLocationArray:(id)locationArray andRawElevationArray:(id)rawElevationArray;
- (void)_decimateLocationsWithStartTime:(double)time andEndTime:(double)endTime andLocationArray:(id)array andElevationArray:(id)elevationArray andRawLocationArray:(id)locationArray andRawElevationArray:(id)rawElevationArray andTaskType:(unint64_t)type andVisitArray:(id)self0 andVisitSearchStartIndex:(int)self1;
- (void)_elevationBatchProcessingWithStartTime:(double)time andEndTime:(double)endTime andLocationBuffer:(id)buffer andKSEstimatesBuffer:(id)estimatesBuffer andTaskType:(unint64_t)type andCompletionBlock:(id)block;
- (void)_forwardProcessingWithGpsAltitudeArray:(id)array andElevationArray:(id)elevationArray andKFEstimatesBuffer:(id)buffer;
- (void)_gatherLocationArray:(id)array andElevationArray:(id)elevationArray andTaskType:(unint64_t)type withStartTime:(double)time andEndTime:(double)endTime andVisitArray:(id)visitArray andVisitSearchStartIndex:(int)index andCompletionBlock:(id)self0;
- (void)_initKalmanFilter:(id)filter withFirstLocation:(id)location andElevationArray:(id)array andTaskType:(unint64_t)type;
- (void)_initKalmanFilter:(id)filter withFirstLocation:(id)location andMeanSeaLevelPressure:(double)pressure andMeanSeaLevelPressureUnc:(double)unc andTaskType:(unint64_t)type;
- (void)_interpolateWorkoutGpsAltitude:(id)altitude toPressureArray:(id)array andBufferGpsSamplesQueue:()deque<std:(std::allocator<std::shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>>> *)std :shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>;
- (void)_kalmanSmootherUpdateWithKFEstimatesBuffer:(id)buffer andKSEstimatesBuffer:(id)estimatesBuffer andCurrPredictionIndex:(int)index andNextPredictionIndex:(int)predictionIndex;
- (void)_logValuesOfFilteredLocations:(id)locations andTaskType:(unint64_t)type;
- (void)_logValuesOfLocationArray:(id)array andElevationArray:(id)elevationArray andTaskType:(unint64_t)type;
- (void)_measurementUpdate:(id)update withLocation:(id)location;
- (void)_predictionUpdate:(id)update withElevation:(id)elevation withNextElevation:(id)nextElevation withCurrentHmmState:(int)state withTravelVelocity:(double)velocity;
- (void)_pushWorkoutElevationProfile:(id)profile;
- (void)_removeInVisitLocation:(id)location withVisitArray:(id)array andVisitSearchStartIndex:(int)index;
- (void)_resetKFEstimatesBuffer:(id)buffer andCurrKFEstimate:(id)estimate andAltitudeIndex:(int *)index andPressureIndex:(int *)pressureIndex withNumOfKfPredictionStepReset:(int)reset;
- (void)_sendHistoricalMeanSeaLevelPressureWithKSEstimatesBuffer:(id)buffer andCompletionBlock:(id)block;
- (void)_updateKFEstimatesBuffer:(id)buffer withCurrEstimate:(id)estimate measurementState:(BOOL)state andCurrTimestamp:(double)timestamp;
- (void)computeElevationProfileWithStartTime:(double)time andEndTime:(double)endTime andCompletionBlock:(id)block;
- (void)computeHistoricalMeanSeaLevelPressureWithStartTime:(double)time andEndTime:(double)endTime andCompletionBlock:(id)block;
- (void)computeWorkoutElevationProfile;
- (void)dealloc;
- (void)handleTimeOfExternalWetStateDeclaration:(double)declaration;
- (void)recordNextBatchProcessInitStateWithCurrKFEstimate:(id)estimate currKfTimestamp:(double)timestamp currHmmGoodModeProbability:(float)probability andCurrBadStateDetectedTimestamp:(double)detectedTimestamp;
- (void)resetWorkoutSessionStates;
- (void)startWorkoutAtTime:(double)time andMeanSeaLevelPressure:(double)pressure andMeanSeaLevelPressureUncertainty:(double)uncertainty andTimeOfExternalWetState:(optional<double>)state;
- (void)stopWorkoutAtTime:(double)time;
- (void)updateTravelVelocity:(double *)velocity withCurrLocation:(id)location andNextLocation:(id)nextLocation;
@end

@implementation CLElevationProfileEstimator

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CLElevationProfileEstimator;
  [(CLElevationProfileEstimator *)&v3 dealloc];
}

- (CLElevationProfileEstimator)initWithContextManager:(id)manager withBuffers:(void *)buffers withSourceAggregator:(id)aggregator
{
  v17.receiver = self;
  v17.super_class = CLElevationProfileEstimator;
  v8 = [(CLElevationProfileEstimator *)&v17 init];
  v9 = v8;
  if (v8)
  {
    v8->_dataBuffers = buffers;
    v8->_sourceAggregator = aggregator;
    sub_10183A3AC(buf, "ElevationProfileMeanSeaLevelPressureSamplingPeriod", &qword_101C8A0A0, 0);
    v9->_meanSeaLevelPressureSamplingPeriod = v16;
    sub_10183A3AC(buf, "ElevationProfileDataDecimationPeriod", &qword_101C8A0A8, 0);
    v9->_decimationPeriod = v16;
    sub_10183A3AC(buf, "ElevationLocationFilterWindowSize", &qword_101C8A0B0, 0);
    v9->_windowSize = v16;
    LOBYTE(v13) = 0;
    sub_100126E84(buf, "ElevationVerbose", &v13, 0);
    v9->_isVerboseLogging = buf[1];
    LOBYTE(v13) = 0;
    sub_100126E84(buf, "WorkoutElevationVerboseLogging", &v13, 0);
    v9->_workoutElevationVerboseLogging = buf[1];
    LOBYTE(v13) = 1;
    sub_100126E84(buf, "WorkoutElevationBackwardPropagationEnabled", &v13, 0);
    v9->_backwardPropagationEnabled = buf[1];
    sub_1004F8200(buf, "ElevationProfileElevationInitialVar", &dword_101C8A0B8, 0);
    v9->_elevationInitialVar = v15;
    sub_1004F8200(buf, "ElevationProfileMeanSeaLevelPressureInitialVar", &dword_101C8A0BC, 0);
    v9->_meanSeaLevelPressureInitialVar = v15;
    sub_1004F8200(buf, "ElevationProcessNoiseFromPressureSensorVarInKf", &dword_101C8A0C0, 0);
    v9->_elevationProcessNoiseFromPressureSensorVar = v15;
    sub_1004F8200(buf, "ElevationProcessNoiseFromHumanMotionInKf", &dword_101C8A0C4, 0);
    v9->_elevationProcessNoiseFromHumanMotion = v15;
    sub_1004F8200(buf, "MeanSeaLevelPressureDriftRateInKf", dword_101C8A0C8, 0);
    v9->_meanSeaLevelPressureDriftRateInPaPerSec = v15;
    v13 = 0x4034000000000000;
    sub_10183A3AC(buf, "ElevationProfileLocationMaxVerticalAccuracy", &v13, 0);
    v9->_locationMaxVerticalAccuracy = v16;
    sub_10183A3AC(buf, "WorkoutProfileLookbackInSec", &qword_101C8A0D0, 0);
    v9->_workoutProfileLookbackInSec = v16;
    sub_10183A3AC(buf, "WorkoutKsCalculationCadenceSec", &qword_101C8A0D8, 0);
    v10 = v16;
    v9->_workoutKsCalculationCadenceSec = v16;
    v9->_workoutKsPeriodInStepCountCadence = vcvtpd_s64_f64(v10 / 2.56);
    sub_10183A3AC(buf, "ElevationProfileMaxOutlierRatio", &qword_101C8A0E0, 0);
    v9->_maxOutlierRatio = v16;
    v9->_elevationBatchSize = vcvtad_u64_f64((v9->_meanSeaLevelPressureSamplingPeriod + v9->_meanSeaLevelPressureSamplingPeriod) / 2.56);
    sub_10183C2FC(buf, "ElevationProfileLocationBatchSize", dword_101C8A0E8, 0);
    *&v9->_locationBatchSize = v15;
    v9->_nextKfInitEstimate = objc_alloc_init(CLKFRunningEstimates);
    [(CLElevationProfileEstimator *)v9 resetWorkoutSessionStates];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9->_elevationProfileContextManager = manager;
    }

    else
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v11 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "initWithContextManager,elevation profile context manager does not exist!", buf, 2u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101916CF4();
      }
    }
  }

  return v9;
}

- (void)_sendHistoricalMeanSeaLevelPressureWithKSEstimatesBuffer:(id)buffer andCompletionBlock:(id)block
{
  v92 = objc_alloc_init(NSMutableArray);
  if ([buffer count])
  {
    v7 = [buffer count];
    v8 = v7 - 1;
    if ((v7 - 1) >= 0)
    {
      v9 = 0;
      v10 = 0.0;
      v11 = 0.0;
      v12 = 0.0;
      v13 = 0.0;
      v14 = 0.0;
      do
      {
        v15 = [buffer objectAtIndex:v8];
        if (self->_isVerboseLogging)
        {
          if (qword_1025D4410 != -1)
          {
            sub_101916CCC();
          }

          v16 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
          {
            [v15 timestamp];
            v90 = v17;
            [v15 fState];
            v91 = v13;
            v89 = v18;
            [v15 fState];
            v19 = v14;
            v21 = v20;
            [v15 fCovariance];
            v23 = v22;
            [v15 fCovariance];
            v24 = v12;
            v25 = v10;
            v26 = v11;
            v28 = v27;
            [v15 fCovariance];
            v30 = v29;
            [v15 fCovariance];
            *buf = 134219520;
            v94 = v90;
            v95 = 2048;
            v96 = v89;
            v97 = 2048;
            v98 = v21;
            v14 = v19;
            v13 = v91;
            v99 = 2048;
            v100 = v23;
            v101 = 2048;
            v102 = v28;
            v11 = v26;
            v10 = v25;
            v12 = v24;
            v103 = 2048;
            v104 = v30;
            v105 = 2048;
            v106 = v31;
            _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEBUG, "historical mslp estimation,timestamp,%f,elevation,%f,mslp,%f,P00,%f,P01,%f,P10,%f,P11,%f", buf, 0x48u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            [v15 timestamp];
            [v15 fState];
            [v15 fState];
            [v15 fCovariance];
            [v15 fCovariance];
            [v15 fCovariance];
            [v15 fCovariance];
            v68 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _sendHistoricalMeanSeaLevelPressureWithKSEstimatesBuffer:andCompletionBlock:]", "%s\n", v68);
            if (v68 != buf)
            {
              free(v68);
            }
          }
        }

        [v15 fCovariance];
        if (v32 >= 0.0)
        {
          [v15 timestamp];
          v41 = v40;
          if (v9)
          {
            v42 = v10 - v40;
            if (v10 - v41 >= self->_meanSeaLevelPressureSamplingPeriod)
            {
              v47 = objc_alloc_init(CLMeanSeaLevelPressureData);
              [(CLMeanSeaLevelPressureData *)v47 setTimestamp:v11 / v9];
              [(CLMeanSeaLevelPressureData *)v47 setMeanSeaLevelPressure:v12 / v9];
              [(CLMeanSeaLevelPressureData *)v47 setUncertainty:v13 / v9];
              v48 = v14 / v9;
              v49 = v12 / v9;
              [(CLMeanSeaLevelPressureData *)v47 setPressureMeasurement:sub_1012C27C8(v48, v49)];
              [v92 addObject:v47];
              if (qword_1025D4410 != -1)
              {
                sub_101916CCC();
              }

              v50 = qword_1025D4418;
              if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
              {
                [(CLMeanSeaLevelPressureData *)v47 timestamp];
                v52 = v51;
                [(CLMeanSeaLevelPressureData *)v47 meanSeaLevelPressure];
                v54 = v53;
                [(CLMeanSeaLevelPressureData *)v47 uncertainty];
                v56 = v55;
                [(CLMeanSeaLevelPressureData *)v47 pressureMeasurement];
                *buf = 134218752;
                v94 = v52;
                v95 = 2048;
                v96 = v54;
                v97 = 2048;
                v98 = v56;
                v99 = 2048;
                v100 = v57;
                _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "historical mslp array element,timestamp,%f,meanSeaLevelPressure,%f,uncertainty,%f,pressureMeasurement,%f", buf, 0x2Au);
              }

              if (sub_10000A100(121, 2))
              {
                bzero(buf, 0x65CuLL);
                if (qword_1025D4410 != -1)
                {
                  sub_101916CCC();
                }

                [(CLMeanSeaLevelPressureData *)v47 timestamp];
                [(CLMeanSeaLevelPressureData *)v47 meanSeaLevelPressure];
                [(CLMeanSeaLevelPressureData *)v47 uncertainty];
                [(CLMeanSeaLevelPressureData *)v47 pressureMeasurement];
                v69 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _sendHistoricalMeanSeaLevelPressureWithKSEstimatesBuffer:andCompletionBlock:]", "%s\n", v69);
                if (v69 != buf)
                {
                  free(v69);
                }
              }

              [v15 timestamp];
              v10 = v58;
              [v15 timestamp];
              v11 = v59;
              [v15 fState];
              v12 = v60;
              [v15 fCovariance];
              v13 = sqrtf(v61);
              [v15 fState];
              v14 = v62;
              v9 = 1;
            }

            else
            {
              [v15 timestamp];
              v11 = v11 + v43;
              [v15 fState];
              v12 = v12 + v44;
              [v15 fCovariance];
              v13 = v13 + sqrtf(v45);
              [v15 fState];
              v14 = v14 + v46;
              ++v9;
            }
          }

          else
          {
            [v15 timestamp];
            v11 = v63;
            [v15 fState];
            v12 = v64;
            [v15 fCovariance];
            v13 = sqrtf(v65);
            [v15 fState];
            v14 = v66;
            v9 = 1;
            v10 = v41;
          }
        }

        else
        {
          if (qword_1025D4410 != -1)
          {
            sub_101916CCC();
          }

          v33 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
          {
            [v15 timestamp];
            v35 = v34;
            [v15 fState];
            v37 = v36;
            [v15 fCovariance];
            *buf = 134218496;
            v94 = v35;
            v95 = 2048;
            v96 = v37;
            v97 = 2048;
            v98 = v38;
            _os_log_impl(dword_100000000, v33, OS_LOG_TYPE_DEFAULT, "warning: negative mslp variance,timestamp,%f,mslp,%f,var,%f", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            [v15 timestamp];
            [v15 fState];
            [v15 fCovariance];
            v39 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _sendHistoricalMeanSeaLevelPressureWithKSEstimatesBuffer:andCompletionBlock:]", "%s\n", v39);
            if (v39 != buf)
            {
              free(v39);
            }
          }
        }
      }

      while (v8-- > 0);
      if (v9)
      {
        v70 = objc_alloc_init(CLMeanSeaLevelPressureData);
        [(CLMeanSeaLevelPressureData *)v70 setTimestamp:v11 / v9];
        [(CLMeanSeaLevelPressureData *)v70 setMeanSeaLevelPressure:v12 / v9];
        [(CLMeanSeaLevelPressureData *)v70 setUncertainty:v13 / v9];
        v71 = v14 / v9;
        v72 = v12 / v9;
        [(CLMeanSeaLevelPressureData *)v70 setPressureMeasurement:sub_1012C27C8(v71, v72)];
        [v92 addObject:v70];
        if (qword_1025D4410 != -1)
        {
          sub_101916CCC();
        }

        v73 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
        {
          [(CLMeanSeaLevelPressureData *)v70 timestamp];
          v75 = v74;
          [(CLMeanSeaLevelPressureData *)v70 meanSeaLevelPressure];
          v77 = v76;
          [(CLMeanSeaLevelPressureData *)v70 uncertainty];
          v79 = v78;
          [(CLMeanSeaLevelPressureData *)v70 pressureMeasurement];
          *buf = 134218752;
          v94 = v75;
          v95 = 2048;
          v96 = v77;
          v97 = 2048;
          v98 = v79;
          v99 = 2048;
          v100 = v80;
          _os_log_impl(dword_100000000, v73, OS_LOG_TYPE_DEBUG, "historical mslp array element,timestamp,%f,meanSeaLevelPressure,%f,uncertainty,%f,pressureMeasurement,%f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          sub_101916DE0(v70, v81, v82, v83, v84, v85, v86, v87);
        }
      }
    }

    v88 = [objc_msgSend(objc_msgSend(v92 "reverseObjectEnumerator")];
    [v92 removeAllObjects];
    [v92 addObjectsFromArray:v88];
    (*(block + 2))(block, v92);
  }

  else
  {
    (*(block + 2))(block, v92);
  }
}

- (void)computeHistoricalMeanSeaLevelPressureWithStartTime:(double)time andEndTime:(double)endTime andCompletionBlock:(id)block
{
  v9 = [[CLOSTransaction alloc] initWithDescription:"CLElevationProfileEstimator.computeHistoricalMeanSeaLevelPressureWithStartTime"];
  if (qword_1025D4410 != -1)
  {
    sub_101916BCC();
  }

  v10 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    timeCopy = time;
    v19 = 2048;
    endTimeCopy = endTime;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "start to compute MSLP,startTime,%f,endTime,%f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019172E4();
  }

  v11 = objc_alloc_init(NSMutableArray);
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_1007061D4;
  v12[3] = &unk_10246C860;
  v12[4] = self;
  v13 = objc_alloc_init(NSMutableArray);
  v15 = v9;
  blockCopy = block;
  v14 = v11;
  [(CLElevationProfileEstimator *)self _elevationBatchProcessingWithStartTime:v11 andEndTime:v13 andLocationBuffer:0 andKSEstimatesBuffer:v12 andTaskType:time andCompletionBlock:endTime];
}

- (BOOL)_queryVisitStateByTimestamp:(double)timestamp withHistoricalVisits:(id)visits andVisitSearchStartIndex:(int)index
{
  if (index < 0)
  {
    return 0;
  }

  indexCopy = index;
  while (1)
  {
    [objc_msgSend(visits objectAtIndexedSubscript:{indexCopy), "startTime"}];
    if (v8 <= timestamp)
    {
      [objc_msgSend(visits objectAtIndexedSubscript:{indexCopy), "endTime"}];
      if (v9 >= timestamp)
      {
        break;
      }
    }

    [objc_msgSend(visits objectAtIndexedSubscript:{indexCopy), "startTime"}];
    if (v10 <= timestamp)
    {
      [objc_msgSend(visits objectAtIndexedSubscript:{indexCopy), "endTime"}];
      if (v11 == 0.0)
      {
        break;
      }
    }

    [objc_msgSend(visits objectAtIndexedSubscript:{indexCopy), "startTime"}];
    result = 0;
    if (v13 <= timestamp && indexCopy-- > 0)
    {
      continue;
    }

    return result;
  }

  return 1;
}

- (void)_gatherLocationArray:(id)array andElevationArray:(id)elevationArray andTaskType:(unint64_t)type withStartTime:(double)time andEndTime:(double)endTime andVisitArray:(id)visitArray andVisitSearchStartIndex:(int)index andCompletionBlock:(id)self0
{
  if ([CLContextManagerElevationProfileBase isQueryValidWithStartTime:"isQueryValidWithStartTime:andEndTime:" andEndTime:?])
  {
    if (self->_meanSeaLevelPressureSamplingPeriod + time >= endTime)
    {
      endTimeCopy = endTime;
    }

    else
    {
      endTimeCopy = self->_meanSeaLevelPressureSamplingPeriod + time;
    }

    if ((index & 0x80000000) == 0)
    {
      [objc_msgSend(visitArray objectAtIndexedSubscript:{index), "endTime"}];
      if (v17 != 0.0)
      {
        [objc_msgSend(visitArray objectAtIndexedSubscript:{index), "endTime"}];
      }
    }

    objc_alloc_init(NSMutableArray);
    [CLContextManagerElevationProfile fetchLocationsWithStartTime:"fetchLocationsWithStartTime:andEndTime:andBatchSize:andLocationArray:andVisitSearchStartIndex:andCompletionBlock:" andEndTime:self->_locationBatchSize andBatchSize:time andLocationArray:endTimeCopy andVisitSearchStartIndex:? andCompletionBlock:?];
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v18 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218240;
      timeCopy = time;
      v21 = 2048;
      endTimeCopy2 = endTime;
      _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_ERROR, "query location and elevation with false startTime,%f,endTime,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1019173F0();
    }

    (*(block + 2))(block);
  }
}

- (void)_removeInVisitLocation:(id)location withVisitArray:(id)array andVisitSearchStartIndex:(int)index
{
  v5 = *&index;
  v9 = [array count];
  if ((v5 & 0x80000000) == 0 && v9)
  {
    v11 = objc_alloc_init(NSMutableIndexSet);
    if ([location count] >= 1)
    {
      v10 = 0;
      do
      {
        [objc_msgSend(objc_msgSend(location objectAtIndexedSubscript:{v10), "altitudeData"), "timestamp"}];
        if ([(CLElevationProfileEstimator *)self _queryVisitStateByTimestamp:array withHistoricalVisits:v5 andVisitSearchStartIndex:?])
        {
          [v11 addIndex:v10];
        }

        ++v10;
      }

      while (v10 < [location count]);
    }

    if ([v11 count])
    {
      [location removeObjectsAtIndexes:v11];
    }
  }
}

- (void)_decimateLocationsWithStartTime:(double)time andEndTime:(double)endTime andLocationArray:(id)array andElevationArray:(id)elevationArray andRawLocationArray:(id)locationArray andRawElevationArray:(id)rawElevationArray andTaskType:(unint64_t)type andVisitArray:(id)self0 andVisitSearchStartIndex:(int)self1
{
  [objc_msgSend(rawElevationArray "firstObject")];
  v17 = v16;
  [objc_msgSend(rawElevationArray "lastObject")];
  v19 = v18;
  v20 = objc_alloc_init(NSMutableArray);
  v21 = objc_alloc_init(NSMutableArray);
  v22 = [[CLElevationLocationFilter alloc] initWithWindowSize:self->_windowSize];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v23 = [locationArray countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v37;
    do
    {
      for (i = 0; i != v24; i = i + 1)
      {
        if (*v37 != v25)
        {
          objc_enumerationMutation(locationArray);
        }

        v27 = *(*(&v36 + 1) + 8 * i);
        [objc_msgSend(v27 "altitudeData")];
        if (v28 >= v17)
        {
          [objc_msgSend(v27 "altitudeData")];
          if (v29 <= v19)
          {
            [objc_msgSend(v27 "altitudeData")];
            if (v30 >= 0.0)
            {
              [objc_msgSend(v27 "altitudeData")];
              if (v31 <= self->_locationMaxVerticalAccuracy)
              {
                [(CLElevationLocationFilter *)v22 append:v27];
                if ([(CLElevationLocationFilter *)v22 readyToFilter])
                {
                  [(CLElevationLocationFilter *)v22 fetchFilteredLocations:v21 withElevationArray:rawElevationArray];
                  [(CLElevationProfileEstimator *)self _removeInVisitLocation:v21 withVisitArray:visitArray andVisitSearchStartIndex:index];
                  [(CLElevationProfileEstimator *)self _logValuesOfFilteredLocations:v21 andTaskType:type];
                  [(CLElevationLocationFilter *)v22 aggregateFilteredLocations:v21 andAddTo:v20];
                  [v21 removeAllObjects];
                }
              }
            }
          }
        }
      }

      v24 = [locationArray countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v24);
  }

  [(CLElevationLocationFilter *)v22 fetchFilteredLocations:v21 withElevationArray:rawElevationArray];
  [(CLElevationProfileEstimator *)self _removeInVisitLocation:v21 withVisitArray:visitArray andVisitSearchStartIndex:index];
  [(CLElevationProfileEstimator *)self _logValuesOfFilteredLocations:v21 andTaskType:type];
  [(CLElevationLocationFilter *)v22 aggregateFilteredLocations:v21 andAddTo:v20];
  [v21 removeAllObjects];
  [(CLElevationProfileEstimator *)self _decimateElevationsWithStartTime:array andEndTime:elevationArray andLocationArray:v20 andElevationArray:rawElevationArray andAggregatedLocationArray:time andRawElevationArray:endTime];
}

- (void)_decimateElevationsWithStartTime:(double)time andEndTime:(double)endTime andLocationArray:(id)array andElevationArray:(id)elevationArray andAggregatedLocationArray:(id)locationArray andRawElevationArray:(id)rawElevationArray
{
  if ([locationArray count])
  {
    [objc_msgSend(objc_msgSend(locationArray objectAtIndex:{0), "altitudeData"), "timestamp"}];
    v14 = v13;
  }

  else
  {
    v14 = 1.79769313e308;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v15 = [rawElevationArray countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = 0;
    v18 = *v35;
    do
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v35 != v18)
        {
          objc_enumerationMutation(rawElevationArray);
        }

        v20 = *(*(&v34 + 1) + 8 * i);
        [v20 timestamp];
        if (v21 >= time)
        {
          [v20 timestamp];
          if (v22 <= endTime)
          {
            while (1)
            {
              [v20 timestamp];
              if (v14 >= v23)
              {
                break;
              }

              [objc_msgSend(objc_msgSend(array "lastObject")];
              if (v14 > v24)
              {
                [objc_msgSend(elevationArray "lastObject")];
                if (v14 > v25)
                {
                  v26 = objc_alloc_init(CLElevationDBEntry);
                  v27 = [locationArray objectAtIndex:v17];
                  [objc_msgSend(v27 "altitudeData")];
                  [(CLElevationDBEntry *)v26 setTimestamp:?];
                  [v27 interpPressure];
                  [(CLElevationDBEntry *)v26 setPressure:?];
                  [array addObject:v27];
                  [elevationArray addObject:v26];
                }
              }

              if (++v17 >= [locationArray count])
              {
                v14 = 1.79769313e308;
              }

              else
              {
                [objc_msgSend(objc_msgSend(locationArray objectAtIndex:{v17), "altitudeData"), "timestamp"}];
                v14 = v28;
              }
            }

            [v20 timestamp];
            v30 = v29;
            [objc_msgSend(elevationArray "lastObject")];
            if (v30 - v31 > self->_decimationPeriod)
            {
              [elevationArray addObject:v20];
            }
          }
        }
      }

      v16 = [rawElevationArray countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v16);
  }
}

- (void)_alignElevationArray:(id)array andLocationArray:(id)locationArray
{
  if ([array count] && objc_msgSend(locationArray, "count"))
  {
    [objc_msgSend(array "firstObject")];
    v7 = v6 + -0.000001;
    [objc_msgSend(array "lastObject")];
    v9 = v8 + 0.000001;
    [objc_msgSend(objc_msgSend(locationArray "firstObject")];
    if (v7 >= v10 || ([objc_msgSend(objc_msgSend(locationArray "lastObject")], v11 >= v9))
    {
      v12 = objc_alloc_init(NSMutableArray);
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      v13 = [locationArray countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        do
        {
          for (i = 0; i != v14; i = i + 1)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(locationArray);
            }

            v17 = *(*(&v21 + 1) + 8 * i);
            [objc_msgSend(v17 "altitudeData")];
            if (v18 > v7)
            {
              [objc_msgSend(v17 "altitudeData")];
              if (v19 < v9)
              {
                [v12 addObject:v17];
              }
            }
          }

          v14 = [locationArray countByEnumeratingWithState:&v21 objects:v25 count:16];
        }

        while (v14);
      }

      [locationArray removeAllObjects];
      [locationArray addObjectsFromArray:v12];
    }
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v20 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      v27 = [array count];
      v28 = 1024;
      v29 = [locationArray count];
      _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "zero elevation or location for kalman smoother,elevationCount,%d,locationCount,%d", buf, 0xEu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101917994(array, locationArray);
    }
  }
}

- (void)_initKalmanFilter:(id)filter withFirstLocation:(id)location andElevationArray:(id)array andTaskType:(unint64_t)type
{
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v11 = [array countByEnumeratingWithState:&v41 objects:v60 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v42;
    v14 = 0.0;
    v15 = 1.79769313e308;
LABEL_3:
    v16 = 0;
    v17 = v15;
    while (1)
    {
      if (*v42 != v13)
      {
        objc_enumerationMutation(array);
      }

      v18 = *(*(&v41 + 1) + 8 * v16);
      [v18 timestamp];
      v20 = v19;
      [location timestamp];
      v15 = vabdd_f64(v20, v21);
      if (v15 > v17)
      {
        break;
      }

      [v18 pressure];
      v14 = v22;
      v16 = v16 + 1;
      v17 = v15;
      if (v12 == v16)
      {
        v12 = [array countByEnumeratingWithState:&v41 objects:v60 count:16];
        if (v12)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  else
  {
    v14 = 0.0;
  }

  [location elevation];
  *&v23 = v23;
  v24 = sub_1012C280C(*&v23, v14);
  [objc_msgSend(array "firstObject")];
  *&v25 = v25;
  v26 = sub_1000A6C00(*&v25, v24);
  v39 = 0;
  meanSeaLevelPressureInitialVar = self->_meanSeaLevelPressureInitialVar;
  elevationInitialVar = self->_elevationInitialVar;
  v40 = meanSeaLevelPressureInitialVar;
  sub_100707AFC(&v36, &elevationInitialVar);
  *&v28 = v26;
  *&v29 = v24;
  [filter setFState:{v28, v29}];
  *buf = v36;
  *&buf[8] = v37;
  [filter setFP:buf];
  *&v30 = self->_elevationProcessNoiseFromPressureSensorVar;
  [filter setFQ:{v30, 0.0}];
  LODWORD(v31) = 1.0;
  [filter setFH:{v31, 0.0}];
  if (qword_1025D4410 != -1)
  {
    sub_101916CCC();
  }

  v32 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    workoutSmootherRunsCount = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
    *buf = 134218752;
    *&buf[4] = type;
    v54 = 2048;
    v55 = v26;
    v56 = 2048;
    v57 = v24;
    v58 = 1024;
    v59 = workoutSmootherRunsCount;
    _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEFAULT, "#altimeter,initialize Kalman filter,taskType,%lu,elevation,%.3f,mslp,%.3f,workoutSmootherRunsCount,%d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    workoutSmootherRunsCount2 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
    v45 = 134218752;
    typeCopy = type;
    v47 = 2048;
    v48 = v26;
    v49 = 2048;
    v50 = v24;
    v51 = 1024;
    v52 = workoutSmootherRunsCount2;
    v35 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _initKalmanFilter:withFirstLocation:andElevationArray:andTaskType:]", "%s\n", v35);
    if (v35 != buf)
    {
      free(v35);
    }
  }
}

- (void)_initKalmanFilter:(id)filter withFirstLocation:(id)location andMeanSeaLevelPressure:(double)pressure andMeanSeaLevelPressureUnc:(double)unc andTaskType:(unint64_t)type
{
  [location elevation];
  v14 = v13;
  *&v13 = v13;
  *&v15 = pressure;
  [filter setFState:{v13, v15}];
  [location verticalAccuracy];
  v17 = v16;
  [location verticalAccuracy];
  elevationInitialVar = v17 * v18;
  v31 = 0;
  if (self->_elevationInitialVar > elevationInitialVar)
  {
    elevationInitialVar = self->_elevationInitialVar;
  }

  v30 = elevationInitialVar;
  v21 = 562500.0;
  v20 = unc * unc;
  if (v20 <= 562500.0)
  {
    v21 = unc * unc;
  }

  v32 = v21;
  sub_100707AFC(&v28, &v30);
  *buf = v28;
  *&buf[8] = v29;
  [filter setFP:buf];
  LODWORD(v22) = 1.0;
  [filter setFH:{v22, 0.0}];
  *&v23 = self->_elevationProcessNoiseFromPressureSensorVar;
  [filter setFQ:{v23, 0.0}];
  if (qword_1025D4410 != -1)
  {
    sub_101916CCC();
  }

  v24 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    workoutSmootherRunsCount = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
    *buf = 134218752;
    *&buf[4] = type;
    v42 = 2048;
    v43 = v14;
    v44 = 2048;
    pressureCopy = pressure;
    v46 = 1024;
    v47 = workoutSmootherRunsCount;
    _os_log_impl(dword_100000000, v24, OS_LOG_TYPE_DEFAULT, "#altimeter,initialize workout Kalman filter,taskType,%lu,elevation,%.3f,mslp,%.3f,workoutSmootherRunsCount,%d", buf, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    workoutSmootherRunsCount2 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
    v33 = 134218752;
    typeCopy = type;
    v35 = 2048;
    v36 = v14;
    v37 = 2048;
    pressureCopy2 = pressure;
    v39 = 1024;
    v40 = workoutSmootherRunsCount2;
    v27 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _initKalmanFilter:withFirstLocation:andMeanSeaLevelPressure:andMeanSeaLevelPressureUnc:andTaskType:]", "%s\n", v27);
    if (v27 != buf)
    {
      free(v27);
    }
  }
}

- (double)_getTimestampWithLocationArray:(id)array atIndex:(unsigned int)index
{
  if ([array count] <= index)
  {
    return 1.79769313e308;
  }

  v6 = [objc_msgSend(array objectAtIndex:{index), "altitudeData"}];

  [v6 timestamp];
  return result;
}

- (double)_getTimestampWithAltitudeArray:(id)array atIndex:(unsigned int)index
{
  if ([array count] <= index)
  {
    return 1.79769313e308;
  }

  v6 = [array objectAtIndex:index];

  [v6 timestamp];
  return result;
}

- (double)_getTimestampWithElevationArray:(id)array atIndex:(unsigned int)index
{
  if ([array count] <= index)
  {
    return 1.79769313e308;
  }

  v6 = [array objectAtIndex:index];

  [v6 timestamp];
  return result;
}

- (void)_predictionUpdate:(id)update withElevation:(id)elevation withNextElevation:(id)nextElevation withCurrentHmmState:(int)state withTravelVelocity:(double)velocity
{
  [elevation pressure];
  v14 = v13;
  [nextElevation pressure];
  v16 = v15;
  [update fState];
  v18 = v17;
  if (update)
  {
    [update fP];
  }

  else
  {
    v49 = 0;
    v48 = 0;
  }

  [update fQ];
  v47[0] = v19;
  [nextElevation timestamp];
  v21 = v20;
  [elevation timestamp];
  v23 = vabdd_f64(v21, v22);
  if (v14 == 0.0)
  {
    v24 = 1.0;
  }

  else
  {
    v24 = 101320.0 / v14;
  }

  v25 = v23 * 0.00200000009 * velocity + self->_meanSeaLevelPressureDriftRateInPaPerSec * v23;
  v46 = v24 * v25;
  v26 = vabds_f32(v16, v14);
  v27 = v26 * sub_1000A6C9C(v14);
  sub_1012C2850(v14, v18);
  v29 = v27 / v28;
  if (self->_isVerboseLogging)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v30 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      v44 = sub_1000A6C9C(v14);
      sub_1012C2850(v14, v18);
      *buf = 134219776;
      *&buf[4] = v25;
      *v66 = 2048;
      *&v66[2] = v24;
      v67 = 2048;
      v68 = v29;
      v69 = 2048;
      v70 = v26;
      v71 = 2048;
      velocityCopy = velocity;
      v73 = 2048;
      v74 = v23;
      v75 = 2048;
      v76 = v44;
      v77 = 2048;
      v78 = v31;
      _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "mslp uncertainty model,deltaMslpDue2TimeAndDistance,%f,pressure2MslpFactor,%f,estBaroModelUncReflectedInMslp,%f,deltaPressure,%f,travelVelocity,%f,timeDiff,%f,slopeDiffDElevationDPressure,%f,dHdMslp,%f", buf, 0x52u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      velocityCopy2 = velocity;
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v38 = v25;
      v39 = v24;
      v40 = v26;
      v41 = sub_1000A6C9C(v14);
      sub_1012C2850(v14, v18);
      *v50 = 134219776;
      *&v50[4] = v38;
      v51 = 2048;
      v52 = v39;
      v53 = 2048;
      v54 = v29;
      v55 = 2048;
      v56 = v40;
      v57 = 2048;
      v58 = velocityCopy2;
      v59 = 2048;
      v60 = v23;
      v61 = 2048;
      v62 = v41;
      v63 = 2048;
      v64 = v42;
      v43 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _predictionUpdate:withElevation:withNextElevation:withCurrentHmmState:withTravelVelocity:]", "%s\n", v43);
      if (v43 != buf)
      {
        free(v43);
      }
    }
  }

  *&v47[1] = (v29 + v46) * (v29 + v46);
  sub_1012C2850(v14, v18);
  if (state)
  {
    *&buf[4] = 0;
    *buf = 1065353216;
    *v66 = 1065353216;
    LODWORD(v32) = -1.0;
    [update setF01:v32];
    elevationProcessNoiseFromPressureSensorVar = v23 * self->_elevationProcessNoiseFromHumanMotion * (v23 * self->_elevationProcessNoiseFromHumanMotion);
  }

  else
  {
    v34 = LODWORD(v32);
    v35 = sub_1000A6C00(v14, v18);
    [update fState];
    *&v36 = v35;
    [update setFState:v36];
    *buf = 0;
    *&buf[8] = v34;
    *v66 = 1065353216;
    LODWORD(v37) = v34;
    [update setF01:v37];
    elevationProcessNoiseFromPressureSensorVar = self->_elevationProcessNoiseFromPressureSensorVar;
  }

  *v47 = elevationProcessNoiseFromPressureSensorVar;
  sub_100708530(&v48, buf, v47);
  *v50 = v48;
  *&v50[8] = v49;
  [update setFP:v50];
}

- (void)_measurementUpdate:(id)update withLocation:(id)location
{
  if (update)
  {
    [update fP];
  }

  else
  {
    v29 = 0;
    v28 = 0;
  }

  [update fH];
  v7 = v6;
  v9 = v8;
  *v27 = v6;
  *&v27[1] = v8;
  [location verticalAccuracy];
  v11 = v10;
  [location verticalAccuracy];
  *&v12 = v11 * v12;
  v31 = LODWORD(v12);
  [location elevation];
  *&v11 = v13;
  [update fState];
  v30 = *&v11 - ((v7 * v14) + (v9 * v15));
  LODWORD(v16) = 2139095039;
  [update setF01:v16];
  sub_100708A1C(&v28, v27, &v31, &v30);
  v18 = v17;
  v20 = v19;
  v25 = v28;
  v26 = v29;
  [update setFP:&v25];
  [update fState];
  *&v22 = v18 + v21;
  *&v24 = v20 + v23;
  [update setFState:{v22, v24}];
}

- (BOOL)_rejectOutlyingLocation:(id)location withKFEstimates:(id)estimates
{
  [estimates fState];
  v6 = v5;
  [location elevation];
  v8 = vabdd_f64(v6, v7);
  [location verticalAccuracy];
  return v8 > v9 * 5.0;
}

- (void)_resetKFEstimatesBuffer:(id)buffer andCurrKFEstimate:(id)estimate andAltitudeIndex:(int *)index andPressureIndex:(int *)pressureIndex withNumOfKfPredictionStepReset:(int)reset
{
  if (*pressureIndex >= reset)
  {
    resetCopy = reset;
  }

  else
  {
    resetCopy = *pressureIndex;
  }

  *pressureIndex -= resetCopy;
  if (reset < 1)
  {
    v12 = 0;
  }

  else
  {
    resetCopy2 = reset;
    v12 = 0;
    do
    {
      v13 = [objc_msgSend(buffer "lastObject")];
      resetCopy2 -= v13 ^ 1;
      v12 += v13;
      [buffer removeLastObject];
    }

    while (resetCopy2);
  }

  if (*index >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = *index;
  }

  *index -= v14;
  [objc_msgSend(buffer "lastObject")];
  [estimate setFState:?];
  if (estimate)
  {
    [estimate fP];
  }

  else
  {
    v21 = 0;
    v20 = 0;
  }

  [objc_msgSend(buffer "lastObject")];
  v19[0] = v15;
  v19[1] = v16;
  v19[2] = v17;
  v19[3] = v18;
  sub_100707AFC(&v20, v19);
}

- (void)recordNextBatchProcessInitStateWithCurrKFEstimate:(id)estimate currKfTimestamp:(double)timestamp currHmmGoodModeProbability:(float)probability andCurrBadStateDetectedTimestamp:(double)detectedTimestamp
{
  [(CLKFRunningEstimates *)self->_nextKfInitEstimate assignFromObject:estimate];
  self->_nextWorkoutProfileStartTime = timestamp + 0.000001;
  self->_nextHmmGoodStateInitProbability = probability;
  self->_nextInitBadStateDetectedTimestamp = detectedTimestamp;
  if (qword_1025D4410 != -1)
  {
    sub_101916BCC();
  }

  v10 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    nextWorkoutProfileStartTime = self->_nextWorkoutProfileStartTime;
    [(CLKFRunningEstimates *)self->_nextKfInitEstimate fState];
    v13 = v12;
    [(CLKFRunningEstimates *)self->_nextKfInitEstimate fState];
    v15 = v14;
    nextKfInitEstimate = self->_nextKfInitEstimate;
    if (nextKfInitEstimate)
    {
      [(CLKFRunningEstimates *)nextKfInitEstimate fP];
    }

    else
    {
      memset(v70, 0, sizeof(v70));
    }

    v17 = sub_10070F05C(v70, 0, 0);
    v18 = self->_nextKfInitEstimate;
    if (v18)
    {
      [(CLKFRunningEstimates *)v18 fP];
    }

    else
    {
      v69 = 0;
      v68 = 0;
    }

    *&v19 = sub_10070F05C(&v68, 0, 0);
    v21 = v20;
    v22 = self->_nextKfInitEstimate;
    if (v22)
    {
      [(CLKFRunningEstimates *)v22 fP];
    }

    else
    {
      v67 = 0;
      v66 = 0;
    }

    v23 = v13;
    v24 = v15;
    v25 = v17;
    v26 = v21;
    *&v27 = sub_10070F05C(&v66, 0, 0);
    v29 = v28;
    v30 = self->_nextKfInitEstimate;
    if (v30)
    {
      [(CLKFRunningEstimates *)v30 fP];
    }

    else
    {
      v65 = 0;
      v64 = 0;
    }

    sub_10070F05C(&v64, 0, 0);
    v32 = v31;
    nextInitBadStateDetectedTimestamp = self->_nextInitBadStateDetectedTimestamp;
    nextHmmGoodStateInitProbability = self->_nextHmmGoodStateInitProbability;
    workoutSmootherRunsCount = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
    *buf = 134220288;
    v90 = nextWorkoutProfileStartTime;
    v91 = 2048;
    v92 = v23;
    v93 = 2048;
    v94 = v24;
    v95 = 2048;
    v96 = v25;
    v97 = 2048;
    v98 = v26;
    v99 = 2048;
    v100 = v29;
    v101 = 2048;
    v102 = v32;
    v103 = 2048;
    v104 = nextInitBadStateDetectedTimestamp;
    v105 = 2048;
    v106 = nextHmmGoodStateInitProbability;
    v107 = 1024;
    v108 = workoutSmootherRunsCount;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "set next KF and HMM initial state,nextWorkoutProfileStartTime,%f,nextInitElevation,%f,nexInitMslp,%f,fP00,%f,fP01,%f,fP10,%f,fP11,%f,nextInitBadStateDetectedTimestamp,%f,nextHmmGoodStateProb,%f,rounds,%d", buf, 0x62u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v36 = self->_nextWorkoutProfileStartTime;
    [(CLKFRunningEstimates *)self->_nextKfInitEstimate fState];
    v38 = v37;
    [(CLKFRunningEstimates *)self->_nextKfInitEstimate fState];
    v40 = v39;
    v41 = self->_nextKfInitEstimate;
    if (v41)
    {
      [(CLKFRunningEstimates *)v41 fP];
    }

    else
    {
      v69 = 0;
      v68 = 0;
    }

    v42 = sub_10070F05C(&v68, 0, 0);
    v43 = self->_nextKfInitEstimate;
    if (v43)
    {
      [(CLKFRunningEstimates *)v43 fP];
    }

    else
    {
      v67 = 0;
      v66 = 0;
    }

    *&v44 = sub_10070F05C(&v66, 0, 0);
    v46 = v45;
    v47 = self->_nextKfInitEstimate;
    if (v47)
    {
      [(CLKFRunningEstimates *)v47 fP];
    }

    else
    {
      v65 = 0;
      v64 = 0;
    }

    v48 = v38;
    v49 = v40;
    v50 = v42;
    v51 = v46;
    *&v52 = sub_10070F05C(&v64, 0, 0);
    v54 = v53;
    v55 = self->_nextKfInitEstimate;
    if (v55)
    {
      [(CLKFRunningEstimates *)v55 fP];
    }

    else
    {
      v63 = 0;
      v62 = 0;
    }

    sub_10070F05C(&v62, 0, 0);
    v57 = v56;
    v58 = self->_nextInitBadStateDetectedTimestamp;
    v59 = self->_nextHmmGoodStateInitProbability;
    workoutSmootherRunsCount2 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
    *v70 = 134220288;
    *&v70[4] = v36;
    v71 = 2048;
    v72 = v48;
    v73 = 2048;
    v74 = v49;
    v75 = 2048;
    v76 = v50;
    v77 = 2048;
    v78 = v51;
    v79 = 2048;
    v80 = v54;
    v81 = 2048;
    v82 = v57;
    v83 = 2048;
    v84 = v58;
    v85 = 2048;
    v86 = v59;
    v87 = 1024;
    v88 = workoutSmootherRunsCount2;
    v61 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator recordNextBatchProcessInitStateWithCurrKFEstimate:currKfTimestamp:currHmmGoodModeProbability:andCurrBadStateDetectedTimestamp:]", "%s\n", v61);
    if (v61 != buf)
    {
      free(v61);
    }
  }
}

- (void)_forwardProcessingWithGpsAltitudeArray:(id)array andElevationArray:(id)elevationArray andKFEstimatesBuffer:(id)buffer
{
  v97 = 0;
  [(CLElevationProfileEstimator *)self _getTimestampWithElevationArray:elevationArray atIndex:0];
  v10 = v9;
  [(CLElevationProfileEstimator *)self _getTimestampWithElevationArray:elevationArray atIndex:0];
  v12 = v11;
  v13 = objc_alloc_init(CLKFRunningEstimates);
  v14 = [[CLPressureQualityHiddenMarkovModel alloc] initWithIterationRound:[(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount]];
  p_elevationProfileContextManager = &self->_elevationProfileContextManager;
  nextWorkoutProfileStartTime = self->_nextWorkoutProfileStartTime;
  if (nextWorkoutProfileStartTime == 1.79769313e308 || v10 < nextWorkoutProfileStartTime)
  {
    nextInitBadStateDetectedTimestamp = v12 + -0.000001;
    -[CLElevationProfileEstimator _initKalmanFilter:withFirstLocation:andMeanSeaLevelPressure:andMeanSeaLevelPressureUnc:andTaskType:](self, "_initKalmanFilter:withFirstLocation:andMeanSeaLevelPressure:andMeanSeaLevelPressureUnc:andTaskType:", v13, [array firstObject], 2, self->_mslpAtStartOfWorkout, self->_mslpUncAtStartOfWorkout);
    if (self->_firstTimeOfExternalWetStateInWorkout.__engaged_ && (workoutStartTime = self->_workoutStartTime, workoutStartTime > self->_firstTimeOfExternalWetStateInWorkout.var0.__val_))
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916BCC();
      }

      v18 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        Current = CFAbsoluteTimeGetCurrent();
        workoutSmootherRunsCount = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 134218240;
        *v105 = Current;
        *&v105[8] = 1024;
        *&v105[10] = workoutSmootherRunsCount;
        _os_log_impl(dword_100000000, v18, OS_LOG_TYPE_DEFAULT, "#altimeter,initialize workout HMM at start of workout in bad state,now,%.3f,workoutSmootherRunsCount,%d", buf, 0x12u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101917EF8(p_elevationProfileContextManager);
      }

      LODWORD(workoutStartTime) = 981668463;
    }

    else
    {
      LODWORD(workoutStartTime) = 1065336439;
    }

    [(CLPressureQualityHiddenMarkovModel *)v14 setGoodStateProbability:workoutStartTime];
  }

  else
  {
    [(CLKFRunningEstimates *)v13 assignFromObject:self->_nextKfInitEstimate];
    *&v21 = self->_nextHmmGoodStateInitProbability;
    [(CLPressureQualityHiddenMarkovModel *)v14 setGoodStateProbability:v21];
    nextInitBadStateDetectedTimestamp = self->_nextInitBadStateDetectedTimestamp;
  }

  if (qword_1025D4410 != -1)
  {
    sub_101916CCC();
  }

  v23 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    [(CLKFRunningEstimates *)v13 fState];
    v25 = v24;
    [(CLKFRunningEstimates *)v13 fState];
    v27 = v26;
    workoutSmootherRunsCount2 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
    *buf = 134219008;
    *v105 = v25;
    *&v105[8] = 2048;
    *&v105[10] = v27;
    *&v105[18] = 2048;
    v106 = nextInitBadStateDetectedTimestamp;
    *v107 = 2048;
    *&v107[2] = v10;
    v108 = 1024;
    v109 = workoutSmootherRunsCount2;
    _os_log_impl(dword_100000000, v23, OS_LOG_TYPE_DEFAULT, "initialize workout Kalman filter,elevation,%f,mslp,%f,badStateDetectedTimestamp,%f,firstPressureTimestamp,%f,workoutSmootherRunsCount,%d", buf, 0x30u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    [(CLKFRunningEstimates *)v13 fState];
    v90 = v89;
    [(CLKFRunningEstimates *)v13 fState];
    v92 = v91;
    workoutSmootherRunsCount3 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
    v98 = 134219008;
    *v99 = v90;
    *&v99[8] = 2048;
    *&v99[10] = v92;
    *&v99[18] = 2048;
    v100 = nextInitBadStateDetectedTimestamp;
    *v101 = 2048;
    *&v101[2] = v10;
    v102 = 1024;
    v103 = workoutSmootherRunsCount3;
    v94 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithGpsAltitudeArray:andElevationArray:andKFEstimatesBuffer:]", "%s\n", v94);
    if (v94 != buf)
    {
      free(v94);
    }
  }

  if (qword_1025D4410 != -1)
  {
    sub_101916CCC();
  }

  v29 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    [(CLPressureQualityHiddenMarkovModel *)v14 getCurrGoodModeProbability];
    v31 = v30;
    workoutSmootherRunsCount4 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
    *buf = 134218240;
    *v105 = v31;
    *&v105[8] = 1024;
    *&v105[10] = workoutSmootherRunsCount4;
    _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEFAULT, "initialize workout HMM,GoodStateProbability,%f,workoutSmootherRunsCount,%d", buf, 0x12u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101918028(&v14->super.isa, p_elevationProfileContextManager, v33, v34, v35, v36, v37, v38);
  }

  [(CLElevationProfileEstimator *)self _updateKFEstimatesBuffer:buffer withCurrEstimate:v13 measurementState:1 andCurrTimestamp:v10];
  while (1)
  {
    v39 = SHIDWORD(v97);
    if ([array count] <= v39)
    {
      v40 = v97;
      if ([elevationArray count] <= v40)
      {
        break;
      }
    }

    [(CLElevationProfileEstimator *)self _getTimestampWithAltitudeArray:array atIndex:HIDWORD(v97)];
    v42 = v41;
    [(CLElevationProfileEstimator *)self _getTimestampWithElevationArray:elevationArray atIndex:v97];
    v44 = v43;
    if (v42 >= v43)
    {
      v45 = v43;
    }

    else
    {
      v45 = v42;
    }

    if (v42 < v43)
    {
      v46 = v42;
      v47 = [array objectAtIndex:SHIDWORD(v97)];
      if (![(CLPressureQualityHiddenMarkovModel *)v14 forwardPropagateHmmWithCurrentAltitude:v47])
      {
        goto LABEL_46;
      }

      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v48 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        currentHmmState = [(CLPressureQualityHiddenMarkovModel *)v14 currentHmmState];
        workoutSmootherRunsCount5 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 67109632;
        *v105 = currentHmmState;
        *&v105[4] = 2048;
        *&v105[6] = v42;
        *&v105[14] = 1024;
        *&v105[16] = workoutSmootherRunsCount5;
        _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEFAULT, "HMM state transits into,currState,%d,kfTimestamp,%f,rounds,%d", buf, 0x18u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4410 != -1)
        {
          sub_101916CCC();
        }

        currentHmmState2 = [(CLPressureQualityHiddenMarkovModel *)v14 currentHmmState];
        workoutSmootherRunsCount6 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
        v98 = 67109632;
        *v99 = currentHmmState2;
        *&v99[4] = 2048;
        *&v99[6] = v42;
        *&v99[14] = 1024;
        *&v99[16] = workoutSmootherRunsCount6;
        v81 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithGpsAltitudeArray:andElevationArray:andKFEstimatesBuffer:]", "%s\n", v81);
        if (v81 != buf)
        {
          free(v81);
        }
      }

      if ([(CLPressureQualityHiddenMarkovModel *)v14 currentHmmState]!= 1 || v42 <= nextInitBadStateDetectedTimestamp || !self->_backwardPropagationEnabled || (v51 = [(CLPressureQualityHiddenMarkovModel *)v14 backwardPropagateBadState], v51 < 1))
      {
LABEL_46:
        [(CLElevationProfileEstimator *)self _measurementUpdate:v13 withLocation:v47];
        ++HIDWORD(v97);
        v52 = v97;
        workoutKsPeriodInStepCountCadence = self->_workoutKsPeriodInStepCountCadence;
        goto LABEL_73;
      }

      v66 = v51;
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v67 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        v68 = HIDWORD(v97);
        v95 = v97;
        v69 = [buffer count];
        workoutSmootherRunsCount7 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 134219264;
        *v105 = v42;
        *&v105[8] = 1024;
        *&v105[10] = v68;
        *&v105[14] = 1024;
        *&v105[16] = v95;
        LOWORD(v106) = 1024;
        *(&v106 + 2) = v66;
        HIWORD(v106) = 1024;
        *v107 = v69;
        *&v107[4] = 1024;
        *&v107[6] = workoutSmootherRunsCount7;
        _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_DEFAULT, "HMM state transits into bad state and the backward propagation is triggered at,kfTimestamp,%f,altitudeIndex,%d,pressureIndex,%d,numberOfPredictionRemove,%d,KFbufferSize,%d,rounds,%d", buf, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4410 != -1)
        {
          sub_101916CCC();
        }

        v85 = v97;
        v84 = HIDWORD(v97);
        v86 = [buffer count];
        workoutSmootherRunsCount8 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
        v98 = 134219264;
        *v99 = v42;
        *&v99[8] = 1024;
        *&v99[10] = v84;
        *&v99[14] = 1024;
        *&v99[16] = v85;
        LOWORD(v100) = 1024;
        *(&v100 + 2) = v66;
        HIWORD(v100) = 1024;
        *v101 = v86;
        *&v101[4] = 1024;
        *&v101[6] = workoutSmootherRunsCount8;
        v88 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithGpsAltitudeArray:andElevationArray:andKFEstimatesBuffer:]", "%s\n", v88);
        if (v88 != buf)
        {
          free(v88);
        }
      }

      [(CLElevationProfileEstimator *)self _resetKFEstimatesBuffer:buffer andCurrKFEstimate:v13 andAltitudeIndex:&v97 + 4 andPressureIndex:&v97 withNumOfKfPredictionStepReset:v66];
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v71 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        [(CLElevationProfileEstimator *)self _getTimestampWithElevationArray:elevationArray atIndex:v97];
        v73 = v72;
        workoutSmootherRunsCount9 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 134218240;
        *v105 = v73;
        *&v105[8] = 1024;
        *&v105[10] = workoutSmootherRunsCount9;
        _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_DEFAULT, "HMM and Kalman filter are reset to,restartTimestamp,%f,rounds,%d", buf, 0x12u);
      }

      nextInitBadStateDetectedTimestamp = v42 + 0.000001;
      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4410 != -1)
        {
          sub_101916CCC();
        }

        [(CLElevationProfileEstimator *)self _getTimestampWithElevationArray:elevationArray atIndex:v97];
        v76 = v75;
        workoutSmootherRunsCount10 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
        v98 = 134218240;
        *v99 = v76;
        *&v99[8] = 1024;
        *&v99[10] = workoutSmootherRunsCount10;
        v78 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithGpsAltitudeArray:andElevationArray:andKFEstimatesBuffer:]", "%s\n", v78);
        if (v78 != buf)
        {
          free(v78);
        }
      }
    }

    else
    {
      v54 = v42 + -0.000001;
      v55 = [elevationArray count] - 1;
      if (v97 + 1 < v55)
      {
        v56 = v97 + 1;
      }

      else
      {
        v56 = v55;
      }

      if (v54 >= v44)
      {
        [(CLPressureQualityHiddenMarkovModel *)v14 updatePressureGpsAlignmentBufferWithData:0.0 andTimestamp:v44];
        [(CLPressureQualityHiddenMarkovModel *)v14 updateGoodModeProbabilityBufferWithTimestamp:v44];
      }

      else
      {
        -[CLPressureQualityHiddenMarkovModel predictCovarianceWithCurrentState:withElevation:withNextElevation:](v14, "predictCovarianceWithCurrentState:withElevation:withNextElevation:", v13, [elevationArray objectAtIndex:?], objc_msgSend(elevationArray, "objectAtIndex:", v56));
      }

      currentHmmState3 = [(CLPressureQualityHiddenMarkovModel *)v14 currentHmmState];
      if (v44 <= nextInitBadStateDetectedTimestamp)
      {
        if (self->_workoutElevationVerboseLogging)
        {
          if (qword_1025D4410 != -1)
          {
            sub_101916CCC();
          }

          v62 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
          {
            workoutSmootherRunsCount11 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
            *buf = 67109888;
            *v105 = currentHmmState3;
            *&v105[4] = 1024;
            *&v105[6] = 1;
            *&v105[10] = 2048;
            *&v105[12] = v44;
            LOWORD(v106) = 1024;
            *(&v106 + 2) = workoutSmootherRunsCount11;
            _os_log_impl(dword_100000000, v62, OS_LOG_TYPE_DEFAULT, "Kalman filter mode,currHmmState,%d,overWrittenByBadState,%d,kfTimestamp,%f,rounds,%d", buf, 0x1Eu);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            workoutSmootherRunsCount12 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
            v98 = 67109888;
            *v99 = currentHmmState3;
            *&v99[4] = 1024;
            *&v99[6] = 1;
            *&v99[10] = 2048;
            *&v99[12] = v44;
            LOWORD(v100) = 1024;
            *(&v100 + 2) = workoutSmootherRunsCount12;
            v83 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithGpsAltitudeArray:andElevationArray:andKFEstimatesBuffer:]", "%s\n", v83);
            if (v83 != buf)
            {
              free(v83);
            }
          }
        }

        currentHmmState3 = 1;
      }

      else if (self->_workoutElevationVerboseLogging)
      {
        if (qword_1025D4410 != -1)
        {
          sub_101916CCC();
        }

        v58 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          workoutSmootherRunsCount13 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
          *buf = 67109888;
          *v105 = currentHmmState3;
          *&v105[4] = 1024;
          *&v105[6] = 0;
          *&v105[10] = 2048;
          *&v105[12] = v44;
          LOWORD(v106) = 1024;
          *(&v106 + 2) = workoutSmootherRunsCount13;
          _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEFAULT, "Kalman filter mode,currHmmState,%d,overWrittenByBadState,%d,kfTimestamp,%f,rounds,%d", buf, 0x1Eu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101916CCC();
          }

          workoutSmootherRunsCount14 = [(CLContextManagerElevationProfileBase *)*p_elevationProfileContextManager workoutSmootherRunsCount];
          v98 = 67109888;
          *v99 = currentHmmState3;
          *&v99[4] = 1024;
          *&v99[6] = 0;
          *&v99[10] = 2048;
          *&v99[12] = v44;
          LOWORD(v100) = 1024;
          *(&v100 + 2) = workoutSmootherRunsCount14;
          v61 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithGpsAltitudeArray:andElevationArray:andKFEstimatesBuffer:]", "%s\n", v61);
          if (v61 != buf)
          {
            free(v61);
          }
        }
      }

      -[CLElevationProfileEstimator _predictionUpdate:withElevation:withNextElevation:withCurrentHmmState:withTravelVelocity:](self, "_predictionUpdate:withElevation:withNextElevation:withCurrentHmmState:withTravelVelocity:", v13, [elevationArray objectAtIndex:v97], objc_msgSend(elevationArray, "objectAtIndex:", v56), currentHmmState3, 0.0);
      v52 = v97 + 1;
      LODWORD(v97) = v97 + 1;
      if (v54 >= v44)
      {
        workoutKsPeriodInStepCountCadence = self->_workoutKsPeriodInStepCountCadence;
        v46 = v44;
LABEL_73:
        if (v52 == workoutKsPeriodInStepCountCadence)
        {
          [(CLPressureQualityHiddenMarkovModel *)v14 getCurrGoodModeProbability];
          LODWORD(v65) = v64;
          [(CLElevationProfileEstimator *)self recordNextBatchProcessInitStateWithCurrKFEstimate:v13 currKfTimestamp:v46 currHmmGoodModeProbability:v65 andCurrBadStateDetectedTimestamp:nextInitBadStateDetectedTimestamp];
        }
      }

      [(CLElevationProfileEstimator *)self _updateKFEstimatesBuffer:buffer withCurrEstimate:v13 measurementState:v42 < v44 andCurrTimestamp:v45];
    }
  }
}

- (BOOL)_forwardProcessingWithLocationArray:(id)array andElevationArray:(id)elevationArray andKFEstimatesBuffer:(id)buffer andKeepAllLocations:(BOOL)locations andTaskType:(unint64_t)type
{
  v50 = 0.0;
  v12 = objc_alloc_init(CLKFRunningEstimates);
  typeCopy = type;
  -[CLElevationProfileEstimator _initKalmanFilter:withFirstLocation:andElevationArray:andTaskType:](self, "_initKalmanFilter:withFirstLocation:andElevationArray:andTaskType:", v12, [objc_msgSend(array "firstObject")], elevationArray, type);
  v48 = 0;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    v15 = v14;
    if ([array count] <= v14 && objc_msgSend(elevationArray, "count") <= v13)
    {
      break;
    }

    [(CLElevationProfileEstimator *)self _getTimestampWithLocationArray:array atIndex:v14];
    v17 = v16;
    [(CLElevationProfileEstimator *)self _getTimestampWithElevationArray:elevationArray atIndex:v13];
    v19 = v18;
    if (v17 >= v18)
    {
      v20 = v18;
    }

    else
    {
      v20 = v17;
    }

    if (v17 < v18)
    {
      v21 = [array objectAtIndex:v14];
      v22 = [array count] - 1;
      v14 = (v14 + 1);
      if (v14 < v22)
      {
        v22 = v15 + 1;
      }

      v23 = [array objectAtIndex:v22];
      if (locations || !-[CLElevationProfileEstimator _rejectOutlyingLocation:withKFEstimates:](self, "_rejectOutlyingLocation:withKFEstimates:", [v21 altitudeData], v12))
      {
        [(CLElevationProfileEstimator *)self updateTravelVelocity:&v50 withCurrLocation:v21 andNextLocation:v23];
        -[CLElevationProfileEstimator _measurementUpdate:withLocation:](self, "_measurementUpdate:withLocation:", v12, [v21 altitudeData]);
        goto LABEL_18;
      }

      if (self->_isVerboseLogging)
      {
        if (qword_1025D4410 != -1)
        {
          sub_101916CCC();
        }

        v28 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
        {
          [objc_msgSend(v21 "altitudeData")];
          v30 = v29;
          [objc_msgSend(v21 "altitudeData")];
          v32 = v31;
          [objc_msgSend(v21 "altitudeData")];
          *buf = 134218752;
          v62 = typeCopy;
          v63 = 2048;
          v64 = v30;
          v65 = 2048;
          v66 = v32;
          v67 = 2048;
          v68 = v33;
          _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "reject location outlier,taskType,%lu,timestamp,%f,elevation,%f,verticalAccuracy,%f", buf, 0x2Au);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101916CCC();
          }

          [objc_msgSend(v21 "altitudeData")];
          v35 = v34;
          [objc_msgSend(v21 "altitudeData")];
          v37 = v36;
          [objc_msgSend(v21 "altitudeData")];
          v51 = 134218752;
          v52 = typeCopy;
          v53 = 2048;
          v54 = v35;
          v55 = 2048;
          v56 = v37;
          v57 = 2048;
          v58 = v38;
          v39 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithLocationArray:andElevationArray:andKFEstimatesBuffer:andKeepAllLocations:andTaskType:]", "%s\n", v39);
          if (v39 != buf)
          {
            free(v39);
          }
        }
      }

      ++v48;
    }

    else
    {
      v24 = [elevationArray count];
      if (v13 + 1 < (v24 - 1))
      {
        v25 = v13 + 1;
      }

      else
      {
        v25 = v24 - 1;
      }

      v26 = [elevationArray objectAtIndex:v13];
      v27 = [elevationArray objectAtIndex:v25];
      [(CLElevationProfileEstimator *)self _predictionUpdate:v12 withElevation:v26 withNextElevation:v27 withCurrentHmmState:0 withTravelVelocity:v50];
      v13 = (v13 + 1);
LABEL_18:
      [(CLElevationProfileEstimator *)self _updateKFEstimatesBuffer:buffer withCurrEstimate:v12 measurementState:v17 < v19 andCurrTimestamp:v20];
    }
  }

  v40 = v48 / [array count];
  maxOutlierRatio = self->_maxOutlierRatio;
  if (!locations)
  {
    if (qword_1025D4310 != -1)
    {
      sub_101918168();
    }

    v42 = qword_1025D4318;
    if (os_log_type_enabled(qword_1025D4318, OS_LOG_TYPE_DEBUG))
    {
      v43 = [array count];
      *buf = 134219008;
      v62 = typeCopy;
      v63 = 2048;
      v64 = v48;
      v65 = 2048;
      v66 = v43;
      v67 = 2048;
      v68 = v40;
      v69 = 1024;
      v70 = v40 > maxOutlierRatio;
      _os_log_impl(dword_100000000, v42, OS_LOG_TYPE_DEBUG, "outlier rejection summary,taskType,%lu,outlierCount,%lu,totalCount,%lu,outlierRatio,%f,isRepeatKF,%d", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4310 != -1)
      {
        sub_101918168();
      }

      v45 = [array count];
      v51 = 134219008;
      v52 = typeCopy;
      v53 = 2048;
      v54 = v48;
      v55 = 2048;
      v56 = v45;
      v57 = 2048;
      v58 = v40;
      v59 = 1024;
      v60 = v40 > maxOutlierRatio;
      v46 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _forwardProcessingWithLocationArray:andElevationArray:andKFEstimatesBuffer:andKeepAllLocations:andTaskType:]", "%s\n", v46);
      if (v46 != buf)
      {
        free(v46);
      }
    }
  }

  return v40 > maxOutlierRatio;
}

- (void)_updateKFEstimatesBuffer:(id)buffer withCurrEstimate:(id)estimate measurementState:(BOOL)state andCurrTimestamp:(double)timestamp
{
  stateCopy = state;
  v11 = objc_alloc_init(CLKalmanFilterEstimates);
  [estimate fState];
  [(CLKalmanFilterEstimates *)v11 setFState:?];
  if (estimate)
  {
    [estimate fP];
  }

  else
  {
    *v37 = 0;
    v36 = 0;
  }

  *&v12 = sub_10070F05C(&v36, 0, 0);
  [(CLKalmanFilterEstimates *)v11 setFCovariance:v12];
  [(CLKalmanFilterEstimates *)v11 setIsMeasurement:stateCopy];
  [(CLKalmanFilterEstimates *)v11 setTimestamp:timestamp];
  [estimate F01];
  [(CLKalmanFilterEstimates *)v11 setF01:?];
  [buffer addObject:v11];
  if (self->_isVerboseLogging || self->_workoutElevationVerboseLogging)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v13 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      isMeasurement = [(CLKalmanFilterEstimates *)v11 isMeasurement];
      [(CLKalmanFilterEstimates *)v11 timestamp];
      v16 = v15;
      [(CLKalmanFilterEstimates *)v11 fState];
      v18 = v17;
      [(CLKalmanFilterEstimates *)v11 fState];
      v20 = v19;
      [(CLKalmanFilterEstimates *)v11 fCovariance];
      v22 = v21;
      [(CLKalmanFilterEstimates *)v11 fCovariance];
      v24 = v23;
      [(CLKalmanFilterEstimates *)v11 fCovariance];
      v26 = v25;
      [(CLKalmanFilterEstimates *)v11 fCovariance];
      v28 = v27;
      workoutSmootherRunsCount = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
      LODWORD(v36) = 67111168;
      HIDWORD(v36) = isMeasurement;
      *v37 = 2048;
      *&v37[2] = v16;
      v38 = 2048;
      v39 = v18;
      v40 = 2048;
      v41 = v20;
      v42 = 2048;
      v43 = v22;
      v44 = 2048;
      v45 = v24;
      v46 = 2048;
      v47 = v26;
      v48 = 2048;
      v49 = v28;
      v50 = 1024;
      v51 = workoutSmootherRunsCount;
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEBUG, "enumerate KF estimates,isMeasurement,%d,kfTimestamp,%f,elevation,%f,mslp,%f,P00,%f,P01,%f,P10,%f,P11,%f,rounds,%d", &v36, 0x54u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101918190(v11, self, v30, v31, v32, v33, v34, v35);
    }
  }
}

- (void)updateTravelVelocity:(double *)velocity withCurrLocation:(id)location andNextLocation:(id)nextLocation
{
  [objc_msgSend(nextLocation "altitudeData")];
  v9 = v8;
  [objc_msgSend(location "altitudeData")];
  v11 = v9 - v10;
  v12 = 0.0;
  if (v11 != 0.0)
  {
    [location latitude];
    v14 = v13;
    [location longitude];
    v16 = v15;
    [nextLocation latitude];
    v18 = v17;
    [nextLocation longitude];
    v12 = fabs(fabs(sub_100117154(v14, v16, v18, v19)) / v11);
  }

  *velocity = v12;
}

- (int)_getLastPredictionIndexWithKFEstimatesBuffer:(id)buffer fromIndex:(int)index
{
  indexCopy = index;
  v6 = index - 1;
  do
  {
    v7 = __OFSUB__(indexCopy--, 1);
    if (indexCopy < 0 != v7)
    {
      break;
    }

    v8 = [objc_msgSend(buffer objectAtIndex:{v6--), "isMeasurement"}];
  }

  while ((v8 & 1) != 0);
  return indexCopy;
}

- (void)_kalmanSmootherUpdateWithKFEstimatesBuffer:(id)buffer andKSEstimatesBuffer:(id)estimatesBuffer andCurrPredictionIndex:(int)index andNextPredictionIndex:(int)predictionIndex
{
  v11 = predictionIndex - 1;
  [objc_msgSend(buffer objectAtIndex:{v11), "fState"}];
  v83 = v13;
  v84 = v12;
  [objc_msgSend(buffer objectAtIndex:{v11), "fCovariance"}];
  v98 = v14;
  v99 = v15;
  v100 = v16;
  v101 = v17;
  [objc_msgSend(buffer objectAtIndex:{predictionIndex), "fState"}];
  v82 = v18;
  v20 = v19;
  [objc_msgSend(buffer objectAtIndex:{predictionIndex), "fCovariance"}];
  v94[0] = v21;
  v94[1] = v22;
  v94[2] = v23;
  v94[3] = v24;
  v95 = 0;
  v96 = 0;
  [objc_msgSend(buffer objectAtIndex:{predictionIndex), "F01"}];
  v26 = v25;
  if ([(CLElevationProfileEstimator *)self _isInGoodMode:?])
  {
    HIDWORD(v95) = v26;
  }

  else
  {
    LODWORD(v95) = 1065353216;
  }

  v97 = 1065353216;
  [objc_msgSend(estimatesBuffer "lastObject")];
  v28 = v27;
  v30 = v29;
  [objc_msgSend(estimatesBuffer "lastObject")];
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v81 = v37;
  v88[0] = sub_10070AF68(&v98, &v95);
  v88[1] = v38;
  v88[2] = v39;
  v88[3] = v40;
  sub_10070B064(v88, v91);
  sub_10070B064(v94, v93);
  sub_100707AFC(v87, v93);
  v41 = 0;
  v42 = 1;
  do
  {
    v43 = v42;
    v44 = *sub_100705FC8(v91, 0, v41);
    *sub_100705F8C(v92, 0) = v44;
    v45 = *sub_100705FC8(v91, 1, v41);
    *sub_100705F8C(v92, 1uLL) = v45;
    sub_10070B12C(v87, v92);
    v46 = *sub_100705F8C(v92, 0);
    *sub_100705FC8(v89, 0, v41) = v46;
    v47 = *sub_100705F8C(v92, 1uLL);
    v48 = sub_100705FC8(v89, 1, v41);
    v42 = 0;
    *v48 = v47;
    v41 = 1;
  }

  while ((v43 & 1) != 0);
  sub_10070B064(v89, v90);
  v49 = objc_alloc_init(CLKalmanSmootherEstimates);
  [objc_msgSend(buffer objectAtIndex:{index), "timestamp"}];
  [(CLKalmanSmootherEstimates *)v49 setTimestamp:?];
  *buf = v28 - v82;
  *&v103 = v30 - v20;
  *&v50 = v84 + sub_10070B310(v90, buf);
  *&v52 = v83 + v51;
  [(CLKalmanSmootherEstimates *)v49 setFState:v50, v52];
  v53 = v98;
  v54 = v99;
  v56 = v100;
  v55 = v101;
  v85[0] = sub_10070B42C(v94, v32, v34, v36, v81);
  v85[1] = v57;
  v85[2] = v58;
  v85[3] = v59;
  v86[0] = sub_10070AF68(v90, v85);
  v86[1] = v60;
  v86[2] = v61;
  v86[3] = v62;
  *buf = sub_10070AF68(v86, v89);
  v103 = __PAIR64__(v64, v63);
  v104[0] = v65;
  *&v66 = sub_10070B3C0(buf, v53, v54, v56, v55);
  [(CLKalmanSmootherEstimates *)v49 setFCovariance:v66];
  LODWORD(v67) = v26;
  [(CLKalmanSmootherEstimates *)v49 setFHmmState:[(CLElevationProfileEstimator *)self _isInGoodMode:v67]^ 1];
  if ([estimatesBuffer count])
  {
    [objc_msgSend(estimatesBuffer "lastObject")];
    v69 = v68;
    [(CLKalmanSmootherEstimates *)v49 timestamp];
    if (v69 < v70)
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v71 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
      {
        [(CLKalmanSmootherEstimates *)v49 timestamp];
        v73 = v72;
        [objc_msgSend(estimatesBuffer "lastObject")];
        *buf = 3.9123e-34;
        v103 = v73;
        LOWORD(v104[0]) = 2050;
        *(v104 + 2) = v74;
        _os_log_impl(dword_100000000, v71, OS_LOG_TYPE_INFO, "Time order error in Kalman smoother estimate,currEntryTimestamp,%{public}f,prevEntryTimestamp,%{public}f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101918378(v49, estimatesBuffer, v75, v76, v77, v78, v79, v80);
      }
    }
  }

  [estimatesBuffer addObject:v49];
}

- (void)_backwardProcessingWithKFEstimatesBuffer:(id)buffer andKSEstimatesBuffer:(id)estimatesBuffer
{
  v7 = [buffer count];
  if (v7)
  {
    v8 = objc_alloc_init(CLKalmanSmootherEstimates);
    lastObject = [buffer lastObject];
    [lastObject timestamp];
    [(CLKalmanSmootherEstimates *)v8 setTimestamp:?];
    [lastObject fState];
    [(CLKalmanSmootherEstimates *)v8 setFState:?];
    [lastObject fCovariance];
    [(CLKalmanSmootherEstimates *)v8 setFCovariance:?];
    [lastObject F01];
    [(CLKalmanSmootherEstimates *)v8 setFHmmState:[(CLElevationProfileEstimator *)self _isInGoodMode:?]^ 1];
    [estimatesBuffer addObject:v8];

    v10 = [(CLElevationProfileEstimator *)self _getLastPredictionIndexWithKFEstimatesBuffer:buffer fromIndex:v7];
    for (i = [(CLElevationProfileEstimator *)self _getLastPredictionIndexWithKFEstimatesBuffer:buffer fromIndex:v10]; (i & 0x80000000) == 0; v10 = v12)
    {
      v12 = i;
      [(CLElevationProfileEstimator *)self _kalmanSmootherUpdateWithKFEstimatesBuffer:buffer andKSEstimatesBuffer:estimatesBuffer andCurrPredictionIndex:i andNextPredictionIndex:v10];
      i = [(CLElevationProfileEstimator *)self _getLastPredictionIndexWithKFEstimatesBuffer:buffer fromIndex:v12];
    }

    [buffer removeAllObjects];
    v13 = [objc_msgSend(objc_msgSend(estimatesBuffer "reverseObjectEnumerator")];
    [estimatesBuffer removeAllObjects];
    [estimatesBuffer addObjectsFromArray:v13];
  }
}

- (void)_elevationBatchProcessingWithStartTime:(double)time andEndTime:(double)endTime andLocationBuffer:(id)buffer andKSEstimatesBuffer:(id)estimatesBuffer andTaskType:(unint64_t)type andCompletionBlock:(id)block
{
  if (qword_1025D4410 != -1)
  {
    sub_101916BCC();
  }

  v12 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134218496;
    typeCopy = type;
    v16 = 2048;
    timeCopy = time;
    v18 = 2048;
    endTimeCopy = endTime;
    _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEBUG, "start elevation batch processing,taskType,%lu,startTime,%f,endTime,%f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v13 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _elevationBatchProcessingWithStartTime:andEndTime:andLocationBuffer:andKSEstimatesBuffer:andTaskType:andCompletionBlock:]", "%s\n", v13);
    if (v13 != buf)
    {
      free(v13);
    }
  }

  objc_alloc_init(NSMutableArray);
  [CLContextManagerElevationProfile getStoredVisit:"getStoredVisit:betweenStartTime:andEndTime:withCompletionBlock:" betweenStartTime:time andEndTime:endTime withCompletionBlock:?];
}

- (void)computeElevationProfileWithStartTime:(double)time andEndTime:(double)endTime andCompletionBlock:(id)block
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10070BE7C;
  v7[3] = &unk_10246C860;
  selfCopy = self;
  blockCopy = block;
  v9 = [[CLOSTransaction alloc] initWithDescription:"CLElevationProfileEstimator.computeElevationProfileWithStartTime"];
  [(CLElevationProfileEstimator *)selfCopy _elevationBatchProcessingWithStartTime:objc_alloc_init(NSMutableArray) andEndTime:objc_alloc_init(NSMutableArray) andLocationBuffer:1 andKSEstimatesBuffer:v7 andTaskType:time andCompletionBlock:endTime];
}

- (void)_logValuesOfLocationArray:(id)array andElevationArray:(id)elevationArray andTaskType:(unint64_t)type
{
  if (self->_isVerboseLogging)
  {
    if ([array count])
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v6 = [array countByEnumeratingWithState:&v44 objects:v65 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v45;
        do
        {
          v9 = 0;
          do
          {
            if (*v45 != v8)
            {
              objc_enumerationMutation(array);
            }

            v10 = *(*(&v44 + 1) + 8 * v9);
            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            v11 = qword_1025D4418;
            if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
            {
              [objc_msgSend(v10 "altitudeData")];
              v13 = v12;
              [objc_msgSend(v10 "altitudeData")];
              v15 = v14;
              [objc_msgSend(v10 "altitudeData")];
              *buf = 134218752;
              typeCopy3 = type;
              v59 = 2048;
              v60 = v13;
              v61 = 2048;
              v62 = v15;
              v63 = 2048;
              v64 = v16;
              _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEBUG, "enumerate locations,taskType,%lu,timestamp,%f,elevation,%f,verticalAccuracy,%f", buf, 0x2Au);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4410 != -1)
              {
                sub_101916CCC();
              }

              [objc_msgSend(v10 "altitudeData")];
              v18 = v17;
              [objc_msgSend(v10 "altitudeData")];
              v20 = v19;
              [objc_msgSend(v10 "altitudeData")];
              v49 = 134218752;
              typeCopy4 = type;
              v51 = 2048;
              v52 = v18;
              v53 = 2048;
              v54 = v20;
              v55 = 2048;
              v56 = v21;
              v22 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _logValuesOfLocationArray:andElevationArray:andTaskType:]", "%s\n", v22);
              if (v22 != buf)
              {
                free(v22);
              }
            }

            v9 = v9 + 1;
          }

          while (v7 != v9);
          v23 = [array countByEnumeratingWithState:&v44 objects:v65 count:16];
          v7 = v23;
        }

        while (v23);
      }
    }

    if ([elevationArray count])
    {
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v24 = [elevationArray countByEnumeratingWithState:&v40 objects:v48 count:16];
      if (v24)
      {
        v25 = v24;
        v26 = *v41;
        do
        {
          v27 = 0;
          do
          {
            if (*v41 != v26)
            {
              objc_enumerationMutation(elevationArray);
            }

            v28 = *(*(&v40 + 1) + 8 * v27);
            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            v29 = qword_1025D4418;
            if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
            {
              [v28 timestamp];
              v31 = v30;
              [v28 pressure];
              *buf = 134218496;
              typeCopy3 = type;
              v59 = 2048;
              v60 = v31;
              v61 = 2048;
              v62 = v32;
              _os_log_impl(dword_100000000, v29, OS_LOG_TYPE_DEBUG, "enumerate elevations,taskType,%lu,timestamp,%f,pressure,%f", buf, 0x20u);
            }

            if (sub_10000A100(121, 2))
            {
              bzero(buf, 0x65CuLL);
              if (qword_1025D4410 != -1)
              {
                sub_101916CCC();
              }

              [v28 timestamp];
              v34 = v33;
              [v28 pressure];
              v49 = 134218496;
              typeCopy4 = type;
              v51 = 2048;
              v52 = v34;
              v53 = 2048;
              v54 = v35;
              v36 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _logValuesOfLocationArray:andElevationArray:andTaskType:]", "%s\n", v36);
              if (v36 != buf)
              {
                free(v36);
              }
            }

            v27 = v27 + 1;
          }

          while (v25 != v27);
          v37 = [elevationArray countByEnumeratingWithState:&v40 objects:v48 count:16];
          v25 = v37;
        }

        while (v37);
      }
    }
  }
}

- (void)_logValuesOfFilteredLocations:(id)locations andTaskType:(unint64_t)type
{
  if (self->_isVerboseLogging)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = [locations countByEnumeratingWithState:&v28 objects:v52 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v29;
      do
      {
        v8 = 0;
        do
        {
          if (*v29 != v7)
          {
            objc_enumerationMutation(locations);
          }

          v9 = *(*(&v28 + 1) + 8 * v8);
          if (qword_1025D4410 != -1)
          {
            sub_101916CCC();
          }

          v10 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
          {
            [objc_msgSend(v9 "altitudeData")];
            v12 = v11;
            [objc_msgSend(v9 "altitudeData")];
            v14 = v13;
            [objc_msgSend(v9 "altitudeData")];
            v16 = v15;
            [v9 interpPressure];
            *buf = 134219008;
            typeCopy = type;
            v44 = 2048;
            v45 = v12;
            v46 = 2048;
            v47 = v14;
            v48 = 2048;
            v49 = v16;
            v50 = 2048;
            v51 = v17;
            _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEBUG, "enumerate filtered locations,taskType,%lu,timestamp,%f,elevation,%f,verticalAccuracy,%f,interpPressure,%f", buf, 0x34u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            [objc_msgSend(v9 "altitudeData")];
            v19 = v18;
            [objc_msgSend(v9 "altitudeData")];
            v21 = v20;
            [objc_msgSend(v9 "altitudeData")];
            v23 = v22;
            [v9 interpPressure];
            v32 = 134219008;
            typeCopy2 = type;
            v34 = 2048;
            v35 = v19;
            v36 = 2048;
            v37 = v21;
            v38 = 2048;
            v39 = v23;
            v40 = 2048;
            v41 = v24;
            v25 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _logValuesOfFilteredLocations:andTaskType:]", "%s\n", v25);
            if (v25 != buf)
            {
              free(v25);
            }
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v26 = [locations countByEnumeratingWithState:&v28 objects:v52 count:16];
        v6 = v26;
      }

      while (v26);
    }
  }
}

- (void)computeWorkoutElevationProfile
{
  v78 = [[CLOSTransaction alloc] initWithDescription:"CLElevationProfileEstimator.computeWorkoutElevationProfile"];
  Current = CFAbsoluteTimeGetCurrent();
  selfCopy = self;
  if (qword_1025D4410 != -1)
  {
    sub_101916BCC();
  }

  v4 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    workoutStartTime = self->_workoutStartTime;
    workoutSmootherRunsCount = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
    *buf = 134218496;
    v101 = workoutStartTime;
    v102 = 2048;
    v103 = Current;
    v104 = 1024;
    LODWORD(v105) = workoutSmootherRunsCount;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "workout Kalman smoother got triggered,startTime,%f,endTime,%f,rounds,%d", buf, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019187CC(&self->super.isa);
  }

  selfCopy2 = self;
  dataBuffers = self->_dataBuffers;
  v9 = dataBuffers[77];
  if (v9)
  {
    v10 = dataBuffers[73];
    v11 = dataBuffers[76];
    v12 = *(v10 + ((v11 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v11;
    v14 = *v12;
    v13 = *(v12 + 8);
    v74 = v13;
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      v9 = dataBuffers[77];
      v11 = dataBuffers[76];
      v10 = dataBuffers[73];
    }

    v15 = *(v10 + (((v9 + v11 - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v9 + v11 - 1);
    v17 = *v15;
    v16 = *(v15 + 8);
    if (v16)
    {
      atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    v75 = dataBuffers;
    v73 = v16;
    v76 = objc_alloc_init(NSMutableArray);
    v18 = objc_alloc_init(NSMutableArray);
    v77 = objc_alloc_init(NSMutableArray);
    nextWorkoutProfileStartTime = selfCopy->_workoutStartTime;
    if (Current - nextWorkoutProfileStartTime > selfCopy->_workoutProfileLookbackInSec)
    {
      nextWorkoutProfileStartTime = selfCopy->_nextWorkoutProfileStartTime;
    }

    if ([(CLElevationProfileEstimator *)selfCopy _fetchWorkoutPressureArray:v18 withStartTime:nextWorkoutProfileStartTime andEndTime:Current])
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
        selfCopy2 = selfCopy;
      }

      v20 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        v21 = [v18 count];
        v22 = *v14;
        v23 = *v17;
        v24 = v75[77];
        workoutSmootherRunsCount2 = [(CLContextManagerElevationProfileBase *)selfCopy->_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 134219520;
        v101 = nextWorkoutProfileStartTime;
        v102 = 2048;
        v103 = Current;
        v104 = 2048;
        v105 = v21;
        v106 = 2048;
        v107 = v22;
        v108 = 2048;
        v109 = v23;
        v110 = 2048;
        v111 = v24;
        v112 = 1024;
        v113 = workoutSmootherRunsCount2;
        _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEFAULT, "fetch workout pressure and Gps,pressureStartTime,%f,pressureEndTime,%f,pressureArraySize,%lu,firstGpsTimestamp,%f,lastGpsTimestamp,%f,gpsArraySize,%lu,rounds,%d", buf, 0x44u);
        selfCopy2 = selfCopy;
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191890C(buf);
        v67 = [v18 count];
        v68 = *v14;
        v69 = *v17;
        v70 = v75[77];
        workoutSmootherRunsCount3 = [(CLContextManagerElevationProfileBase *)selfCopy->_elevationProfileContextManager workoutSmootherRunsCount];
        v86 = 134219520;
        v87 = nextWorkoutProfileStartTime;
        v88 = 2048;
        v89 = Current;
        v90 = 2048;
        v91 = v67;
        v92 = 2048;
        v93 = v68;
        v94 = 2048;
        v95 = v69;
        v96 = 2048;
        v97 = v70;
        v98 = 1024;
        v99 = workoutSmootherRunsCount3;
        v72 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator computeWorkoutElevationProfile]", "%s\n", v72);
        selfCopy2 = selfCopy;
        if (v72 != buf)
        {
          free(v72);
        }
      }

      if (selfCopy2->_workoutElevationVerboseLogging)
      {
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v26 = [v18 countByEnumeratingWithState:&v81 objects:v85 count:16];
        if (v26)
        {
          v27 = *v82;
          do
          {
            v28 = 0;
            do
            {
              if (*v82 != v27)
              {
                objc_enumerationMutation(v18);
              }

              v29 = *(*(&v81 + 1) + 8 * v28);
              if (qword_1025D4410 != -1)
              {
                sub_101916CCC();
              }

              v30 = qword_1025D4418;
              if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
              {
                [v29 timestamp];
                v32 = v31;
                [v29 pressure];
                v34 = v33;
                workoutSmootherRunsCount4 = [(CLContextManagerElevationProfileBase *)selfCopy->_elevationProfileContextManager workoutSmootherRunsCount];
                *buf = 134218496;
                v101 = v32;
                v102 = 2048;
                v103 = v34;
                v104 = 1024;
                LODWORD(v105) = workoutSmootherRunsCount4;
                _os_log_impl(dword_100000000, v30, OS_LOG_TYPE_DEBUG, "enumerate workout elevations fetched from DB,sampleTimestamp,%f,pressure,%f,rounds,%d", buf, 0x1Cu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_10191890C(buf);
                [v29 timestamp];
                v37 = v36;
                [v29 pressure];
                v39 = v38;
                workoutSmootherRunsCount5 = [(CLContextManagerElevationProfileBase *)selfCopy->_elevationProfileContextManager workoutSmootherRunsCount];
                v86 = 134218496;
                v87 = v37;
                v88 = 2048;
                v89 = v39;
                v90 = 1024;
                LODWORD(v91) = workoutSmootherRunsCount5;
                v41 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator computeWorkoutElevationProfile]", "%s\n", v41);
                if (v41 != buf)
                {
                  free(v41);
                }
              }

              v28 = v28 + 1;
            }

            while (v26 != v28);
            v42 = [v18 countByEnumeratingWithState:&v81 objects:v85 count:16];
            v26 = v42;
          }

          while (v42);
        }

        v43 = v75[73];
        if (v75[74] != v43)
        {
          v44 = v75[76];
          v45 = (v43 + 8 * (v44 >> 8));
          v46 = *v45 + 16 * v44;
          v47 = *(v43 + (((v75[77] + v44) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v75 + 616) + v44);
          while (v46 != v47)
          {
            v48 = *v46;
            v49 = *(v46 + 8);
            if (v49)
            {
              atomic_fetch_add_explicit(&v49->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (qword_1025D4410 != -1)
            {
              sub_101916CCC();
            }

            v50 = qword_1025D4418;
            if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
            {
              v52 = *v48;
              v51 = v48[1];
              v53 = *(v48 + 2);
              workoutSmootherRunsCount6 = [(CLContextManagerElevationProfileBase *)selfCopy->_elevationProfileContextManager workoutSmootherRunsCount];
              *buf = 134218752;
              v101 = v52;
              v102 = 2048;
              v103 = v51;
              v104 = 2048;
              v105 = v53;
              v106 = 1024;
              LODWORD(v107) = workoutSmootherRunsCount6;
              _os_log_impl(dword_100000000, v50, OS_LOG_TYPE_DEBUG, "enumerate workout gps in the buffer queue,sampleTimestamp,%f,altitude,%f,uncertainty,%f,rounds,%d", buf, 0x26u);
            }

            if (sub_10000A100(121, 2))
            {
              sub_10191890C(buf);
              v57 = *v48;
              v56 = v48[1];
              v58 = *(v48 + 2);
              workoutSmootherRunsCount7 = [(CLContextManagerElevationProfileBase *)selfCopy->_elevationProfileContextManager workoutSmootherRunsCount];
              v86 = 134218752;
              v87 = v57;
              v88 = 2048;
              v89 = v56;
              v90 = 2048;
              v91 = v58;
              v92 = 1024;
              LODWORD(v93) = workoutSmootherRunsCount7;
              v60 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator computeWorkoutElevationProfile]", "%s\n", v60);
              if (v60 != buf)
              {
                free(v60);
              }
            }

            if (v49)
            {
              sub_100008080(v49);
            }

            v46 += 16;
            if (v46 - *v45 == 4096)
            {
              v55 = v45[1];
              ++v45;
              v46 = v55;
            }
          }
        }
      }

      sub_100014198(v80, v75 + 72);
      [(CLElevationProfileEstimator *)selfCopy _interpolateWorkoutGpsAltitude:v76 toPressureArray:v18 andBufferGpsSamplesQueue:v80];
      sub_10001423C(v80);
      [(CLElevationProfileEstimator *)selfCopy _computeWorkoutElevationProfile:v77 withGpsAltitude:v76 andPressureArray:v18];
      [(CLElevationProfileEstimator *)selfCopy _pushWorkoutElevationProfile:v77];
      [v18 removeAllObjects];

      [v76 removeAllObjects];
      [v77 removeAllObjects];
    }

    else
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
        selfCopy2 = selfCopy;
      }

      v63 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        workoutSmootherRunsCount8 = [(CLContextManagerElevationProfileBase *)selfCopy2->_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 67109120;
        LODWORD(v101) = workoutSmootherRunsCount8;
        _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEFAULT, "no workout pressure data to calculate elevation profile,rounds,%d", buf, 8u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191890C(buf);
        workoutSmootherRunsCount9 = [(CLContextManagerElevationProfileBase *)selfCopy->_elevationProfileContextManager workoutSmootherRunsCount];
        v86 = 67109120;
        LODWORD(v87) = workoutSmootherRunsCount9;
        v66 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator computeWorkoutElevationProfile]", "%s\n", v66);
        if (v66 != buf)
        {
          free(v66);
        }
      }
    }

    if (v73)
    {
      sub_100008080(v73);
    }

    if (v74)
    {
      sub_100008080(v74);
    }
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v61 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      workoutSmootherRunsCount10 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
      *buf = 67109120;
      LODWORD(v101) = workoutSmootherRunsCount10;
      _os_log_impl(dword_100000000, v61, OS_LOG_TYPE_DEFAULT, "no workout gps data to calculate elevation profile,rounds,%d", buf, 8u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101918950(&self->super.isa);
    }
  }
}

- (BOOL)_fetchWorkoutPressureArray:(id)array withStartTime:(double)time andEndTime:(double)endTime
{
  if ([CLContextManagerElevationProfileBase isQueryValidWithStartTime:"isQueryValidWithStartTime:andEndTime:" andEndTime:?])
  {
    LODWORD(v9) = vcvtad_u64_f64((endTime - time + endTime - time) / 2.56);
    [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager fetchElevationsWithStartTime:[NSNumber numberWithUnsignedInt:?]andElevationArray:array, time, endTime];
    return [array count] != 0;
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v11 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
    {
      v13 = 134218240;
      timeCopy = time;
      v15 = 2048;
      endTimeCopy = endTime;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_ERROR, "query workout pressure with false startTime,%f,endTime,%f", &v13, 0x16u);
    }

    v12 = sub_10000A100(121, 0);
    result = 0;
    if (v12)
    {
      sub_101918A64();
      return 0;
    }
  }

  return result;
}

- (void)_pushWorkoutElevationProfile:(id)profile
{
  if ([profile count])
  {
    sub_100014198(v6, self->_dataBuffers + 78);
    [(CLBarometerCalibrationSourceAggregator *)self->_sourceAggregator clearBufferForSource:13];
    memset(v5, 0, sizeof(v5));
    if ([profile countByEnumeratingWithState:v5 objects:v7 count:16])
    {
      operator new();
    }

    operator new();
  }
}

- (void)_computeWorkoutElevationProfile:(id)profile withGpsAltitude:(id)altitude andPressureArray:(id)array
{
  v9 = objc_alloc_init(NSMutableArray);
  [(CLElevationProfileEstimator *)self _forwardProcessingWithGpsAltitudeArray:altitude andElevationArray:array andKFEstimatesBuffer:v9];
  [array removeAllObjects];
  [altitude removeAllObjects];
  [(CLElevationProfileEstimator *)self _backwardProcessingWithKFEstimatesBuffer:v9 andKSEstimatesBuffer:profile];
}

- (void)_interpolateWorkoutGpsAltitude:(id)altitude toPressureArray:(id)array andBufferGpsSamplesQueue:()deque<std:(std::allocator<std::shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>>> *)std :shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>
{
  v7 = (*(std->__map_.__begin_ + ((std->__start_ >> 5) & 0x7FFFFFFFFFFFFF8)))[2 * std->__start_ + 1];
  if (v7)
  {
    atomic_fetch_add_explicit(&v7->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v83 = v7;
  [objc_msgSend(array objectAtIndex:{0), "timestamp"}];
  v84 = 0;
  v91 = 0;
  v8 = 0;
  v87 = 0x7FFFFFFF;
  v88 = 0x7FFFFFFFLL;
  v85 = 0x7FFFFFFF;
  v86 = 0x7FFFFFFF;
  while ([array count] > v91 && std->__size_ - 1 > v8)
  {
    start = std->__start_;
    begin = std->__map_.__begin_;
    v11 = *(begin + (((start + v8) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (start + v8);
    v12 = *v11;
    v13 = *(v11 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      start = std->__start_;
      begin = std->__map_.__begin_;
    }

    v14 = v8;
    v15 = (v8 + 1);
    v16 = *(begin + (((start + v8 + 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (start + v8 + 1);
    v17 = *v16;
    v18 = *(v16 + 8);
    if (v18)
    {
      atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [objc_msgSend(array objectAtIndex:{v91), "timestamp"}];
    v20 = v19;
    v21 = *v12;
    v22 = *v17;
    if (v19 > self->_lastWorkoutProfileEndTime)
    {
      v23 = v91;
      if (v88 != 0x7FFFFFFF)
      {
        [objc_msgSend(array objectAtIndexedSubscript:{v91), "pressure"}];
        v25 = v24;
        [objc_msgSend(array objectAtIndexedSubscript:{v88), "pressure"}];
        v23 = v88;
        if (v25 < v26)
        {
          v23 = v91;
        }
      }

      if (v87 == 0x7FFFFFFF || ([objc_msgSend(array objectAtIndexedSubscript:{v91), "pressure"}], v28 = v27, objc_msgSend(objc_msgSend(array, "objectAtIndexedSubscript:", v87), "pressure"), v28 > v29))
      {
        v87 = v91;
      }

      v88 = v23;
    }

    if (v20 < v21)
    {
      v91 = (v91 + 1);
      v8 = v14;
      if (!v18)
      {
        goto LABEL_36;
      }

LABEL_35:
      sub_100008080(v18);
      goto LABEL_36;
    }

    if (v20 > v22 || v22 - v21 > 5.12)
    {
      v8 = v15;
      if (v18)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v30 = objc_alloc_init(CLAltitudeData);
      v8 = v14;
      [(CLAltitudeData *)v30 setTimestamp:v20];
      [CLElevationLocationFilter interpolateWithStartTime:v21 andStartValue:v12[1] andEndTime:v22 andEndValue:v17[1] atTargetTime:v20];
      [(CLAltitudeData *)v30 setElevation:?];
      v31 = v12[2];
      if (v31 < v17[2])
      {
        v31 = v17[2];
      }

      [(CLAltitudeData *)v30 setVerticalAccuracy:v31];
      [altitude addObject:v30];
      if (v20 > self->_lastWorkoutProfileEndTime)
      {
        if (v86 == 0x7FFFFFFF || (-[CLAltitudeData elevation](v30, "elevation"), v33 = v32, [objc_msgSend(altitude objectAtIndexedSubscript:{v86), "elevation"}], v33 <= v34))
        {
          v86 = [altitude count] - 1;
        }

        ++v84;
        if (v85 == 0x7FFFFFFF || (-[CLAltitudeData elevation](v30, "elevation"), v36 = v35, [objc_msgSend(altitude objectAtIndexedSubscript:{v85), "elevation"}], v36 >= v37))
        {
          v85 = [altitude count] - 1;
        }
      }

      v91 = (v91 + 1);
      if (v18)
      {
        goto LABEL_35;
      }
    }

LABEL_36:
    if (v13)
    {
      sub_100008080(v13);
    }
  }

  [objc_msgSend(array "lastObject")];
  self->_lastWorkoutProfileEndTime = v38;
  if (v88 != 0x7FFFFFFF && v87 != 0x7FFFFFFF)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916BCC();
    }

    v39 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      [objc_msgSend(array objectAtIndexedSubscript:{v88), "timestamp"}];
      v41 = v40;
      [objc_msgSend(array objectAtIndexedSubscript:{v88), "pressure"}];
      v43 = v42;
      [objc_msgSend(array objectAtIndexedSubscript:{v87), "timestamp"}];
      v45 = v44;
      [objc_msgSend(array objectAtIndexedSubscript:{v87), "pressure"}];
      v47 = v46;
      workoutSmootherRunsCount = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
      *buf = 134219008;
      v93 = v41;
      v94 = 2048;
      v95 = v43;
      v96 = 2048;
      v97 = v45;
      v98 = 2048;
      v99 = v47;
      v100 = 1024;
      LODWORD(v101) = workoutSmootherRunsCount;
      _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEFAULT, "final pressure for workout Kalman smoother in the last cadence,minTimestamp,%f,minPressure,%f,maxTimestamp,%f,maxPressure,%f,rounds,%d", buf, 0x30u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191890C(buf);
      [objc_msgSend(array objectAtIndexedSubscript:{v88), "timestamp"}];
      [objc_msgSend(array objectAtIndexedSubscript:{v88), "pressure"}];
      [objc_msgSend(array objectAtIndexedSubscript:{v87), "timestamp"}];
      [objc_msgSend(array objectAtIndexedSubscript:{v87), "pressure"}];
      [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
      v81 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _interpolateWorkoutGpsAltitude:toPressureArray:andBufferGpsSamplesQueue:]", "%s\n", v81);
      if (v81 != buf)
      {
        free(v81);
      }
    }
  }

  if (v86 != 0x7FFFFFFF && v85 != 0x7FFFFFFF)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v49 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      [objc_msgSend(altitude objectAtIndexedSubscript:{v86), "timestamp"}];
      v51 = v50;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v86), "elevation"}];
      v53 = v52;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v86), "verticalAccuracy"}];
      v55 = v54;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v85), "timestamp"}];
      v57 = v56;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v85), "elevation"}];
      v59 = v58;
      [objc_msgSend(altitude objectAtIndexedSubscript:{v85), "verticalAccuracy"}];
      v61 = v60;
      workoutSmootherRunsCount2 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
      *buf = 134219776;
      v93 = v51;
      v94 = 2048;
      v95 = v53;
      v96 = 2048;
      v97 = v55;
      v98 = 2048;
      v99 = v57;
      v100 = 2048;
      v101 = v59;
      v102 = 2048;
      v103 = v61;
      v104 = 1024;
      v105 = v84;
      v106 = 1024;
      v107 = workoutSmootherRunsCount2;
      _os_log_impl(dword_100000000, v49, OS_LOG_TYPE_DEFAULT, "final interpolated Gps for workout Kalman smoother in the last cadence,minTimestamp,%f,minGpsElevation,%f,minGpsUnceretainty,%f,maxTimestamp,%f,maxGpsElevation,%f,maxGpsUnceretainty,%f,totalGpsCount,%d,rounds,%d", buf, 0x4Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10191890C(buf);
      [objc_msgSend(altitude objectAtIndexedSubscript:{v86), "timestamp"}];
      [objc_msgSend(altitude objectAtIndexedSubscript:{v86), "elevation"}];
      [objc_msgSend(altitude objectAtIndexedSubscript:{v86), "verticalAccuracy"}];
      [objc_msgSend(altitude objectAtIndexedSubscript:{v85), "timestamp"}];
      [objc_msgSend(altitude objectAtIndexedSubscript:{v85), "elevation"}];
      [objc_msgSend(altitude objectAtIndexedSubscript:{v85), "verticalAccuracy"}];
      [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
      v82 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _interpolateWorkoutGpsAltitude:toPressureArray:andBufferGpsSamplesQueue:]", "%s\n", v82);
      if (v82 != buf)
      {
        free(v82);
      }
    }
  }

  if (self->_workoutElevationVerboseLogging)
  {
    for (i = 0; i < [altitude count]; ++i)
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v64 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend(altitude objectAtIndexedSubscript:{i), "timestamp"}];
        v66 = v65;
        [objc_msgSend(altitude objectAtIndexedSubscript:{i), "elevation"}];
        v68 = v67;
        [objc_msgSend(altitude objectAtIndexedSubscript:{i), "verticalAccuracy"}];
        v70 = v69;
        workoutSmootherRunsCount3 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 134218752;
        v93 = v66;
        v94 = 2048;
        v95 = v68;
        v96 = 2048;
        v97 = v70;
        v98 = 1024;
        LODWORD(v99) = workoutSmootherRunsCount3;
        _os_log_impl(dword_100000000, v64, OS_LOG_TYPE_DEFAULT, "enumerate final interpolated Gps used in workout Kalman smoother,sampleTimestamp,%f,altitude,%f,uncertainty,%f,rounds,%d", buf, 0x26u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191890C(buf);
        [objc_msgSend(altitude objectAtIndexedSubscript:{i), "timestamp"}];
        [objc_msgSend(altitude objectAtIndexedSubscript:{i), "elevation"}];
        [objc_msgSend(altitude objectAtIndexedSubscript:{i), "verticalAccuracy"}];
        [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
        v72 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _interpolateWorkoutGpsAltitude:toPressureArray:andBufferGpsSamplesQueue:]", "%s\n", v72);
        if (v72 != buf)
        {
          free(v72);
        }
      }
    }

    for (j = 0; j < [array count]; ++j)
    {
      if (qword_1025D4410 != -1)
      {
        sub_101916CCC();
      }

      v74 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        [objc_msgSend(array objectAtIndexedSubscript:{j), "timestamp"}];
        v76 = v75;
        [objc_msgSend(array objectAtIndexedSubscript:{j), "pressure"}];
        v78 = v77;
        workoutSmootherRunsCount4 = [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
        *buf = 134218496;
        v93 = v76;
        v94 = 2048;
        v95 = v78;
        v96 = 1024;
        LODWORD(v97) = workoutSmootherRunsCount4;
        _os_log_impl(dword_100000000, v74, OS_LOG_TYPE_DEFAULT, "enumerate final pressure used in workout Kalman smoother,sampleTimestamp,%f,pressure,%f,rounds,%d", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10191890C(buf);
        [objc_msgSend(array objectAtIndexedSubscript:{j), "timestamp"}];
        [objc_msgSend(array objectAtIndexedSubscript:{j), "pressure"}];
        [(CLContextManagerElevationProfileBase *)self->_elevationProfileContextManager workoutSmootherRunsCount];
        v80 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator _interpolateWorkoutGpsAltitude:toPressureArray:andBufferGpsSamplesQueue:]", "%s\n", v80);
        if (v80 != buf)
        {
          free(v80);
        }
      }
    }
  }

  if (v83)
  {
    sub_100008080(v83);
  }
}

- (void)resetWorkoutSessionStates
{
  *&self->_workoutStartTime = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  self->_lastWorkoutProfileEndTime = 0.0;
  self->_nextHmmGoodStateInitProbability = 3.4028e38;
  self->_nextInitBadStateDetectedTimestamp = 1.79769313e308;
  [(CLKFRunningEstimates *)self->_nextKfInitEstimate setFState:0.0, 0.0];
  nextKfInitEstimate = self->_nextKfInitEstimate;
  if (nextKfInitEstimate)
  {
    [(CLKFRunningEstimates *)nextKfInitEstimate fP];
  }

  self->_mslpAtStartOfWorkout = 0.0;
  self->_mslpUncAtStartOfWorkout = 0.0;
  if (self->_firstTimeOfExternalWetStateInWorkout.__engaged_)
  {
    self->_firstTimeOfExternalWetStateInWorkout.__engaged_ = 0;
  }
}

- (void)startWorkoutAtTime:(double)time andMeanSeaLevelPressure:(double)pressure andMeanSeaLevelPressureUncertainty:(double)uncertainty andTimeOfExternalWetState:(optional<double>)state
{
  self->_workoutStartTime = time;
  self->_mslpAtStartOfWorkout = pressure;
  self->_mslpUncAtStartOfWorkout = uncertainty;
  self->_firstTimeOfExternalWetStateInWorkout = state;
  if (qword_1025D4410 != -1)
  {
    sub_101916BCC();
  }

  v7 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    workoutStartTime = self->_workoutStartTime;
    mslpAtStartOfWorkout = self->_mslpAtStartOfWorkout;
    mslpUncAtStartOfWorkout = self->_mslpUncAtStartOfWorkout;
    if (self->_firstTimeOfExternalWetStateInWorkout.__engaged_)
    {
      val = self->_firstTimeOfExternalWetStateInWorkout.var0.__val_;
    }

    else
    {
      val = -1.0;
    }

    *buf = 134218752;
    v14 = workoutStartTime;
    v15 = 2048;
    v16 = mslpAtStartOfWorkout;
    v17 = 2048;
    v18 = mslpUncAtStartOfWorkout;
    v19 = 2048;
    v20 = val;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "#altimeter,workout start,timestamp,%.3f,mslp,%.2f,mslpUnc,%.2f,startTimeOfWetState,%.3f", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101916CCC();
    }

    v12 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLElevationProfileEstimator startWorkoutAtTime:andMeanSeaLevelPressure:andMeanSeaLevelPressureUncertainty:andTimeOfExternalWetState:]", "%s\n", v12);
    if (v12 != buf)
    {
      free(v12);
    }
  }
}

- (void)stopWorkoutAtTime:(double)time
{
  [(CLElevationProfileEstimator *)self resetWorkoutSessionStates];
  if (qword_1025D4410 != -1)
  {
    sub_101916BCC();
  }

  v4 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    timeCopy = time;
    _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#altimeter,workout stop,timestamp,%.3f", &v5, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101918B70(time);
  }
}

- (void)handleTimeOfExternalWetStateDeclaration:(double)declaration
{
  if ([(CLElevationProfileEstimator *)self currentlyInWorkout])
  {
    if (!self->_firstTimeOfExternalWetStateInWorkout.__engaged_)
    {
      self->_firstTimeOfExternalWetStateInWorkout.var0.__val_ = declaration;
      self->_firstTimeOfExternalWetStateInWorkout.__engaged_ = 1;
    }
  }
}

- (id).cxx_construct
{
  *(self + 192) = 0;
  *(self + 200) = 0;
  return self;
}

@end