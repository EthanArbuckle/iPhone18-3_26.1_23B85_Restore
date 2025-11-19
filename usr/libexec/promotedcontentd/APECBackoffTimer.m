@interface APECBackoffTimer
- (APECBackoffTimer)initWithClock:(id)a3;
- (BOOL)isWaitingForBackoff;
- (NSDate)scheduledDate;
- (int64_t)indexContainingDuration:(double)a3;
- (int64_t)nextIndex;
- (void)resetTimer;
- (void)startMinimumTimer:(double)a3;
- (void)startNextTimer;
- (void)startTimerAt:(int64_t)a3;
@end

@implementation APECBackoffTimer

- (APECBackoffTimer)initWithClock:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = APECBackoffTimer;
  v6 = [(APECBackoffTimer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clock, a3);
    v7->_currentIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (NSDate)scheduledDate
{
  v2 = [(APECBackoffTimer *)self currentTimer];
  v3 = [v2 endDate];

  return v3;
}

- (BOOL)isWaitingForBackoff
{
  v3 = [(APECBackoffTimer *)self currentTimer];
  if (v3)
  {
    v4 = [(APECBackoffTimer *)self currentTimer];
    v5 = [(APECBackoffTimer *)self clock];
    v6 = [v5 now];
    v7 = [v4 containsDate:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)resetTimer
{
  [(APECBackoffTimer *)self setCurrentIndex:0x7FFFFFFFFFFFFFFFLL];

  [(APECBackoffTimer *)self setCurrentTimer:0];
}

- (void)startMinimumTimer:(double)a3
{
  v4 = [(APECBackoffTimer *)self indexContainingDuration:a3];

  [(APECBackoffTimer *)self startTimerAt:v4];
}

- (void)startNextTimer
{
  v3 = [(APECBackoffTimer *)self nextIndex];

  [(APECBackoffTimer *)self startTimerAt:v3];
}

- (int64_t)indexContainingDuration:(double)a3
{
  for (i = 0; i != 9; ++i)
  {
    if (dbl_1003F09C8[i] >= a3)
    {
      break;
    }
  }

  if (i >= 8)
  {
    return 8;
  }

  else
  {
    return i;
  }
}

- (int64_t)nextIndex
{
  if ([(APECBackoffTimer *)self currentIndex]== 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = [(APECBackoffTimer *)self currentIndex];
  result = [(APECBackoffTimer *)self currentIndex];
  if (v4 < 8)
  {
    ++result;
  }

  return result;
}

- (void)startTimerAt:(int64_t)a3
{
  [(APECBackoffTimer *)self setCurrentIndex:a3];
  v4 = [NSDateInterval alloc];
  v7 = [(APECBackoffTimer *)self clock];
  v5 = [v7 now];
  v6 = [v4 initWithStartDate:v5 duration:{dbl_1003F09C8[-[APECBackoffTimer currentIndex](self, "currentIndex")]}];
  [(APECBackoffTimer *)self setCurrentTimer:v6];
}

@end