@interface availabilityPredict061725Input
- (availabilityPredict061725Input)initWithDowntimeStartHour:(double)a3 downtimeEndHour:(double)a4 hour:(double)a5 weekday:(double)a6 motionActivityCount:(double)a7 motionActivityCountShortLookback:(double)a8 motionActivityOverlapCountShortLookback:(double)a9 engagementCount:(double)a10 engagementCountMidLookback:(double)a11 engagementCountBin1MidLookback:(double)a12 healthandfitnessScreentimeCount:(double)a13 healthandfitnessScreentimeCountMidLookback:(double)a14 healthandfitnessScreentimeCountShortLookback:(double)a15 screentimeCount:(double)a16 screentimeSameWeekdayProbability:(double)a17 screentimeCountShortLookback:(double)a18 overMedianScreentimeSameWeekdayProbability:(double)a19 overMedianScreentimeSameWeekdayProbabilityShortLookback:(double)a20 over20MinScreentimeSameWeekdayProbability:(double)a21 over20MinScreentimeCountMidLookback:(double)a22 callCount:(double)a23 musicCount:(double)a24 musicCountShortLookback:(double)a25 atHomeCount:(double)a26 atHomeCountShortLookback:(double)a27 atWorkCount:(double)a28 atWorkSameWeekdayProbability:(double)a29 atWorkCountShortLookback:(double)a30 weekdayPrevScreentimeCount:(double)a31 firstScreentimeOfDay:(double)a32 lastScreentimeOfDay:(double)a33 isAfternoon:(double)a34 isEvening:(double)a35 isMorning:(double)a36 isNight:(double)a37;
- (id)featureValueForName:(id)a3;
@end

@implementation availabilityPredict061725Input

- (availabilityPredict061725Input)initWithDowntimeStartHour:(double)a3 downtimeEndHour:(double)a4 hour:(double)a5 weekday:(double)a6 motionActivityCount:(double)a7 motionActivityCountShortLookback:(double)a8 motionActivityOverlapCountShortLookback:(double)a9 engagementCount:(double)a10 engagementCountMidLookback:(double)a11 engagementCountBin1MidLookback:(double)a12 healthandfitnessScreentimeCount:(double)a13 healthandfitnessScreentimeCountMidLookback:(double)a14 healthandfitnessScreentimeCountShortLookback:(double)a15 screentimeCount:(double)a16 screentimeSameWeekdayProbability:(double)a17 screentimeCountShortLookback:(double)a18 overMedianScreentimeSameWeekdayProbability:(double)a19 overMedianScreentimeSameWeekdayProbabilityShortLookback:(double)a20 over20MinScreentimeSameWeekdayProbability:(double)a21 over20MinScreentimeCountMidLookback:(double)a22 callCount:(double)a23 musicCount:(double)a24 musicCountShortLookback:(double)a25 atHomeCount:(double)a26 atHomeCountShortLookback:(double)a27 atWorkCount:(double)a28 atWorkSameWeekdayProbability:(double)a29 atWorkCountShortLookback:(double)a30 weekdayPrevScreentimeCount:(double)a31 firstScreentimeOfDay:(double)a32 lastScreentimeOfDay:(double)a33 isAfternoon:(double)a34 isEvening:(double)a35 isMorning:(double)a36 isNight:(double)a37
{
  v46.receiver = self;
  v46.super_class = availabilityPredict061725Input;
  result = [(availabilityPredict061725Input *)&v46 init];
  if (result)
  {
    result->_downtimeStartHour = a3;
    result->_downtimeEndHour = a4;
    result->_hour = a5;
    result->_weekday = a6;
    result->_motionActivityCount = a7;
    result->_motionActivityCountShortLookback = a8;
    result->_motionActivityOverlapCountShortLookback = a9;
    result->_engagementCount = a10;
    result->_engagementCountMidLookback = a11;
    result->_engagementCountBin1MidLookback = a12;
    result->_healthandfitnessScreentimeCount = a13;
    result->_healthandfitnessScreentimeCountMidLookback = a14;
    result->_healthandfitnessScreentimeCountShortLookback = a15;
    result->_screentimeCount = a16;
    result->_screentimeSameWeekdayProbability = a17;
    result->_screentimeCountShortLookback = a18;
    result->_overMedianScreentimeSameWeekdayProbability = a19;
    result->_overMedianScreentimeSameWeekdayProbabilityShortLookback = a20;
    result->_over20MinScreentimeSameWeekdayProbability = a21;
    result->_over20MinScreentimeCountMidLookback = a22;
    result->_callCount = a23;
    result->_musicCount = a24;
    result->_musicCountShortLookback = a25;
    result->_atHomeCount = a26;
    result->_atHomeCountShortLookback = a27;
    result->_atWorkCount = a28;
    result->_atWorkSameWeekdayProbability = a29;
    result->_atWorkCountShortLookback = a30;
    result->_weekdayPrevScreentimeCount = a31;
    result->_firstScreentimeOfDay = a32;
    result->_lastScreentimeOfDay = a33;
    result->_isAfternoon = a34;
    result->_isEvening = a35;
    result->_isMorning = a36;
    result->_isNight = a37;
  }

  return result;
}

- (id)featureValueForName:(id)a3
{
  v4 = a3;
  if ([v4 isEqualToString:@"downtimeStartHour"])
  {
    [(availabilityPredict061725Input *)self downtimeStartHour];
LABEL_71:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_72;
  }

  if ([v4 isEqualToString:@"downtimeEndHour"])
  {
    [(availabilityPredict061725Input *)self downtimeEndHour];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"hour"])
  {
    [(availabilityPredict061725Input *)self hour];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"weekday"])
  {
    [(availabilityPredict061725Input *)self weekday];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"motionActivityCount"])
  {
    [(availabilityPredict061725Input *)self motionActivityCount];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"motionActivityCountShortLookback"])
  {
    [(availabilityPredict061725Input *)self motionActivityCountShortLookback];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"motionActivityOverlapCountShortLookback"])
  {
    [(availabilityPredict061725Input *)self motionActivityOverlapCountShortLookback];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"engagementCount"])
  {
    [(availabilityPredict061725Input *)self engagementCount];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"engagementCountMidLookback"])
  {
    [(availabilityPredict061725Input *)self engagementCountMidLookback];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"engagementCountBin1MidLookback"])
  {
    [(availabilityPredict061725Input *)self engagementCountBin1MidLookback];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"healthandfitnessScreentimeCount"])
  {
    [(availabilityPredict061725Input *)self healthandfitnessScreentimeCount];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"healthandfitnessScreentimeCountMidLookback"])
  {
    [(availabilityPredict061725Input *)self healthandfitnessScreentimeCountMidLookback];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"healthandfitnessScreentimeCountShortLookback"])
  {
    [(availabilityPredict061725Input *)self healthandfitnessScreentimeCountShortLookback];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"screentimeCount"])
  {
    [(availabilityPredict061725Input *)self screentimeCount];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"screentimeSameWeekdayProbability"])
  {
    [(availabilityPredict061725Input *)self screentimeSameWeekdayProbability];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"screentimeCountShortLookback"])
  {
    [(availabilityPredict061725Input *)self screentimeCountShortLookback];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"overMedianScreentimeSameWeekdayProbability"])
  {
    [(availabilityPredict061725Input *)self overMedianScreentimeSameWeekdayProbability];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"overMedianScreentimeSameWeekdayProbabilityShortLookback"])
  {
    [(availabilityPredict061725Input *)self overMedianScreentimeSameWeekdayProbabilityShortLookback];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"over20MinScreentimeSameWeekdayProbability"])
  {
    [(availabilityPredict061725Input *)self over20MinScreentimeSameWeekdayProbability];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"over20MinScreentimeCountMidLookback"])
  {
    [(availabilityPredict061725Input *)self over20MinScreentimeCountMidLookback];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"callCount"])
  {
    [(availabilityPredict061725Input *)self callCount];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"musicCount"])
  {
    [(availabilityPredict061725Input *)self musicCount];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"musicCountShortLookback"])
  {
    [(availabilityPredict061725Input *)self musicCountShortLookback];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"atHomeCount"])
  {
    [(availabilityPredict061725Input *)self atHomeCount];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"atHomeCountShortLookback"])
  {
    [(availabilityPredict061725Input *)self atHomeCountShortLookback];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"atWorkCount"])
  {
    [(availabilityPredict061725Input *)self atWorkCount];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"atWorkSameWeekdayProbability"])
  {
    [(availabilityPredict061725Input *)self atWorkSameWeekdayProbability];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"atWorkCountShortLookback"])
  {
    [(availabilityPredict061725Input *)self atWorkCountShortLookback];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"weekdayPrevScreentimeCount"])
  {
    [(availabilityPredict061725Input *)self weekdayPrevScreentimeCount];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"firstScreentimeOfDay"])
  {
    [(availabilityPredict061725Input *)self firstScreentimeOfDay];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"lastScreentimeOfDay"])
  {
    [(availabilityPredict061725Input *)self lastScreentimeOfDay];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"isAfternoon"])
  {
    [(availabilityPredict061725Input *)self isAfternoon];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"isEvening"])
  {
    [(availabilityPredict061725Input *)self isEvening];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"isMorning"])
  {
    [(availabilityPredict061725Input *)self isMorning];
    goto LABEL_71;
  }

  if ([v4 isEqualToString:@"isNight"])
  {
    [(availabilityPredict061725Input *)self isNight];
    goto LABEL_71;
  }

  v5 = 0;
LABEL_72:

  return v5;
}

@end