@interface CLElevationGainFromProfile
- (BOOL)addTransitionPointWithAltitude:(double)altitude andTimestamp:(double)timestamp;
- (BOOL)computeAscendingDescendingSegments:(optional<CMWorkoutType>)segments;
- (BOOL)computeElevationGainFromSegmentsAscended:(BatchedElevationData *)ascended descended:(BatchedElevationData *)descended;
- (CLElevationGainFromProfile)initWithBuffers:(void *)buffers;
- (double)computeAdjustedStartTimeFromElevationProfileStartTime:(double)time;
- (double)getProfileSegmentingThresholdFromSmootherOutput:(shared_ptr<CLBarometerCalibration_Types:(optional<CMWorkoutType>)output :CLBarometerCalibrationSmoothedWorkoutElevation>)a3 workoutType:;
- (id).cxx_construct;
- (int)getNumAscendingDescendingSegments;
- (void)removeElevationProfileSegmentPointsFromTimestamp:(double)timestamp;
@end

@implementation CLElevationGainFromProfile

- (CLElevationGainFromProfile)initWithBuffers:(void *)buffers
{
  v10.receiver = self;
  v10.super_class = CLElevationGainFromProfile;
  v4 = [(CLElevationGainFromProfile *)&v10 init];
  v5 = v4;
  if (v4)
  {
    v4->_dataBuffers = buffers;
    v9 = 0;
    sub_100126E84(v7, "ElevationVerbose", &v9, 0);
    v5->_verboseLogging = v7[1];
    sub_10183A3AC(v7, "VerticalToleranceForElevationGain", &qword_101C85F98, 0);
    v5->_verticalToleranceInMetersDefault = v8;
    sub_10183A3AC(v7, "VerticalToleranceForElevationGainRelaxed", &qword_101C85FA0, 0);
    v5->_verticalToleranceInMetersRelaxed = v8;
    sub_10183A3AC(v7, "VerticalToleranceForElevationGainCycling", &qword_101C85FA8, 0);
    v5->_verticalToleranceInMetersCycling = v8;
    v5->_workoutElevationProfileCount = 0;
  }

  return v5;
}

- (BOOL)computeAscendingDescendingSegments:(optional<CMWorkoutType>)segments
{
  v3 = *&segments.var1;
  var1 = segments.var0.var1;
  selfCopy = self;
  dataBuffers = self->_dataBuffers;
  Current = CFAbsoluteTimeGetCurrent();
  v8 = dataBuffers[83];
  if (v8 > 1)
  {
    v12 = (*(dataBuffers[79] + (((v8 + dataBuffers[82] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v8 + *(dataBuffers + 656) - 1));
    v13 = *v12;
    v14 = v12[1];
    if (v14)
    {
      atomic_fetch_add_explicit(&v14->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    if (!v13)
    {
      if (qword_1025D4410 != -1)
      {
        sub_1018FF694();
      }

      v17 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
      {
        workoutElevationProfileCount = self->_workoutElevationProfileCount;
        *buf = 134218240;
        v83 = Current;
        v84 = 1024;
        LODWORD(v85) = workoutElevationProfileCount;
        _os_log_impl(dword_100000000, v17, OS_LOG_TYPE_ERROR, "#altimeter,received profile with null last element,now,%.3lf,smoothedWorkoutProfileCount,%d", buf, 0x12u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_25;
      }

LABEL_109:
      sub_1018FF6A8(buf);
      v57 = selfCopy->_workoutElevationProfileCount;
      v68 = 134218240;
      v69 = Current;
      v70 = 1024;
      LODWORD(v71) = v57;
      v58 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 0, "[CLElevationGainFromProfile computeAscendingDescendingSegments:]", "%s\n", v58);
      if (v58 != buf)
      {
        free(v58);
      }

LABEL_25:
      if (v14)
      {
        sub_100008080(v14);
      }

      goto LABEL_27;
    }

    if (*(v13 + 8) != 1.79769313e308 || *(v13 + 16) != 1.79769313e308 || *(v13 + 24))
    {
      if (qword_1025D4410 != -1)
      {
        sub_1018FF694();
      }

      v15 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
      {
        v16 = self->_workoutElevationProfileCount;
        *buf = 134218240;
        v83 = Current;
        v84 = 1024;
        LODWORD(v85) = v16;
        _os_log_impl(dword_100000000, v15, OS_LOG_TYPE_ERROR, "#altimeter,received profile without end of workout indicator,now,%.3lf,smoothedWorkoutProfileCount,%d", buf, 0x12u);
      }

      if (!sub_10000A100(121, 0))
      {
        goto LABEL_25;
      }

      goto LABEL_109;
    }

    if (v14)
    {
      sub_100008080(v14);
    }

    v19 = (*(dataBuffers[79] + ((dataBuffers[82] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * dataBuffers[82]);
    v21 = *v19;
    v20 = v19[1];
    if (v20)
    {
      atomic_fetch_add_explicit(&v20->__shared_owners_, 1uLL, memory_order_relaxed);
    }

    [(CLElevationGainFromProfile *)self computeAdjustedStartTimeFromElevationProfileStartTime:*v21];
    v23 = v22;
    [(CLElevationGainFromProfile *)selfCopy removeElevationProfileSegmentPointsFromTimestamp:v22 + -0.1];
    begin = selfCopy->_elevationProfileSegmentTransitionPoints.__begin_;
    end = selfCopy->_elevationProfileSegmentTransitionPoints.__end_;
    v26 = (end - 1);
    v27 = (end - 2);
    *v66 = Current;
    v66[1] = &selfCopy;
    if (begin == end)
    {
      v26 = v21 + 1;
      v27 = v21;
    }

    v28 = *v27;
    v63 = *v26;
    if (begin == end)
    {
      goto LABEL_116;
    }

    v29 = begin;
    do
    {
      sub_100685D34(v66, v29, 0);
      v29 += 2;
    }

    while (v29 != end);
    if (begin == end)
    {
LABEL_116:
      if ([(CLElevationGainFromProfile *)selfCopy addTransitionPointWithAltitude:v21[1] andTimestamp:*v21])
      {
        v30 = 1;
        sub_100685D34(v66, selfCopy->_elevationProfileSegmentTransitionPoints.__end_ - 2, 1);
LABEL_47:
        if (dataBuffers[83] - 1 <= v30)
        {
LABEL_106:
          sub_100685F40(&selfCopy->_elevationProfileSegmentTransitionPoints.__begin_);
          if (v20)
          {
            sub_100008080(v20);
          }

          LOBYTE(v11) = 1;
          return v11;
        }

        if (v3)
        {
          v33 = var1;
        }

        else
        {
          v33 = 0;
        }

        v62 = v33;
        v34 = 0.5;
        v35 = v63;
        v36 = v28;
        while (1)
        {
          v37 = *(*(dataBuffers[79] + (((v30 + dataBuffers[82]) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v30 + *(dataBuffers + 656)));
          v64 = v37;
          v38 = *(*(dataBuffers[79] + (((v30 + dataBuffers[82]) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v30 + *(dataBuffers + 656)) + 8);
          if (*(&v37 + 1))
          {
            atomic_fetch_add_explicit((*(&v37 + 1) + 8), 1uLL, memory_order_relaxed);
          }

          v39 = v37;
          if (!v37)
          {
            if (qword_1025D4410 != -1)
            {
              sub_1018FF6EC();
            }

            v40 = qword_1025D4418;
            if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
            {
              v41 = selfCopy->_workoutElevationProfileCount;
              *buf = 134218240;
              v83 = Current;
              v84 = 1024;
              LODWORD(v85) = v41;
              _os_log_impl(dword_100000000, v40, OS_LOG_TYPE_ERROR, "#altimeter,received profile with null pointer,now,%.3lf,smoothedWorkoutProfileCount,%d", buf, 0x12u);
            }

            if (sub_10000A100(121, 0))
            {
              sub_1018FF6A8(buf);
              v51 = selfCopy->_workoutElevationProfileCount;
              v68 = 134218240;
              v69 = Current;
              v70 = 1024;
              LODWORD(v71) = v51;
              v52 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 0, "[CLElevationGainFromProfile computeAscendingDescendingSegments:]", "%s\n", v52);
              if (v52 != buf)
              {
                free(v52);
              }
            }
          }

          if (*v39 < v23)
          {
            v42 = 30;
            if (!v38)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          }

          v43 = selfCopy;
          if (v30 == dataBuffers[83] - 2)
          {
            if ([(CLElevationGainFromProfile *)selfCopy addTransitionPointWithAltitude:v39[1] andTimestamp:*v39])
            {
              sub_100685D34(v66, selfCopy->_elevationProfileSegmentTransitionPoints.__end_ - 2, 1);
            }

            v42 = 28;
            if (!v38)
            {
              goto LABEL_96;
            }

            goto LABEL_95;
          }

          v65 = v64;
          if (v38)
          {
            atomic_fetch_add_explicit(&v38->__shared_owners_, 1uLL, memory_order_relaxed);
          }

          [(CLElevationGainFromProfile *)v43 getProfileSegmentingThresholdFromSmootherOutput:&v65 workoutType:var1, v3];
          v45 = v44;
          if (*(&v65 + 1))
          {
            sub_100008080(*(&v65 + 1));
          }

          if (v45 != v34)
          {
            if (qword_1025D4410 != -1)
            {
              sub_1018FF6EC();
            }

            v46 = qword_1025D4418;
            if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
            {
              v47 = *v39;
              v48 = *(v39 + 6);
              v49 = selfCopy->_workoutElevationProfileCount;
              *buf = 134219520;
              v83 = Current;
              v84 = 2048;
              v85 = v47;
              v86 = 2048;
              v87 = v34;
              v88 = 2048;
              v89 = v45;
              v90 = 1024;
              v91 = v48;
              v92 = 1024;
              v93 = v62;
              v94 = 1024;
              v95 = v49;
              _os_log_impl(dword_100000000, v46, OS_LOG_TYPE_DEFAULT, "#altimeter,workout segmentation threshold changed,now,%.3f,smootherTime,%.3f,previousThreshold,%.2f,newThreshold,%.2f,hmmState,%d,workoutType,%d,smoothedWorkoutProfileCount,%d", buf, 0x3Cu);
            }

            if (sub_10000A100(121, 2))
            {
              sub_1018FF6A8(buf);
              v53 = *v39;
              v54 = *(v39 + 6);
              v55 = selfCopy->_workoutElevationProfileCount;
              v68 = 134219520;
              v69 = Current;
              v70 = 2048;
              v71 = v53;
              v72 = 2048;
              v73 = v34;
              v74 = 2048;
              v75 = v45;
              v76 = 1024;
              v77 = v54;
              v78 = 1024;
              v79 = v62;
              v80 = 1024;
              v81 = v55;
              v56 = _os_log_send_and_compose_impl();
              sub_100152C7C("Generic", 1, 0, 2, "[CLElevationGainFromProfile computeAscendingDescendingSegments:]", "%s\n", v56);
              if (v56 != buf)
              {
                free(v56);
              }
            }

            v34 = v45;
          }

          v50 = v39[1];
          if (v28 >= v36)
          {
            if (v50 < v63)
            {
              v42 = 0;
              v28 = *v39;
LABEL_88:
              v63 = v50;
              if (!v38)
              {
                goto LABEL_96;
              }

              goto LABEL_95;
            }

            if (v50 <= v63 + v45)
            {
              goto LABEL_100;
            }

            v36 = *v39;
            if ([CLElevationGainFromProfile addTransitionPointWithAltitude:selfCopy andTimestamp:"addTransitionPointWithAltitude:andTimestamp:"])
            {
              sub_100685D34(v66, selfCopy->_elevationProfileSegmentTransitionPoints.__end_ - 2, 1);
            }

            v42 = 0;
          }

          else
          {
            if (v50 <= v35)
            {
              if (v50 < v35 - v45)
              {
                v28 = *v39;
                if ([(CLElevationGainFromProfile *)selfCopy addTransitionPointWithAltitude:v35 andTimestamp:v36])
                {
                  sub_100685D34(v66, selfCopy->_elevationProfileSegmentTransitionPoints.__end_ - 2, 1);
                }

                v42 = 0;
                goto LABEL_88;
              }

LABEL_100:
              v42 = 0;
              if (!v38)
              {
                goto LABEL_96;
              }

LABEL_95:
              sub_100008080(v38);
              goto LABEL_96;
            }

            v42 = 0;
            v36 = *v39;
          }

          v35 = v50;
          if (v38)
          {
            goto LABEL_95;
          }

LABEL_96:
          if ((v42 == 30 || !v42) && dataBuffers[83] - 1 > ++v30)
          {
            continue;
          }

          goto LABEL_106;
        }
      }

      if (qword_1025D4410 != -1)
      {
        sub_1018FF6EC();
      }

      v31 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
      {
        v32 = selfCopy->_workoutElevationProfileCount;
        *buf = 134218240;
        v83 = Current;
        v84 = 1024;
        LODWORD(v85) = v32;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_ERROR, "#altimeter,could not add first transition point,now,%.3lf,smoothedWorkoutProfileCount,%d", buf, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_1018FF6A8(buf);
        v59 = selfCopy->_workoutElevationProfileCount;
        v68 = 134218240;
        v69 = Current;
        v70 = 1024;
        LODWORD(v71) = v59;
        v60 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 0, "[CLElevationGainFromProfile computeAscendingDescendingSegments:]", "%s\n", v60);
        if (v60 != buf)
        {
          free(v60);
        }
      }
    }

    v30 = 0;
    goto LABEL_47;
  }

  if (qword_1025D4410 != -1)
  {
    sub_1018FF694();
  }

  v9 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    v10 = self->_workoutElevationProfileCount;
    *buf = 134218240;
    v83 = Current;
    v84 = 1024;
    LODWORD(v85) = v10;
    _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_DEFAULT, "#altimeter,received profile with no usable elements,now,%.3lf,smoothedWorkoutProfileCount,%d", buf, 0x12u);
  }

  v11 = sub_10000A100(121, 2);
  if (v11)
  {
    sub_1018FF714(&selfCopy, Current);
LABEL_27:
    LOBYTE(v11) = 0;
  }

  return v11;
}

- (double)getProfileSegmentingThresholdFromSmootherOutput:(shared_ptr<CLBarometerCalibration_Types:(optional<CMWorkoutType>)output :CLBarometerCalibrationSmoothedWorkoutElevation>)a3 workoutType:
{
  if (!*a3.var0)
  {
    Current = CFAbsoluteTimeGetCurrent();
    if (qword_1025D4410 != -1)
    {
      sub_1018FF694();
    }

    v9 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
    {
      *buf = 134217984;
      v20 = Current;
      _os_log_impl(dword_100000000, v9, OS_LOG_TYPE_ERROR, "#altimeter,Invalid pointer received,now,%.3f", buf, 0xCu);
    }

    if (sub_10000A100(121, 0))
    {
      sub_1018FF838();
    }

    return self->_verticalToleranceInMetersDefault;
  }

  var0 = a3.var0;
  v6 = *(a3.var0 + 1);
  v16[0] = *a3.var0;
  v16[1] = v6;
  if (v6)
  {
    atomic_fetch_add_explicit(&v6->__shared_owners_, 1uLL, memory_order_relaxed);
  }

  if ((output.var0.var0 & 1) != 0 && a3.var1 == 4)
  {
    verticalToleranceInMetersCycling = self->_verticalToleranceInMetersCycling;
    sub_1006862EC(v16, verticalToleranceInMetersCycling);
  }

  else
  {
    v11 = *(*a3.var0 + 24);
    if (v11 == 1)
    {
      verticalToleranceInMetersCycling = self->_verticalToleranceInMetersRelaxed;
      sub_1006862EC(v16, verticalToleranceInMetersCycling);
    }

    else
    {
      if (v11)
      {
        if (qword_1025D4410 != -1)
        {
          sub_1018FF694();
        }

        v12 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
        {
          v13 = **var0;
          *buf = 134217984;
          v20 = v13;
          _os_log_impl(dword_100000000, v12, OS_LOG_TYPE_ERROR, "#altimeter,Could not determine vertical threshold,outputTime,%.3f", buf, 0xCu);
        }

        if (sub_10000A100(121, 0))
        {
          sub_1018FF6A8(buf);
          v14 = **var0;
          v17 = 134217984;
          v18 = v14;
          v15 = _os_log_send_and_compose_impl();
          sub_100152C7C("Generic", 1, 0, 0, "[CLElevationGainFromProfile getProfileSegmentingThresholdFromSmootherOutput:workoutType:]", "%s\n", v15);
          if (v15 != buf)
          {
            free(v15);
          }
        }

        verticalToleranceInMetersCycling = self->_verticalToleranceInMetersDefault;
        if (v6)
        {
          goto LABEL_8;
        }

        return verticalToleranceInMetersCycling;
      }

      verticalToleranceInMetersCycling = self->_verticalToleranceInMetersDefault;
      sub_1006862EC(v16, verticalToleranceInMetersCycling);
    }
  }

  if (v6)
  {
LABEL_8:
    sub_100008080(v6);
  }

  return verticalToleranceInMetersCycling;
}

- (BOOL)computeElevationGainFromSegmentsAscended:(BatchedElevationData *)ascended descended:(BatchedElevationData *)descended
{
  Current = CFAbsoluteTimeGetCurrent();
  begin = self->_elevationProfileSegmentTransitionPoints.__begin_;
  end = self->_elevationProfileSegmentTransitionPoints.__end_;
  v10 = (end - begin) >> 4;
  if (v10 < 2)
  {
LABEL_2:
    LOBYTE(v11) = 0;
    return v11;
  }

  v12 = Current;
  v13 = 0;
  v14 = *begin;
  v15 = v10 - 1;
  v16 = v15;
  v17 = *begin;
  while (1)
  {
    v18 = v17;
    v17 = *(begin + v13 + 16);
    if (v17 - v18 <= 0.0)
    {
      break;
    }

    v13 += 16;
    if (!--v16)
    {
      v19 = *(end - 2);
      ascended->var1 = v19;
      descended->var1 = v19;
      v20 = ascended->var1 + -180.0;
      if (v14 <= v20)
      {
        ascended->var3 = v20;
        descended->var3 = v20;
      }

      var3 = ascended->var3;
      v22 = (begin + 16);
      v23 = 0.0;
      v24 = 0.0;
      v25 = 0.0;
      v26 = 0.0;
      do
      {
        v27 = *(v22 - 2);
        v28 = v22[1] - *(v22 - 1);
        if (v27 <= var3 && var3 < *v22)
        {
          v29 = (var3 - v27) / (*v22 - v27);
          v25 = v23 + v28 * v29;
          v26 = v24 + fabs(v28 * v29);
          if (v28 < 0.0)
          {
            v25 = v23;
          }

          else
          {
            v26 = v24;
          }
        }

        v30 = v24 + fabs(v28);
        if (v28 >= 0.0)
        {
          v23 = v23 + v28;
        }

        else
        {
          v24 = v30;
        }

        v22 += 2;
        --v15;
      }

      while (v15);
      ascended->var0 = llround(v23 * 100.0);
      descended->var0 = llround(v24 * 100.0);
      ascended->var2 = llround(v25 * 100.0);
      descended->var2 = llround(v26 * 100.0);
      if (qword_1025D4410 != -1)
      {
        sub_1018FF694();
      }

      v31 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
      {
        var1 = ascended->var1;
        var0 = ascended->var0;
        v34 = descended->var0;
        v35 = ascended->var3;
        var2 = ascended->var2;
        v37 = descended->var2;
        *buf = 134219520;
        v46 = var1;
        v47 = 1024;
        *v48 = var0;
        *&v48[4] = 1024;
        *&v48[6] = v34;
        *v49 = 2048;
        *&v49[2] = v35;
        v50 = 1024;
        v51 = var2;
        v52 = 1024;
        v53 = v37;
        v54 = 2048;
        v55 = v12;
        _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_DEFAULT, "#altimeter,finished computing elevation gain from profile,timestamp,%.3f,batchedAscended,%d,batchedDescended,%d,delayedTimestamp,%.3f,delayedBatchedAscended,%d,delayedBatchedDescended,%d,now,%.3f", buf, 0x38u);
      }

      if (sub_10000A100(121, 2))
      {
        bzero(buf, 0x65CuLL);
        if (qword_1025D4410 != -1)
        {
          sub_1018FF6EC();
        }

        v43 = _os_log_send_and_compose_impl();
        sub_100152C7C("Generic", 1, 0, 2, "[CLElevationGainFromProfile computeElevationGainFromSegmentsAscended:descended:]", "%s\n", v43);
        if (v43 != buf)
        {
          free(v43);
        }
      }

      LOBYTE(v11) = 1;
      return v11;
    }
  }

  if (qword_1025D4410 != -1)
  {
    sub_1018FF694();
  }

  v38 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
  {
    v39 = (self->_elevationProfileSegmentTransitionPoints.__begin_ + v13);
    v40 = *v39;
    v41 = *(v39 + 2);
    *buf = 134218496;
    v46 = v40;
    v47 = 2048;
    *v48 = v41;
    *&v48[8] = 2048;
    *v49 = v12;
    _os_log_impl(dword_100000000, v38, OS_LOG_TYPE_ERROR, "#altimeter,timestamp of transition point rolls back,lastTimestamp,%.3f,currentTimestamp,%.3f,now,%.3f", buf, 0x20u);
  }

  v11 = sub_10000A100(121, 0);
  if (v11)
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_1018FF6EC();
    }

    v42 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 0, "[CLElevationGainFromProfile computeElevationGainFromSegmentsAscended:descended:]", "%s\n", v42);
    if (v42 != buf)
    {
      free(v42);
    }

    goto LABEL_2;
  }

  return v11;
}

- (void)removeElevationProfileSegmentPointsFromTimestamp:(double)timestamp
{
  begin = self->_elevationProfileSegmentTransitionPoints.__begin_;
  end = self->_elevationProfileSegmentTransitionPoints.__end_;
  if (begin != end)
  {
    while (*begin <= timestamp)
    {
      begin = (begin + 16);
      if (begin == end)
      {
        goto LABEL_13;
      }
    }

    if (begin != end)
    {
      v7 = (begin + 16);
      if ((begin + 16) != end)
      {
        do
        {
          if (*v7 <= timestamp)
          {
            *begin = *v7;
            begin = (begin + 16);
          }

          v7 = (v7 + 16);
        }

        while (v7 != end);
        end = self->_elevationProfileSegmentTransitionPoints.__end_;
      }
    }
  }

  if (begin != end)
  {
    self->_elevationProfileSegmentTransitionPoints.__end_ = begin;
  }

LABEL_13:
  if (qword_1025D4410 != -1)
  {
    sub_1018FF694();
  }

  v8 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
  {
    Current = CFAbsoluteTimeGetCurrent();
    workoutElevationProfileCount = self->_workoutElevationProfileCount;
    v11 = 134218496;
    timestampCopy = timestamp;
    v13 = 2048;
    v14 = Current;
    v15 = 1024;
    v16 = workoutElevationProfileCount;
    _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_DEFAULT, "#altimeter,cleaning up elevation profile segment newer than timestamp,%.3f,now,%.3f,smoothedWorkoutProfileCount,%d", &v11, 0x1Cu);
  }

  if (sub_10000A100(121, 2))
  {
    sub_1018FFA70(self);
  }
}

- (double)computeAdjustedStartTimeFromElevationProfileStartTime:(double)time
{
  for (i = self->_elevationProfileSegmentTransitionPoints.__begin_; i != self->_elevationProfileSegmentTransitionPoints.__end_; i = (i + 16))
  {
    v4 = *i;
    if (*i >= time)
    {
      return v4;
    }
  }

  return time;
}

- (BOOL)addTransitionPointWithAltitude:(double)altitude andTimestamp:(double)timestamp
{
  begin = self->_elevationProfileSegmentTransitionPoints.__begin_;
  end = self->_elevationProfileSegmentTransitionPoints.__end_;
  p_elevationProfileSegmentTransitionPoints = &self->_elevationProfileSegmentTransitionPoints;
  if (begin != end && vabdd_f64(*(end - 2), timestamp) < 0.001 && vabdd_f64(*(end - 1), altitude) < 0.001)
  {
    return 0;
  }

  cap = self->_elevationProfileSegmentTransitionPoints.__cap_;
  if (end >= cap)
  {
    v11 = end - begin;
    v12 = (end - begin) >> 4;
    v13 = v12 + 1;
    if ((v12 + 1) >> 60)
    {
      sub_10028C64C();
    }

    v14 = cap - begin;
    if (v14 >> 3 > v13)
    {
      v13 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v13 = 0xFFFFFFFFFFFFFFFLL;
    }

    if (v13)
    {
      sub_1003E5FE8(p_elevationProfileSegmentTransitionPoints, v13);
    }

    v15 = (16 * v12);
    *v15 = timestamp;
    v15[1] = altitude;
    v10 = (16 * v12 + 16);
    memcpy(0, begin, v11);
    v16 = self->_elevationProfileSegmentTransitionPoints.__begin_;
    self->_elevationProfileSegmentTransitionPoints.__begin_ = 0;
    self->_elevationProfileSegmentTransitionPoints.__end_ = v10;
    self->_elevationProfileSegmentTransitionPoints.__cap_ = 0;
    if (v16)
    {
      operator delete(v16);
    }
  }

  else
  {
    *end = timestamp;
    *(end + 1) = altitude;
    v10 = (end + 16);
  }

  self->_elevationProfileSegmentTransitionPoints.__end_ = v10;
  return 1;
}

- (int)getNumAscendingDescendingSegments
{
  begin = self->_elevationProfileSegmentTransitionPoints.__begin_;
  end = self->_elevationProfileSegmentTransitionPoints.__end_;
  if (end == begin)
  {
    return 0;
  }

  else
  {
    return ((end - begin) >> 4) - 1;
  }
}

- (id).cxx_construct
{
  *(self + 3) = 0;
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end