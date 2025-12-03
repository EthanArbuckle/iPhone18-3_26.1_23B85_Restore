@interface _OSDischargeEvent
- (_OSDischargeEvent)initWithSoC:(id)c andCurrrentCapacity:(id)capacity andTimestamp:(id)timestamp;
@end

@implementation _OSDischargeEvent

- (_OSDischargeEvent)initWithSoC:(id)c andCurrrentCapacity:(id)capacity andTimestamp:(id)timestamp
{
  cCopy = c;
  capacityCopy = capacity;
  timestampCopy = timestamp;
  v14.receiver = self;
  v14.super_class = _OSDischargeEvent;
  v11 = [(_OSDischargeEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(_OSDischargeEvent *)v11 setSoc:cCopy];
    [(_OSDischargeEvent *)v12 setCurrentCapacity:capacityCopy];
    [(_OSDischargeEvent *)v12 setTimestamp:timestampCopy];
  }

  return v12;
}

@end