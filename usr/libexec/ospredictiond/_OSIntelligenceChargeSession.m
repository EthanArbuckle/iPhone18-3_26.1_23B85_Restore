@interface _OSIntelligenceChargeSession
- (_OSIntelligenceChargeSession)initWithStartDate:(id)a3 withEndDate:(id)a4 withStartSoC:(id)a5 withEndSoC:(id)a6;
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation _OSIntelligenceChargeSession

- (_OSIntelligenceChargeSession)initWithStartDate:(id)a3 withEndDate:(id)a4 withStartSoC:(id)a5 withEndSoC:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v21.receiver = self;
  v21.super_class = _OSIntelligenceChargeSession;
  v15 = [(_OSIntelligenceChargeSession *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_startDate, a3);
    objc_storeStrong(&v16->_endDate, a4);
    objc_storeStrong(&v16->_startSoC, a5);
    objc_storeStrong(&v16->_endSoC, a6);
    [v12 timeIntervalSinceReferenceDate];
    v18 = v17;
    [v11 timeIntervalSinceReferenceDate];
    v16->_duration = v18 - v19;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  v5 = [(_OSIntelligenceChargeSession *)self startDate];
  v6 = [v5 copy];
  v7 = [(_OSIntelligenceChargeSession *)self endDate];
  v8 = [v7 copy];
  v9 = [(_OSIntelligenceChargeSession *)self startSoC];
  v10 = [v9 copy];
  v11 = [(_OSIntelligenceChargeSession *)self endSoC];
  v12 = [v11 copy];
  v13 = [v4 initWithStartDate:v6 withEndDate:v8 withStartSoC:v10 withEndSoC:v12];

  return v13;
}

@end