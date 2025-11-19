@interface DKMLogEvent
+ (id)alloc;
- (DKMLogEvent)init;
- (double)durationInMilliseconds;
- (void)submitAtDate:(id)a3;
@end

@implementation DKMLogEvent

+ (id)alloc
{
  v3.receiver = a1;
  v3.super_class = &OBJC_METACLASS___DKMLogEvent;
  return objc_msgSendSuper2(&v3, "alloc");
}

- (DKMLogEvent)init
{
  v7.receiver = self;
  v7.super_class = DKMLogEvent;
  v2 = [(DKMLogEvent *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v2->_submitted = 0;
    v4 = +[NSDate date];
    startDate = v3->_startDate;
    v3->_startDate = v4;
  }

  return v3;
}

- (void)submitAtDate:(id)a3
{
  v7 = a3;
  [(DKMLogEvent *)self setSubmitted:1];
  v4 = [(DKMLogEvent *)self startDate];
  v5 = [v7 compare:v4];

  if (v5 == -1)
  {
    v6 = [(DKMLogEvent *)self startDate];
    [(DKMLogEvent *)self setEndDate:v6];
  }

  else
  {
    [(DKMLogEvent *)self setEndDate:v7];
  }
}

- (double)durationInMilliseconds
{
  v3 = [(DKMLogEvent *)self endDate];
  v4 = [(DKMLogEvent *)self startDate];
  [v3 timeIntervalSinceDate:v4];
  v6 = v5 * 1000.0;

  return v6;
}

@end