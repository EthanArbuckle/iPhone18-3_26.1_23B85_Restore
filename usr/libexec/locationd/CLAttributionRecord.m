@interface CLAttributionRecord
- (id)description;
- (void)dealloc;
@end

@implementation CLAttributionRecord

- (id)description
{
  v3 = [objc_msgSend(objc_msgSend(-[STLocationStatusDomainLocationAttribution activityAttribution](-[CLAttributionRecord attributionIdentifier](self "attributionIdentifier")];
  if (!v3)
  {
    v3 = [objc_msgSend(objc_msgSend(-[STLocationStatusDomainLocationAttribution activityAttribution](-[CLAttributionRecord attributionIdentifier](self "attributionIdentifier")];
    if (!v3)
    {
      v3 = [objc_msgSend(objc_msgSend(-[STLocationStatusDomainLocationAttribution activityAttribution](-[CLAttributionRecord attributionIdentifier](self "attributionIdentifier")];
    }
  }

  v4 = v3;
  [(CLTimer *)[(CLAttributionRecord *)self attributionTimer] nextFireDelay];
  if (v5 == 1.79769313e308)
  {
    v6 = -1.0;
  }

  else
  {
    v6 = v5;
  }

  return [NSString stringWithFormat:@"ID:%@ TimeLeft:%f, TotalCount:%d", v4, *&v6, [(CLAttributionRecord *)self totalAttributionCount]];
}

- (void)dealloc
{
  [(CLAttributionRecord *)self setAttributionIdentifier:0];
  [(CLTimer *)[(CLAttributionRecord *)self attributionTimer] invalidate];
  [(CLAttributionRecord *)self setAttributionTimer:0];
  v3.receiver = self;
  v3.super_class = CLAttributionRecord;
  [(CLAttributionRecord *)&v3 dealloc];
}

@end