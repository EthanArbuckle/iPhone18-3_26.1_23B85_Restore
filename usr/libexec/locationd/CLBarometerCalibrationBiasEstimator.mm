@interface CLBarometerCalibrationBiasEstimator
+ (void)getLocationSampleAltitudeAndUncertainty:(void *)a3 andRefAltitude:(double *)a4 andRefUncertainty:(double *)a5;
- (BOOL)getLastPressureSample:(double *)a3;
- (BOOL)isIHAAuthorized;
- (BOOL)updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:(double)a3 andEndTime:(double)a4 andNextTrackStartTime:(double)a5;
- (BiasEstimatorLocation)centroidOfLocationVector:(const void *)a3;
- (CLBarometerCalibrationBiasEstimator)initWithUniverse:(id)a3 delegate:(id)a4 buffers:(void *)a5 contextManager:(id)a6;
- (CLBarometerCalibrationPressureData)getClosestEntryToRefTime:(double)a3 inPressureQueue:()deque<std:(std::allocator<std::shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>>> *)a4 :shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>;
- (double)crossEntropyOfreference:(ReferencePairedWithPressure *)a3;
- (id).cxx_construct;
- (id)copyCurrentBias;
- (int)selectReferenceWithReference:(void *)a3 withBaroElevation:(double)a4 betweenStartTime:(double)a5 andEndTime:(double)a6;
- (void)computeMeanSeaLevelPressureWithRebasingLocationData:(id)a3 referenceMap:(void *)a4 andLocationType:(int)a5;
- (void)cumulateReference:(void *)a3 andRefAltitude:(double)a4 andRefVariance:(double)a5 andBaroElevation:(double)a6 andType:(int)a7;
- (void)dealloc;
- (void)rebaseSignificantElevationWithEndTime:(double)a3;
- (void)retrieveBiasInfo;
- (void)saveBiasInfo;
- (void)sendRebaseAnalyticsWithAltitudeError:(double)a3 andUncertainty:(double)a4 andRefUncertainty:(double)a5 andDemAvailable:(BOOL)a6 andWorkout:(BOOL)a7 andReferenceSource:(int)a8 andCorrection:(double)a9 andDistance:(double)a10;
- (void)sendVisitExitAnalyticsWithDuration:(double)a3 andRebaseEvent:(void *)a4 andUncertaintyAtEntry:(double)a5;
- (void)sendVisitExitWifiImprovementAnalyticsEventWithDuration:(double)a3 uncertaintyAtVisitEntry:(double)a4 uncertaintyAtVisitExit:(double)a5 timeDiffBtwArrivalAndLastRebase:(double)a6;
- (void)updateBiasUncertaintyWithAbsSigElevation:(double)a3 withCompanion:(BOOL)a4;
- (void)updateBiasUncertaintyWithPressure:(double)a3 andTime:(double)a4 andLat:(double)a5 andLon:(double)a6;
- (void)updateElevationBiasBetweenStartTime:(double)a3 andEndTime:(double)a4 andNextTrackStartTime:(double)a5;
- (void)updateEstimatedWeatherWithCumulativeAscendingDelta:(unsigned int)a3 andDescendingDelta:(unsigned int)a4 andIosTimestamp:(double)a5;
- (void)updateHistoricalMslpArray:(id)a3;
- (void)updateLoiInfo:(const void *)a3;
- (void)updatePressureUncertaintyWithPressure:(double)a3 andTime:(double)a4 andLat:(double)a5 andLon:(double)a6;
- (void)updateVisitState:(BOOL)a3 arrivalTime:(double)a4 departureTime:(double)a5;
@end

@implementation CLBarometerCalibrationBiasEstimator

- (void)saveBiasInfo
{
  if (self->_biasTimestamp != 1.79769313e308)
  {
    Current = CFAbsoluteTimeGetCurrent();
    [(CLBarometerCalibrationBiasEstimator *)self getAbsoluteAltitudeUncertainty];
    v23 = v3;
    v6 = sub_10085BD8C(self->_fSignificantElevationEstimatorRebase.__ptr_, v3, v4, v5);
    if (v6 == 1.79769313e308)
    {
      v6 = -800.0;
    }

    v22 = v6;
    v7 = sub_1000206B4();
    sub_100116D68(v7, "CLBarometerCalibration_Timestamp", &Current);
    v8 = sub_1000206B4();
    sub_100116D68(v8, "CLBarometerCalibratio_Bias", &self->_bias);
    v9 = sub_1000206B4();
    sub_100116D68(v9, "CLBarometerCalibration_Uncertainty", &v23);
    v10 = sub_1000206B4();
    sub_100116D68(v10, "CLBarometerCalibration_Weather", &self->_weatherEstimateInMeter);
    v11 = sub_1000206B4();
    sub_100116D68(v11, "CLBarometerCalibration_SignificantElevation", &v22);
    v12 = sub_1000206B4();
    sub_100116D68(v12, "CLBarometerCalibration_BiasPressure", &self->_biasPressure);
    v13 = *sub_1000206B4();
    (*(v13 + 944))();
    self->_lastTimestampSavedRecovery = Current;
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v14 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      weatherEstimateInMeter = self->_weatherEstimateInMeter;
      bias = self->_bias;
      biasPressure = self->_biasPressure;
      *buf = 134219264;
      v38 = Current;
      v39 = 2048;
      v40 = bias;
      v41 = 2048;
      v42 = v23;
      v43 = 2048;
      v44 = weatherEstimateInMeter;
      v45 = 2048;
      v46 = v22;
      v47 = 2048;
      v48 = biasPressure;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "saving rebase info to cache, timestamp %f, bias, %f, uncertainty, %f, weather estimate, %f, sig elevation, %f, pressure, %f", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v18 = self->_weatherEstimateInMeter;
      v19 = self->_bias;
      v20 = self->_biasPressure;
      v25 = 134219264;
      v26 = Current;
      v27 = 2048;
      v28 = v19;
      v29 = 2048;
      v30 = v23;
      v31 = 2048;
      v32 = v18;
      v33 = 2048;
      v34 = v22;
      v35 = 2048;
      v36 = v20;
      v21 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator saveBiasInfo]", "%s\n", v21);
      if (v21 != buf)
      {
        free(v21);
      }
    }
  }
}

- (id)copyCurrentBias
{
  v3 = objc_opt_new();
  [v3 setTimestamp:self->_biasTimestamp];
  [v3 setBiasInMeters:self->_bias];
  if ([(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator getMeanSeaLevelArrayCount])
  {
    [(CLBarometerCalibrationBiasEstimator *)self getAbsoluteAltitudeUncertainty];
  }

  else
  {
    v4 = 500.0;
  }

  [v3 setUncertaintyInMeters:v4];
  [v3 setEstimatedMeanSeaLevelPressure:self->_estimatedMeanSeaLevelPressure];
  [v3 setEstimatedUncertainty:self->_estimatedAbsoluteAltitudeUncertainty];
  [v3 setWeatherEstimateInMeter:*(self->_fSignificantElevationEstimatorRebase.__ptr_ + 80) - *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 83)];
  [v3 setPreviousCumulativeDeltaIOSTime:self->_previousCumulativeDeltaIOSTime];
  [v3 setStatusInfo:0];
  return v3;
}

- (CLBarometerCalibrationBiasEstimator)initWithUniverse:(id)a3 delegate:(id)a4 buffers:(void *)a5 contextManager:(id)a6
{
  v11.receiver = self;
  v11.super_class = CLBarometerCalibrationBiasEstimator;
  v9 = [(CLBarometerCalibrationBiasEstimator *)&v11 init];
  if (v9)
  {
    v9->_delegate = a4;
    v9->_universe = a3;
    v9->_dataBuffers = a5;
    *&v9->_biasPressure = xmmword_101C88A60;
    *&v9->_biasUncertaintyTimestamp = xmmword_101C88A70;
    v9->_estimatedMeanSeaLevelPressure = 101325.0;
    *&v9->_weatherEstimateInMeter = xmmword_101C88A80;
    *&v9->_previousBiasTimestamp = xmmword_101C88A50;
    v9->_pressureUncertainty = 0.0;
    v9->_distanceTraveled = 0.0;
    *&v9->_distanceSinceLastRebase = xmmword_101C88A90;
    *&v9->_offSetAscendedDelta = 0;
    v9->_previousCumulativeDeltaIOSTime = 1.79769313e308;
    operator new();
  }

  return 0;
}

- (void)dealloc
{
  self->_delegate = 0;
  self->_universe = 0;
  self->_meanSeaLevelPressureEstimator = 0;
  self->_queriedMeanSeaLevelPressureData = 0;
  v3.receiver = self;
  v3.super_class = CLBarometerCalibrationBiasEstimator;
  [(CLBarometerCalibrationBiasEstimator *)&v3 dealloc];
}

- (CLBarometerCalibrationPressureData)getClosestEntryToRefTime:(double)a3 inPressureQueue:()deque<std:(std::allocator<std::shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>>> *)a4 :shared_ptr<CLBarometerCalibration_Types::CLBarometerCalibrationData>
{
  begin = a4->__map_.__begin_;
  if (a4->__map_.__end_ != begin)
  {
    start = a4->__start_;
    v6 = &begin[start >> 8];
    v7 = *v6 + 16 * start;
    v8 = *(begin + (((a4->__size_ + start) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (LOBYTE(a4->__size_) + start);
    if (v7 != v8)
    {
      v10 = 1.79769313e308;
      *&v11 = 1.79769313e308;
      v12 = 1.79769313e308;
      while (1)
      {
        v14 = *v7;
        v13 = *(v7 + 1);
        if (v13)
        {
          atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        v15 = vabdd_f64(a3, *v14);
        if (v15 < v10 && v15 <= 5.0)
        {
          break;
        }

        if (v15 <= v10)
        {
          goto LABEL_14;
        }

        v17 = 0;
        if (v13)
        {
          goto LABEL_15;
        }

LABEL_16:
        if (v17)
        {
          v7 += 16;
          if (v7 - *v6 == 4096)
          {
            v18 = v6[1];
            ++v6;
            v7 = v18;
          }

          if (v7 != v8)
          {
            continue;
          }
        }

        if (v10 != 1.79769313e308)
        {
          goto LABEL_30;
        }

        goto LABEL_23;
      }

      v11 = *(v14 + 8);
      v12 = *v14;
      v10 = v15;
LABEL_14:
      v17 = 1;
      if (!v13)
      {
        goto LABEL_16;
      }

LABEL_15:
      sub_100008080(v13);
      goto LABEL_16;
    }
  }

  *&v11 = 1.79769313e308;
LABEL_23:
  if (qword_1025D4410 != -1)
  {
    sub_101909478();
  }

  v19 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    v24[0] = 0;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "pressure too far from reference data", v24, 2u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_10190948C();
  }

  v12 = 1.79769313e308;
LABEL_30:
  v20 = 1.79769313e308;
  v21 = v12;
  v22 = *&v11;
  v23 = 1.79769313e308;
  result.var3 = v23;
  result.var2 = v20;
  result.var1 = v22;
  result.var0 = v21;
  return result;
}

- (void)updateEstimatedWeatherWithCumulativeAscendingDelta:(unsigned int)a3 andDescendingDelta:(unsigned int)a4 andIosTimestamp:(double)a5
{
  Current = CFAbsoluteTimeGetCurrent();
  previousCumulativeDeltaIOSTime = self->_previousCumulativeDeltaIOSTime;
  if (previousCumulativeDeltaIOSTime == 1.79769313e308)
  {
    self->_offSetAscendedDelta = a3;
    self->_offSetDescendedDelta = a4;
    previousCumulativeDeltaIOSTime = a5;
    self->_previousCumulativeDeltaIOSTime = a5;
  }

  if (vabdd_f64(a5, previousCumulativeDeltaIOSTime) > 18.0)
  {
    sub_10085BC68(self->_fSignificantElevationEstimatorRebase.__ptr_);
  }

  sub_1000A589C(self->_fSignificantElevationEstimatorRebase.__ptr_, a3 - self->_offSetAscendedDelta, a4 - self->_offSetDescendedDelta, 1000, [(CLBarometerCalibrationContextClient *)self->_delegate isInVisit], a5);
  self->_weatherEstimateInMeter = *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 80) - *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 83);
  self->_previousCumulativeDeltaIOSTime = a5;
  v25 = 0.0;
  if ([(CLBarometerCalibrationBiasEstimator *)self getLastPressureSample:&v25])
  {
    [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator minPressure];
    if (v11 == 1.79769313e308 || ([(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator maxPressure], v12 == 1.79769313e308))
    {
      [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator setMinPressure:v25];
      v13 = v25;
LABEL_9:
      [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator setMaxPressure:v13];
      goto LABEL_10;
    }

    [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator minPressure];
    if (v18 > v25)
    {
      [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator setMinPressure:?];
    }

    [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator maxPressure];
    v20 = v19;
    v13 = v25;
    if (v20 < v25)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  if (vabdd_f64(Current, a5) < 10.0 && vabdd_f64(Current, self->_lastTimestampSavedRecovery) > 180.0)
  {
    [(CLBarometerCalibrationBiasEstimator *)self saveBiasInfo];
  }

  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v14 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    weatherEstimateInMeter = self->_weatherEstimateInMeter;
    v16 = *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 80) - *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 83);
    v17 = self->_previousCumulativeDeltaIOSTime;
    *buf = 134219008;
    v37 = weatherEstimateInMeter;
    v38 = 2048;
    v39 = v16;
    v40 = 2048;
    v41 = v17;
    v42 = 2048;
    v43 = a3;
    v44 = 2048;
    v45 = a4;
    _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEBUG, "weatherEstimateWithRebase is %f weatherEstimateFromSigElevation is %f timestamp is %f cumulativeAscendingDelta is %f cumulativeDescendingDelta is %f", buf, 0x34u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v21 = self->_weatherEstimateInMeter;
    v22 = *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 80) - *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 83);
    v23 = self->_previousCumulativeDeltaIOSTime;
    v26 = 134219008;
    v27 = v21;
    v28 = 2048;
    v29 = v22;
    v30 = 2048;
    v31 = v23;
    v32 = 2048;
    v33 = a3;
    v34 = 2048;
    v35 = a4;
    v24 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateEstimatedWeatherWithCumulativeAscendingDelta:andDescendingDelta:andIosTimestamp:]", "%s\n", v24);
    if (v24 != buf)
    {
      free(v24);
    }
  }
}

- (double)crossEntropyOfreference:(ReferencePairedWithPressure *)a3
{
  v4 = a3->var0.var0 - a3->var1.var0;
  p_inVisitStatus = &self->_inVisitStatus;
  v6 = 1.0;
  if (!self->_inVisitStatus)
  {
    v6 = v4 * v4 / (v4 * v4 + *&qword_102658AC0);
  }

  if (qword_1025D4410 != -1)
  {
    sub_101909478();
  }

  v7 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *p_inVisitStatus;
    v13 = 136315906;
    v14 = "crossEntropyWeighting";
    v15 = 2048;
    v16 = v6;
    v17 = 2080;
    v18 = "inVisitStatus";
    v19 = 1024;
    v20 = v8;
    _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "cross entropy weighting,%s,%f,%s,%d", &v13, 0x26u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_101909578(p_inVisitStatus, v6);
  }

  var1 = a3->var0.var1;
  v10 = log(var1 * 17.0794684);
  v11 = a3->var1.var1;
  return v10 + v6 * ((v4 * v4 + var1) / v11 + log(v11 / var1) + -1.0);
}

+ (void)getLocationSampleAltitudeAndUncertainty:(void *)a3 andRefAltitude:(double *)a4 andRefUncertainty:(double *)a5
{
  v5 = *a3;
  v6 = 24;
  if (*(*a3 + 120) > 0.0)
  {
    v6 = 112;
  }

  *a4 = *(v5 + v6);
  v7 = 40;
  if (*(v5 + 120) > 0.0)
  {
    v7 = 120;
  }

  *a5 = *(v5 + v7);
}

- (void)cumulateReference:(void *)a3 andRefAltitude:(double)a4 andRefVariance:(double)a5 andBaroElevation:(double)a6 andType:(int)a7
{
  v20 = a7;
  if (a5 <= 9.0 || a7 != 4)
  {
    v12 = a3 + 8;
    v13 = *(a3 + 1);
    if (!v13)
    {
      goto LABEL_12;
    }

    v14 = a3 + 8;
    do
    {
      if (*(v13 + 8) >= a7)
      {
        v14 = v13;
      }

      v13 = *&v13[8 * (*(v13 + 8) < a7)];
    }

    while (v13);
    if (v14 == v12 || *(v14 + 8) > a7)
    {
LABEL_12:
      v14 = a3 + 8;
    }

    if (a5 > 0.0 && v14 == v12)
    {
      sub_1006BAC64(a3, &v20);
    }

    if (a5 > 0.0)
    {
      v16 = sub_1003DD9F8(a3, &v20);
      *v16 = *v16 + a4;
      v17 = sub_1003DD9F8(a3, &v20);
      *(v17 + 1) = *(v17 + 1) + a5;
      v18 = sub_1003DD9F8(a3, &v20);
      *(v18 + 2) = *(v18 + 2) + a6;
      v19 = sub_1003DD9F8(a3, &v20);
      ++*(v19 + 8);
    }
  }
}

- (BiasEstimatorLocation)centroidOfLocationVector:(const void *)a3
{
  v3 = *a3;
  v4 = *(a3 + 1);
  if (*a3 == v4)
  {
    goto LABEL_14;
  }

  v5 = 0;
  v6 = 0.0;
  v7 = 0.0;
  do
  {
    if (*v3 != 1.79769313e308)
    {
      v8 = v3[1];
      if (v8 != 1.79769313e308)
      {
        v6 = v6 + *v3;
        v7 = v7 + v8;
        ++v5;
      }
    }

    v3 += 2;
  }

  while (v3 != v4);
  if (!v5)
  {
LABEL_14:
    v10 = 1.79769313e308;
    v11 = 1.79769313e308;
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_101909478();
    }

    v9 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134545921;
      v16 = v6 / v5;
      v17 = 2053;
      v18 = v7 / v5;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "new centroid: latitude %{sensitive}f, longitude %{sensitive}f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v10 = v6 / v5;
      v11 = v7 / v5;
      v14 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator centroidOfLocationVector:]", "%s\n", v14);
      if (v14 != buf)
      {
        free(v14);
      }
    }

    else
    {
      v10 = v6 / v5;
      v11 = v7 / v5;
    }
  }

  v12 = v10;
  v13 = v11;
  result.longitude = v13;
  result.latitude = v12;
  return result;
}

- (void)updatePressureUncertaintyWithPressure:(double)a3 andTime:(double)a4 andLat:(double)a5 andLon:(double)a6
{
  if (a5 != 1.79769313e308 && a6 != 1.79769313e308)
  {
    latitude = self->_biasLocation.latitude;
    if (latitude != 1.79769313e308)
    {
      v13 = fabs(sub_100117154(latitude, self->_biasLocation.longitude, a5, a6));
      self->_distanceTraveled = v13;
      p_distanceTraveled = &self->_distanceTraveled;
      self->_pressureUncertainty = self->_pressureUncertainty + v13 * 0.00200000009;
      if (qword_1025D4410 != -1)
      {
        sub_101909478();
      }

      v15 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
      {
        v16 = *p_distanceTraveled;
        v17 = *p_distanceTraveled * 0.00200000009;
        pressureUncertainty = self->_pressureUncertainty;
        *buf = 134218496;
        *v40 = v16;
        *&v40[8] = 2048;
        *&v40[10] = v17;
        *&v40[18] = 2048;
        *&v40[20] = pressureUncertainty;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEBUG, "updated pressure uncertainty due to distance %f by %f uncertainty now is %f", buf, 0x20u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019096B8(&self->_distanceTraveled, &self->_pressureUncertainty);
      }
    }

    self->_biasLocation.latitude = a5;
    self->_biasLocation.longitude = a6;
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v19 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      *buf = 134545921;
      *v40 = a5;
      *&v40[8] = 2053;
      *&v40[10] = a6;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "updated bias location latitude %{sensitive}f longitude %{sensitive}f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019097E0();
    }
  }

  if (self->_biasUncertaintyTimestamp < a4)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (vabdd_f64(Current, a4) < 10.0)
    {
      self->_inVisitStatus = [(CLBarometerCalibrationContextClient *)self->_delegate isInVisit];
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v21 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
      {
        inVisitStatus = self->_inVisitStatus;
        *buf = 67109632;
        *v40 = inVisitStatus;
        *&v40[4] = 2048;
        *&v40[6] = a4;
        *&v40[14] = 2048;
        *&v40[16] = Current;
        _os_log_impl(dword_100000000, v21, OS_LOG_TYPE_DEBUG, "updated visit status for bias estimator, %d, step count timestamp, %f, current time, %f", buf, 0x1Cu);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4410 != -1)
        {
          sub_101909358();
        }

        v38 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updatePressureUncertaintyWithPressure:andTime:andLat:andLon:]", "%s\n", v38);
        if (v38 != buf)
        {
          free(v38);
        }
      }
    }

    if (*(self->_fSignificantElevationEstimatorRebase.__ptr_ + 156))
    {
      v23 = 0.0277777778;
    }

    else if (self->_inVisitStatus)
    {
      v23 = 0.00138888889;
    }

    else
    {
      v23 = 0.0277777778;
    }

    v24 = a3;
    v25 = sub_1000A6C00(v24, 101320.0) < 3000.0;
    v26 = 0.05;
    if (v25)
    {
      v26 = v23;
    }

    if (a4 - self->_biasUncertaintyTimestamp <= 60.0)
    {
      v27 = v26;
    }

    else
    {
      v27 = 0.0;
    }

    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v28 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      v29 = *(self->_fSignificantElevationEstimatorRebase.__ptr_ + 156);
      v30 = self->_inVisitStatus;
      v31 = sub_1000A6C00(v24, 101320.0);
      *buf = 134218752;
      *v40 = v27;
      *&v40[8] = 1024;
      *&v40[10] = v29;
      *&v40[14] = 1024;
      *&v40[16] = v30;
      *&v40[20] = 2048;
      *&v40[22] = v31;
      _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEBUG, "updated weather drift due to time, %f, sig elev state, %d, inVisit, %d, altitude %f", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      sub_1000A6C00(v24, 101320.0);
      v36 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updatePressureUncertaintyWithPressure:andTime:andLat:andLon:]", "%s\n", v36);
      if (v36 != buf)
      {
        free(v36);
      }
    }

    self->_pressureUncertainty = self->_pressureUncertainty + v27 * (a4 - self->_biasUncertaintyTimestamp);
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v32 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      biasTimestamp = self->_biasTimestamp;
      biasUncertaintyTimestamp = self->_biasUncertaintyTimestamp;
      v35 = self->_pressureUncertainty;
      *buf = 134219008;
      *v40 = a4;
      *&v40[8] = 2048;
      *&v40[10] = biasTimestamp;
      *&v40[18] = 2048;
      *&v40[20] = biasUncertaintyTimestamp;
      *&v40[28] = 2048;
      v41 = v27 * (a4 - biasUncertaintyTimestamp);
      v42 = 2048;
      v43 = v35;
      _os_log_impl(dword_100000000, v32, OS_LOG_TYPE_DEBUG, "updated pressure uncertainty due to time: timestamp %f _biasTimestamp %f _biasUncertaintyTimestamp %f by %f uncertainty now is %f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v37 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updatePressureUncertaintyWithPressure:andTime:andLat:andLon:]", "%s\n", v37);
      if (v37 != buf)
      {
        free(v37);
      }
    }

    self->_biasUncertaintyTimestamp = a4;
  }
}

- (void)updateBiasUncertaintyWithPressure:(double)a3 andTime:(double)a4 andLat:(double)a5 andLon:(double)a6
{
  if (self->_biasUncertaintyTimestamp == 1.79769313e308)
  {
    dataBuffers = self->_dataBuffers;
    if (!dataBuffers[11])
    {
      return;
    }

    v12 = *(dataBuffers[7] + ((dataBuffers[10] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * dataBuffers[10];
    v14 = *v12;
    v13 = *(v12 + 8);
    if (v13)
    {
      atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
      self->_biasUncertaintyTimestamp = *v14;
      self->_biasPressure = v14[1] * 1000.0;
      sub_100008080(v13);
    }

    else
    {
      self->_biasUncertaintyTimestamp = *v14;
      self->_biasPressure = v14[1] * 1000.0;
    }
  }

  [(CLBarometerCalibrationBiasEstimator *)self updatePressureUncertaintyWithPressure:a3 andTime:a4 andLat:a5 andLon:a6];
  v15 = a3;
  v16 = sub_1000A6C38(v15, 0.0065, 288.15);
  v17 = fabs(self->_pressureUncertainty);
  if (qword_1025D4410 != -1)
  {
    sub_101909478();
  }

  v18 = v17 * v16;
  v19 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    v20 = a3;
    v21 = sub_1000A6C38(v20, 0.0065, 288.15);
    v22 = fabs(self->_pressureUncertainty);
    *buf = 134218752;
    v47 = v18;
    v48 = 2048;
    v49 = v21;
    v50 = 2048;
    v51 = v22;
    v52 = 2048;
    v53 = a3;
    _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEBUG, "term1 %f, dElevationdPresure(pmeas) %f std::abs(_pressureUncertainty) %f pmeas %f", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v41 = a3;
    sub_1000A6C38(v41, 0.0065, 288.15);
    v42 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateBiasUncertaintyWithPressure:andTime:andLat:andLon:]", "%s\n", v42);
    if (v42 != buf)
    {
      free(v42);
    }
  }

  biasPressure = self->_biasPressure;
  v24 = sub_1000A6C9C(biasPressure);
  v25 = vabdd_f64(a3, self->_biasPressure);
  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v26 = v25 * v24;
  v27 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    v28 = self->_biasPressure;
    v29 = sub_1000A6C9C(v28);
    v30 = vabdd_f64(a3, self->_biasPressure);
    *buf = 134218496;
    v47 = v26;
    v48 = 2048;
    v49 = v29;
    v50 = 2048;
    v51 = v30;
    _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEBUG, "term2 %f, slopeDiffDElevationDPressure(pbias) %f std::abs(pressure - _biasPressure) %f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v43 = self->_biasPressure;
    sub_1000A6C9C(v43);
    v44 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateBiasUncertaintyWithPressure:andTime:andLat:andLon:]", "%s\n", v44);
    if (v44 != buf)
    {
      free(v44);
    }
  }

  v31 = a3;
  v32 = sub_1000A6C9C(v31);
  v33 = fabs(self->_pressureUncertainty);
  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v34 = v33 * v32;
  v35 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    v36 = sub_1000A6C9C(v15);
    v37 = fabs(self->_pressureUncertainty);
    *buf = 134218496;
    v47 = v34;
    v48 = 2048;
    v49 = v36;
    v50 = 2048;
    v51 = v37;
    _os_log_impl(dword_100000000, v35, OS_LOG_TYPE_DEBUG, "term3 %f, slopeDiffDElevationDPressure(pmeas) %f std::abs(_pressureUncertainty %f", buf, 0x20u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    sub_1000A6C9C(v15);
    v45 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateBiasUncertaintyWithPressure:andTime:andLat:andLon:]", "%s\n", v45);
    if (v45 != buf)
    {
      free(v45);
    }
  }

  self->_biasUncertainty = fabs(v34) + fabs(v26) + fabs(v18) + self->_biasUncertaintyAtRebase;
  p_biasUncertainty = &self->_biasUncertainty;
  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v39 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    v40 = *p_biasUncertainty;
    *buf = 134217984;
    v47 = v40;
    _os_log_impl(dword_100000000, v39, OS_LOG_TYPE_DEBUG, "total bias uncertainty %f", buf, 0xCu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019098DC(p_biasUncertainty);
  }
}

- (BOOL)updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:(double)a3 andEndTime:(double)a4 andNextTrackStartTime:(double)a5
{
  dataBuffers = self->_dataBuffers;
  v8 = dataBuffers[1];
  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  if (dataBuffers[2] == v8)
  {
    v62 = self;
    v136 = 0.0;
    v137 = 0.0;
    LODWORD(v14) = 0;
    LODWORD(v15) = 0;
    LODWORD(v16) = 0;
    v18 = 0;
    v132 = 0.0;
    v133 = 0.0;
    v131 = 0.0;
    v135 = 0.0;
    goto LABEL_65;
  }

  v10 = dataBuffers[4];
  v11 = (v8 + 8 * (v10 >> 8));
  v12 = (*v11 + 16 * v10);
  v140 = *(v8 + (((dataBuffers[5] + v10) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(dataBuffers + 40) + v10);
  if (v12 == v140)
  {
    v136 = 0.0;
    v137 = 0.0;
    LODWORD(v14) = 0;
    LODWORD(v15) = 0;
    LODWORD(v16) = 0;
    v18 = 0;
    v132 = 0.0;
    v133 = 0.0;
    v131 = 0.0;
    v135 = 0.0;
    goto LABEL_64;
  }

  v134 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v137 = 0.0;
  v135 = 0.0;
  v136 = 0.0;
  v132 = 0.0;
  v133 = 0.0;
  v131 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v138 = self->_dataBuffers;
  do
  {
    v21 = *v12;
    v22 = **v12;
    if (v22 < a3 || v22 >= a4)
    {
      goto LABEL_39;
    }

    v24 = v12[1];
    v141 = *v12;
    v142 = v24;
    if (v24)
    {
      atomic_fetch_add_explicit(&v24->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (*(v21 + 25) == 1)
    {
      v16 = v16 + ((*(v21 + 65) >> 1) & 1);
    }

    v25 = dataBuffers[7];
    v139 = v11;
    if (dataBuffers[8] != v25)
    {
      v26 = dataBuffers;
      v27 = v16;
      v28 = v15;
      v29 = v14;
      v30 = v26[10];
      v31 = (v25 + 8 * (v30 >> 8));
      v32 = *v31 + 16 * v30;
      v33 = *(v25 + (((v26[11] + v30) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v26 + 88) + v30);
      if (v32 == v33)
      {
        v14 = v29;
      }

      else
      {
        v34 = 1.79769313e308;
        do
        {
          v35 = *v32;
          v36 = vabdd_f64(**v12, **v32);
          if (v36 < v34 && v36 <= 5.0)
          {
            v38 = *(v32 + 8);
            if (v38)
            {
              atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            if (v18)
            {
              sub_100008080(v18);
            }

            v18 = v38;
            v17 = v35;
            v34 = v36;
          }

          v32 += 16;
          if (v32 - *v31 == 4096)
          {
            v39 = v31[1];
            ++v31;
            v32 = v39;
          }
        }

        while (v32 != v33);
        v14 = v29;
        if (v34 != 1.79769313e308)
        {
          v47 = v17[1] * 1000.0;
          v11 = v139;
          v48 = sub_1000A6C00(v47, 101320.0);
          *buf = 0x7FEFFFFFFFFFFFFFLL;
          *v143 = 0xBFF0000000000000;
          [CLBarometerCalibrationBiasEstimator getLocationSampleAltitudeAndUncertainty:&v141 andRefAltitude:buf andRefUncertainty:v143];
          v16 = v27;
          v49 = v141[1];
          dataBuffers = v138;
          if (v49 != 1.79769313e308)
          {
            v50 = v141[2];
            v51 = v50 == 1.79769313e308;
            v52 = v19 + v49;
            v53 = v20 + v50;
            if (!v51)
            {
              v20 = v53;
              v19 = v52;
            }

            v54 = v134;
            if (!v51)
            {
              v54 = v134 + 1;
            }

            v134 = v54;
          }

          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          v15 = v28;
          if (*(v141 + 25) == 1)
          {
            v55 = v141[7];
            if (v55 > 0.0)
            {
              v14 = (v14 + 1);
              v136 = v136 + v141[6];
              v137 = v137 + v48;
              v132 = v132 + *buf;
              v133 = v133 + v55;
              v131 = v131 + *v143;
              v135 = v135 + v17[1] * 1000.0;
              v15 = v28 + (*(v141 + 65) & 1);
            }
          }

          goto LABEL_37;
        }

        p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
      }

      v15 = v28;
      v16 = v27;
      dataBuffers = v138;
    }

    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v40 = p_info[131];
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      v41 = dataBuffers[7];
      v42 = dataBuffers[10];
      v43 = **v12;
      v44 = **(*(v41 + ((v42 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v42);
      v45 = **(*(v41 + (((v42 + dataBuffers[11] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v42 + *(dataBuffers + 88) - 1));
      *buf = 134219264;
      *&buf[4] = v43;
      v175 = 2048;
      *v176 = v44;
      *&v176[8] = 2048;
      *&v176[10] = v45;
      *&v176[18] = 2048;
      *&v176[20] = a3;
      *&v176[28] = 2048;
      *&v176[30] = a4;
      *&v176[38] = 2048;
      *&v176[40] = a5;
      _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEBUG, "pressure too far from reference data,locationTime,%f,firstPsTime,%f,lastPsTime,%f,startTime,%f,endTime,%f,nextTrackStartTime,%f", buf, 0x3Eu);
    }

    v11 = v139;
    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v56 = dataBuffers[7];
      v57 = dataBuffers[10];
      v58 = **v12;
      v59 = **(*(v56 + ((v57 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v57);
      v60 = **(*(v56 + (((v57 + dataBuffers[11] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v57 + *(dataBuffers + 88) - 1));
      *v143 = 134219264;
      *&v143[4] = v58;
      v144 = 2048;
      *v145 = v59;
      *&v145[8] = 2048;
      *&v145[10] = v60;
      *&v145[18] = 2048;
      *&v145[20] = a3;
      *&v145[28] = 2048;
      *&v145[30] = a4;
      *&v145[38] = 2048;
      *&v145[40] = a5;
      v61 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v61);
      if (v61 != buf)
      {
        free(v61);
      }

      v11 = v139;
    }

LABEL_37:
    if (v142)
    {
      sub_100008080(v142);
    }

LABEL_39:
    v12 += 2;
    if ((v12 - *v11) == 4096)
    {
      v46 = v11[1];
      ++v11;
      v12 = v46;
    }
  }

  while (v12 != v140);
  if (!v134)
  {
LABEL_64:
    v62 = self;
    goto LABEL_65;
  }

  v62 = self;
  [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator setCurrentLatitude:v19 / v134];
  [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator setCurrentLongitude:v20 / v134];
  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v63 = p_info[131];
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator currentLatitude];
    v65 = v64;
    [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator currentLongitude];
    *buf = 134545921;
    *&buf[4] = v65;
    v175 = 2053;
    *v176 = v66;
    _os_log_impl(dword_100000000, v63, OS_LOG_TYPE_DEFAULT, "update mean sea level pressure location,lat,%{sensitive}f,lon,%{sensitive}f", buf, 0x16u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019099D4(buf);
    [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator currentLatitude];
    v127 = v126;
    [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator currentLongitude];
    *v143 = 134545921;
    *&v143[4] = v127;
    v144 = 2053;
    *v145 = v128;
    v129 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v129);
    if (v129 != buf)
    {
      free(v129);
    }

    v62 = self;
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  [(CLMeanSeaLevelPressureEstimator *)v62->_meanSeaLevelPressureEstimator refreshHistoricalMeanSeaLevelPressureWithStartTime:a4 + -10800.0 andEndTime:a4];
LABEL_65:
  v62->_inOutdoorWorkoutStatus = v16 > 119;
  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v67 = p_info[131];
  if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
  {
    inOutdoorWorkoutStatus = v62->_inOutdoorWorkoutStatus;
    *buf = 136316930;
    *&buf[4] = "inOutdoorWorkoutPoint";
    v175 = 1024;
    *v176 = v16;
    *&v176[4] = 2080;
    *&v176[6] = "inOutdoorWorkoutStatus";
    *&v176[14] = 1024;
    *&v176[16] = inOutdoorWorkoutStatus;
    *&v176[20] = 2080;
    *&v176[22] = "trackStartTime";
    *&v176[30] = 2048;
    *&v176[32] = a3;
    *&v176[40] = 2080;
    *&v176[42] = "trackEndTime";
    *&v176[50] = 2048;
    *&v176[52] = a4;
    _os_log_impl(dword_100000000, v67, OS_LOG_TYPE_DEFAULT, "in outdoor workout info,%s,%u,%s,%d,%s,%f,%s,%f", buf, 0x4Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019099D4(buf);
    v111 = v62->_inOutdoorWorkoutStatus;
    *v143 = 136316930;
    *&v143[4] = "inOutdoorWorkoutPoint";
    v144 = 1024;
    *v145 = v16;
    *&v145[4] = 2080;
    *&v145[6] = "inOutdoorWorkoutStatus";
    *&v145[14] = 1024;
    *&v145[16] = v111;
    *&v145[20] = 2080;
    *&v145[22] = "trackStartTime";
    *&v145[30] = 2048;
    *&v145[32] = a3;
    *&v145[40] = 2080;
    *&v145[42] = "trackEndTime";
    *&v145[50] = 2048;
    *&v145[52] = a4;
    v112 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v112);
    if (v112 != buf)
    {
      free(v112);
    }

    v62 = self;
    if (!v14)
    {
      goto LABEL_84;
    }

LABEL_71:
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v69 = p_info[131];
    if (os_log_type_enabled(v69, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "GPSBasedDEMPoints";
      v175 = 1024;
      *v176 = v14;
      *&v176[4] = 2080;
      *&v176[6] = "underDEMPoints";
      *&v176[14] = 1024;
      *&v176[16] = v15;
      _os_log_impl(dword_100000000, v69, OS_LOG_TYPE_DEFAULT, "under Dem or latched high data points check,%s,%d,%s,%d", buf, 0x22u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      *v143 = 136315906;
      *&v143[4] = "GPSBasedDEMPoints";
      v144 = 1024;
      *v145 = v14;
      *&v145[4] = 2080;
      *&v145[6] = "underDEMPoints";
      *&v145[14] = 1024;
      *&v145[16] = v15;
      v113 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v113);
      if (v113 != buf)
      {
        free(v113);
      }

      v62 = self;
    }

    v70 = objc_opt_new();
    [v70 setTimestamp:a4];
    if (v14 == v15)
    {
      v71 = v137 / v15;
      v72 = v136 / v15;
      v73 = v133 / v15;
      bias = v62->_bias;
      weatherEstimateInMeter = v62->_weatherEstimateInMeter;
      v62->_biasUncertaintyAtRebase = v73;
      v76 = v135 / v15;
      v62->_bias = v72 - v71;
      v62->_biasPressure = v76;
      v77 = v72;
      v78 = v76;
      v79 = sub_1012C280C(v77, v78);
      v62->_estimatedAbsoluteAltitudeUncertainty = v73;
      v62->_estimatedMeanSeaLevelPressure = v79;
      biasPressure = v62->_biasPressure;
      v81 = v72;
      [v70 setUncertainty:{v73 * sub_1012C28A0(v81, biasPressure)}];
      [v70 setMeanSeaLevelPressure:v62->_estimatedMeanSeaLevelPressure];
      v82 = v71 + bias - weatherEstimateInMeter - v72;
      v83 = 4294967294;
    }

    else
    {
      v71 = v137 / v14;
      v84 = v132 / v14;
      v85 = v131 / v14;
      v86 = v71 + v62->_bias - v62->_weatherEstimateInMeter;
      if (v86 <= v136 / v14 + 100.0 || v86 <= v85 + v84)
      {

        goto LABEL_84;
      }

      v62->_biasUncertaintyAtRebase = v85;
      v90 = v135 / v14;
      v62->_bias = v84 - v71;
      v62->_biasPressure = v90;
      v91 = v84;
      v92 = v90;
      v93 = sub_1012C280C(v91, v92);
      v62->_estimatedAbsoluteAltitudeUncertainty = v85;
      v62->_estimatedMeanSeaLevelPressure = v93;
      v94 = v62->_biasPressure;
      v95 = v84;
      [v70 setUncertainty:{v85 * sub_1012C28A0(v95, v94)}];
      [v70 setMeanSeaLevelPressure:v62->_estimatedMeanSeaLevelPressure];
      v82 = v86 - v84;
      v83 = 4294967293;
    }

    v62->_forceCalibrate = 1;
    [(CLBarometerCalibrationBiasEstimator *)v62 updateHistoricalMslpArray:v70];
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v96 = p_info[131];
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEFAULT))
    {
      [v70 meanSeaLevelPressure];
      v98 = v97;
      [v70 uncertainty];
      v100 = v99;
      [v70 timestamp];
      *buf = 136317954;
      *&buf[4] = "type";
      v175 = 1024;
      *v176 = v83;
      *&v176[4] = 2080;
      *&v176[6] = "meanSeaLevelPressure";
      *&v176[14] = 2048;
      *&v176[16] = v98;
      *&v176[24] = 2080;
      *&v176[26] = "uncertainty";
      *&v176[34] = 2048;
      *&v176[36] = v100;
      *&v176[44] = 2080;
      *&v176[46] = "timestamp";
      *&v176[54] = 2048;
      *&v176[56] = v101;
      v177 = 2080;
      v178 = "startAt";
      v179 = 2048;
      v180 = a3;
      v181 = 2080;
      v182 = "endAt";
      v183 = 2048;
      v184 = a4;
      _os_log_impl(dword_100000000, v96, OS_LOG_TYPE_DEFAULT, "update mean sea level pressure array with location data after rebasing,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x76u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      [v70 meanSeaLevelPressure];
      v115 = v114;
      [v70 uncertainty];
      v117 = v116;
      [v70 timestamp];
      *v143 = 136317954;
      *&v143[4] = "type";
      v144 = 1024;
      *v145 = v83;
      *&v145[4] = 2080;
      *&v145[6] = "meanSeaLevelPressure";
      *&v145[14] = 2048;
      *&v145[16] = v115;
      *&v145[24] = 2080;
      *&v145[26] = "uncertainty";
      *&v145[34] = 2048;
      *&v145[36] = v117;
      *&v145[44] = 2080;
      *&v145[46] = "timestamp";
      *&v145[54] = 2048;
      *&v145[56] = v118;
      v146 = 2080;
      v147 = "startAt";
      v148 = 2048;
      v149 = a3;
      v150 = 2080;
      v151 = "endAt";
      v152 = 2048;
      v153 = a4;
      v119 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v119);
      if (v119 != buf)
      {
        free(v119);
      }

      v62 = self;
    }

    v62->_biasTimestamp = a4;
    v62->_pressureUncertainty = 0.0;
    v62->_distanceTraveled = 0.0;
    v62->_biasLocation = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    sub_10085C118(v62->_fSignificantElevationEstimatorRebase.__ptr_);
    [(CLBarometerCalibrationBiasEstimator *)v62 rebaseSignificantElevationWithEndTime:a4];
    [(CLBarometerCalibrationBiasEstimator *)v62 updateBiasUncertaintyWithAbsSigElevation:0 withCompanion:sub_10085BD8C(v62->_fSignificantElevationEstimatorRebase.__ptr_, v102, v103, v104)];
    [(CLBarometerCalibrationBiasEstimator *)v62 sendRebaseAnalyticsWithAltitudeError:1 andUncertainty:v62->_inOutdoorWorkoutStatus andRefUncertainty:v83 andDemAvailable:v82 andWorkout:v62->_biasUncertainty andReferenceSource:v62->_biasUncertaintyAtRebase andCorrection:v82 andDistance:v62->_distanceSinceLastRebase];
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v105 = p_info[131];
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEFAULT))
    {
      v106 = v62->_bias;
      biasUncertaintyAtRebase = v62->_biasUncertaintyAtRebase;
      biasUncertainty = v62->_biasUncertainty;
      v109 = v62->_weatherEstimateInMeter;
      v110 = v62->_inOutdoorWorkoutStatus;
      *buf = 136320514;
      *&buf[4] = "type";
      v175 = 1024;
      *v176 = v83;
      *&v176[4] = 2080;
      *&v176[6] = "newBias";
      *&v176[14] = 2048;
      *&v176[16] = v106;
      *&v176[24] = 2080;
      *&v176[26] = "newBiasUncertainty";
      *&v176[34] = 2048;
      *&v176[36] = biasUncertaintyAtRebase;
      *&v176[44] = 2080;
      *&v176[46] = "oldBaroAltitude";
      *&v176[54] = 2048;
      *&v176[56] = v71;
      v177 = 2080;
      v178 = "oldRefAltitude";
      v179 = 2048;
      v180 = v71 + v106;
      v181 = 2080;
      v182 = "oldBaroUncertainty";
      v183 = 2048;
      v184 = biasUncertainty;
      v185 = 2080;
      v186 = "oldRefUncertainty";
      v187 = 2048;
      v188 = biasUncertaintyAtRebase;
      v189 = 2080;
      v190 = "weatherEstimateInMeter";
      v191 = 2048;
      v192 = v109;
      v193 = 2080;
      v194 = "inOutdoorWorkout";
      v195 = 1024;
      v196 = v110;
      v197 = 2080;
      v198 = "calculatedFromTrackStartAt";
      v199 = 2048;
      v200 = a3;
      v201 = 2080;
      v202 = "endAt";
      v203 = 2048;
      v204 = a4;
      _os_log_impl(dword_100000000, v105, OS_LOG_TYPE_DEFAULT, "pressure height rebase to,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%d,%s,%f,%s,%f", buf, 0xD6u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v120 = v62->_bias;
      v121 = v62->_biasUncertaintyAtRebase;
      v122 = v62->_biasUncertainty;
      v123 = v62->_weatherEstimateInMeter;
      v124 = v62->_inOutdoorWorkoutStatus;
      *v143 = 136320514;
      *&v143[4] = "type";
      v144 = 1024;
      *v145 = v83;
      *&v145[4] = 2080;
      *&v145[6] = "newBias";
      *&v145[14] = 2048;
      *&v145[16] = v120;
      *&v145[24] = 2080;
      *&v145[26] = "newBiasUncertainty";
      *&v145[34] = 2048;
      *&v145[36] = v121;
      *&v145[44] = 2080;
      *&v145[46] = "oldBaroAltitude";
      *&v145[54] = 2048;
      *&v145[56] = v71;
      v146 = 2080;
      v147 = "oldRefAltitude";
      v148 = 2048;
      v149 = v71 + v120;
      v150 = 2080;
      v151 = "oldBaroUncertainty";
      v152 = 2048;
      v153 = v122;
      v154 = 2080;
      v155 = "oldRefUncertainty";
      v156 = 2048;
      v157 = v121;
      v158 = 2080;
      v159 = "weatherEstimateInMeter";
      v160 = 2048;
      v161 = v123;
      v162 = 2080;
      v163 = "inOutdoorWorkout";
      v164 = 1024;
      v165 = v124;
      v166 = 2080;
      v167 = "calculatedFromTrackStartAt";
      v168 = 2048;
      v169 = a3;
      v170 = 2080;
      v171 = "endAt";
      v172 = 2048;
      v173 = a4;
      v125 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v125);
      if (v125 != buf)
      {
        free(v125);
      }

      v62 = self;
    }

    v62->_forceCalibrate = 0;
    v88 = 1;
    if (v18)
    {
LABEL_85:
      sub_100008080(v18);
    }
  }

  else
  {
    if (v14)
    {
      goto LABEL_71;
    }

LABEL_84:
    v88 = 0;
    if (v18)
    {
      goto LABEL_85;
    }
  }

  return v88;
}

- (void)updateElevationBiasBetweenStartTime:(double)a3 andEndTime:(double)a4 andNextTrackStartTime:(double)a5
{
  if (a4 - a3 > 1800.0)
  {
    if (qword_1025D4410 != -1)
    {
      sub_101909478();
    }

    v7 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = a3;
      *&buf[12] = 2048;
      *&buf[14] = a4;
      _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "track is too old, don't rebase,startTime,%f,endTime,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101909B1C();
    }

    return;
  }

  v9 = self;
  dataBuffers = self->_dataBuffers;
  v289 = 0.0;
  if (![(CLBarometerCalibrationBiasEstimator *)self getLastPressureSample:&v289])
  {
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v68 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = a3;
      *&buf[12] = 2048;
      *&buf[14] = a4;
      _os_log_impl(dword_100000000, v68, OS_LOG_TYPE_DEFAULT, "filtered pressure queue is empty,startTime,%f,endTime,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_101909A18();
    }

    return;
  }

  [(CLMeanSeaLevelPressureEstimator *)v9->_meanSeaLevelPressureEstimator setNumberOfTrackEndedBtwRefresh:[(CLMeanSeaLevelPressureEstimator *)v9->_meanSeaLevelPressureEstimator numberOfTrackEndedBtwRefresh]+ 1];
  if ([(CLBarometerCalibrationBiasEstimator *)v9 updateElevationBiasUnderDEMOrLatchedHighBetweenStartTime:a3 andEndTime:a4 andNextTrackStartTime:a5])
  {
    return;
  }

  __src = 0;
  v287 = 0;
  v288 = 0;
  v11 = dataBuffers[25];
  v273 = v9;
  v12 = dataBuffers;
  if (dataBuffers[26] == v11 || (v13 = dataBuffers[28], v14 = (v11 + 8 * (v13 >> 8)), v15 = *v14 + 16 * v13, v16 = *(v11 + (((dataBuffers[29] + v13) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(dataBuffers + 232) + v13), v15 == v16))
  {
    v17 = 0;
    v276 = 0;
    goto LABEL_81;
  }

  v272 = 0;
  v17 = 0;
  v276 = 0;
  v270 = 0.0;
  v271 = 0.0;
  v268 = 0.0;
  v269 = 0.0;
  v267 = 0.0;
  v274 = v16;
  do
  {
    v18 = *v15;
    v19 = **v15;
    if (v19 < a3 || v19 >= a4)
    {
      goto LABEL_63;
    }

    v21 = *(v15 + 8);
    if (v21)
    {
      atomic_fetch_add_explicit(&v21->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v22 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      v24 = *v18;
      v23 = *(v18 + 1);
      *buf = 134218240;
      *&buf[4] = v23;
      *&buf[12] = 2048;
      *&buf[14] = v24;
      _os_log_impl(dword_100000000, v22, OS_LOG_TYPE_DEBUG, "companion data found,altitude,%f,timestamp,%f", buf, 0x16u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v61 = *v18;
      v60 = *(v18 + 1);
      v290 = 134218240;
      *v291 = v60;
      *&v291[8] = 2048;
      *&v291[10] = v61;
      v62 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v62);
      if (v62 != buf)
      {
        free(v62);
      }
    }

    v25 = dataBuffers[7];
    if (dataBuffers[8] == v25)
    {
      goto LABEL_55;
    }

    v26 = dataBuffers[10];
    v27 = (v25 + 8 * (v26 >> 8));
    v28 = *v27 + 16 * v26;
    v29 = *(v25 + (((dataBuffers[11] + v26) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(dataBuffers + 88) + v26);
    if (v28 == v29)
    {
      goto LABEL_54;
    }

    v30 = 1.79769313e308;
    do
    {
      v31 = *v28;
      v32 = vabdd_f64(*v18, **v28);
      if (v32 < v30 && v32 <= 5.0)
      {
        v34 = *(v28 + 8);
        if (v34)
        {
          atomic_fetch_add_explicit(&v34->__shared_owners_, 1uLL, memory_order_relaxed);
        }

        if (v276)
        {
          sub_100008080(v276);
        }

        v276 = v34;
        v17 = v31;
        v30 = v32;
      }

      v28 += 16;
      dataBuffers = v12;
      if (v28 - *v27 == 4096)
      {
        v35 = v27[1];
        ++v27;
        v28 = v35;
      }
    }

    while (v28 != v29);
    if (v30 == 1.79769313e308)
    {
LABEL_54:
      v9 = v273;
LABEL_55:
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v58 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v58, OS_LOG_TYPE_DEFAULT, "pressure too far from companion data", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1019099D4(buf);
        LOWORD(v290) = 0;
        v63 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v63);
        if (v63 != buf)
        {
          free(v63);
        }
      }

      goto LABEL_60;
    }

    v36 = v18[1];
    v37 = v17[1];
    v38 = v37 * 1000.0;
    v9 = v273;
    v39 = sub_1000A6C00(v38, 101320.0);
    v40 = v18[1];
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v41 = v39;
    v42 = v40 - v41;
    v43 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
    {
      v44 = *v18;
      v45 = *(v18 + 1);
      v46 = *v17;
      *buf = 134219008;
      *&buf[4] = v42;
      *&buf[12] = 2048;
      *&buf[14] = v44;
      *&buf[22] = 2048;
      *&buf[24] = v45;
      *&buf[32] = 2048;
      *&buf[34] = v46;
      *&buf[42] = 2048;
      *&buf[44] = v41;
      _os_log_impl(dword_100000000, v43, OS_LOG_TYPE_DEBUG, "individual bias calculated: %f, companion timestamp %f,  companion altitude %f, pressure timestamp %f, pressure altitude %f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v64 = *v18;
      v65 = *(v18 + 1);
      v66 = *v17;
      v290 = 134219008;
      *v291 = v42;
      *&v291[8] = 2048;
      *&v291[10] = v64;
      *&v291[18] = 2048;
      *&v291[20] = v65;
      *&v291[28] = 2048;
      *&v291[30] = v66;
      *&v291[38] = 2048;
      *&v291[40] = v41;
      v67 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v67);
      if (v67 != buf)
      {
        free(v67);
      }

      v9 = v273;
      dataBuffers = v12;
    }

    v47 = v18[2];
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v48 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      v49 = *v17;
      v50 = *v18;
      v51 = v18[1];
      v52 = v18[2];
      *buf = 136319490;
      *&buf[4] = "type";
      *&buf[12] = 1024;
      *&buf[14] = -1;
      *&buf[18] = 2080;
      *&buf[20] = "locTime";
      *&buf[28] = 2048;
      *&buf[30] = v50;
      *&buf[38] = 2080;
      *&buf[40] = "pressureTime";
      *&buf[48] = 2048;
      *&buf[50] = v49;
      *&buf[58] = 2080;
      *&buf[60] = "locationAlt";
      v311 = 2048;
      v312 = v51;
      v313 = 2080;
      *v314 = "pressureAlt";
      *&v314[8] = 2048;
      *&v314[10] = v41;
      *&v314[18] = 2080;
      *&v314[20] = "locVerticalUnc";
      v315 = 2048;
      v316 = v52;
      v317 = 2080;
      v318 = "locHorizontalUnc";
      v319 = 2048;
      v320 = 0;
      v321 = 2080;
      v322 = "demAlt";
      v323 = 2048;
      v324 = 0;
      v325 = 2080;
      v326 = "demVerticalUnc";
      v327 = 2048;
      v328 = 0;
      _os_log_impl(dword_100000000, v48, OS_LOG_TYPE_DEFAULT, "individual location data,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0xB2u);
    }

    ++v272;
    v271 = v271 + v41;
    v269 = v269 + v36;
    v270 = v270 + v42;
    v267 = v267 + v37 * 1000.0;
    v268 = v268 + v47;
    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v53 = *v17;
      v54 = *v18;
      v55 = v18[1];
      v56 = v18[2];
      v290 = 136319490;
      *v291 = "type";
      *&v291[8] = 1024;
      *&v291[10] = -1;
      *&v291[14] = 2080;
      *&v291[16] = "locTime";
      *&v291[24] = 2048;
      *&v291[26] = v54;
      *&v291[34] = 2080;
      *&v291[36] = "pressureTime";
      *&v291[44] = 2048;
      *&v291[46] = v53;
      *&v291[54] = 2080;
      *&v291[56] = "locationAlt";
      v292 = 2048;
      v293 = v55;
      v294 = 2080;
      *v295 = "pressureAlt";
      *&v295[8] = 2048;
      *&v295[10] = v41;
      *&v295[18] = 2080;
      *&v295[20] = "locVerticalUnc";
      v296 = 2048;
      v297 = v56;
      v298 = 2080;
      v299 = "locHorizontalUnc";
      v300 = 2048;
      v301 = 0;
      v302 = 2080;
      v303 = "demAlt";
      v304 = 2048;
      v305 = 0;
      v306 = 2080;
      v307 = "demVerticalUnc";
      v308 = 2048;
      v309 = 0;
      v57 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v57);
      if (v57 != buf)
      {
        free(v57);
      }

      v9 = v273;
      dataBuffers = v12;
    }

LABEL_60:
    if (v21)
    {
      sub_100008080(v21);
    }

    v16 = v274;
LABEL_63:
    v15 += 16;
    if (v15 - *v14 == 4096)
    {
      v59 = v14[1];
      ++v14;
      v15 = v59;
    }
  }

  while (v15 != v16);
  if (v272)
  {
    v145 = objc_opt_new();
    v146 = v272;
    v9->_biasTimestamp = a4;
    v147 = v267 / v272;
    v9->_bias = v270 / v272;
    v9->_biasPressure = v147;
    v9->_biasUncertaintyAtRebase = v268 / v272;
    v148 = v269 / v272;
    v149 = v148;
    *&v147 = v147;
    v150 = sub_1012C280C(v149, *&v147);
    v9->_estimatedAbsoluteAltitudeUncertainty = v9->_biasUncertaintyAtRebase;
    v9->_estimatedMeanSeaLevelPressure = v150;
    biasPressure = v9->_biasPressure;
    v152 = v148;
    [v145 setUncertainty:{v9->_biasUncertaintyAtRebase * sub_1012C28A0(v152, biasPressure)}];
    [v145 setMeanSeaLevelPressure:v9->_estimatedMeanSeaLevelPressure];
    [v145 setTimestamp:a4];
    v9->_companionRebase = 1;
    [(CLBarometerCalibrationBiasEstimator *)v9 updateHistoricalMslpArray:v145];
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v153 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      [v145 meanSeaLevelPressure];
      v155 = v154;
      [v145 uncertainty];
      v157 = v156;
      [v145 timestamp];
      *buf = 136317954;
      *&buf[4] = "type";
      *&buf[12] = 1024;
      *&buf[14] = -1;
      *&buf[18] = 2080;
      *&buf[20] = "meanSeaLevelPressure";
      *&buf[28] = 2048;
      *&buf[30] = v155;
      *&buf[38] = 2080;
      *&buf[40] = "uncertainty";
      *&buf[48] = 2048;
      *&buf[50] = v157;
      *&buf[58] = 2080;
      *&buf[60] = "timestamp";
      v311 = 2048;
      v312 = v158;
      v313 = 2080;
      *v314 = "startAt";
      *&v314[8] = 2048;
      *&v314[10] = a3;
      *&v314[18] = 2080;
      *&v314[20] = "endAt";
      v315 = 2048;
      v316 = a4;
      _os_log_impl(dword_100000000, v153, OS_LOG_TYPE_DEFAULT, "update mean sea level pressure array with location data after rebasing,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x76u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      [v145 meanSeaLevelPressure];
      v252 = v251;
      [v145 uncertainty];
      v254 = v253;
      [v145 timestamp];
      v290 = 136317954;
      *v291 = "type";
      *&v291[8] = 1024;
      *&v291[10] = -1;
      *&v291[14] = 2080;
      *&v291[16] = "meanSeaLevelPressure";
      *&v291[24] = 2048;
      *&v291[26] = v252;
      *&v291[34] = 2080;
      *&v291[36] = "uncertainty";
      *&v291[44] = 2048;
      *&v291[46] = v254;
      *&v291[54] = 2080;
      *&v291[56] = "timestamp";
      v292 = 2048;
      v293 = v255;
      v294 = 2080;
      *v295 = "startAt";
      *&v295[8] = 2048;
      *&v295[10] = a3;
      *&v295[18] = 2080;
      *&v295[20] = "endAt";
      v296 = 2048;
      v297 = a4;
      v256 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v256);
      if (v256 != buf)
      {
        free(v256);
      }

      v9 = v273;
    }

    v9->_pressureUncertainty = 0.0;
    v9->_distanceTraveled = 0.0;
    v9->_biasLocation = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
    sub_10085C118(v9->_fSignificantElevationEstimatorRebase.__ptr_);
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v159 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      bias = v9->_bias;
      biasUncertaintyAtRebase = v9->_biasUncertaintyAtRebase;
      biasUncertainty = v9->_biasUncertainty;
      weatherEstimateInMeter = v9->_weatherEstimateInMeter;
      inOutdoorWorkoutStatus = v9->_inOutdoorWorkoutStatus;
      *buf = 67111680;
      *&buf[4] = -1;
      *&buf[8] = 2048;
      *&buf[10] = bias;
      *&buf[18] = 2048;
      *&buf[20] = biasUncertaintyAtRebase;
      *&buf[28] = 2048;
      *&buf[30] = v271 / v146;
      *&buf[38] = 2048;
      *&buf[40] = v269 / v272;
      *&buf[48] = 2048;
      *&buf[50] = biasUncertainty;
      *&buf[58] = 2048;
      *&buf[60] = biasUncertaintyAtRebase;
      v311 = 2048;
      v312 = weatherEstimateInMeter;
      v313 = 1024;
      *v314 = inOutdoorWorkoutStatus;
      *&v314[4] = 2048;
      *&v314[6] = a3;
      *&v314[14] = 2048;
      *&v314[16] = a4;
      _os_log_impl(dword_100000000, v159, OS_LOG_TYPE_DEFAULT, "pressure height rebase to,type,%d,newBias,%f,newBiasUncertainty,%f,oldBaroAltitude,%f,oldRefAltitude,%f,oldBaroUncertainty,%f,oldRefUncertainty,%f,weatherEstimateInMeter,%f,inOutdoorWorkout,%d,calculatedFromTrackStartAt,%f,endAt,%f", buf, 0x68u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v257 = v9->_bias;
      v258 = v9->_biasUncertaintyAtRebase;
      v259 = v9->_biasUncertainty;
      v260 = v9->_weatherEstimateInMeter;
      v261 = v9->_inOutdoorWorkoutStatus;
      v290 = 67111680;
      *v291 = -1;
      *&v291[4] = 2048;
      *&v291[6] = v257;
      *&v291[14] = 2048;
      *&v291[16] = v258;
      *&v291[24] = 2048;
      *&v291[26] = v271 / v146;
      *&v291[34] = 2048;
      *&v291[36] = v269 / v272;
      *&v291[44] = 2048;
      *&v291[46] = v259;
      *&v291[54] = 2048;
      *&v291[56] = v258;
      v292 = 2048;
      v293 = v260;
      v294 = 1024;
      *v295 = v261;
      *&v295[4] = 2048;
      *&v295[6] = a3;
      *&v295[14] = 2048;
      *&v295[16] = a4;
      v262 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v262);
      if (v262 != buf)
      {
        free(v262);
      }

      v9 = v273;
    }

    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v165 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      v166 = v9->_bias;
      v167 = v9->_biasPressure;
      biasTimestamp = v9->_biasTimestamp;
      *buf = 134219008;
      *&buf[4] = v166;
      *&buf[12] = 2048;
      *&buf[14] = v271 / v146;
      *&buf[22] = 2048;
      *&buf[24] = v269 / v272;
      *&buf[32] = 2048;
      *&buf[34] = v167;
      *&buf[42] = 2048;
      *&buf[44] = biasTimestamp;
      _os_log_impl(dword_100000000, v165, OS_LOG_TYPE_DEFAULT, "new bias calculated from companion is %f, average baroAlt %f, average companion alt %f, average pressure %f, timestamp %f", buf, 0x34u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v263 = v9->_bias;
      v264 = v9->_biasPressure;
      v265 = v9->_biasTimestamp;
      v290 = 134219008;
      *v291 = v263;
      *&v291[8] = 2048;
      *&v291[10] = v271 / v146;
      *&v291[18] = 2048;
      *&v291[20] = v269 / v272;
      *&v291[28] = 2048;
      *&v291[30] = v264;
      *&v291[38] = 2048;
      *&v291[40] = v265;
      v266 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v266);
      if (v266 != buf)
      {
        free(v266);
      }

      v9 = v273;
    }

    [(CLBarometerCalibrationBiasEstimator *)v9 rebaseSignificantElevationWithEndTime:a4];
    [(CLBarometerCalibrationBiasEstimator *)v9 updateBiasUncertaintyWithAbsSigElevation:1 withCompanion:sub_10085BD8C(v9->_fSignificantElevationEstimatorRebase.__ptr_, v169, v170, v171)];
    v172 = [(CLBarometerCalibrationContextClient *)v9->_delegate latestAbsoluteAltitude];
    v173 = v172;
    if (v172)
    {
      [v172 timestamp];
      if (v174 != 1.79769313e308)
      {
        [v173 altitude];
        v176 = v175;
        v177 = v9->_biasUncertainty;
        v178 = v9->_biasUncertaintyAtRebase;
        v179 = v9->_inOutdoorWorkoutStatus;
        [v173 altitude];
        [(CLBarometerCalibrationBiasEstimator *)v9 sendRebaseAnalyticsWithAltitudeError:0 andUncertainty:v179 andRefUncertainty:0xFFFFFFFFLL andDemAvailable:v176 - v148 andWorkout:v177 andReferenceSource:v178 andCorrection:v180 - v148 andDistance:v9->_distanceSinceLastRebase];
      }
    }

    v9->_companionRebase = 0;
    goto LABEL_217;
  }

LABEL_81:
  v284 = 0;
  v285 = 0;
  v282[1] = 0;
  v283 = &v284;
  v281 = v282;
  v282[0] = 0;

  v9->_queriedMeanSeaLevelPressureData = [(CLMeanSeaLevelPressureEstimator *)v9->_meanSeaLevelPressureEstimator getEstimatedMeanSeaLevelPressure];
  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
  v70 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    [(CLMeanSeaLevelPressureData *)v9->_queriedMeanSeaLevelPressureData meanSeaLevelPressure];
    v72 = v71;
    [(CLMeanSeaLevelPressureData *)v9->_queriedMeanSeaLevelPressureData uncertainty];
    v74 = v73;
    [(CLMeanSeaLevelPressureData *)v9->_queriedMeanSeaLevelPressureData timestamp];
    *buf = 136316418;
    *&buf[4] = "meanSeaLevelPressure";
    *&buf[12] = 2048;
    *&buf[14] = v72;
    *&buf[22] = 2080;
    *&buf[24] = "uncertainty";
    *&buf[32] = 2048;
    *&buf[34] = v74;
    *&buf[42] = 2080;
    *&buf[44] = "timestamp";
    *&buf[52] = 2048;
    *&buf[54] = v75;
    _os_log_impl(dword_100000000, v70, OS_LOG_TYPE_DEFAULT, "query mean sea level pressure,%s,%f,%s,%f,%s,%f", buf, 0x3Eu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019099D4(buf);
    [(CLMeanSeaLevelPressureData *)v9->_queriedMeanSeaLevelPressureData meanSeaLevelPressure];
    v234 = v233;
    [(CLMeanSeaLevelPressureData *)v9->_queriedMeanSeaLevelPressureData uncertainty];
    v236 = v235;
    [(CLMeanSeaLevelPressureData *)v9->_queriedMeanSeaLevelPressureData timestamp];
    v290 = 136316418;
    *v291 = "meanSeaLevelPressure";
    *&v291[8] = 2048;
    *&v291[10] = v234;
    *&v291[18] = 2080;
    *&v291[20] = "uncertainty";
    *&v291[28] = 2048;
    *&v291[30] = v236;
    *&v291[38] = 2080;
    *&v291[40] = "timestamp";
    *&v291[48] = 2048;
    *&v291[50] = v237;
    v238 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v238);
    if (v238 != buf)
    {
      free(v238);
    }

    v9 = v273;
    dataBuffers = v12;
  }

  v76 = dataBuffers[1];
  if (dataBuffers[2] != v76)
  {
    v77 = dataBuffers[4];
    v78 = (v76 + 8 * (v77 >> 8));
    v79 = (*v78 + 16 * v77);
    v80 = *(v76 + (((dataBuffers[5] + v77) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(dataBuffers + 40) + v77);
    if (v79 != v80)
    {
      v275 = 0;
      while (1)
      {
        v81 = **v79;
        if (v81 >= a3 && v81 < a4)
        {
          break;
        }

LABEL_131:
        v79 += 2;
        if ((v79 - *v78) == 4096)
        {
          v102 = v78[1];
          ++v78;
          v79 = v102;
        }

        if (v79 == v80)
        {
          goto LABEL_156;
        }
      }

      v83 = v79[1];
      v279 = *v79;
      v280 = v83;
      if (v83)
      {
        atomic_fetch_add_explicit(&v83->__shared_owners_, 1uLL, memory_order_relaxed);
      }

      v277 = -1.0;
      v278 = 1.79769313e308;
      [CLBarometerCalibrationBiasEstimator getLocationSampleAltitudeAndUncertainty:&v279 andRefAltitude:&v278 andRefUncertainty:&v277];
      if (v277 <= 0.0 && v279[7] <= 0.0)
      {
        if (qword_1025D4410 != -1)
        {
          sub_101909358();
        }

        v95 = p_info[131];
        if (os_log_type_enabled(v95, OS_LOG_TYPE_INFO))
        {
          v96 = *v279;
          v97 = *(v279 + 6);
          *buf = 134218496;
          *&buf[4] = v96;
          *&buf[12] = 2048;
          *&buf[14] = v278;
          *&buf[22] = 2048;
          *&buf[24] = v97;
          _os_log_impl(dword_100000000, v95, OS_LOG_TYPE_INFO, "individual bias error: reference Uncertainty < 0 and no DEMS, location timestamp %f, location altitude %f, location DEMS %f", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1019099D4(buf);
          v98 = *v279;
          v99 = *(v279 + 6);
          v290 = 134218496;
          *v291 = v98;
          *&v291[8] = 2048;
          *&v291[10] = v278;
          *&v291[18] = 2048;
          *&v291[20] = v99;
          v100 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v100);
          if (v100 != buf)
          {
            free(v100);
          }

          v9 = v273;
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          dataBuffers = v12;
        }
      }

      else
      {
        v84 = dataBuffers[7];
        if (dataBuffers[8] == v84)
        {
          goto LABEL_124;
        }

        v85 = dataBuffers[10];
        v86 = (v84 + 8 * (v85 >> 8));
        v87 = *v86 + 16 * v85;
        v88 = *(v84 + (((dataBuffers[11] + v85) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(dataBuffers + 88) + v85);
        if (v87 == v88)
        {
          p_info = &OBJC_METACLASS___CLMotionHintLoggerAdapter.info;
LABEL_124:
          if (qword_1025D4410 != -1)
          {
            sub_101909358();
          }

          v101 = p_info[131];
          if (os_log_type_enabled(v101, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(dword_100000000, v101, OS_LOG_TYPE_DEFAULT, "pressure too far from reference data", buf, 2u);
          }

          if (sub_10000A100(121, 2))
          {
            sub_1019099D4(buf);
            LOWORD(v290) = 0;
            v125 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v125);
            if (v125 != buf)
            {
              free(v125);
            }
          }
        }

        else
        {
          v89 = 1.79769313e308;
          do
          {
            v90 = *v87;
            v91 = vabdd_f64(**v79, **v87);
            if (v91 < v89 && v91 <= 5.0)
            {
              v93 = *(v87 + 8);
              if (v93)
              {
                atomic_fetch_add_explicit(&v93->__shared_owners_, 1uLL, memory_order_relaxed);
              }

              if (v276)
              {
                sub_100008080(v276);
              }

              v276 = v93;
              v17 = v90;
              v89 = v91;
              dataBuffers = v12;
            }

            v87 += 16;
            if (v87 - *v86 == 4096)
            {
              v94 = v86[1];
              ++v86;
              v87 = v94;
            }
          }

          while (v87 != v88);
          p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
          if (v89 == 1.79769313e308)
          {
            v9 = v273;
            goto LABEL_124;
          }

          v103 = v287;
          if (v287 >= v288)
          {
            v105 = __src;
            v106 = v287 - __src;
            v107 = (v287 - __src) >> 4;
            v108 = v107 + 1;
            if ((v107 + 1) >> 60)
            {
              sub_10028C64C();
            }

            v109 = v288 - __src;
            if ((v288 - __src) >> 3 > v108)
            {
              v108 = v109 >> 3;
            }

            v110 = v109 >= 0x7FFFFFFFFFFFFFF0;
            v111 = 0xFFFFFFFFFFFFFFFLL;
            if (!v110)
            {
              v111 = v108;
            }

            if (v111)
            {
              sub_1003E5FE8(&__src, v111);
            }

            v112 = (16 * v107);
            v113 = &v112[-((v287 - __src) >> 4)];
            *v112 = *(v279 + 1);
            v104 = (v112 + 1);
            memcpy(v113, v105, v106);
            v114 = __src;
            __src = v113;
            v287 = v104;
            v288 = 0;
            if (v114)
            {
              operator delete(v114);
            }

            dataBuffers = v12;
          }

          else
          {
            *v287 = *(v279 + 1);
            v104 = v103 + 16;
          }

          v287 = v104;
          v115 = v17[1] * 1000.0;
          v116 = sub_1000A6C00(v115, 101320.0);
          v117 = v17[1];
          v9 = v273;
          [(CLMeanSeaLevelPressureData *)v273->_queriedMeanSeaLevelPressureData meanSeaLevelPressure];
          v118 = v117 * 1000.0;
          v120 = v119;
          v121 = sub_1000A6C00(v118, v120);
          v122 = v279;
          v123 = v279[7];
          v275 = v123 > 0.0;
          if (!v273->_inOutdoorWorkoutStatus || (*(v279 + 65) & 2) != 0)
          {
            v124 = v116;
            if ((*(v279 + 25) & 0x80000000) == 0)
            {
              [(CLBarometerCalibrationBiasEstimator *)v273 cumulateReference:&v283 andRefAltitude:v278 andRefVariance:v277 andBaroElevation:v124 andType:?];
              [(CLBarometerCalibrationBiasEstimator *)v273 cumulateReference:&v281 andRefAltitude:*(v279 + 25) andRefVariance:v278 andBaroElevation:v277 andType:v121];
              v122 = v279;
              v123 = v279[7];
            }

            if (v123 > 0.0)
            {
              [CLBarometerCalibrationBiasEstimator cumulateReference:v273 andRefAltitude:"cumulateReference:andRefAltitude:andRefVariance:andBaroElevation:andType:" andRefVariance:&v283 andBaroElevation:14 andType:v122[6]];
              [(CLBarometerCalibrationBiasEstimator *)v273 cumulateReference:&v281 andRefAltitude:14 andRefVariance:v279[6] andBaroElevation:v279[7] andType:v121];
            }
          }
        }
      }

      if (v280)
      {
        sub_100008080(v280);
      }

      goto LABEL_131;
    }
  }

  v275 = 0;
LABEL_156:
  if (v285)
  {
    [(CLBarometerCalibrationBiasEstimator *)v9 centroidOfLocationVector:&__src];
    v128 = v127;
    v129 = v126;
    if (v127 != 1.79769313e308)
    {
      latitude = v9->_biasLocation.latitude;
      if (latitude != 1.79769313e308)
      {
        v9->_distanceSinceLastRebase = fabs(sub_100117154(latitude, v9->_biasLocation.longitude, v128, v126));
      }
    }

    [(CLBarometerCalibrationBiasEstimator *)v9 updateBiasUncertaintyWithPressure:v289 andTime:0.0 andLat:v128 andLon:v129];
    [(CLBarometerCalibrationBiasEstimator *)v9 getAbsoluteAltitudeUncertainty];
    v132 = v131;
    v133 = v283;
    if (v283 == &v284)
    {
      v135 = 0;
    }

    else
    {
      v134 = log(v131 * (v131 * 17.0794684));
      v135 = 0;
      do
      {
        v136 = *(v133 + 18);
        v137 = v133[6] * v133[6] / v136 / v136;
        v133[5] = v133[5] / v136;
        v133[6] = v137;
        v138 = v133[7] / v136;
        v133[7] = v138;
        v139 = v138 + v9->_bias;
        v133[7] = v139;
        v133[7] = v139 - v9->_weatherEstimateInMeter;
        v133[8] = v132 * v132;
        v140 = *(v133 + 7);
        *buf = *(v133 + 5);
        *&buf[16] = v140;
        *&buf[32] = v133[9];
        [(CLBarometerCalibrationBiasEstimator *)v9 crossEntropyOfreference:buf];
        if (v134 >= v141)
        {
          v135 = *(v133 + 8);
          v134 = v141;
        }

        v142 = *(v133 + 1);
        if (v142)
        {
          do
          {
            v143 = v142;
            v142 = *v142;
          }

          while (v142);
        }

        else
        {
          do
          {
            v143 = *(v133 + 2);
            v144 = *v143 == v133;
            v133 = v143;
          }

          while (!v144);
        }

        v133 = v143;
      }

      while (v143 != &v284);
    }

    v181 = v284;
    if (!v284)
    {
      goto LABEL_199;
    }

    v182 = &v284;
    do
    {
      if (*(v181 + 8) >= v135)
      {
        v182 = v181;
      }

      v181 = *&v181[*(v181 + 8) < v135];
    }

    while (v181);
    if (v182 != &v284 && v135 >= *(v182 + 8))
    {
      v209 = v9->_bias;
      v210 = v182[7] + v9->_weatherEstimateInMeter - v209;
      v9->_biasPressure = sub_1012C27C8(v210, 101320.0);
      v211 = v9->_bias + v182[8] * (v182[5] - v182[7]) / (v182[8] + v182[6]);
      v9->_bias = v211 - v9->_weatherEstimateInMeter;
      v9->_biasUncertaintyAtRebase = sqrt(v182[8] * v182[6] / (v182[8] + v182[6]));
      v9->_pressureUncertainty = 0.0;
      v9->_distanceTraveled = 0.0;
      v9->_biasTimestamp = a4;
      sub_10085C118(v9->_fSignificantElevationEstimatorRebase.__ptr_);
      [(CLBarometerCalibrationBiasEstimator *)v9 rebaseSignificantElevationWithEndTime:a4];
      [(CLBarometerCalibrationBiasEstimator *)v9 updateBiasUncertaintyWithAbsSigElevation:0 withCompanion:sub_10085BD8C(v9->_fSignificantElevationEstimatorRebase.__ptr_, v212, v213, v214)];
      [(CLBarometerCalibrationBiasEstimator *)v9 sendRebaseAnalyticsWithAltitudeError:v275 andUncertainty:v9->_inOutdoorWorkoutStatus andRefUncertainty:v135 andDemAvailable:v182[5] - v182[7] andWorkout:sqrt(v182[8]) andReferenceSource:sqrt(v182[6]) andCorrection:v211 - v209 andDistance:v9->_distanceSinceLastRebase];
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v215 = p_info[131];
      if (os_log_type_enabled(v215, OS_LOG_TYPE_DEFAULT))
      {
        v216 = v9->_bias;
        v217 = v9->_biasUncertaintyAtRebase;
        v218 = *(v182 + 7);
        v219 = *(v182 + 5);
        v220 = sqrt(v182[8]);
        v221 = v182[6];
        v222 = v9->_weatherEstimateInMeter;
        v223 = v9->_inOutdoorWorkoutStatus;
        *buf = 67111680;
        *&buf[4] = v135;
        *&buf[8] = 2048;
        *&buf[10] = v216;
        *&buf[18] = 2048;
        *&buf[20] = v217;
        *&buf[28] = 2048;
        *&buf[30] = v218;
        *&buf[38] = 2048;
        *&buf[40] = v219;
        *&buf[48] = 2048;
        *&buf[50] = v220;
        *&buf[58] = 2048;
        *&buf[60] = sqrt(v221);
        v311 = 2048;
        v312 = v222;
        v313 = 1024;
        *v314 = v223;
        *&v314[4] = 2048;
        *&v314[6] = a3;
        *&v314[14] = 2048;
        *&v314[16] = a4;
        _os_log_impl(dword_100000000, v215, OS_LOG_TYPE_DEFAULT, "pressure height rebase to,type,%d,newBias,%f,newBiasUncertainty,%f,oldBaroAltitude,%f,oldRefAltitude,%f,oldBaroUncertainty,%f,oldRefUncertainty,%f,weatherEstimateInMeter,%f,inOutdoorWorkout,%d,calculatedFromTrackStartAt,%f,endAt,%f", buf, 0x68u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_204;
      }

      sub_1019099D4(buf);
      v224 = v9->_bias;
      v225 = v9->_biasUncertaintyAtRebase;
      v226 = *(v182 + 7);
      v227 = *(v182 + 5);
      v228 = sqrt(v182[8]);
      v229 = v182[6];
      v230 = v9->_weatherEstimateInMeter;
      v231 = v9->_inOutdoorWorkoutStatus;
      v290 = 67111680;
      *v291 = v135;
      *&v291[4] = 2048;
      *&v291[6] = v224;
      *&v291[14] = 2048;
      *&v291[16] = v225;
      *&v291[24] = 2048;
      *&v291[26] = v226;
      *&v291[34] = 2048;
      *&v291[36] = v227;
      *&v291[44] = 2048;
      *&v291[46] = v228;
      *&v291[54] = 2048;
      *&v291[56] = sqrt(v229);
      v292 = 2048;
      v293 = v230;
      v294 = 1024;
      *v295 = v231;
      *&v295[4] = 2048;
      *&v295[6] = a3;
      *&v295[14] = 2048;
      *&v295[16] = a4;
      v232 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v232);
    }

    else
    {
LABEL_199:
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v183 = p_info[131];
      if (os_log_type_enabled(v183, OS_LOG_TYPE_DEFAULT))
      {
        v184 = v9->_bias;
        v185 = v9->_weatherEstimateInMeter;
        v186 = v9->_inOutdoorWorkoutStatus;
        *buf = 67111680;
        *&buf[4] = v135;
        *&buf[8] = 2048;
        *&buf[10] = v184;
        *&buf[18] = 2048;
        *&buf[20] = v132;
        *&buf[28] = 2048;
        *&buf[30] = 0xBFF0000000000000;
        *&buf[38] = 2048;
        *&buf[40] = 0xBFF0000000000000;
        *&buf[48] = 2048;
        *&buf[50] = 0xBFF0000000000000;
        *&buf[58] = 2048;
        *&buf[60] = 0xBFF0000000000000;
        v311 = 2048;
        v312 = v185;
        v313 = 1024;
        *v314 = v186;
        *&v314[4] = 2048;
        *&v314[6] = a3;
        *&v314[14] = 2048;
        *&v314[16] = a4;
        _os_log_impl(dword_100000000, v183, OS_LOG_TYPE_DEFAULT, "pressure height rebase to,type,%d,newBias,%f,newBiasUncertainty,%f,oldBaroAltitude,%f,oldRefAltitude,%f,oldBaroUncertainty,%f,oldRefUncertainty,%f,weatherEstimateInMeter,%f,inOutdoorWorkout,%d,calculatedFromTrackStartAt,%f,endAt,%f", buf, 0x68u);
      }

      if (!sub_10000A100(121, 2))
      {
        goto LABEL_204;
      }

      sub_1019099D4(buf);
      v248 = v9->_bias;
      v249 = v9->_weatherEstimateInMeter;
      v250 = v9->_inOutdoorWorkoutStatus;
      v290 = 67111680;
      *v291 = v135;
      *&v291[4] = 2048;
      *&v291[6] = v248;
      *&v291[14] = 2048;
      *&v291[16] = v132;
      *&v291[24] = 2048;
      *&v291[26] = 0xBFF0000000000000;
      *&v291[34] = 2048;
      *&v291[36] = 0xBFF0000000000000;
      *&v291[44] = 2048;
      *&v291[46] = 0xBFF0000000000000;
      *&v291[54] = 2048;
      *&v291[56] = 0xBFF0000000000000;
      v292 = 2048;
      v293 = v249;
      v294 = 1024;
      *v295 = v250;
      *&v295[4] = 2048;
      *&v295[6] = a3;
      *&v295[14] = 2048;
      *&v295[16] = a4;
      v232 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v232);
    }

    if (v232 != buf)
    {
      free(v232);
    }

    v9 = v273;
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

LABEL_204:
  v187 = v289;
  [(CLMeanSeaLevelPressureData *)v9->_queriedMeanSeaLevelPressureData meanSeaLevelPressure];
  v188 = v187;
  v190 = v189;
  v191 = sub_1000A6C00(v188, v190);
  [(CLMeanSeaLevelPressureData *)v9->_queriedMeanSeaLevelPressureData meanSeaLevelPressure];
  v9->_estimatedMeanSeaLevelPressure = v192;
  v193 = v289;
  v194 = v192;
  sub_1012C2850(v193, v194);
  v196 = v195;
  [(CLMeanSeaLevelPressureData *)v9->_queriedMeanSeaLevelPressureData uncertainty];
  v9->_estimatedAbsoluteAltitudeUncertainty = v197 * v196;
  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v198 = p_info[131];
  if (os_log_type_enabled(v198, OS_LOG_TYPE_DEFAULT))
  {
    [(CLMeanSeaLevelPressureData *)v9->_queriedMeanSeaLevelPressureData uncertainty];
    estimatedAbsoluteAltitudeUncertainty = v9->_estimatedAbsoluteAltitudeUncertainty;
    *buf = 136315906;
    *&buf[4] = "estimatedMslpUncertainty";
    *&buf[12] = 2048;
    *&buf[14] = v200;
    *&buf[22] = 2080;
    *&buf[24] = "estimatedAbsoluteAltitudeUncertainty";
    *&buf[32] = 2048;
    *&buf[34] = estimatedAbsoluteAltitudeUncertainty;
    _os_log_impl(dword_100000000, v198, OS_LOG_TYPE_DEFAULT, "mslp uncertainty to altitude uncertainty,%s,%f,%s,%f", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019099D4(buf);
    [(CLMeanSeaLevelPressureData *)v9->_queriedMeanSeaLevelPressureData uncertainty];
    v239 = v273->_estimatedAbsoluteAltitudeUncertainty;
    v290 = 136315906;
    *v291 = "estimatedMslpUncertainty";
    *&v291[8] = 2048;
    *&v291[10] = v240;
    *&v291[18] = 2080;
    *&v291[20] = "estimatedAbsoluteAltitudeUncertainty";
    *&v291[28] = 2048;
    *&v291[30] = v239;
    v241 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v241);
    if (v241 != buf)
    {
      free(v241);
    }

    v9 = v273;
    p_info = (&OBJC_METACLASS___CLMotionHintLoggerAdapter + 32);
  }

  v201 = [(CLBarometerCalibrationBiasEstimator *)v9 selectReferenceWithReference:&v281 withBaroElevation:v191 betweenStartTime:a3 andEndTime:a4];
  v202 = objc_opt_new();
  [v202 setTimestamp:a4];
  [(CLBarometerCalibrationBiasEstimator *)v9 computeMeanSeaLevelPressureWithRebasingLocationData:v202 referenceMap:&v281 andLocationType:v201];
  if (v201)
  {
    [(CLBarometerCalibrationBiasEstimator *)v9 updateHistoricalMslpArray:v202];
  }

  if (qword_1025D4410 != -1)
  {
    sub_101909358();
  }

  v203 = p_info[131];
  if (os_log_type_enabled(v203, OS_LOG_TYPE_DEFAULT))
  {
    [v202 meanSeaLevelPressure];
    v205 = v204;
    [v202 uncertainty];
    v207 = v206;
    [v202 timestamp];
    *buf = 136317954;
    *&buf[4] = "type";
    *&buf[12] = 1024;
    *&buf[14] = v201;
    *&buf[18] = 2080;
    *&buf[20] = "meanSeaLevelPressure";
    *&buf[28] = 2048;
    *&buf[30] = v205;
    *&buf[38] = 2080;
    *&buf[40] = "uncertainty";
    *&buf[48] = 2048;
    *&buf[50] = v207;
    *&buf[58] = 2080;
    *&buf[60] = "timestamp";
    v311 = 2048;
    v312 = v208;
    v313 = 2080;
    *v314 = "startAt";
    *&v314[8] = 2048;
    *&v314[10] = a3;
    *&v314[18] = 2080;
    *&v314[20] = "endAt";
    v315 = 2048;
    v316 = a4;
    _os_log_impl(dword_100000000, v203, OS_LOG_TYPE_DEFAULT, "update mean sea level pressure array with location data after rebasing,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x76u);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1019099D4(buf);
    [v202 meanSeaLevelPressure];
    v243 = v242;
    [v202 uncertainty];
    v245 = v244;
    [v202 timestamp];
    v290 = 136317954;
    *v291 = "type";
    *&v291[8] = 1024;
    *&v291[10] = v201;
    *&v291[14] = 2080;
    *&v291[16] = "meanSeaLevelPressure";
    *&v291[24] = 2048;
    *&v291[26] = v243;
    *&v291[34] = 2080;
    *&v291[36] = "uncertainty";
    *&v291[44] = 2048;
    *&v291[46] = v245;
    *&v291[54] = 2080;
    *&v291[56] = "timestamp";
    v292 = 2048;
    v293 = v246;
    v294 = 2080;
    *v295 = "startAt";
    *&v295[8] = 2048;
    *&v295[10] = a3;
    *&v295[18] = 2080;
    *&v295[20] = "endAt";
    v296 = 2048;
    v297 = a4;
    v247 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateElevationBiasBetweenStartTime:andEndTime:andNextTrackStartTime:]", "%s\n", v247);
    if (v247 != buf)
    {
      free(v247);
    }
  }

  sub_1003C93BC(&v281, v282[0]);
  sub_1003C93BC(&v283, v284);
LABEL_217:
  if (v276)
  {
    sub_100008080(v276);
  }

  if (__src)
  {
    v287 = __src;
    operator delete(__src);
  }
}

- (void)updateHistoricalMslpArray:(id)a3
{
  v5 = self->_inOutdoorWorkoutStatus || self->_companionRebase || self->_loiRebase || self->_forceCalibrate;
  if (self->_forceCalibrate)
  {
    [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator cleanHistoricalMslpArrayForForceRebase:a3];
  }

  if (v5 || ![(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator inVisitStatus])
  {
    if ([(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator updateHistoricalMslpArray:a3 from:0])
    {
      if (qword_1025D4410 != -1)
      {
        sub_101909478();
      }

      v7 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        [a3 timestamp];
        v9 = v8;
        [a3 meanSeaLevelPressure];
        v11 = v10;
        [a3 uncertainty];
        v13 = v12;
        [a3 pressureMeasurement];
        v15 = 134218752;
        v16 = v9;
        v17 = 2048;
        v18 = v11;
        v19 = 2048;
        v20 = v13;
        v21 = 2048;
        v22 = v14;
        _os_log_impl(dword_100000000, v7, OS_LOG_TYPE_DEFAULT, "mslp from ap,timestamp,%f,mslp,%f,uncertainty,%f,pressureMeasurement,%f", &v15, 0x2Au);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101909C20(a3);
      }

      [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator setNumberOfRebaseBtwRefresh:[(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator numberOfRebaseBtwRefresh]+ 1];
      self->_lastRebaseTimestamp = CFAbsoluteTimeGetCurrent();
    }
  }

  else
  {
    meanSeaLevelPressureEstimator = self->_meanSeaLevelPressureEstimator;

    [(CLMeanSeaLevelPressureEstimator *)meanSeaLevelPressureEstimator updateInVisitRebasedMslp:a3];
  }
}

- (void)computeMeanSeaLevelPressureWithRebasingLocationData:(id)a3 referenceMap:(void *)a4 andLocationType:(int)a5
{
  if (!a5)
  {
    [a3 setMeanSeaLevelPressure:{a3, a4, 1.0}];
    v11 = -1.0;
LABEL_12:

    [a3 setUncertainty:v11];
    return;
  }

  v8 = *(a4 + 1);
  v6 = a4 + 8;
  v7 = v8;
  if (v8)
  {
    v10 = v6;
    do
    {
      if (*(v7 + 8) >= a5)
      {
        v10 = v7;
      }

      v7 = *&v7[*(v7 + 8) < a5];
    }

    while (v7);
    if (v10 != v6 && *(v10 + 8) <= a5)
    {
      v12 = v10[7];
      v13 = v10[8];
      v14 = v10[5];
      v15 = v10[6];
      v16 = (v12 * v15 + v13 * v14) / (v13 + v15);
      v17 = v12;
      [(CLMeanSeaLevelPressureData *)self->_queriedMeanSeaLevelPressureData meanSeaLevelPressure];
      v19 = v18;
      v20 = sub_1012C27C8(v17, v19);
      self->_estimatedAbsoluteAltitudeUncertainty = sqrt(v13 * v15 / (v13 + v15));
      v21 = v16;
      self->_estimatedMeanSeaLevelPressure = sub_1012C280C(v21, v20);
      *&v13 = v14;
      [a3 setMeanSeaLevelPressure:{sub_1012C280C(*&v13, v20)}];
      v22 = v14;
      v11 = sqrt(v15) * sub_1012C28A0(v22, v20);
      goto LABEL_12;
    }
  }
}

- (int)selectReferenceWithReference:(void *)a3 withBaroElevation:(double)a4 betweenStartTime:(double)a5 andEndTime:(double)a6
{
  v52 = 0;
  self->_loiRebase = 0;
  if (*(a3 + 2))
  {
    v10 = log(self->_estimatedAbsoluteAltitudeUncertainty * (self->_estimatedAbsoluteAltitudeUncertainty * 17.0794684));
    if (qword_1025D4410 != -1)
    {
      sub_101909478();
    }

    v11 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      estimatedAbsoluteAltitudeUncertainty = self->_estimatedAbsoluteAltitudeUncertainty;
      *buf = 136318978;
      *&buf[4] = "type";
      *&buf[12] = 1024;
      *&buf[14] = 0;
      *&buf[18] = 2080;
      *&buf[20] = "crossEntropy";
      *&buf[28] = 2048;
      *&buf[30] = v10;
      *&buf[38] = 2080;
      v86 = "fromBaroAlt";
      v87 = 2048;
      v88 = -1.0;
      v89 = 2080;
      v90 = "fromRefAlt";
      v91 = 2048;
      v92 = 0xBFF0000000000000;
      v93 = 2080;
      v94 = "baroUncertainty";
      v95 = 2048;
      v96 = estimatedAbsoluteAltitudeUncertainty;
      v97 = 2080;
      v98 = "refUncertainty";
      v99 = 2048;
      v100 = -1.0;
      v101 = 2080;
      v102 = "trackStartTime";
      v103 = 2048;
      v104 = a5;
      v105 = 2080;
      v106 = "trackEndTime";
      v107 = 2048;
      v108 = a6;
      _os_log_impl(dword_100000000, v11, OS_LOG_TYPE_DEFAULT, "altimeter2 cross entropy of,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x9Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v46 = self->_estimatedAbsoluteAltitudeUncertainty;
      v53 = 136318978;
      v54 = "type";
      v55 = 1024;
      v56 = 0;
      v57 = 2080;
      v58 = "crossEntropy";
      v59 = 2048;
      v60 = v10;
      v61 = 2080;
      v62 = "fromBaroAlt";
      v63 = 2048;
      v64 = -1.0;
      v65 = 2080;
      v66 = "fromRefAlt";
      v67 = 2048;
      v68 = 0xBFF0000000000000;
      v69 = 2080;
      v70 = "baroUncertainty";
      v71 = 2048;
      v72 = v46;
      v73 = 2080;
      v74 = "refUncertainty";
      v75 = 2048;
      v76 = -1.0;
      v77 = 2080;
      v78 = "trackStartTime";
      v79 = 2048;
      v80 = a5;
      v81 = 2080;
      v82 = "trackEndTime";
      v83 = 2048;
      v84 = a6;
      v47 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator selectReferenceWithReference:withBaroElevation:betweenStartTime:andEndTime:]", "%s\n", v47);
      if (v47 != buf)
      {
        free(v47);
      }
    }

    v13 = *a3;
    if (*a3 != a3 + 8)
    {
      do
      {
        v14 = *(v13 + 18);
        v15 = *(v13 + 6) * *(v13 + 6) / v14 / v14;
        *(v13 + 5) = *(v13 + 5) / v14;
        *(v13 + 6) = v15;
        *(v13 + 7) = *(v13 + 7) / v14;
        *(v13 + 8) = self->_estimatedAbsoluteAltitudeUncertainty * self->_estimatedAbsoluteAltitudeUncertainty;
        v16 = *(v13 + 7);
        *buf = *(v13 + 5);
        *&buf[16] = v16;
        *&buf[32] = v13[9];
        [(CLBarometerCalibrationBiasEstimator *)self crossEntropyOfreference:buf];
        v18 = v17;
        if (v10 >= v17)
        {
          v52 = *(v13 + 8);
          v10 = v17;
        }

        if (qword_1025D4410 != -1)
        {
          sub_101909358();
        }

        v19 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          v20 = *(v13 + 8);
          v21 = *(v13 + 7);
          v22 = v13[5];
          v23 = sqrt(*(v13 + 8));
          v24 = *(v13 + 6);
          *buf = 136318978;
          *&buf[4] = "type";
          *&buf[12] = 1024;
          *&buf[14] = v20;
          *&buf[18] = 2080;
          *&buf[20] = "crossEntropy";
          *&buf[28] = 2048;
          *&buf[30] = v18;
          *&buf[38] = 2080;
          v86 = "fromBaroAlt";
          v87 = 2048;
          v88 = v21;
          v89 = 2080;
          v90 = "fromRefAlt";
          v91 = 2048;
          v92 = v22;
          v93 = 2080;
          v94 = "baroUncertainty";
          v95 = 2048;
          v96 = v23;
          v97 = 2080;
          v98 = "refUncertainty";
          v99 = 2048;
          v100 = sqrt(v24);
          v101 = 2080;
          v102 = "trackStartTime";
          v103 = 2048;
          v104 = a5;
          v105 = 2080;
          v106 = "trackEndTime";
          v107 = 2048;
          v108 = a6;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "altimeter2 cross entropy of,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x9Eu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101909358();
          }

          v28 = *(v13 + 8);
          v29 = *(v13 + 7);
          v30 = v13[5];
          v31 = sqrt(*(v13 + 8));
          v32 = *(v13 + 6);
          v53 = 136318978;
          v54 = "type";
          v55 = 1024;
          v56 = v28;
          v57 = 2080;
          v58 = "crossEntropy";
          v59 = 2048;
          v60 = v18;
          v61 = 2080;
          v62 = "fromBaroAlt";
          v63 = 2048;
          v64 = v29;
          v65 = 2080;
          v66 = "fromRefAlt";
          v67 = 2048;
          v68 = v30;
          v69 = 2080;
          v70 = "baroUncertainty";
          v71 = 2048;
          v72 = v31;
          v73 = 2080;
          v74 = "refUncertainty";
          v75 = 2048;
          v76 = sqrt(v32);
          v77 = 2080;
          v78 = "trackStartTime";
          v79 = 2048;
          v80 = a5;
          v81 = 2080;
          v82 = "trackEndTime";
          v83 = 2048;
          v84 = a6;
          v33 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator selectReferenceWithReference:withBaroElevation:betweenStartTime:andEndTime:]", "%s\n", v33);
          if (v33 != buf)
          {
            free(v33);
          }
        }

        v25 = v13[1];
        if (v25)
        {
          do
          {
            v26 = v25;
            v25 = *v25;
          }

          while (v25);
        }

        else
        {
          do
          {
            v26 = v13[2];
            v27 = *v26 == v13;
            v13 = v26;
          }

          while (!v27);
        }

        v13 = v26;
      }

      while (v26 != (a3 + 8));
    }
  }

  if ([(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator inVisitStatus])
  {
    begin = self->_loiVisitAltitudes.__begin_;
    end = self->_loiVisitAltitudes.__end_;
    if (end != begin)
    {
      v36 = log(self->_estimatedAbsoluteAltitudeUncertainty * (self->_estimatedAbsoluteAltitudeUncertainty * 17.0794684));
      v37 = (a3 + 8);
      do
      {
        v49 = *begin;
        *&v50 = a4;
        *(&v50 + 1) = self->_estimatedAbsoluteAltitudeUncertainty * self->_estimatedAbsoluteAltitudeUncertainty;
        LODWORD(v51) = 1;
        *buf = *begin;
        *&buf[16] = v50;
        *&buf[32] = v51;
        [(CLBarometerCalibrationBiasEstimator *)self crossEntropyOfreference:buf];
        v39 = v38;
        if (qword_1025D4410 != -1)
        {
          sub_101909358();
        }

        v40 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136318978;
          *&buf[4] = "type";
          *&buf[12] = 1024;
          *&buf[14] = 13;
          *&buf[18] = 2080;
          *&buf[20] = "crossEntropy";
          *&buf[28] = 2048;
          *&buf[30] = v39;
          *&buf[38] = 2080;
          v86 = "fromBaroAlt";
          v87 = 2048;
          v88 = a4;
          v89 = 2080;
          v90 = "fromRefAlt";
          v91 = 2048;
          v92 = *&v49.var0;
          v93 = 2080;
          v94 = "baroUncertainty";
          v95 = 2048;
          v96 = sqrt(*(&v50 + 1));
          v97 = 2080;
          v98 = "refUncertainty";
          v99 = 2048;
          v100 = sqrt(v49.var1);
          v101 = 2080;
          v102 = "trackStartTime";
          v103 = 2048;
          v104 = a5;
          v105 = 2080;
          v106 = "trackEndTime";
          v107 = 2048;
          v108 = a6;
          _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_DEFAULT, "altimeter2 cross entropy of,%s,%d,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f,%s,%f", buf, 0x9Eu);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101909358();
          }

          v53 = 136318978;
          v54 = "type";
          v55 = 1024;
          v56 = 13;
          v57 = 2080;
          v58 = "crossEntropy";
          v59 = 2048;
          v60 = v39;
          v61 = 2080;
          v62 = "fromBaroAlt";
          v63 = 2048;
          v64 = a4;
          v65 = 2080;
          v66 = "fromRefAlt";
          v67 = 2048;
          v68 = *&v49.var0;
          v69 = 2080;
          v70 = "baroUncertainty";
          v71 = 2048;
          v72 = sqrt(*(&v50 + 1));
          v73 = 2080;
          v74 = "refUncertainty";
          v75 = 2048;
          v76 = sqrt(v49.var1);
          v77 = 2080;
          v78 = "trackStartTime";
          v79 = 2048;
          v80 = a5;
          v81 = 2080;
          v82 = "trackEndTime";
          v83 = 2048;
          v84 = a6;
          v44 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator selectReferenceWithReference:withBaroElevation:betweenStartTime:andEndTime:]", "%s\n", v44);
          if (v44 != buf)
          {
            free(v44);
          }
        }

        if (v36 >= v39)
        {
          v52 = 13;
          v41 = *v37;
          if (!*v37)
          {
            goto LABEL_42;
          }

          v42 = (a3 + 8);
          do
          {
            if (v41[8] >= 13)
            {
              v42 = v41;
            }

            v41 = *&v41[2 * (v41[8] < 13)];
          }

          while (v41);
          if (v42 != v37 && v42[8] < 14)
          {
            v43 = sub_1003DD9F8(a3, &v52);
            *v43 = v49;
            *(v43 + 1) = v50;
            *(v43 + 8) = 1;
          }

          else
          {
LABEL_42:
            sub_1006BAC64(a3, &v52);
          }

          self->_loiRebase = 1;
          v36 = v39;
        }

        ++begin;
      }

      while (begin != end);
    }
  }

  return v52;
}

- (void)updateBiasUncertaintyWithAbsSigElevation:(double)a3 withCompanion:(BOOL)a4
{
  v4 = a4;
  dataBuffers = self->_dataBuffers;
  v8 = dataBuffers[11] + dataBuffers[10] - 1;
  v9 = (*(dataBuffers[7] + ((v8 >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v8);
  v10 = *v9;
  v11 = v9[1];
  if (v11)
  {
    atomic_fetch_add_explicit(&v11->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  v12 = *(v10 + 8) * 1000.0;
  v13 = sub_1000A6C00(v12, 101320.0);
  if (a3 != 1.79769313e308)
  {
    bias = self->_bias;
    if (qword_1025D4410 != -1)
    {
      sub_101909478();
    }

    v15 = bias + v13;
    v16 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      biasUncertaintyAtRebase = self->_biasUncertaintyAtRebase;
      *buf = 136316418;
      v21 = "takeMaxForPhone";
      v22 = 1024;
      v23 = v4;
      v24 = 2080;
      v25 = "bayesianInferenceResult";
      v26 = 2048;
      v27 = biasUncertaintyAtRebase;
      v28 = 2080;
      v29 = "diffOfAbsSigElevationAndAbsAltitude";
      v30 = 2048;
      v31 = vabdd_f64(a3, v15);
      _os_log_impl(dword_100000000, v16, OS_LOG_TYPE_DEFAULT, "re-initialize bias uncertainty with,%s,%d,%s,%f,%s,%f", buf, 0x3Au);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1019099D4(buf);
      v19 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateBiasUncertaintyWithAbsSigElevation:withCompanion:]", "%s\n", v19);
      if (v19 != buf)
      {
        free(v19);
      }
    }

    v18 = vabdd_f64(a3, v15);
    if (v4)
    {
      if (self->_biasUncertaintyAtRebase >= v18)
      {
        v18 = self->_biasUncertaintyAtRebase;
      }
    }

    else
    {
      v18 = v18 + self->_biasUncertaintyAtRebase;
    }

    self->_biasUncertaintyAtRebase = v18;
  }

  if (v11)
  {
    sub_100008080(v11);
  }
}

- (void)rebaseSignificantElevationWithEndTime:(double)a3
{
  if (([(CLBarometerCalibrationContextClient *)self->_delegate isInVisit]& 1) == 0)
  {
    v10 = 0.0;
    if ([(CLBarometerCalibrationBiasEstimator *)self getLastPressureSample:&v10])
    {
      v5 = v10;
      v6 = sub_1000A6C00(v5, 101320.0);
      sub_10085BDCC(self->_fSignificantElevationEstimatorRebase.__ptr_, self->_bias + v6, self->_bias, v7, v8);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v9 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v12 = "endTrackTime";
        v13 = 2048;
        v14 = a3;
        _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "significant elevation rebase: %s,%f", buf, 0x16u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101909D8C();
      }
    }
  }
}

- (BOOL)getLastPressureSample:(double *)a3
{
  dataBuffers = self->_dataBuffers;
  v4 = dataBuffers[11];
  if (v4)
  {
    v5 = (*(dataBuffers[7] + (((v4 + dataBuffers[10] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v4 + *(dataBuffers + 80) - 1));
    v7 = *v5;
    v6 = v5[1];
    if (v6)
    {
      atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
      *a3 = *(v7 + 8) * 1000.0;
      sub_100008080(v6);
    }

    else
    {
      *a3 = *(v7 + 8) * 1000.0;
    }
  }

  return v4 != 0;
}

- (void)updateLoiInfo:(const void *)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  if ([(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator inVisitStatus])
  {
    v6 = *a3;
    v7 = *(a3 + 1);
    if (v7 == *a3)
    {
      if (qword_1025D4410 != -1)
      {
        sub_101909478();
      }

      v17 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v19 = Current;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_DEFAULT, "receive visit in bias estimator with no loi,timestamp,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101909E94(Current);
      }
    }

    else
    {
      p_loiVisitAltitudes = &self->_loiVisitAltitudes;
      if (self->_enableLoiRebase && p_loiVisitAltitudes != a3)
      {
        sub_1006BA434(p_loiVisitAltitudes, v6, v7, &v7[-*a3] >> 4);
        v6 = *a3;
        v7 = *(a3 + 1);
      }

      if (v7 != v6)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if (qword_1025D4410 != -1)
          {
            sub_101909358();
          }

          v12 = qword_1025D4418;
          if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
          {
            v13 = (*a3 + v10);
            v15 = *v13;
            v14 = v13[1];
            *buf = 134218496;
            v19 = Current;
            v20 = 2048;
            v21 = v15;
            v22 = 2048;
            v23 = v14;
            _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "receive visit loi in bias estimator,timestamp,%f,loiAltitude,%f,loiVerticalVariance,%f", buf, 0x20u);
          }

          if (sub_10000A100(121, 2))
          {
            bzero(buf, 0x65CuLL);
            if (qword_1025D4410 != -1)
            {
              sub_101909358();
            }

            v16 = _os_log_send_and_compose_impl();
            sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateLoiInfo:]", "%s\n", v16);
            if (v16 != buf)
            {
              free(v16);
            }
          }

          ++v11;
          v10 += 16;
        }

        while (v11 < (*(a3 + 1) - *a3) >> 4);
      }
    }
  }
}

- (void)sendVisitExitWifiImprovementAnalyticsEventWithDuration:(double)a3 uncertaintyAtVisitEntry:(double)a4 uncertaintyAtVisitExit:(double)a5 timeDiffBtwArrivalAndLastRebase:(double)a6
{
  if (qword_1025D4410 != -1)
  {
    sub_101909478();
  }

  v10 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    v13 = a3;
    v14 = 2048;
    v15 = a4;
    v16 = 2048;
    v17 = a5;
    v18 = 2048;
    v19 = a6;
    _os_log_impl(dword_100000000, v10, OS_LOG_TYPE_DEFAULT, "sent visit exit information to CoreAnalytics,visitDuration,%f,arrivalUncertainty,%f,exitUncertainty,%f,timeDiffBtwArrivalAndLastRebase,%f", buf, 0x2Au);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v11 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator sendVisitExitWifiImprovementAnalyticsEventWithDuration:uncertaintyAtVisitEntry:uncertaintyAtVisitExit:timeDiffBtwArrivalAndLastRebase:]", "%s\n", v11);
    if (v11 != buf)
    {
      free(v11);
    }
  }

  AnalyticsSendEventLazy();
}

- (void)updateVisitState:(BOOL)a3 arrivalTime:(double)a4 departureTime:(double)a5
{
  v7 = a3;
  Current = CFAbsoluteTimeGetCurrent();
  p_meanSeaLevelPressureEstimator = &self->_meanSeaLevelPressureEstimator;
  if ([(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator inVisitStatus]!= v7)
  {
    v11 = *p_meanSeaLevelPressureEstimator;
    if (v7)
    {
      [v11 setCumulativeStartTime:1.79769313e308];
    }

    else
    {
      [v11 setFirstRefreshAfterVisit:1];
      [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator resetInVisitRebasedMslp];
      [(CLMeanSeaLevelPressureEstimator *)self->_meanSeaLevelPressureEstimator setExitVisitTimestamp:a5];
      self->_loiVisitAltitudes.__end_ = self->_loiVisitAltitudes.__begin_;
      if (qword_1025D4410 != -1)
      {
        sub_101909478();
      }

      v12 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        [*p_meanSeaLevelPressureEstimator exitVisitTimestamp];
        *buf = 134217984;
        *v34 = v13;
        _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_DEFAULT, "received exit visit,timestamp,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_101909F98(&self->_meanSeaLevelPressureEstimator);
      }
    }

    [*p_meanSeaLevelPressureEstimator setInVisitStatus:v7];
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v14 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109888;
      *v34 = v7;
      *&v34[4] = 2048;
      *&v34[6] = Current;
      *&v34[14] = 2048;
      *&v34[16] = a4;
      *&v34[24] = 2048;
      *&v34[26] = a5;
      _os_log_impl(dword_100000000, v14, OS_LOG_TYPE_DEFAULT, "visit state changed,visitState,%d,timestamp,%f,arrival,%f,departure,%f", buf, 0x26u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v32 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateVisitState:arrivalTime:departureTime:]", "%s\n", v32);
      if (v32 != buf)
      {
        free(v32);
      }
    }

    [*p_meanSeaLevelPressureEstimator saveInVisitStateToPlist];
  }

  v15 = [(CLBarometerCalibrationContextClient *)self->_delegate latestAbsoluteAltitude];
  v16 = v15;
  if (v7)
  {
    self->_lastVisitEntryTime = Current;
    if (v15)
    {
      [v15 timestamp];
      if (v17 != 1.79769313e308 && self->_lastRebaseTimestamp != 1.79769313e308)
      {
        [v16 accuracy];
        self->_uncertaintyAtVisitEntry = v18;
        self->_timeDiffBtwVisitEntryAndLastRebase = Current - self->_lastRebaseTimestamp;
        self->_visitArrivalTimestamp = Current;
        if (qword_1025D4410 != -1)
        {
          sub_101909358();
        }

        v19 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          uncertaintyAtVisitEntry = self->_uncertaintyAtVisitEntry;
          timeDiffBtwVisitEntryAndLastRebase = self->_timeDiffBtwVisitEntryAndLastRebase;
          visitArrivalTimestamp = self->_visitArrivalTimestamp;
          *buf = 134218496;
          *v34 = uncertaintyAtVisitEntry;
          *&v34[8] = 2048;
          *&v34[10] = visitArrivalTimestamp;
          *&v34[18] = 2048;
          *&v34[20] = timeDiffBtwVisitEntryAndLastRebase;
          _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "record coreAnalytics event data,uncertaintyAtVisitEntry,%f,visitArrivalTimestamp,%f,timeDiffBtwVisitEntryAndLastRebase,%f", buf, 0x20u);
        }

        if (sub_10000A100(121, 2))
        {
          bzero(buf, 0x65CuLL);
          if (qword_1025D4410 != -1)
          {
            sub_101909358();
          }

          v23 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator updateVisitState:arrivalTime:departureTime:]", "%s\n", v23);
          if (v23 != buf)
          {
            free(v23);
          }
        }
      }
    }
  }

  else
  {
    if (!v15 || ([v15 timestamp], v24 == 1.79769313e308) || (v25 = self->_visitArrivalTimestamp, v25 == 1.79769313e308))
    {
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v28 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        v29 = self->_visitArrivalTimestamp;
        *buf = 134217984;
        *v34 = v29;
        _os_log_impl(dword_100000000, v28, OS_LOG_TYPE_DEFAULT, "fail to send visit exit event to CA,visitArrivalTimestamp,%f", buf, 0xCu);
      }

      if (sub_10000A100(121, 2))
      {
        sub_10190A18C(self);
      }
    }

    else
    {
      v26 = Current - v25;
      if (Current - v25 >= 0.0)
      {
        v30 = self->_uncertaintyAtVisitEntry;
        [v16 accuracy];
        [(CLBarometerCalibrationBiasEstimator *)self sendVisitExitWifiImprovementAnalyticsEventWithDuration:v26 / 60.0 uncertaintyAtVisitEntry:v30 uncertaintyAtVisitExit:v31 timeDiffBtwArrivalAndLastRebase:self->_timeDiffBtwVisitEntryAndLastRebase / 60.0];
      }

      else
      {
        if (qword_1025D4410 != -1)
        {
          sub_101909358();
        }

        v27 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(dword_100000000, v27, OS_LOG_TYPE_DEFAULT, "visit exit timestamp is earlier than visit entry timestamp.", buf, 2u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_10190A0A0();
        }
      }

      if (a4 > 0.0)
      {
        [(CLBarometerCalibrationBiasEstimator *)self sendVisitExitAnalyticsWithDuration:&self->_firstRebaseEventInVisit andRebaseEvent:(a5 - a4) / 60.0 andUncertaintyAtEntry:self->_uncertaintyAtVisitEntry];
      }
    }

    self->_visitArrivalTimestamp = 1.79769313e308;
  }
}

- (void)sendRebaseAnalyticsWithAltitudeError:(double)a3 andUncertainty:(double)a4 andRefUncertainty:(double)a5 andDemAvailable:(BOOL)a6 andWorkout:(BOOL)a7 andReferenceSource:(int)a8 andCorrection:(double)a9 andDistance:(double)a10
{
  v18 = a3;
  v19 = fabsf(v18);
  v70 = 0;
  v71 = 0;
  v69 = 0;
  sub_10038EB38(&v69, qword_102658AE0, qword_102658AE8, (qword_102658AE8 - qword_102658AE0) >> 2);
  sub_1003F6558(&v69, &v72, v19);
  if (v69)
  {
    v70 = v69;
    operator delete(v69);
  }

  v66 = 0;
  v67 = 0;
  v65 = 0;
  sub_10038EB38(&v65, qword_102658AC8, qword_102658AD0, (qword_102658AD0 - qword_102658AC8) >> 2);
  v20 = a5;
  sub_1003F6558(&v65, &v68, v20);
  if (v65)
  {
    v66 = v65;
    operator delete(v65);
  }

  v63 = 0;
  __p = 0;
  v62 = 0;
  sub_10038EB38(&__p, qword_102658AC8, qword_102658AD0, (qword_102658AD0 - qword_102658AC8) >> 2);
  v21 = a4;
  sub_1003F6558(&__p, &v64, v21);
  if (__p)
  {
    v62 = __p;
    operator delete(__p);
  }

  v59 = 0;
  v57 = 0;
  v58 = 0;
  sub_10038EB38(&v57, qword_102658AE0, qword_102658AE8, (qword_102658AE8 - qword_102658AE0) >> 2);
  v22 = a9;
  sub_1003F6558(&v57, &v60, fabsf(v22));
  if (v57)
  {
    v58 = v57;
    operator delete(v57);
  }

  if (self->_previousBiasTimestamp == 1.79769313e308)
  {
    v23 = CFAbsoluteTimeGetCurrent() - self->_locationdStartTime;
    v24 = fabsf(v23);
  }

  else
  {
    v24 = -1.0;
  }

  v55 = 0;
  v53 = 0;
  v54 = 0;
  sub_10038EB38(&v53, qword_102658AF8, qword_102658B00, (qword_102658B00 - qword_102658AF8) >> 2);
  sub_1003F6558(&v53, &__src, v24);
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  v25 = -1.0;
  if (self->_previousBiasTimestamp != 1.79769313e308)
  {
    v26 = CFAbsoluteTimeGetCurrent() - self->_previousBiasTimestamp;
    v25 = fabsf(v26);
  }

  v51 = 0;
  v49 = 0;
  v50 = 0;
  sub_10038EB38(&v49, qword_102658B10, qword_102658B18, (qword_102658B18 - qword_102658B10) >> 2);
  sub_1003F6558(&v49, &v52, v25);
  if (v49)
  {
    v50 = v49;
    operator delete(v49);
  }

  if (self->_lastVisitEntryTime == 1.79769313e308)
  {
    v27 = -1.0;
  }

  else
  {
    v27 = vabdd_f64(CFAbsoluteTimeGetCurrent(), self->_lastVisitEntryTime) / 60.0;
  }

  v47 = 0;
  v45 = 0;
  v46 = 0;
  sub_10038EB38(&v45, qword_102658B28, qword_102658B30, (qword_102658B30 - qword_102658B28) >> 2);
  sub_1003F6558(&v45, &v48, v27);
  if (v45)
  {
    v46 = v45;
    operator delete(v45);
  }

  v42 = 0;
  v43 = 0;
  v41 = 0;
  sub_10038EB38(&v41, qword_102658B40, qword_102658B48, (qword_102658B48 - qword_102658B40) >> 2);
  v28 = a10;
  sub_1003F6558(&v41, &v44, v28);
  if (v41)
  {
    v42 = v41;
    operator delete(v41);
  }

  *&v31 = vcvt_f32_f64(self->_biasLocation);
  BYTE8(v31) = [(CLBarometerCalibrationContextClient *)self->_delegate isInVisit];
  BYTE9(v31) = a6;
  v29 = self->_lastForcedGpsTime != 1.79769313e308 && CFAbsoluteTimeGetCurrent() - self->_lastForcedGpsTime < 546.0;
  BYTE10(v31) = v29;
  HIDWORD(v31) = a8;
  LOBYTE(v32) = a7;
  HIBYTE(v32) = self->_previousBiasTimestamp == 1.79769313e308;
  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v33, v72.__r_.__value_.__l.__data_, v72.__r_.__value_.__l.__size_);
  }

  else
  {
    v33 = v72;
  }

  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v34, __src.__r_.__value_.__l.__data_, __src.__r_.__value_.__l.__size_);
  }

  else
  {
    v34 = __src;
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v35, v68.__r_.__value_.__l.__data_, v68.__r_.__value_.__l.__size_);
  }

  else
  {
    v35 = v68;
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v36, v64.__r_.__value_.__l.__data_, v64.__r_.__value_.__l.__size_);
  }

  else
  {
    v36 = v64;
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v37, v48.__r_.__value_.__l.__data_, v48.__r_.__value_.__l.__size_);
  }

  else
  {
    v37 = v48;
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v38, v52.__r_.__value_.__l.__data_, v52.__r_.__value_.__l.__size_);
  }

  else
  {
    v38 = v52;
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v39, v60.__r_.__value_.__l.__data_, v60.__r_.__value_.__l.__size_);
  }

  else
  {
    v39 = v60;
  }

  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    sub_100007244(&v40, v44.__r_.__value_.__l.__data_, v44.__r_.__value_.__l.__size_);
  }

  else
  {
    v40 = v44;
  }

  if (self->_lastVisitEntryTime != 1.79769313e308)
  {
    *&self->_firstRebaseEventInVisit.latitude = v31;
    *&self->_firstRebaseEventInVisit.inOutdoorWorkout = v32;
    std::string::operator=(&self->_firstRebaseEventInVisit.altitudeError_binned, &v33);
    std::string::operator=(&self->_firstRebaseEventInVisit.var0, &v34);
    std::string::operator=(&self->_anon_158[16], &v35);
    std::string::operator=(&self->_anon_158[40], &v36);
    std::string::operator=(&self->_anon_158[64], &v37);
    std::string::operator=(&self->_anon_158[88], &v38);
    std::string::operator=(&self->_anon_158[112], &v39);
    std::string::operator=(&self->_anon_158[136], &v40);
  }

  sub_1006BA560(v30, &v31);
  AnalyticsSendEventLazy();
  self->_previousBiasTimestamp = self->_biasTimestamp;
  self->_lastVisitEntryTime = 1.79769313e308;
  self->_distanceSinceLastRebase = -1.0;
  sub_1006BA784(v30);
  sub_1006BA784(&v31);
  if (SHIBYTE(v44.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v44.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v48.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v48.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v52.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v52.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(__src.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__src.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v60.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v60.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v64.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v64.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v68.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v68.__r_.__value_.__l.__data_);
  }

  if (SHIBYTE(v72.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(v72.__r_.__value_.__l.__data_);
  }
}

- (void)sendVisitExitAnalyticsWithDuration:(double)a3 andRebaseEvent:(void *)a4 andUncertaintyAtEntry:(double)a5
{
  v7 = a3;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  sub_10038EB38(&v58, qword_102658B58, qword_102658B60, (qword_102658B60 - qword_102658B58) >> 2);
  sub_1003F6558(&v58, &v61, v7);
  if (v58)
  {
    v59 = v58;
    operator delete(v58);
  }

  v54 = 0;
  v55 = 0;
  v53 = 0;
  sub_10038EB38(&v53, qword_102658AC8, qword_102658AD0, (qword_102658AD0 - qword_102658AC8) >> 2);
  v8 = a5;
  sub_1003F6558(&v53, &v56, v8);
  if (v53)
  {
    v54 = v53;
    operator delete(v53);
  }

  rebaseSource = self->_firstRebaseEventInVisit.rebaseSource;
  if (SHIBYTE(v57) < 0)
  {
    sub_100007244(&v39, v56, *(&v56 + 1));
  }

  else
  {
    v39 = v56;
    v40 = v57;
  }

  if (self->_anon_158[63] < 0)
  {
    sub_100007244(&v41, *&self->_anon_158[40], *&self->_anon_158[48]);
  }

  else
  {
    v41 = *&self->_anon_158[40];
    v42 = *&self->_anon_158[56];
  }

  if (SHIBYTE(v62) < 0)
  {
    sub_100007244(&v43, v61, *(&v61 + 1));
  }

  else
  {
    v43 = v61;
    v44 = v62;
  }

  if (self->_anon_158[87] < 0)
  {
    sub_100007244(&v45, *&self->_anon_158[64], *&self->_anon_158[72]);
  }

  else
  {
    v45 = *&self->_anon_158[64];
    v46 = *&self->_anon_158[80];
  }

  if (*(&self->_firstRebaseEventInVisit.altitudeError_binned.__rep_.__l + 23) < 0)
  {
    sub_100007244(&v47, self->_firstRebaseEventInVisit.altitudeError_binned.__rep_.__l.__data_, self->_firstRebaseEventInVisit.altitudeError_binned.__rep_.__l.__size_);
  }

  else
  {
    v47 = *self->_firstRebaseEventInVisit.altitudeError_binned.__rep_.__s.__data_;
    v48 = *(&self->_firstRebaseEventInVisit.altitudeError_binned.__rep_.__l + 2);
  }

  if (self->_anon_158[39] < 0)
  {
    sub_100007244(&v49, *&self->_anon_158[16], *&self->_anon_158[24]);
  }

  else
  {
    v49 = *&self->_anon_158[16];
    v50 = *&self->_anon_158[32];
  }

  if (self->_anon_158[135] < 0)
  {
    sub_100007244(&v51, *&self->_anon_158[112], *&self->_anon_158[120]);
  }

  else
  {
    v51 = *&self->_anon_158[112];
    v52 = *&self->_anon_158[128];
  }

  v19 = _NSConcreteStackBlock;
  v20 = 3321888768;
  v21 = sub_1006B9BE0;
  v22 = &unk_10246B050;
  sub_1006BA828(&v23, &rebaseSource);
  AnalyticsSendEventLazy();
  *(&v9 + 7) = 0;
  *&v9 = 0;
  HIDWORD(v9) = -10;
  v10 = 0;
  sub_10000EC00(v11, "NULL");
  sub_10000EC00(v12, "NULL");
  sub_10000EC00(v13, "NULL");
  sub_10000EC00(v14, "NULL");
  sub_10000EC00(v15, "NULL");
  sub_10000EC00(v16, "NULL");
  sub_10000EC00(v17, "NULL");
  sub_10000EC00(v18, "NULL");
  sub_1006B9D9C(&self->_firstRebaseEventInVisit, &v9);
  sub_1006BA784(&v9);
  if (v37 < 0)
  {
    operator delete(__p);
  }

  if (v35 < 0)
  {
    operator delete(v34);
  }

  if (v33 < 0)
  {
    operator delete(v32);
  }

  if (v31 < 0)
  {
    operator delete(v30);
  }

  if (v29 < 0)
  {
    operator delete(v28);
  }

  if (v27 < 0)
  {
    operator delete(v26);
  }

  if (v25 < 0)
  {
    operator delete(v24);
  }

  if (SHIBYTE(v52) < 0)
  {
    operator delete(v51);
  }

  if (SHIBYTE(v50) < 0)
  {
    operator delete(v49);
  }

  if (SHIBYTE(v48) < 0)
  {
    operator delete(v47);
  }

  if (SHIBYTE(v46) < 0)
  {
    operator delete(v45);
  }

  if (SHIBYTE(v44) < 0)
  {
    operator delete(v43);
  }

  if (SHIBYTE(v42) < 0)
  {
    operator delete(v41);
  }

  if (SHIBYTE(v40) < 0)
  {
    operator delete(v39);
  }

  if (SHIBYTE(v57) < 0)
  {
    operator delete(v56);
  }

  if (SHIBYTE(v62) < 0)
  {
    operator delete(v61);
  }
}

- (void)retrieveBiasInfo
{
  Current = CFAbsoluteTimeGetCurrent();
  v24 = 1.79769313e308;
  v25 = 1.79769313e308;
  v22 = 0.0;
  *&v23 = 1.79769313e308;
  *&v20 = 101325.0;
  v21 = -800.0;
  v4 = *sub_1000206B4();
  (*(v4 + 936))();
  v5 = sub_1000206B4();
  sub_1000B9370(v5, "CLBarometerCalibration_Timestamp", &v25);
  v6 = sub_1000206B4();
  sub_1000B9370(v6, "CLBarometerCalibratio_Bias", &v24);
  v7 = sub_1000206B4();
  sub_1000B9370(v7, "CLBarometerCalibration_Uncertainty", &v23);
  v8 = sub_1000206B4();
  sub_1000B9370(v8, "CLBarometerCalibration_Weather", &v22);
  v9 = sub_1000206B4();
  sub_1000B9370(v9, "CLBarometerCalibration_SignificantElevation", &v21);
  v10 = sub_1000206B4();
  sub_1000B9370(v10, "CLBarometerCalibration_BiasPressure", &v20);
  v11 = v25;
  if (v25 == 1.79769313e308 || Current - v25 >= self->_maxBiasAgeFromRecovery || (v12 = v24, v24 == 1.79769313e308))
  {
    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v19 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "state is too old to be recovered", buf, 2u);
    }

    if (sub_10000A100(121, 2))
    {
      sub_10190A28C();
    }
  }

  else
  {
    self->_biasTimestamp = v25;
    v13 = *&v20;
    self->_bias = v12;
    self->_biasPressure = v13;
    v14 = *&v23;
    self->_biasUncertaintyTimestamp = v11;
    self->_biasUncertaintyAtRebase = v14;
    self->_biasUncertainty = v14;
    sub_10085C5E0(self->_fSignificantElevationEstimatorRebase.__ptr_, v22);
    if (v21 != -800.0)
    {
      sub_10085C5EC(self->_fSignificantElevationEstimatorRebase.__ptr_, v21);
    }

    if (qword_1025D4410 != -1)
    {
      sub_101909358();
    }

    v15 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      biasPressure = self->_biasPressure;
      *buf = 134219264;
      v39 = v25;
      v40 = 2048;
      v41 = v24;
      v42 = 2048;
      v43 = v23;
      v44 = 2048;
      v45 = v22;
      v46 = 2048;
      v47 = v21;
      v48 = 2048;
      v49 = biasPressure;
      _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_DEFAULT, "recovering from locationd crash, timestamp %f, bias, %f, uncertainty, %f, weather, %f, sig elev, %f, pressure, %f", buf, 0x3Eu);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_101909358();
      }

      v17 = self->_biasPressure;
      v26 = 134219264;
      v27 = v25;
      v28 = 2048;
      v29 = v24;
      v30 = 2048;
      v31 = v23;
      v32 = 2048;
      v33 = v22;
      v34 = 2048;
      v35 = v21;
      v36 = 2048;
      v37 = v17;
      v18 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationBiasEstimator retrieveBiasInfo]", "%s\n", v18);
      if (v18 != buf)
      {
        free(v18);
      }
    }
  }
}

- (BOOL)isIHAAuthorized
{
  v2 = objc_opt_class();
  if (v2)
  {
    v3 = +[MCProfileConnection sharedConnection];

    LOBYTE(v2) = [v3 isHealthDataSubmissionAllowed];
  }

  return v2;
}

- (id).cxx_construct
{
  self->_fSignificantElevationEstimatorRebase.__ptr_ = 0;
  self->_biasLocation = vdupq_n_s64(0x7FEFFFFFFFFFFFFFuLL);
  self->_loiVisitAltitudes.__end_ = 0;
  self->_loiVisitAltitudes.__cap_ = 0;
  self->_loiVisitAltitudes.__begin_ = 0;
  sub_1006BAAA4(&self->_firstRebaseEventInVisit);
  return self;
}

@end