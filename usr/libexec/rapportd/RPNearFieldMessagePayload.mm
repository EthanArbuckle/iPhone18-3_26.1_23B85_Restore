@interface RPNearFieldMessagePayload
- (RPNearFieldMessagePayload)initWithDictionary:(id)a3;
- (RPNearFieldMessagePayload)initWithType:(int64_t)a3;
- (id)dictionaryRepresentation;
@end

@implementation RPNearFieldMessagePayload

- (RPNearFieldMessagePayload)initWithType:(int64_t)a3
{
  v8.receiver = self;
  v8.super_class = RPNearFieldMessagePayload;
  v4 = [(RPNearFieldMessagePayload *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_type = a3;
    v6 = v4;
  }

  return v5;
}

- (RPNearFieldMessagePayload)initWithDictionary:(id)a3
{
  v4 = NSDictionaryGetNSNumber();
  v5 = v4;
  if (v4)
  {
    v6 = [v4 integerValue];
  }

  else
  {
    v6 = 0;
  }

  v7 = [(RPNearFieldMessagePayload *)self initWithType:v6];

  return v7;
}

- (id)dictionaryRepresentation
{
  v5 = &off_1001B7DC8;
  v2 = [NSNumber numberWithInteger:self->_type];
  v6 = v2;
  v3 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  return v3;
}

@end