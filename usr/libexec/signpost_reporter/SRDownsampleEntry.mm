@interface SRDownsampleEntry
- (BOOL)shouldReportThisTime;
- (SRDownsampleEntry)initWithCap:(unint64_t)cap downsampleRatio:(unint64_t)ratio;
@end

@implementation SRDownsampleEntry

- (SRDownsampleEntry)initWithCap:(unint64_t)cap downsampleRatio:(unint64_t)ratio
{
  selfCopy = self;
  if (ratio)
  {
    v11.receiver = self;
    v11.super_class = SRDownsampleEntry;
    v7 = [(SRDownsampleEntry *)&v11 init];
    if (v7)
    {
      v7->_cap = cap;
      v7->_downsampleRatio = ratio;
    }

    selfCopy = v7;
    v8 = selfCopy;
  }

  else
  {
    v9 = sub_100002620();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_10000BF64();
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)shouldReportThisTime
{
  [(SRDownsampleEntry *)self setEventsSeen:[(SRDownsampleEntry *)self eventsSeen]+ 1];
  eventsReported = [(SRDownsampleEntry *)self eventsReported];
  if (eventsReported >= [(SRDownsampleEntry *)self cap])
  {
    return 0;
  }

  eventsSeen = [(SRDownsampleEntry *)self eventsSeen];
  if (eventsSeen % [(SRDownsampleEntry *)self downsampleRatio])
  {
    return 0;
  }

  [(SRDownsampleEntry *)self setEventsReported:[(SRDownsampleEntry *)self eventsReported]+ 1];
  return 1;
}

@end