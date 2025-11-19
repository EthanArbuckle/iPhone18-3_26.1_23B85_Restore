@interface RadioTS
+ (id)sharedInstance;
- (RadioTS)init;
- (RadioTSInternal)radioTSInternal;
- (void)queryThermalSensorInfo;
- (void)setRadioTSInternal:(RadioTSInternal *)a3;
@end

@implementation RadioTS

+ (id)sharedInstance
{
  if (qword_1000AAC28 != -1)
  {
    sub_100053C64();
  }

  return qword_1000AAC30;
}

- (RadioTS)init
{
  v8.receiver = self;
  v8.super_class = RadioTS;
  v2 = [(RadioTS *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v2->_hasBaseBandTempSensors = 0;
    v2->_sensorIndexTB0R = [+[HidSensors sharedInstance](HidSensors getSensorIndexFrom4CC:"getSensorIndexFrom4CC:", @"TB0R"];
    v3->_sensorIndexTB1R = [+[HidSensors sharedInstance](HidSensors getSensorIndexFrom4CC:"getSensorIndexFrom4CC:", @"TB1R"];
    v3->_sensorIndexTB2R = [+[HidSensors sharedInstance](HidSensors getSensorIndexFrom4CC:"getSensorIndexFrom4CC:", @"TB2R"];
    if (v3->_sensorIndexTB0R < 0 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100053C78();
    }

    if (v3->_sensorIndexTB1R < 0 && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100053CAC();
    }

    if (v3->_sensorIndexTB2R < 0)
    {
      v4 = qword_1000AB718;
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Notice> Sensor TB2R index not set!", buf, 2u);
      }
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10002989C;
    v6[3] = &unk_100085DC8;
    v6[4] = v3;
    sub_100027F44(&v3->_radioTSInternal, v6);
    [(RadioTS *)v3 registerForThermalReport];
  }

  return v3;
}

- (void)queryThermalSensorInfo
{
  if (sub_100028C04(&self->_radioTSInternal))
  {
    sub_100028508(&self->_radioTSInternal);
  }

  else if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100053CE0();
  }
}

- (RadioTSInternal)radioTSInternal
{
  ptr = self[1].abmManager.__ptr_;
  retstr->abmManager.__ptr_ = self->radioSensorQueue;
  retstr->abmManager.__cntrl_ = ptr;
  if (ptr)
  {
    atomic_fetch_add_explicit(ptr + 1, 1uLL, memory_order_relaxed);
  }

  *&retstr->bbIsready = *&self[1].abmManager.__cntrl_;
  return self;
}

- (void)setRadioTSInternal:(RadioTSInternal *)a3
{
  ptr = a3->abmManager.__ptr_;
  cntrl = a3->abmManager.__cntrl_;
  if (cntrl)
  {
    atomic_fetch_add_explicit(cntrl + 1, 1uLL, memory_order_relaxed);
  }

  v7 = self->_radioTSInternal.abmManager.__cntrl_;
  self->_radioTSInternal.abmManager.__ptr_ = ptr;
  self->_radioTSInternal.abmManager.__cntrl_ = cntrl;
  if (v7)
  {
    sub_100028CE8(v7);
  }

  *&self->_radioTSInternal.bbIsready = *&a3->bbIsready;
}

@end