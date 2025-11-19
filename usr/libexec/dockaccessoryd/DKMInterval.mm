@interface DKMInterval
+ (id)closedClosedIntervalFromStart:(id)a3 toEnd:(id)a4;
+ (id)closedOpenIntervalFromStart:(id)a3 toEnd:(id)a4;
+ (id)openClosedIntervalFromStart:(id)a3 toEnd:(id)a4;
+ (id)openOpenIntervalFromStart:(id)a3 toEnd:(id)a4;
+ (void)initialize;
- (id)initFromStart:(id)a3 toEnd:(id)a4;
- (id)labelString;
@end

@implementation DKMInterval

+ (void)initialize
{
  v3 = objc_opt_self();

  if (v3 == a1)
  {
    v4 = qword_1002ACC50;
    qword_1002ACC50 = &off_100282468;

    v5 = qword_1002ACC58;
    qword_1002ACC58 = &off_100282478;
  }
}

+ (id)openOpenIntervalFromStart:(id)a3 toEnd:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(DKMInterval *)[DKMOpenOpenInterval alloc] initFromStart:v6 toEnd:v5];

  return v7;
}

+ (id)openClosedIntervalFromStart:(id)a3 toEnd:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(DKMInterval *)[DKMOpenClosedInterval alloc] initFromStart:v6 toEnd:v5];

  return v7;
}

+ (id)closedOpenIntervalFromStart:(id)a3 toEnd:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(DKMInterval *)[DKMClosedOpenInterval alloc] initFromStart:v6 toEnd:v5];

  return v7;
}

+ (id)closedClosedIntervalFromStart:(id)a3 toEnd:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [(DKMInterval *)[DKMClosedClosedInterval alloc] initFromStart:v6 toEnd:v5];

  return v7;
}

- (id)initFromStart:(id)a3 toEnd:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = DKMInterval;
  v9 = [(DKMInterval *)&v12 init];
  p_isa = &v9->super.isa;
  if (v9)
  {
    objc_storeStrong(&v9->_start, a3);
    objc_storeStrong(p_isa + 2, a4);
  }

  return p_isa;
}

- (id)labelString
{
  v3 = [(DKMInterval *)self start];
  v4 = [(DKMInterval *)self end];
  v5 = [v3 isEqualToNumber:v4];

  v6 = [(DKMInterval *)self start];
  v7 = v6;
  if (v5)
  {
    v8 = [v6 description];

    goto LABEL_12;
  }

  v9 = [v6 isEqualToNumber:qword_1002ACC58];

  v10 = [(DKMInterval *)self end];
  v11 = [v10 isEqualToNumber:qword_1002ACC50];

  if (v9)
  {
    if (v11)
    {
      v8 = [(DKMInterval *)self allNumbersIntervalString];
      goto LABEL_12;
    }

    v12 = [(DKMInterval *)self negativeInfinityIntervalString];
    v13 = [(DKMInterval *)self end];
  }

  else
  {
    if (!v11)
    {
      v12 = [(DKMInterval *)self standardIntervalString];
      v14 = [(DKMInterval *)self start];
      v15 = [(DKMInterval *)self end];
      v8 = [NSString stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@ %@" error:0, v14, v15];

      goto LABEL_11;
    }

    v12 = [(DKMInterval *)self positiveInfinityIntervalString];
    v13 = [(DKMInterval *)self start];
  }

  v14 = v13;
  v8 = [NSString stringWithValidatedFormat:v12 validFormatSpecifiers:@"%@" error:0, v13];
LABEL_11:

LABEL_12:

  return v8;
}

@end