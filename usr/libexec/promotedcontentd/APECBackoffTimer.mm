@interface APECBackoffTimer
- (APECBackoffTimer)initWithClock:(id)clock;
- (BOOL)isWaitingForBackoff;
- (NSDate)scheduledDate;
- (int64_t)indexContainingDuration:(double)duration;
- (int64_t)nextIndex;
- (void)resetTimer;
- (void)startMinimumTimer:(double)timer;
- (void)startNextTimer;
- (void)startTimerAt:(int64_t)at;
@end

@implementation APECBackoffTimer

- (APECBackoffTimer)initWithClock:(id)clock
{
  clockCopy = clock;
  v9.receiver = self;
  v9.super_class = APECBackoffTimer;
  v6 = [(APECBackoffTimer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_clock, clock);
    v7->_currentIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v7;
}

- (NSDate)scheduledDate
{
  currentTimer = [(APECBackoffTimer *)self currentTimer];
  endDate = [currentTimer endDate];

  return endDate;
}

- (BOOL)isWaitingForBackoff
{
  currentTimer = [(APECBackoffTimer *)self currentTimer];
  if (currentTimer)
  {
    currentTimer2 = [(APECBackoffTimer *)self currentTimer];
    clock = [(APECBackoffTimer *)self clock];
    v6 = [clock now];
    v7 = [currentTimer2 containsDate:v6];
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

- (void)startMinimumTimer:(double)timer
{
  v4 = [(APECBackoffTimer *)self indexContainingDuration:timer];

  [(APECBackoffTimer *)self startTimerAt:v4];
}

- (void)startNextTimer
{
  nextIndex = [(APECBackoffTimer *)self nextIndex];

  [(APECBackoffTimer *)self startTimerAt:nextIndex];
}

- (int64_t)indexContainingDuration:(double)duration
{
  for (i = 0; i != 9; ++i)
  {
    if (dbl_1003F09C8[i] >= duration)
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

  currentIndex = [(APECBackoffTimer *)self currentIndex];
  result = [(APECBackoffTimer *)self currentIndex];
  if (currentIndex < 8)
  {
    ++result;
  }

  return result;
}

- (void)startTimerAt:(int64_t)at
{
  [(APECBackoffTimer *)self setCurrentIndex:at];
  v4 = [NSDateInterval alloc];
  clock = [(APECBackoffTimer *)self clock];
  v5 = [clock now];
  v6 = [v4 initWithStartDate:v5 duration:{dbl_1003F09C8[-[APECBackoffTimer currentIndex](self, "currentIndex")]}];
  [(APECBackoffTimer *)self setCurrentTimer:v6];
}

@end