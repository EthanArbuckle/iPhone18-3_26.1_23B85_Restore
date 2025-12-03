@interface _OSIntelligenceChargeSession
- (_OSIntelligenceChargeSession)initWithStartDate:(id)date withEndDate:(id)endDate withStartSoC:(id)c withEndSoC:(id)soC;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation _OSIntelligenceChargeSession

- (_OSIntelligenceChargeSession)initWithStartDate:(id)date withEndDate:(id)endDate withStartSoC:(id)c withEndSoC:(id)soC
{
  dateCopy = date;
  endDateCopy = endDate;
  cCopy = c;
  soCCopy = soC;
  v21.receiver = self;
  v21.super_class = _OSIntelligenceChargeSession;
  v15 = [(_OSIntelligenceChargeSession *)&v21 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_startDate, date);
    objc_storeStrong(&v16->_endDate, endDate);
    objc_storeStrong(&v16->_startSoC, c);
    objc_storeStrong(&v16->_endSoC, soC);
    [endDateCopy timeIntervalSinceReferenceDate];
    v18 = v17;
    [dateCopy timeIntervalSinceReferenceDate];
    v16->_duration = v18 - v19;
  }

  return v16;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  startDate = [(_OSIntelligenceChargeSession *)self startDate];
  v6 = [startDate copy];
  endDate = [(_OSIntelligenceChargeSession *)self endDate];
  v8 = [endDate copy];
  startSoC = [(_OSIntelligenceChargeSession *)self startSoC];
  v10 = [startSoC copy];
  endSoC = [(_OSIntelligenceChargeSession *)self endSoC];
  v12 = [endSoC copy];
  v13 = [v4 initWithStartDate:v6 withEndDate:v8 withStartSoC:v10 withEndSoC:v12];

  return v13;
}

@end