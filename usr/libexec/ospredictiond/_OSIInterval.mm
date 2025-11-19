@interface _OSIInterval
- (BOOL)isValidInterval;
- (BOOL)localizeDatesWithSecondsFromGMT:(int64_t)a3;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "init"}];
  v5 = [(_OSIInterval *)self startDate];
  v6 = [v5 copy];
  [v4 setStartDate:v6];

  v7 = [(_OSIInterval *)self endDate];
  v8 = [v7 copy];
  [v4 setEndDate:v8];

  [(_OSIInterval *)self duration];
  [v4 setDuration:?];
  return v4;
}

- (BOOL)localizeDatesWithSecondsFromGMT:(int64_t)a3
{
  v5 = +[NSTimeZone localTimeZone];
  v6 = [v5 secondsFromGMT];

  v7 = a3 - v6;
  if (a3 != v6)
  {
    v8 = [(_OSIInterval *)self startDate];
    v9 = v7;
    v10 = [v8 dateByAddingTimeInterval:v7];
    [(_OSIInterval *)self setStartDate:v10];

    v11 = [(_OSIInterval *)self endDate];
    v12 = [v11 dateByAddingTimeInterval:v9];
    [(_OSIInterval *)self setEndDate:v12];
  }

  return a3 != v6;
}

@end