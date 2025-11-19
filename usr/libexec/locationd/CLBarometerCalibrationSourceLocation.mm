@interface CLBarometerCalibrationSourceLocation
- (CLBarometerCalibrationSourceLocation)initWithUniverse:(id)a3 delegate:(id)a4;
- (void)copyLocationFields:(shared_ptr<CLBarometerCalibration_Types:(NotificationData *)a4 :CLBarometerCalibrationLocationData>)a3 fromData:;
- (void)disableSource;
- (void)enableSource;
- (void)onLocationNotification:(int)a3 data:(NotificationData *)a4;
- (void)updateAltitudeStateWithLocationData:(shared_ptr<CLBarometerCalibration_Types:(double)a4 :(double)a5 CLBarometerCalibrationLocationData>)a3 sampleAltitude:sampleVerticalUncertainty:;
@end

@implementation CLBarometerCalibrationSourceLocation

- (CLBarometerCalibrationSourceLocation)initWithUniverse:(id)a3 delegate:(id)a4
{
  v5.receiver = self;
  v5.super_class = CLBarometerCalibrationSourceLocation;
  if ([(CLBarometerCalibrationSource *)&v5 initWithUniverse:a3 delegate:a4])
  {
    sub_100678564();
  }

  return 0;
}

- (void)enableSource
{
  if (!self->super._sourceEnabled)
  {
    ptr = self->fLocationControllerClient.__ptr_;
    if (ptr)
    {
      [*(ptr + 2) register:*(ptr + 1) forNotification:4 registrationInfo:0];
    }

    self->super._sourceEnabled = 1;
  }
}

- (void)disableSource
{
  if (self->super._sourceEnabled)
  {
    ptr = self->fLocationControllerClient.__ptr_;
    if (ptr)
    {
      [*(ptr + 2) unregister:*(ptr + 1) forNotification:4];
    }

    self->super._sourceEnabled = 0;
  }
}

- (void)onLocationNotification:(int)a3 data:(NotificationData *)a4
{
  sub_100022008(v7, a4);
  v5 = [CLBarometerCalibrationSourceAggregator isLocationUsefulForCalibration:v7];

  if (v12)
  {
    sub_100008080(v12);
  }

  if (v11 < 0)
  {
    operator delete(__p);
  }

  if (v9)
  {
    sub_100008080(v9);
  }

  if (v8)
  {
    sub_100008080(v8);
  }

  if (a3 == 4)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    sub_100219554();
  }
}

- (void)copyLocationFields:(shared_ptr<CLBarometerCalibration_Types:(NotificationData *)a4 :CLBarometerCalibrationLocationData>)a3 fromData:
{
  v4 = *a3.var0;
  *v4 = *(a3.var1 + 76);
  *(v4 + 8) = *(a3.var1 + 4);
  *(v4 + 80) = *(a3.var1 + 44);
  *(v4 + 24) = vextq_s8(*(a3.var1 + 20), *(a3.var1 + 20), 8uLL);
  *(v4 + 40) = *(a3.var1 + 36);
  *(v4 + 112) = *(a3.var1 + 44);
  *(v4 + 48) = *(a3.var1 + 536);
  v5 = *(a3.var1 + 24);
  *(v4 + 96) = *(a3.var1 + 35);
  *(v4 + 100) = v5;
  *(v4 + 104) = *(a3.var1 + 54);
  *(v4 + 64) = *(a3.var1 + 520);
  *(v4 + 156) = *(a3.var1 + 736);
  *(v4 + 136) = *(a3.var1 + 744);
  *(v4 + 152) = *(a3.var1 + 62);
}

- (void)updateAltitudeStateWithLocationData:(shared_ptr<CLBarometerCalibration_Types:(double)a4 :(double)a5 CLBarometerCalibrationLocationData>)a3 sampleAltitude:sampleVerticalUncertainty:
{
  var0 = a3.var0;
  if (*(*a3.var0 + 100) != 1 || (v9 = **a3.var0, [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitudeTime], vabdd_f64(v9, v10) >= 5.0))
  {
    self->_currentUnderDEM = 0;
    goto LABEL_12;
  }

  v11 = [(CLBarometerCalibrationSourceClient *)self->super._delegate isInOutdoorWorkout];
  v12 = *var0;
  if (v11)
  {
    *(v12 + 65) |= 2u;
  }

  if (*(v12 + 7) > 0.0)
  {
    if (*(v12 + 26) == 2)
    {
      *(v12 + 65) |= 4u;
    }

    [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitudeAccuracy];
    v14 = *(*var0 + 48);
    v15 = v13 + 20.0 + *(*var0 + 56);
    currentUnderDEM = self->_currentUnderDEM;
    [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitude];
    v18 = v14 - v17;
    if (currentUnderDEM)
    {
      if (v18 < v15 + -3.0)
      {
        v19 = 0;
LABEL_23:
        self->_currentUnderDEM = v19;
      }
    }

    else if (v18 > v15)
    {
      v19 = 1;
      goto LABEL_23;
    }

    if (qword_1025D4410 != -1)
    {
      sub_10193B13C();
    }

    v31 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_INFO))
    {
      v32 = self->_currentUnderDEM;
      [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitude];
      v34 = v33;
      [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitudeAccuracy];
      v35 = *(*var0 + 48);
      v36 = *(*var0 + 56);
      v37 = *(*var0 + 130);
      *buf = 67110656;
      *v42 = v32;
      *&v42[4] = 2048;
      *&v42[6] = v34;
      v43 = 2048;
      *v44 = v38;
      *&v44[8] = 2048;
      *&v44[10] = v35;
      *&v44[18] = 2048;
      *&v44[20] = v36;
      *&v44[28] = 2048;
      *&v44[30] = v15;
      *&v44[38] = 1024;
      *&v44[40] = v37;
      _os_log_impl(dword_100000000, v31, OS_LOG_TYPE_INFO, "#altimeter,DEM state,underDEM,%d,altitude,%f,vertUnc,%f,demAltitude,%f,demVertUnc,%f,threshold,%f,altitudeState,%d", buf, 0x40u);
    }

    if (sub_10000A100(121, 2))
    {
      bzero(buf, 0x65CuLL);
      if (qword_1025D4410 != -1)
      {
        sub_10193AFE8();
      }

      [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitude];
      [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitudeAccuracy];
      v39 = _os_log_send_and_compose_impl();
      sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationSourceLocation updateAltitudeStateWithLocationData:sampleAltitude:sampleVerticalUncertainty:]", "%s\n", v39);
      if (v39 != buf)
      {
        free(v39);
      }
    }
  }

LABEL_12:
  if (self->_currentUnderDEM)
  {
    *(*var0 + 130) |= 1u;
  }

  if (qword_1025D4410 != -1)
  {
    sub_10193AFE8();
  }

  v20 = qword_1025D4418;
  if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
  {
    v21 = **var0;
    v22 = *(*var0 + 130);
    v23 = *(*var0 + 100);
    [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitude];
    v25 = v24;
    [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitudeTime];
    v27 = *(*var0 + 136);
    v26 = *(*var0 + 144);
    v28 = *(*var0 + 156);
    v29 = *(*var0 + 152);
    *buf = 134220545;
    *v42 = v21;
    *&v42[8] = 1024;
    *&v42[10] = v22;
    v43 = 1024;
    *v44 = v23;
    *&v44[4] = 2048;
    *&v44[6] = a4;
    *&v44[14] = 2048;
    *&v44[16] = a5;
    *&v44[24] = 2048;
    *&v44[26] = v25;
    *&v44[34] = 2048;
    *&v44[36] = v30;
    v45 = 2049;
    v46 = v26;
    v47 = 2049;
    v48 = v27;
    v49 = 1025;
    v50 = v28;
    v51 = 1025;
    v52 = v29;
    _os_log_impl(dword_100000000, v20, OS_LOG_TYPE_DEBUG, "#altimeter,location altitude information,timestamp,%f,state,%u,type,%d,altitude,%f,vertUnc,%f,lastAltitude,%.3lf,lastAltitudeTimestamp,%.3lf,outdoorConfidence,%{private}.3lf,indoorConfidence,%{private}.3lf,outdoorState,%{private}u,mapMatchType,%{private}u", buf, 0x60u);
  }

  if (sub_10000A100(121, 2))
  {
    bzero(buf, 0x65CuLL);
    if (qword_1025D4410 != -1)
    {
      sub_10193AFE8();
    }

    [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitude];
    [(CLBarometerCalibrationSourceClient *)self->super._delegate getLastAltitudeTime];
    v40 = _os_log_send_and_compose_impl();
    sub_100152C7C("Generic", 1, 0, 2, "[CLBarometerCalibrationSourceLocation updateAltitudeStateWithLocationData:sampleAltitude:sampleVerticalUncertainty:]", "%s\n", v40);
    if (v40 != buf)
    {
      free(v40);
    }
  }
}

@end