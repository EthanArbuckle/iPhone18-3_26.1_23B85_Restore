@interface DMDEventReportingSchedule
- (BOOL)isEqual:(id)equal;
- (DMDEventReportingSchedule)initWithScheduleRegistration:(id)registration;
- (id)description;
- (unint64_t)hash;
- (void)dealloc;
- (void)startWithScheduleElapsedHandler:(id)handler;
@end

@implementation DMDEventReportingSchedule

- (DMDEventReportingSchedule)initWithScheduleRegistration:(id)registration
{
  registrationCopy = registration;
  v25.receiver = self;
  v25.super_class = DMDEventReportingSchedule;
  v5 = [(DMDEventReportingSchedule *)&v25 init];
  if (!v5)
  {
    goto LABEL_24;
  }

  identifier = [registrationCopy identifier];
  identifier = v5->_identifier;
  v5->_identifier = identifier;

  schedule = [registrationCopy schedule];
  payloadFrequency = [schedule payloadFrequency];
  v10 = payloadFrequency;
  if (!payloadFrequency)
  {
    goto LABEL_9;
  }

  if (![payloadFrequency caseInsensitiveCompare:@"Immediate"])
  {
    v14 = 0;
    goto LABEL_17;
  }

  if ([v10 caseInsensitiveCompare:@"Minutely"] || (+[DMDDeviceController shared](DMDDeviceController, "shared"), v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "isAppleInternal"), v12 = objc_claimAutoreleasedReturnValue(), v13 = objc_msgSend(v12, "BOOLValue"), v12, v11, (v13 & 1) == 0))
  {
    if (![v10 caseInsensitiveCompare:@"Hourly"])
    {
      v14 = 2;
      goto LABEL_17;
    }

    if (![v10 caseInsensitiveCompare:@"Weekly"])
    {
      v14 = 4;
      goto LABEL_17;
    }

LABEL_9:
    if ([v10 caseInsensitiveCompare:@"Daily"])
    {
      v15 = DMFConfigurationEngineLog();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        sub_100084180(v10, v15);
      }
    }

    v14 = 3;
    goto LABEL_17;
  }

  v14 = 1;
LABEL_17:
  v5->_frequency = v14;
  payloadLocalTime = [schedule payloadLocalTime];
  v17 = payloadLocalTime;
  if (payloadLocalTime)
  {
    v18 = payloadLocalTime;
  }

  else
  {
    v18 = @"00:00";
  }

  objc_storeStrong(&v5->_localTime, v18);

  payloadSpread = [schedule payloadSpread];
  v20 = payloadSpread;
  if (payloadSpread)
  {
    v21 = payloadSpread;
  }

  else
  {
    v21 = &off_1000D7A18;
  }

  objc_storeStrong(&v5->_spread, v21);

  payloadDay = [schedule payloadDay];
  day = v5->_day;
  v5->_day = payloadDay;

LABEL_24:
  return v5;
}

- (void)dealloc
{
  [(NSTimer *)self->_timer invalidate];
  v3.receiver = self;
  v3.super_class = DMDEventReportingSchedule;
  [(DMDEventReportingSchedule *)&v3 dealloc];
}

- (id)description
{
  v5[0] = @"frequency";
  v5[1] = @"localTime";
  v5[2] = @"spread";
  v5[3] = @"day";
  v2 = [NSArray arrayWithObjects:v5 count:4];
  v3 = DMFObjectDescriptionWithProperties();

  return v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v15 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      v6 = [(DMDEventReportingSchedule *)self day];
      v7 = [(DMDEventReportingSchedule *)v5 day];
      identifier = [(DMDEventReportingSchedule *)self identifier];
      identifier2 = [(DMDEventReportingSchedule *)v5 identifier];
      if ([identifier isEqual:identifier2] && (v10 = -[DMDEventReportingSchedule frequency](self, "frequency"), v10 == -[DMDEventReportingSchedule frequency](v5, "frequency")))
      {
        localTime = [(DMDEventReportingSchedule *)self localTime];
        localTime2 = [(DMDEventReportingSchedule *)v5 localTime];
        if ([localTime isEqual:localTime2])
        {
          spread = [(DMDEventReportingSchedule *)self spread];
          spread2 = [(DMDEventReportingSchedule *)v5 spread];
          v17 = spread;
          if ([spread isEqual:spread2])
          {
            if (v6 | v7)
            {
              v15 = [v6 isEqual:v7];
            }

            else
            {
              v15 = 1;
            }
          }

          else
          {
            v15 = 0;
          }
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = 0;
      }
    }

    else
    {
      v15 = 0;
    }
  }

  return v15;
}

- (unint64_t)hash
{
  identifier = [(DMDEventReportingSchedule *)self identifier];
  v4 = [identifier hash];
  v5 = [NSNumber numberWithInteger:[(DMDEventReportingSchedule *)self frequency]];
  v6 = [v5 hash];
  localTime = [(DMDEventReportingSchedule *)self localTime];
  v8 = v4 ^ [localTime hash];
  spread = [(DMDEventReportingSchedule *)self spread];
  v10 = v8 ^ [spread hash];
  v11 = [(DMDEventReportingSchedule *)self day];
  v12 = v10 ^ [v11 hash];

  return v6 ^ v12;
}

- (void)startWithScheduleElapsedHandler:(id)handler
{
  handlerCopy = handler;
  frequency = [(DMDEventReportingSchedule *)self frequency];
  v6 = 0.0;
  if (frequency > 2)
  {
    if (frequency == 3)
    {
      v6 = 86400.0;
    }

    else if (frequency == 4)
    {
      v6 = 604800.0;
    }
  }

  else if (frequency == 1)
  {
    v7 = +[DMDDeviceController shared];
    isAppleInternal = [v7 isAppleInternal];
    bOOLValue = [isAppleInternal BOOLValue];

    if (bOOLValue)
    {
      v6 = 60.0;
    }

    else
    {
      v6 = 86400.0;
    }
  }

  else if (frequency == 2)
  {
    v6 = 3600.0;
  }

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_100042338;
  v12[3] = &unk_1000CEFC0;
  v13 = handlerCopy;
  v10 = handlerCopy;
  v11 = [NSTimer scheduledTimerWithTimeInterval:1 repeats:v12 block:v6];
  [(DMDEventReportingSchedule *)self setTimer:v11];
}

@end