@interface BlockingThreadElement
- (BlockingThreadElement)init;
- (int64_t)compareCumulativeTime:(id)a3;
- (int64_t)compareMaxBlockingTime:(id)a3;
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

- (int64_t)compareCumulativeTime:(id)a3
{
  v4 = a3;
  v5 = [(BlockingThreadElement *)self cumulativeTime];
  if (v5 <= [v4 cumulativeTime])
  {
    v7 = [(BlockingThreadElement *)self cumulativeTime];
    if (v7 >= [v4 cumulativeTime])
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

- (int64_t)compareMaxBlockingTime:(id)a3
{
  v4 = a3;
  v5 = [(BlockingThreadElement *)self maxBlockingTime];
  if (v5 <= [v4 maxBlockingTime])
  {
    v7 = [(BlockingThreadElement *)self maxBlockingTime];
    if (v7 >= [v4 maxBlockingTime])
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