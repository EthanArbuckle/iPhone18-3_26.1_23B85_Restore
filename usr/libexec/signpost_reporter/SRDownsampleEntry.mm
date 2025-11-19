@interface SRDownsampleEntry
- (BOOL)shouldReportThisTime;
- (SRDownsampleEntry)initWithCap:(unint64_t)a3 downsampleRatio:(unint64_t)a4;
@end

@implementation SRDownsampleEntry

- (SRDownsampleEntry)initWithCap:(unint64_t)a3 downsampleRatio:(unint64_t)a4
{
  v4 = self;
  if (a4)
  {
    v11.receiver = self;
    v11.super_class = SRDownsampleEntry;
    v7 = [(SRDownsampleEntry *)&v11 init];
    if (v7)
    {
      v7->_cap = a3;
      v7->_downsampleRatio = a4;
    }

    v4 = v7;
    v8 = v4;
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
  v3 = [(SRDownsampleEntry *)self eventsReported];
  if (v3 >= [(SRDownsampleEntry *)self cap])
  {
    return 0;
  }

  v4 = [(SRDownsampleEntry *)self eventsSeen];
  if (v4 % [(SRDownsampleEntry *)self downsampleRatio])
  {
    return 0;
  }

  [(SRDownsampleEntry *)self setEventsReported:[(SRDownsampleEntry *)self eventsReported]+ 1];
  return 1;
}

@end