@interface NotificationManager
- (id)init:(int)init withSolarInfo:(BOOL)info withModeratePressureVersion:(int)version;
- (int64_t)updateThermalPressureLevelNotification:(unint64_t)notification shouldForceThermalPressure:(BOOL)pressure;
- (void)dealloc;
- (void)sendRadioNotification:(unsigned __int8)notification;
- (void)setThermalPressureLevelNotification:(unint64_t)notification;
- (void)updateEarlyThermalNotification:(unsigned __int8)notification;
- (void)updateMaxValueToken:(unint64_t)token;
- (void)updateNotifyTokens;
- (void)updateThermalMitigationNotification:(unsigned __int8)notification;
- (void)updateThermalNotification:(unint64_t)notification;
- (void)updatetimeToMitigateNotification:(unsigned __int8)notification AndReasonCode:(unsigned __int8)code;
@end

@implementation NotificationManager

- (id)init:(int)init withSolarInfo:(BOOL)info withModeratePressureVersion:(int)version
{
  infoCopy = info;
  v22.receiver = self;
  v22.super_class = NotificationManager;
  v8 = [(NotificationManager *)&v22 init];
  v9 = v8;
  if (v8)
  {
    v8->pressureLevel_previous = 0;
    v8->totalSensors = init + 1;
    v10 = init + 4;
    if (init < -4)
    {
      v10 = init + 7;
    }

    v8->includeSolarInfo = infoCopy;
    if (infoCopy)
    {
      v11 = 2;
    }

    else
    {
      v11 = 1;
    }

    v12 = (v11 + (v10 >> 2));
    v13 = malloc_type_malloc(4 * v12, 0x100004052888210uLL);
    v9->listThermalSensorToken = v13;
    if (notify_register_check("com.apple.system.maxthermalsensorvalue", v13) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051714();
    }

    if (v12 >= 2)
    {
      v14 = 1;
      v15 = 1;
      qmemcpy(v18, ".thermalSensorVacom.apple.system", sizeof(v18));
      do
      {
        *name = v18[1];
        *v24 = v18[0];
        strcpy(&v24[13], "rValues");
        if (v14 != 1 && v14 <= 0x63)
        {
          __sprintf_chk(v21, 0, 3uLL, "%d", v14);
          __strcat_chk();
        }

        if (notify_register_check(name, &v9->listThermalSensorToken[v15]))
        {
          v16 = qword_1000AB718;
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_100051748(&buf, v20, v16);
          }
        }

        ++v14;
        ++v15;
      }

      while (v12 != v14);
    }

    if (notify_register_check(kOSThermalNotificationName, &v9->thermalStatusToken) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051788();
    }

    if (notify_register_check(kOSThermalNotificationPressureLevelName, &v9->thermalPressureLevelToken) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000517BC();
    }

    if (notify_register_check("com.apple.thermal.timeToMitigate", &v9->timeToMitigateToken) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000517F0();
    }

    if (notify_register_check("com.apple.thermal.mitigationReasonCode", &v9->mitigationReasonCodeToken) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051824();
    }

    if (notify_register_check("com.apple.system.thermalmitigation", &v9->thermalMitigationToken) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051858();
    }

    if (notify_register_check("com.apple.system.earlythermalnotification", &v9->earlyThermalNotificationToken) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005188C();
    }

    if (notify_register_check("com.apple.cltm.radioNotification", &v9->radioNotificationToken) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000518C0();
    }

    if (notify_set_state(v9->thermalPressureLevelToken, 0) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000518F4();
    }

    if (notify_post(kOSThermalNotificationPressureLevelName) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051928();
    }

    [(NotificationManager *)v9 updateThermalNotification:0];
    [(NotificationManager *)v9 updatetimeToMitigateNotification:0 AndReasonCode:0];
    v9->moderatePressureVersion = version;
  }

  return v9;
}

- (void)dealloc
{
  listThermalSensorToken = self->listThermalSensorToken;
  if (listThermalSensorToken)
  {
    free(listThermalSensorToken);
  }

  v4.receiver = self;
  v4.super_class = NotificationManager;
  [(NotificationManager *)&v4 dealloc];
}

- (void)updateMaxValueToken:(unint64_t)token
{
  if (notify_set_state(*self->listThermalSensorToken, token))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_10005195C();
    }
  }
}

- (void)updateNotifyTokens
{
  if ([(NotificationManager *)self includeSolarInfo])
  {
    v3 = [+[ContextAwareThermalManager sharedInstance](ContextAwareThermalManager getContextState:"getContextState:", 0]<< 48;
    v4 = 1;
  }

  else
  {
    v3 = 0;
    v4 = 0;
  }

  totalSensors = self->totalSensors;
  if (totalSensors >= 1)
  {
    v6 = 0;
    v7 = 1;
    do
    {
      *(&v8 + 1) = *(&qword_1000AB824 + v6);
      *&v8 = v3;
      v3 = v8 >> 16;
      ++v4;
      v9 = (totalSensors - 1);
      if ((v4 & 3) == 0 || v6 == v9)
      {
        if ((v4 & 3) != 0 && v6 == v9)
        {
          do
          {
            v3 >>= 16;
            ++v4;
          }

          while ((v4 & 3) != 0);
        }

        if (notify_set_state(self->listThermalSensorToken[v7], v3))
        {
          if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
          {
            sub_100051990();
          }

          return;
        }

        v3 = 0;
        ++v7;
        totalSensors = self->totalSensors;
      }

      ++v6;
    }

    while (v6 < totalSensors);
  }
}

- (void)updateThermalNotification:(unint64_t)notification
{
  if (notify_set_state(self->thermalStatusToken, notification))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000519C4();
    }
  }

  else if (notify_post(kOSThermalNotificationName) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000519F8();
  }
}

- (void)sendRadioNotification:(unsigned __int8)notification
{
  if (notify_set_state(self->radioNotificationToken, notification) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100051A2C();
  }

  if (notify_post("com.apple.cltm.radioNotification"))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051A60();
    }
  }
}

- (int64_t)updateThermalPressureLevelNotification:(unint64_t)notification shouldForceThermalPressure:(BOOL)pressure
{
  if (notification > 9)
  {
    if (notification <= 12)
    {
      if (notification == 10)
      {
        v9 = 30;
        goto LABEL_25;
      }

      if (notification != 11)
      {
        v9 = 40;
        goto LABEL_25;
      }

      v6 = self->pressureLevel_previous > 0x1E;
      v7 = 30;
      v8 = 40;
      goto LABEL_22;
    }

    if (notification - 13 < 3)
    {
      v6 = self->pressureLevel_previous > 0x28;
      v7 = 40;
      v8 = 50;
      goto LABEL_22;
    }

    if (notification == 16)
    {
      v9 = 50;
      goto LABEL_25;
    }
  }

  else
  {
    if (notification > 4)
    {
      v6 = self->pressureLevel_previous > 0x14;
      v7 = 20;
      v8 = 30;
      goto LABEL_22;
    }

    if (notification - 2 < 2)
    {
      goto LABEL_11;
    }

    if (notification == 1)
    {
LABEL_12:
      v6 = self->pressureLevel_previous > 0xA;
      v7 = 10;
      v8 = 20;
LABEL_22:
      if (v6)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }

      goto LABEL_25;
    }

    if (notification == 4)
    {
      if (self->moderatePressureVersion == 1)
      {
LABEL_16:
        if (self->pressureLevel_previous)
        {
          v9 = 20;
        }

        else
        {
          v9 = 10;
        }

        goto LABEL_25;
      }

LABEL_11:
      if (self->moderatePressureVersion)
      {
        goto LABEL_12;
      }

      goto LABEL_16;
    }
  }

  if (pressure || self->lightPressureOverride)
  {
    v9 = 10;
  }

  else if (self->pressureLevel_previous <= 0xA)
  {
    v9 = 0;
  }

  else
  {
    v9 = 10;
  }

LABEL_25:
  if (v9 == self->pressureLevel_previous || byte_1000A22A0 != 1)
  {
    goto LABEL_40;
  }

  if (!notify_set_state(self->thermalPressureLevelToken, v9))
  {
    v10 = notify_post(kOSThermalNotificationPressureLevelName);
    v11 = qword_1000AB718;
    if (v10)
    {
      if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
      {
        sub_100051928();
      }

      return -1;
    }

    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 134218240;
      v15 = v9;
      v16 = 2048;
      notificationCopy = notification;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "<Notice> Thermal pressure level %llu thermal level %llu", &v14, 0x16u);
    }

LABEL_40:
    pressureLevel_previous = self->pressureLevel_previous;
    kdebug_trace();
    self->pressureLevel_previous = v9;
    return v9;
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_1000518F4();
  }

  return -1;
}

- (void)setThermalPressureLevelNotification:(unint64_t)notification
{
  if (self->pressureLevel_previous == notification || (pressureLevel_previous = self->pressureLevel_previous, byte_1000A22A0 != 1))
  {
LABEL_12:
    kdebug_trace();
    return;
  }

  if (notify_set_state(self->thermalPressureLevelToken, notification))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_1000518F4();
    }

    return;
  }

  v6 = notify_post(kOSThermalNotificationPressureLevelName);
  v7 = qword_1000AB718;
  if (!v6)
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      notificationCopy = notification;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Notice> Thermal pressure level %llu", &v8, 0xCu);
    }

    self->pressureLevel_previous = notification;
    goto LABEL_12;
  }

  if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100051928();
  }
}

- (void)updatetimeToMitigateNotification:(unsigned __int8)notification AndReasonCode:(unsigned __int8)code
{
  codeCopy = code;
  if (notify_set_state(self->timeToMitigateToken, notification) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100051A94();
  }

  if (notify_post("com.apple.thermal.timeToMitigate") && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100051AC8();
  }

  if (notify_set_state(self->mitigationReasonCodeToken, codeCopy) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100051AFC();
  }

  if (notify_post("com.apple.thermal.mitigationReasonCode"))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051B30();
    }
  }
}

- (void)updateThermalMitigationNotification:(unsigned __int8)notification
{
  if (notify_set_state(self->thermalMitigationToken, notification) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100051B64();
  }

  if (notify_post("com.apple.system.thermalmitigation"))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051B98();
    }
  }
}

- (void)updateEarlyThermalNotification:(unsigned __int8)notification
{
  if (notify_set_state(self->earlyThermalNotificationToken, notification) && os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
  {
    sub_100051BCC();
  }

  if (notify_post("com.apple.system.earlythermalnotification"))
  {
    if (os_log_type_enabled(qword_1000AB718, OS_LOG_TYPE_ERROR))
    {
      sub_100051C00();
    }
  }
}

@end