@interface DKMInterval
+ (id)closedClosedIntervalFromStart:(id)start toEnd:(id)end;
+ (id)closedOpenIntervalFromStart:(id)start toEnd:(id)end;
+ (id)openClosedIntervalFromStart:(id)start toEnd:(id)end;
+ (id)openOpenIntervalFromStart:(id)start toEnd:(id)end;
+ (void)initialize;
- (id)initFromStart:(id)start toEnd:(id)end;
- (id)labelString;
@end

@implementation DKMInterval

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == self)
  {
    v4 = qword_1002ACC50;
    qword_1002ACC50 = &off_100282468;

    v5 = qword_1002ACC58;
    qword_1002ACC58 = &off_100282478;
  }
}

+ (id)openOpenIntervalFromStart:(id)start toEnd:(id)end
{
  endCopy = end;
  startCopy = start;
  v7 = [(DKMInterval *)[DKMOpenOpenInterval alloc] initFromStart:startCopy toEnd:endCopy];

  return v7;
}

+ (id)openClosedIntervalFromStart:(id)start toEnd:(id)end
{
  endCopy = end;
  startCopy = start;
  v7 = [(DKMInterval *)[DKMOpenClosedInterval alloc] initFromStart:startCopy toEnd:endCopy];

  return v7;
}

+ (id)closedOpenIntervalFromStart:(id)start toEnd:(id)end
{
  endCopy = end;
  startCopy = start;
  v7 = [(DKMInterval *)[DKMClosedOpenInterval alloc] initFromStart:startCopy toEnd:endCopy];

  return v7;
}

+ (id)closedClosedIntervalFromStart:(id)start toEnd:(id)end
{
  endCopy = end;
  startCopy = start;
  v7 = [(DKMInterval *)[DKMClosedClosedInterval alloc] initFromStart:startCopy toEnd:endCopy];

  return v7;
}

- (id)initFromStart:(id)start toEnd:(id)end
{
  startCopy = start;
  endCopy = end;
  v12.receiver = self;
  v12.super_class = DKMInterval;
  v9 = [(DKMInterval *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_start, start);
    objc_storeStrong(p_isa + 2, end);
  }

  return p_isa;
}

- (id)labelString
{
  start = [(DKMInterval *)self start];
  v4 = [(DKMInterval *)self end];
  v5 = [start isEqualToNumber:v4];

  start2 = [(DKMInterval *)self start];
  v7 = start2;
  if (v5)
  {
    allNumbersIntervalString = [start2 description];

    goto LABEL_12;
  }

  v9 = [start2 isEqualToNumber:qword_1002ACC58];

  v10 = [(DKMInterval *)self end];
  v11 = [v10 isEqualToNumber:qword_1002ACC50];

  if (v9)
  {
    if (v11)
    {
      allNumbersIntervalString = [(DKMInterval *)self allNumbersIntervalString];
      goto LABEL_12;
    }

    negativeInfinityIntervalString = [(DKMInterval *)self negativeInfinityIntervalString];
    start4 = [(DKMInterval *)self end];
  }

  else
  {
    if (!v11)
    {
      negativeInfinityIntervalString = [(DKMInterval *)self standardIntervalString];
      start3 = [(DKMInterval *)self start];
      v15 = [(DKMInterval *)self end];
      allNumbersIntervalString = [NSString stringWithValidatedFormat:negativeInfinityIntervalString validFormatSpecifiers:@"%@ %@" error:0, start3, v15];

      goto LABEL_11;
    }

    negativeInfinityIntervalString = [(DKMInterval *)self positiveInfinityIntervalString];
    start4 = [(DKMInterval *)self start];
  }

  start3 = start4;
  allNumbersIntervalString = [NSString stringWithValidatedFormat:negativeInfinityIntervalString validFormatSpecifiers:@"%@" error:0, start4];
LABEL_11:

LABEL_12:

  return allNumbersIntervalString;
}

@end