@interface BlockingThreadElement
- (BlockingThreadElement)init;
- (int64_t)compareCumulativeTime:(id)time;
- (int64_t)compareMaxBlockingTime:(id)time;
@end

@implementation BlockingThreadElement

- (BlockingThreadElement)init
{
  v5.receiver = self;
  v5.super_class = BlockingThreadElement;
  v2 = [(BlockingThreadElement *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(BlockingThreadElement *)v2 setCumulativeTime:0];
    [(BlockingThreadElement *)v3 setMaxBlockingTime:0];
    [(BlockingThreadElement *)v3 setStartThreadTime:0];
    [(BlockingThreadElement *)v3 setEndThreadTime:0];
  }

  return v3;
}

- (int64_t)compareCumulativeTime:(id)time
{
  timeCopy = time;
  cumulativeTime = [(BlockingThreadElement *)self cumulativeTime];
  if (cumulativeTime <= [timeCopy cumulativeTime])
  {
    cumulativeTime2 = [(BlockingThreadElement *)self cumulativeTime];
    if (cumulativeTime2 >= [timeCopy cumulativeTime])
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (int64_t)compareMaxBlockingTime:(id)time
{
  timeCopy = time;
  maxBlockingTime = [(BlockingThreadElement *)self maxBlockingTime];
  if (maxBlockingTime <= [timeCopy maxBlockingTime])
  {
    maxBlockingTime2 = [(BlockingThreadElement *)self maxBlockingTime];
    if (maxBlockingTime2 >= [timeCopy maxBlockingTime])
    {
      v6 = 0;
    }

    else
    {
      v6 = -1;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

@end