@interface CLBarometerCalibrationSourceCompanion
- (CLBarometerCalibrationSourceCompanion)initWithUniverse:(id)a3 delegate:(id)a4;
- (id).cxx_construct;
- (void)_writeCompanionStepCountElevation:(NotificationData *)a3;
- (void)dealloc;
- (void)disableSource;
- (void)disableWorkoutSource;
- (void)enableSource;
- (void)enableWorkoutSource;
- (void)onCompanionNotification:(int)a3 data:(NotificationData *)a4;
@end

@implementation CLBarometerCalibrationSourceCompanion

- (CLBarometerCalibrationSourceCompanion)initWithUniverse:(id)a3 delegate:(id)a4
{
  v5.receiver = self;
  v5.super_class = CLBarometerCalibrationSourceCompanion;
  if ([(CLBarometerCalibrationSource *)&v5 initWithUniverse:a3 delegate:a4])
  {
    sub_100058FD4();
  }

  return 0;
}

- (void)dealloc
{
  ptr = self->fCompanionClient.__ptr_;
  self->fCompanionClient.__ptr_ = 0;
  if (ptr)
  {
    (*(*ptr + 8))(ptr, a2);
  }

  v4.receiver = self;
  v4.super_class = CLBarometerCalibrationSourceCompanion;
  [(CLBarometerCalibrationSource *)&v4 dealloc];
}

- (void)enableSource
{
  if (!self->super._sourceEnabled)
  {
    [*(*&self->_workoutSourceEnabled + 16) register:*(*&self->_workoutSourceEnabled + 8) forNotification:11 registrationInfo:0];
    [*(*&self->_workoutSourceEnabled + 16) register:*(*&self->_workoutSourceEnabled + 8) forNotification:12 registrationInfo:0];
    if (sub_100023ED4(0))
    {
      v3 = sub_100023ED4(0);
      sub_100178498(v3, 30, self->fCompanionClient.__ptr_, -1.0);
    }

    if (qword_1025D4410 != -1)
    {
      sub_1018BD480();
    }

    v4 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      Current = CFAbsoluteTimeGetCurrent();
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#altimeter,enable companion data source,timestamp,%f", &v5, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BD494();
    }

    self->super._sourceEnabled = 1;
  }
}

- (void)disableSource
{
  if (self->super._sourceEnabled)
  {
    [*(*&self->_workoutSourceEnabled + 16) unregister:*(*&self->_workoutSourceEnabled + 8) forNotification:11];
    [*(*&self->_workoutSourceEnabled + 16) unregister:*(*&self->_workoutSourceEnabled + 8) forNotification:12];
    if (sub_100023ED4(0))
    {
      v3 = sub_100023ED4(0);
      sub_10095D9F8(v3, 30, self->fCompanionClient.__ptr_);
    }

    if (qword_1025D4410 != -1)
    {
      sub_1018BD480();
    }

    v4 = qword_1025D4418;
    if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134217984;
      Current = CFAbsoluteTimeGetCurrent();
      _os_log_impl(dword_100000000, v4, OS_LOG_TYPE_DEFAULT, "#altimeter,disable companion data source,timestamp,%f", &v5, 0xCu);
    }

    if (sub_10000A100(121, 2))
    {
      sub_1018BD588();
    }

    self->super._sourceEnabled = 0;
  }
}

- (void)enableWorkoutSource
{
  if (!*(&self->super._sourceEnabled + 1))
  {
    v3 = *&self->_workoutSourceEnabled;
    if (v3)
    {
      v4 = 3;
      [*(v3 + 16) register:*(v3 + 8) forNotification:sub_1005F585C(&v4) registrationInfo:0];
    }

    *(&self->super._sourceEnabled + 1) = 1;
  }
}

- (void)disableWorkoutSource
{
  if (*(&self->super._sourceEnabled + 1))
  {
    v3 = *&self->_workoutSourceEnabled;
    if (v3)
    {
      v4 = 3;
      [*(v3 + 16) unregister:*(v3 + 8) forNotification:sub_1005F585C(&v4)];
    }

    *(&self->super._sourceEnabled + 1) = 0;
  }
}

- (void)_writeCompanionStepCountElevation:(NotificationData *)a3
{
  Current = CFAbsoluteTimeGetCurrent();
  sub_10152D354(v11);
  sub_101554834(v11);
  v13 |= 1u;
  *&v11[87] = Current;
  v5 = v12;
  v6 = *(a3 + 1);
  *(v12 + 24) |= 1u;
  *(v5 + 8) = v6;
  v7 = v12;
  v8 = *(a3 + 4);
  *(v12 + 24) |= 2u;
  *(v7 + 16) = v8;
  v9 = v12;
  v10 = *(a3 + 5);
  *(v12 + 24) |= 4u;
  *(v9 + 20) = v10;
  if (qword_102637F48 != -1)
  {
    sub_1018BD67C();
  }

  if (qword_102637F50)
  {
    sub_1017F73BC(qword_102637F50, v11);
  }

  sub_101532FA8(v11);
}

- (void)onCompanionNotification:(int)a3 data:(NotificationData *)a4
{
  switch(a3)
  {
    case 4:
      if (*(&self->super._sourceEnabled + 2))
      {
        v7 = *(a4 + 9);
        v24 = *(a4 + 8);
        v25 = v7;
        v8 = *(a4 + 11);
        v26 = *(a4 + 10);
        v27 = v8;
        v9 = *(a4 + 5);
        v20 = *(a4 + 4);
        v21 = v9;
        v10 = *(a4 + 7);
        v22 = *(a4 + 6);
        v23 = v10;
        v11 = *(a4 + 1);
        *buf = *a4;
        *&buf[16] = v11;
        v12 = *(a4 + 3);
        *&buf[32] = *(a4 + 2);
        v19 = v12;
        [(CLBarometerCalibrationSourceCompanion *)self _writeCompanionStepCountElevation:buf];
      }

      if (*(&self->super._sourceEnabled + 3))
      {
        if (qword_1025D4410 != -1)
        {
          sub_1018BD6A4();
        }

        v13 = qword_1025D4418;
        if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEFAULT))
        {
          Current = CFAbsoluteTimeGetCurrent();
          v15 = *(a4 + 1);
          v16 = *(a4 + 4);
          v17 = *(a4 + 5);
          *buf = 134218752;
          *&buf[4] = Current;
          *&buf[12] = 2048;
          *&buf[14] = v15;
          *&buf[22] = 1024;
          *&buf[24] = v16;
          *&buf[28] = 1024;
          *&buf[30] = v17;
          _os_log_impl(dword_100000000, v13, OS_LOG_TYPE_DEFAULT, "#altimeter,received companion step count elevation,now,%f,startTime,%f,ascend,%d,descend,%d", buf, 0x22u);
        }

        if (sub_10000A100(121, 2))
        {
          sub_1018BD6CC(a4);
        }
      }

      operator new();
    case 12:
      if (*(&self->super._sourceEnabled + 1) != 3.4028e38)
      {
        operator new();
      }

      if (qword_1025D4410 != -1)
      {
        sub_1018BD480();
      }

      v6 = qword_1025D4418;
      if (os_log_type_enabled(qword_1025D4418, OS_LOG_TYPE_DEBUG))
      {
        *buf = 0;
        _os_log_impl(dword_100000000, v6, OS_LOG_TYPE_DEBUG, "Device pressure not ready to calculate companion pressure bias", buf, 2u);
      }

      if (sub_10000A100(121, 2))
      {
        sub_1018BD800();
      }

      break;
    case 11:
      operator new();
  }
}

- (id).cxx_construct
{
  *(self + 4) = 0;
  *(self + 5) = 0;
  return self;
}

@end