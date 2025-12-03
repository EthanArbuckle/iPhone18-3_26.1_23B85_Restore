@interface APPBAnalyticsEvent
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)eventAsString:(int)string;
- (int)StringAsEvent:(id)event;
- (unint64_t)hash;
- (void)writeTo:(id)to;
@end

@implementation APPBAnalyticsEvent

+ (id)options
{
  if (qword_1004E6B50 != -1)
  {
    sub_100394118();
  }

  v3 = qword_1004E6B48;

  return v3;
}

- (id)eventAsString:(int)string
{
  if (string >= 9)
  {
    v4 = [NSString stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_10047D590 + string);
  }

  return v4;
}

- (int)StringAsEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy isEqualToString:@"PrerollRequested"])
  {
    v4 = 0;
  }

  else if ([eventCopy isEqualToString:@"PrivacyUserTransparencyDidAppear"])
  {
    v4 = 1;
  }

  else if ([eventCopy isEqualToString:@"PrivacyUserTransparencyDidRenderTransparency"])
  {
    v4 = 2;
  }

  else if ([eventCopy isEqualToString:@"PrivacyUserTransparencyDidDisappear"])
  {
    v4 = 3;
  }

  else if ([eventCopy isEqualToString:@"PrivacyUserTransparencyDidLinkOut"])
  {
    v4 = 4;
  }

  else if ([eventCopy isEqualToString:@"PrivacyAdTransparencyDidAppear"])
  {
    v4 = 5;
  }

  else if ([eventCopy isEqualToString:@"PrivacyAdTransparencyDidRenderTransparency"])
  {
    v4 = 6;
  }

  else if ([eventCopy isEqualToString:@"PrivacyAdTransparencyDidDisappear"])
  {
    v4 = 7;
  }

  else if ([eventCopy isEqualToString:@"PrivacyAdTransparencyDidLinkOut"])
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = APPBAnalyticsEvent;
  v3 = [(APPBAnalyticsEvent *)&v7 description];
  dictionaryRepresentation = [(APPBAnalyticsEvent *)self dictionaryRepresentation];
  v5 = [NSString stringWithFormat:@"%@ %@", v3, dictionaryRepresentation];

  return v5;
}

- (id)dictionaryRepresentation
{
  v3 = +[NSMutableDictionary dictionary];
  event = self->_event;
  if (event >= 9)
  {
    v5 = [NSString stringWithFormat:@"(unknown: %i)", self->_event];
  }

  else
  {
    v5 = *(&off_10047D590 + event);
  }

  [v3 setObject:v5 forKey:@"event"];

  v6 = [NSNumber numberWithDouble:self->_timestamp];
  [v3 setObject:v6 forKey:@"timestamp"];

  return v3;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteInt32Field();
  PBDataWriterWriteDoubleField();
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(result + 4) = self->_event;
  *(result + 1) = *&self->_timestamp;
  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = [equalCopy isMemberOfClass:objc_opt_class()] && self->_event == *(equalCopy + 4) && self->_timestamp == *(equalCopy + 1);

  return v5;
}

- (unint64_t)hash
{
  timestamp = self->_timestamp;
  if (timestamp < 0.0)
  {
    timestamp = -timestamp;
  }

  *v2.i64 = floor(timestamp + 0.5);
  v5 = (timestamp - *v2.i64) * 1.84467441e19;
  *v3.i64 = *v2.i64 - trunc(*v2.i64 * 5.42101086e-20) * 1.84467441e19;
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v7 = 2654435761u * *vbslq_s8(vnegq_f64(v6), v3, v2).i64;
  v8 = v7 + v5;
  v9 = fabs(v5);
  if (v5 <= 0.0)
  {
    v8 = v7;
  }

  v10 = v7 - v9;
  if (v5 >= 0.0)
  {
    v10 = v8;
  }

  return v10 ^ (2654435761 * self->_event);
}

@end