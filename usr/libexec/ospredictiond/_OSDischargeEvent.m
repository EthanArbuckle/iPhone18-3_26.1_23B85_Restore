@interface _OSDischargeEvent
- (_OSDischargeEvent)initWithSoC:(id)a3 andCurrrentCapacity:(id)a4 andTimestamp:(id)a5;
@end

@implementation _OSDischargeEvent

- (_OSDischargeEvent)initWithSoC:(id)a3 andCurrrentCapacity:(id)a4 andTimestamp:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = _OSDischargeEvent;
  v11 = [(_OSDischargeEvent *)&v14 init];
  v12 = v11;
  if (v11)
  {
    [(_OSDischargeEvent *)v11 setSoc:v8];
    [(_OSDischargeEvent *)v12 setCurrentCapacity:v9];
    [(_OSDischargeEvent *)v12 setTimestamp:v10];
  }

  return v12;
}

@end