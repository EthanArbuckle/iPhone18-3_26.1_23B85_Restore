@interface _OSDischargeInterval
- (_OSDischargeInterval)initWithStartSoC:(id)c andEndSoC:(id)soC andDurationToDischarge:(double)discharge;
@end

@implementation _OSDischargeInterval

- (_OSDischargeInterval)initWithStartSoC:(id)c andEndSoC:(id)soC andDurationToDischarge:(double)discharge
{
  cCopy = c;
  soCCopy = soC;
  v13.receiver = self;
  v13.super_class = _OSDischargeInterval;
  v10 = [(_OSDischargeInterval *)&v13 init];
  v11 = v10;
  if (v10)
  {
    [(_OSDischargeInterval *)v10 setStartSoC:cCopy];
    [(_OSDischargeInterval *)v11 setEndSoC:soCCopy];
    [(_OSDischargeInterval *)v11 setDurationToDischarge:discharge];
  }

  return v11;
}

@end