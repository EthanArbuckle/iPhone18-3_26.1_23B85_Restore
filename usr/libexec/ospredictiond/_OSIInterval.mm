@interface _OSIInterval
- (BOOL)isValidInterval;
- (BOOL)localizeDatesWithSecondsFromGMT:(int64_t)t;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _OSIInterval

- (BOOL)isValidInterval
{
  if (self->_startDate)
  {
    endDate = self->_endDate;
    if (endDate)
    {
      [(NSDate *)endDate timeIntervalSinceDate:?];
      LOBYTE(endDate) = v4 > 0.0 && v4 == self->_duration;
    }
  }

  else
  {
    LOBYTE(endDate) = 0;
  }

  return endDate;
}

- (NSString)description
{
  startDate = self->_startDate;
  v4 = +[NSLocale systemLocale];
  v5 = [(NSDate *)startDate descriptionWithLocale:v4];

  endDate = self->_endDate;
  v7 = +[NSLocale systemLocale];
  v8 = [(NSDate *)endDate descriptionWithLocale:v7];

  v9 = &MGGetBoolAnswer_ptr;
  duration = self->_duration;
  LODWORD(v9) = llround(duration);
  v11 = [NSString stringWithFormat:@"start = %@ | end = %@ | duration = %d sec / %.1f min / %.2f hr", v5, v8, v9, duration / 60.0, duration / 3600.0];

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  startDate = [(_OSIInterval *)self startDate];
  v6 = [startDate copy];
  [v4 setStartDate:v6];

  endDate = [(_OSIInterval *)self endDate];
  v8 = [endDate copy];
  [v4 setEndDate:v8];

  [(_OSIInterval *)self duration];
  [v4 setDuration:?];
  return v4;
}

- (BOOL)localizeDatesWithSecondsFromGMT:(int64_t)t
{
  v5 = +[NSTimeZone localTimeZone];
  secondsFromGMT = [v5 secondsFromGMT];

  v7 = t - secondsFromGMT;
  if (t != secondsFromGMT)
  {
    startDate = [(_OSIInterval *)self startDate];
    v9 = v7;
    v10 = [startDate dateByAddingTimeInterval:v7];
    [(_OSIInterval *)self setStartDate:v10];

    endDate = [(_OSIInterval *)self endDate];
    v12 = [endDate dateByAddingTimeInterval:v9];
    [(_OSIInterval *)self setEndDate:v12];
  }

  return t != secondsFromGMT;
}

@end