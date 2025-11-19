@interface _OSDischargeInterval
- (_OSDischargeInterval)initWithStartSoC:(id)a3 andEndSoC:(id)a4 andDurationToDischarge:(double)a5;
@end

@implementation _OSDischargeInterval

- (_OSDischargeInterval)initWithStartSoC:(id)a3 andEndSoC:(id)a4 andDurationToDischarge:(double)a5
{
  v8 = a3;
  v9 = a4;
  v13.receiver = self;
  v13.super_class = _OSDischargeInterval;
  v10 = [(_OSDischargeInterval *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(_OSDischargeInterval *)v10 setStartSoC:v8];
    [(_OSDischargeInterval *)v11 setEndSoC:v9];
    [(_OSDischargeInterval *)v11 setDurationToDischarge:a5];
  }

  return v11;
}

@end