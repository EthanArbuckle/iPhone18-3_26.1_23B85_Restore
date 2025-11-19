@interface CLWorkoutPressureSourceSelector
- (CLWorkoutPressureSourceSelector)initWithBuffer:(void *)a3 andContextManager:(id)a4;
- (NotificationData)prepareStepCountUpdate:(SEL)a3;
- (id).cxx_construct;
- (void)computeCompanionPressureOffsetData:(double)a3;
- (void)feedStepCountElevationForOnDeviceStartTime:(double)a3 withLastSigElevEndTime:(double)a4;
- (void)resetCompanionPressureOffsetData;
- (void)selectSourceForOnDeviceStartTime:(double)a3;
@end

@implementation CLWorkoutPressureSourceSelector

- (void)resetCompanionPressureOffsetData
{
  if (self->_companionPressureOffsetData.__engaged_)
  {
    self->_companionPressureOffsetData.__engaged_ = 0;
  }
}

- (CLWorkoutPressureSourceSelector)initWithBuffer:(void *)a3 andContextManager:(id)a4
{
  v21.receiver = self;
  v21.super_class = CLWorkoutPressureSourceSelector;
  v6 = [(CLWorkoutPressureSourceSelector *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_dataBuffer = a3;
    [(CLWorkoutPressureSourceSelector *)v6 resetCompanionPressureOffsetData];
    v7->_isSourceOnDevice = 1;
    v20 = 0;
    sub_100126E84(buf, "ElevationVerbose", &v20, 0);
    v7->_verboseLogging = buf[1];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7->_workoutContextManager = a4;
    }

    else
    {
      if (qword_1025D4410 != -1)
      {
        sub_101908ED8();
      }

      v8 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
      {
        Current = CFAbsoluteTimeGetCurrent();
        *buf = 134217984;
        v23 = Current;
        _os_log_impl(dword_100000000, v8, OS_LOG_TYPE_ERROR, "#altimeter,fail to initialize workout pressure source selector,workout context manager does not exist,timestamp,%f", buf, 0xCu);
      }

      v10 = sub_10000A100(121, 0);
      if (v10)
      {
        sub_101908F00(v10, v11, v12, v13, v14, v15, v16, v17);
      }
    }

    v7->_isPhone = 0;
    v18 = sub_10001A3E8();
    v7->_isPhone = (**v18)(v18);
  }

  return v7;
}

- (void)selectSourceForOnDeviceStartTime:(double)a3
{
  dataBuffer = self->_dataBuffer;
  v5 = dataBuffer[67];
  if (dataBuffer[68] == v5 || (v6 = dataBuffer[70], v7 = (v5 + 8 * (v6 >> 8)), v8 = (*v7 + 16 * v6), v9 = *(v5 + (((dataBuffer[71] + v6) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(dataBuffer + 568) + v6), v8 == v9))
  {
    v19 = 1;
  }

  else
  {
    v11 = 0;
    v12 = a3 + -20.48;
    do
    {
      v14 = *v8;
      v13 = v8[1];
      if (v13)
      {
        atomic_fetch_add_explicit(&v13->__shared_owners_, 1uLL, memory_order_relaxed);
        v15 = *(v14 + 8);
        v16 = v15 < a3 && v15 > v12;
        sub_100008080(v13);
      }

      else
      {
        v17 = *(v14 + 8);
        v16 = v17 < a3 && v17 > v12;
      }

      v8 += 2;
      if ((v8 - *v7) == 4096)
      {
        v18 = v7[1];
        ++v7;
        v8 = v18;
      }

      v11 += v16;
    }

    while (v8 != v9);
    v19 = v11 < 4;
  }

  self->_isSourceOnDevice = v19;
}

- (void)feedStepCountElevationForOnDeviceStartTime:(double)a3 withLastSigElevEndTime:(double)a4
{
  [(CLWorkoutPressureSourceSelector *)self selectSourceForOnDeviceStartTime:?];
  p_isSourceOnDevice = &self->_isSourceOnDevice;
  if (self->_isSourceOnDevice)
  {
    v8 = 10;
  }

  else
  {
    v8 = 11;
  }

  if (*(self->_dataBuffer + 6 * v8 + 5))
  {
    [(CLWorkoutPressureSourceSelector *)self computeCompanionPressureOffsetData:a3];
    if (self->_isSourceOnDevice || self->_companionPressureOffsetData.__engaged_)
    {
      v9 = self->_dataBuffer + 48 * v8;
      v10 = v9[1];
      if (v9[2] != v10)
      {
        v11 = v9[4];
        v12 = (v10 + 8 * (v11 >> 8));
        v13 = (*v12 + 16 * v11);
        v14 = *(v10 + (((v9[5] + v11) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v9 + 40) + v11);
        if (v13 != v14)
        {
          while (1)
          {
            v15 = *v13;
            v16 = v13[1];
            if (v16)
            {
              break;
            }

            if (*(v15 + 8) > a4)
            {
              v47 = 0u;
              v48 = 0u;
              v45 = 0u;
              v46 = 0u;
              v43 = 0u;
              v44 = 0u;
              v41 = 0u;
              v42 = 0u;
              v39 = 0u;
              v40 = 0u;
              v37 = 0u;
              v38 = 0u;
              v35 = v15;
              v36 = 0;
              goto LABEL_14;
            }

LABEL_27:
            v13 += 2;
            if ((v13 - *v12) == 4096)
            {
              v22 = v12[1];
              ++v12;
              v13 = v22;
            }

            if (v13 == v14)
            {
              return;
            }
          }

          atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
          if (*(v15 + 8) > a4)
          {
            v47 = 0u;
            v48 = 0u;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v35 = v15;
            v36 = v16;
            atomic_fetch_add_explicit(&v16->__shared_owners_, 1uLL, memory_order_relaxed);
LABEL_14:
            [(CLWorkoutPressureSourceSelector *)self prepareStepCountUpdate:&v35];
            if (v36)
            {
              sub_100008080(v36);
            }

            v17 = !self->_isPhone && *p_isSourceOnDevice;
            DWORD2(v39) = v17;
            workoutContextManager = self->_workoutContextManager;
            v68 = v45;
            v69 = v46;
            v70 = v47;
            v71 = v48;
            v64 = v41;
            v65 = v42;
            v66 = v43;
            v67 = v44;
            *buf = v37;
            *&buf[16] = v38;
            *&buf[32] = v39;
            *&buf[48] = v40;
            [(CLContextManagerWorkout *)workoutContextManager feedSelectedStepCountElevation:buf];
            if (self->_verboseLogging)
            {
              if (qword_1025D4410 != -1)
              {
                sub_101908ED8();
              }

              v19 = qword_1025D4418;
              if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
              {
                Current = CFAbsoluteTimeGetCurrent();
                v21 = *p_isSourceOnDevice;
                *buf = 134219520;
                *&buf[4] = Current;
                *&buf[12] = 2048;
                *&buf[14] = *(&v37 + 1);
                *&buf[22] = 1024;
                *&buf[24] = v38;
                *&buf[28] = 1024;
                *&buf[30] = DWORD1(v38);
                *&buf[34] = 2048;
                *&buf[36] = *(&v40 + 2);
                *&buf[44] = 2048;
                *&buf[46] = *&v40;
                *&buf[54] = 1024;
                *&buf[56] = v21;
                _os_log_impl(dword_100000000, v19, OS_LOG_TYPE_DEFAULT, "#altimeter,feed selected step count elevation,now,%f,startTime,%f,ascend,%d,descend,%d,pressure,%f,pressureAmplitude,%f,onDevice,%d", buf, 0x3Cu);
              }

              if (sub_10000A100(121, 2))
              {
                sub_101908FF8(buf);
                v23 = CFAbsoluteTimeGetCurrent();
                v24 = *p_isSourceOnDevice;
                v49 = 134219520;
                v50 = v23;
                v51 = 2048;
                v52 = *(&v37 + 1);
                v53 = 1024;
                v54 = v38;
                v55 = 1024;
                v56 = DWORD1(v38);
                v57 = 2048;
                v58 = *(&v40 + 2);
                v59 = 2048;
                v60 = *&v40;
                v61 = 1024;
                v62 = v24;
                v25 = _os_log_send_and_compose_impl();
                sub_100152C7C("Generic", 1, 0, 2, "[CLWorkoutPressureSourceSelector feedStepCountElevationForOnDeviceStartTime:withLastSigElevEndTime:]", "%s\n", v25);
                if (v25 != buf)
                {
                  free(v25);
                }
              }
            }

            if (!v16)
            {
              goto LABEL_27;
            }
          }

          sub_100008080(v16);
          goto LABEL_27;
        }
      }
    }
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_10190903C();
    }

    v26 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
    {
      v27 = *p_isSourceOnDevice;
      *buf = 134218240;
      *&buf[4] = a3;
      *&buf[12] = 1024;
      *&buf[14] = v27;
      _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_ERROR, "#altimeter,feed step count elevation,no data in buffer,timestamp,%f,onDevice,%d", buf, 0x12u);
    }

    if (sub_10000A100(121, 0))
    {
      sub_101909050(p_isSourceOnDevice, v28, v29, v30, v31, v32, v33, v34);
    }
  }
}

- (void)computeCompanionPressureOffsetData:(double)a3
{
  p_isSourceOnDevice = &self->_isSourceOnDevice;
  if (self->_isSourceOnDevice)
  {

    [(CLWorkoutPressureSourceSelector *)self resetCompanionPressureOffsetData];
  }

  else if (!self->_companionPressureOffsetData.__engaged_)
  {
    dataBuffer = self->_dataBuffer;
    v7 = dataBuffer[71];
    if (v7 && dataBuffer[65])
    {
      v8 = (*(dataBuffer[67] + (((v7 + dataBuffer[70] - 1) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (v7 + *(dataBuffer + 560) - 1));
      v10 = *v8;
      v9 = v8[1];
      if (v9)
      {
        atomic_fetch_add_explicit(&v9->__shared_owners_, 1uLL, memory_order_relaxed);
        dataBuffer = self->_dataBuffer;
      }

      v11 = dataBuffer[61];
      if (dataBuffer[62] != v11)
      {
        v12 = dataBuffer[64];
        v13 = (v11 + 8 * (v12 >> 8));
        v14 = (*v13 + 16 * v12);
        v15 = *(v11 + (((dataBuffer[65] + v12) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(dataBuffer + 520) + v12);
        if (v14 != v15)
        {
          v16 = 0.0;
          v17 = 1.79769313e308;
          do
          {
            v19 = *v14;
            v18 = v14[1];
            if (v18)
            {
              atomic_fetch_add_explicit(&v18->__shared_owners_, 1uLL, memory_order_relaxed);
            }

            v20 = vabdd_f64(*(v10 + 8), *(v19 + 8));
            if (v20 < v17)
            {
              v16 = *(v19 + 24);
              v17 = v20;
            }

            if (v18)
            {
              sub_100008080(v18);
            }

            v14 += 2;
            if ((v14 - *v13) == 4096)
            {
              v21 = v13[1];
              ++v13;
              v14 = v21;
            }
          }

          while (v14 != v15);
          if (v16 > 0.0)
          {
            v22 = v16;
            v23 = sub_1000A6C00(v22, 101320.0);
            engaged = self->_companionPressureOffsetData.__engaged_;
            v25 = *(v10 + 16);
            self->_companionPressureOffsetData.var0.__val_.refBaroElevation = v23;
            *&self->_companionPressureOffsetData.var0.__val_.refElevationAscended = v25;
            if (!engaged)
            {
              self->_companionPressureOffsetData.__engaged_ = 1;
            }
          }
        }
      }

      if (v9)
      {

        sub_100008080(v9);
      }
    }

    else
    {
      [(CLWorkoutPressureSourceSelector *)self resetCompanionPressureOffsetData];
      if (qword_1025D4410 != -1)
      {
        sub_10190903C();
      }

      v26 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
      {
        v27 = *p_isSourceOnDevice;
        v35 = 134218240;
        v36 = a3;
        v37 = 1024;
        v38 = v27;
        _os_log_impl(dword_100000000, v26, OS_LOG_TYPE_ERROR, "#altimeter,compute companion pressure offset,no data in buffer,timestamp,%f,onDevice,%d", &v35, 0x12u);
      }

      if (sub_10000A100(121, 0))
      {
        sub_101909158(p_isSourceOnDevice, v28, v29, v30, v31, v32, v33, v34);
      }
    }
  }
}

- (NotificationData)prepareStepCountUpdate:(SEL)a3
{
  v5 = *a4.var0;
  v6 = *(*a4.var0 + 8);
  v7 = *(*a4.var0 + 16);
  v8 = *(*a4.var0 + 20);
  if (*(self + 32) == 1)
  {
    v9 = *(v5 + 24);
    v10 = *(v5 + 32);
    v11 = *(v5 + 36);
    v12 = *(v5 + 38);
  }

  else if (*(self + 28) == 1)
  {
    v9 = sub_1012C27C8(*(self + 4) + ((v7 - (v8 + *(self + 5)) + *(self + 6)) / 100.0), 101320.0);
    v11 = 0;
    v10 = -1.0;
    v12 = 1;
  }

  else
  {
    if (qword_1025D4410 != -1)
    {
      sub_10190903C();
    }

    v13 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_ERROR))
    {
      v21 = 134217984;
      Current = CFAbsoluteTimeGetCurrent();
      _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_ERROR, "#altimeter,companion pressure offset data unavailable,timestamp,%f", &v21, 0xCu);
    }

    self = sub_10000A100(121, 0);
    v10 = -1.0;
    v9 = 0.0;
    if (self)
    {
      sub_101909260(self, v14, v15, v16, v17, v18, v19, v20);
      v10 = -1.0;
      v9 = 0.0;
    }

    v12 = 0;
    v11 = 0;
  }

  *retstr = 0u;
  *(retstr + 1) = 0u;
  *(retstr + 2) = 0u;
  *(retstr + 3) = 0u;
  *(retstr + 10) = 0u;
  *(retstr + 11) = 0u;
  *(retstr + 8) = 0u;
  *(retstr + 9) = 0u;
  *(retstr + 6) = 0u;
  *(retstr + 7) = 0u;
  *(retstr + 4) = 0u;
  *(retstr + 5) = 0u;
  *(retstr + 1) = v6;
  *(retstr + 4) = v7;
  *(retstr + 5) = v8;
  *(retstr + 3) = 0;
  *(retstr + 4) = 0;
  *(retstr + 10) = 1000;
  *(retstr + 12) = v10;
  *(retstr + 27) = v11;
  *(retstr + 14) = v9;
  *(retstr + 61) = v12;
  return self;
}

- (id).cxx_construct
{
  *(self + 16) = 0;
  *(self + 28) = 0;
  return self;
}

@end