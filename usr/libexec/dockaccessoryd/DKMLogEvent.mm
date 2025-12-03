@interface DKMLogEvent
+ (id)alloc;
- (DKMLogEvent)init;
- (double)durationInMilliseconds;
- (void)submitAtDate:(id)date;
@end

@implementation DKMLogEvent

+ (id)alloc
{
  v3.receiver = self;
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

- (void)submitAtDate:(id)date
{
  dateCopy = date;
  [(DKMLogEvent *)self setSubmitted:1];
  startDate = [(DKMLogEvent *)self startDate];
  v5 = [dateCopy compare:startDate];

  if (v5 == -1)
  {
    startDate2 = [(DKMLogEvent *)self startDate];
    [(DKMLogEvent *)self setEndDate:startDate2];
  }

  else
  {
    [(DKMLogEvent *)self setEndDate:dateCopy];
  }
}

- (double)durationInMilliseconds
{
  endDate = [(DKMLogEvent *)self endDate];
  startDate = [(DKMLogEvent *)self startDate];
  [endDate timeIntervalSinceDate:startDate];
  v6 = v5 * 1000.0;

  return v6;
}

@end