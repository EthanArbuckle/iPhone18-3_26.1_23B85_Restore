@interface availabilityPredict061725Input
- (availabilityPredict061725Input)initWithDowntimeStartHour:(double)hour downtimeEndHour:(double)endHour hour:(double)a5 weekday:(double)weekday motionActivityCount:(double)count motionActivityCountShortLookback:(double)lookback motionActivityOverlapCountShortLookback:(double)shortLookback engagementCount:(double)self0 engagementCountMidLookback:(double)self1 engagementCountBin1MidLookback:(double)self2 healthandfitnessScreentimeCount:(double)self3 healthandfitnessScreentimeCountMidLookback:(double)self4 healthandfitnessScreentimeCountShortLookback:(double)self5 screentimeCount:(double)self6 screentimeSameWeekdayProbability:(double)self7 screentimeCountShortLookback:(double)self8 overMedianScreentimeSameWeekdayProbability:(double)self9 overMedianScreentimeSameWeekdayProbabilityShortLookback:(double)probabilityShortLookback over20MinScreentimeSameWeekdayProbability:(double)sameWeekdayProbability over20MinScreentimeCountMidLookback:(double)screentimeCountMidLookback callCount:(double)callCount musicCount:(double)musicCount musicCountShortLookback:(double)musicCountShortLookback atHomeCount:(double)homeCount atHomeCountShortLookback:(double)homeCountShortLookback atWorkCount:(double)workCount atWorkSameWeekdayProbability:(double)workSameWeekdayProbability atWorkCountShortLookback:(double)hour0 weekdayPrevScreentimeCount:(double)hour1 firstScreentimeOfDay:(double)hour2 lastScreentimeOfDay:(double)hour3 isAfternoon:(double)hour4 isEvening:(double)hour5 isMorning:(double)hour6 isNight:(double)hour7;
- (id)featureValueForName:(id)name;
@end

@implementation availabilityPredict061725Input

- (availabilityPredict061725Input)initWithDowntimeStartHour:(double)hour downtimeEndHour:(double)endHour hour:(double)a5 weekday:(double)weekday motionActivityCount:(double)count motionActivityCountShortLookback:(double)lookback motionActivityOverlapCountShortLookback:(double)shortLookback engagementCount:(double)self0 engagementCountMidLookback:(double)self1 engagementCountBin1MidLookback:(double)self2 healthandfitnessScreentimeCount:(double)self3 healthandfitnessScreentimeCountMidLookback:(double)self4 healthandfitnessScreentimeCountShortLookback:(double)self5 screentimeCount:(double)self6 screentimeSameWeekdayProbability:(double)self7 screentimeCountShortLookback:(double)self8 overMedianScreentimeSameWeekdayProbability:(double)self9 overMedianScreentimeSameWeekdayProbabilityShortLookback:(double)probabilityShortLookback over20MinScreentimeSameWeekdayProbability:(double)sameWeekdayProbability over20MinScreentimeCountMidLookback:(double)screentimeCountMidLookback callCount:(double)callCount musicCount:(double)musicCount musicCountShortLookback:(double)musicCountShortLookback atHomeCount:(double)homeCount atHomeCountShortLookback:(double)homeCountShortLookback atWorkCount:(double)workCount atWorkSameWeekdayProbability:(double)workSameWeekdayProbability atWorkCountShortLookback:(double)hour0 weekdayPrevScreentimeCount:(double)hour1 firstScreentimeOfDay:(double)hour2 lastScreentimeOfDay:(double)hour3 isAfternoon:(double)hour4 isEvening:(double)hour5 isMorning:(double)hour6 isNight:(double)hour7
{
  v46.receiver = self;
  v46.super_class = availabilityPredict061725Input;
  result = [(availabilityPredict061725Input *)&v46 init];
  if (result)
  {
    result->_downtimeStartHour = hour;
    result->_downtimeEndHour = endHour;
    result->_hour = a5;
    result->_weekday = weekday;
    result->_motionActivityCount = count;
    result->_motionActivityCountShortLookback = lookback;
    result->_motionActivityOverlapCountShortLookback = shortLookback;
    result->_engagementCount = engagementCount;
    result->_engagementCountMidLookback = midLookback;
    result->_engagementCountBin1MidLookback = bin1MidLookback;
    result->_healthandfitnessScreentimeCount = screentimeCount;
    result->_healthandfitnessScreentimeCountMidLookback = countMidLookback;
    result->_healthandfitnessScreentimeCountShortLookback = countShortLookback;
    result->_screentimeCount = a16;
    result->_screentimeSameWeekdayProbability = probability;
    result->_screentimeCountShortLookback = screentimeCountShortLookback;
    result->_overMedianScreentimeSameWeekdayProbability = weekdayProbability;
    result->_overMedianScreentimeSameWeekdayProbabilityShortLookback = probabilityShortLookback;
    result->_over20MinScreentimeSameWeekdayProbability = sameWeekdayProbability;
    result->_over20MinScreentimeCountMidLookback = screentimeCountMidLookback;
    result->_callCount = callCount;
    result->_musicCount = musicCount;
    result->_musicCountShortLookback = musicCountShortLookback;
    result->_atHomeCount = homeCount;
    result->_atHomeCountShortLookback = homeCountShortLookback;
    result->_atWorkCount = workCount;
    result->_atWorkSameWeekdayProbability = workSameWeekdayProbability;
    result->_atWorkCountShortLookback = workCountShortLookback;
    result->_weekdayPrevScreentimeCount = prevScreentimeCount;
    result->_firstScreentimeOfDay = day;
    result->_lastScreentimeOfDay = ofDay;
    result->_isAfternoon = afternoon;
    result->_isEvening = evening;
    result->_isMorning = morning;
    result->_isNight = night;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"downtimeStartHour"])
  {
    [(availabilityPredict061725Input *)self downtimeStartHour];
LABEL_71:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_72;
  }

  if ([nameCopy isEqualToString:@"downtimeEndHour"])
  {
    [(availabilityPredict061725Input *)self downtimeEndHour];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"hour"])
  {
    [(availabilityPredict061725Input *)self hour];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"weekday"])
  {
    [(availabilityPredict061725Input *)self weekday];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"motionActivityCount"])
  {
    [(availabilityPredict061725Input *)self motionActivityCount];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"motionActivityCountShortLookback"])
  {
    [(availabilityPredict061725Input *)self motionActivityCountShortLookback];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"motionActivityOverlapCountShortLookback"])
  {
    [(availabilityPredict061725Input *)self motionActivityOverlapCountShortLookback];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"engagementCount"])
  {
    [(availabilityPredict061725Input *)self engagementCount];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"engagementCountMidLookback"])
  {
    [(availabilityPredict061725Input *)self engagementCountMidLookback];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"engagementCountBin1MidLookback"])
  {
    [(availabilityPredict061725Input *)self engagementCountBin1MidLookback];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"healthandfitnessScreentimeCount"])
  {
    [(availabilityPredict061725Input *)self healthandfitnessScreentimeCount];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"healthandfitnessScreentimeCountMidLookback"])
  {
    [(availabilityPredict061725Input *)self healthandfitnessScreentimeCountMidLookback];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"healthandfitnessScreentimeCountShortLookback"])
  {
    [(availabilityPredict061725Input *)self healthandfitnessScreentimeCountShortLookback];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"screentimeCount"])
  {
    [(availabilityPredict061725Input *)self screentimeCount];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"screentimeSameWeekdayProbability"])
  {
    [(availabilityPredict061725Input *)self screentimeSameWeekdayProbability];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"screentimeCountShortLookback"])
  {
    [(availabilityPredict061725Input *)self screentimeCountShortLookback];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"overMedianScreentimeSameWeekdayProbability"])
  {
    [(availabilityPredict061725Input *)self overMedianScreentimeSameWeekdayProbability];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"overMedianScreentimeSameWeekdayProbabilityShortLookback"])
  {
    [(availabilityPredict061725Input *)self overMedianScreentimeSameWeekdayProbabilityShortLookback];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"over20MinScreentimeSameWeekdayProbability"])
  {
    [(availabilityPredict061725Input *)self over20MinScreentimeSameWeekdayProbability];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"over20MinScreentimeCountMidLookback"])
  {
    [(availabilityPredict061725Input *)self over20MinScreentimeCountMidLookback];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"callCount"])
  {
    [(availabilityPredict061725Input *)self callCount];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"musicCount"])
  {
    [(availabilityPredict061725Input *)self musicCount];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"musicCountShortLookback"])
  {
    [(availabilityPredict061725Input *)self musicCountShortLookback];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"atHomeCount"])
  {
    [(availabilityPredict061725Input *)self atHomeCount];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"atHomeCountShortLookback"])
  {
    [(availabilityPredict061725Input *)self atHomeCountShortLookback];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"atWorkCount"])
  {
    [(availabilityPredict061725Input *)self atWorkCount];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"atWorkSameWeekdayProbability"])
  {
    [(availabilityPredict061725Input *)self atWorkSameWeekdayProbability];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"atWorkCountShortLookback"])
  {
    [(availabilityPredict061725Input *)self atWorkCountShortLookback];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"weekdayPrevScreentimeCount"])
  {
    [(availabilityPredict061725Input *)self weekdayPrevScreentimeCount];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"firstScreentimeOfDay"])
  {
    [(availabilityPredict061725Input *)self firstScreentimeOfDay];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"lastScreentimeOfDay"])
  {
    [(availabilityPredict061725Input *)self lastScreentimeOfDay];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"isAfternoon"])
  {
    [(availabilityPredict061725Input *)self isAfternoon];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"isEvening"])
  {
    [(availabilityPredict061725Input *)self isEvening];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"isMorning"])
  {
    [(availabilityPredict061725Input *)self isMorning];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"isNight"])
  {
    [(availabilityPredict061725Input *)self isNight];
    goto LABEL_71;
  }

  v5 = 0;
LABEL_72:

  return v5;
}

@end