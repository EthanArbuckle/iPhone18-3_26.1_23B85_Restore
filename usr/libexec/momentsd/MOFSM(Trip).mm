@interface MOFSM(Trip)
- (id)description;
@end

@implementation MOFSM(Trip)

- (id)description
{
  v3 = objc_opt_class();
  v19 = NSStringFromClass(v3);
  name = [(MOFSM *)self name];
  mask = [name mask];
  referenceState = [(MOFSM *)self referenceState];
  mask2 = [referenceState mask];
  referenceStateCode = [(MOFSM *)self referenceStateCode];
  mask3 = [referenceStateCode mask];
  referenceCountry = [(MOFSM *)self referenceCountry];
  mask4 = [referenceCountry mask];
  referenceCountryCode = [(MOFSM *)self referenceCountryCode];
  mask5 = [referenceCountryCode mask];
  mode = [(MOFSM *)self mode];
  v12 = [(MOFSM *)self stringFromState:[(MOFSM *)self state]];
  substate = [(MOFSM *)self substate];
  mask6 = [substate mask];
  destination = [(MOFSM *)self destination];
  mask7 = [destination mask];
  timeRangeStartDate = [(MOFSM *)self timeRangeStartDate];
  timeRangeEndDate = [(MOFSM *)self timeRangeEndDate];
  lastProcessedDate = [(MOFSM *)self lastProcessedDate];
  v20 = [NSString stringWithFormat:@"%@: name, %@, state, %@(%@), country, %@(%@), mode, %lu, state, %@, subState, %@, destination, %@, startDate, %@, endDate, %@, timestamp, %@", v19, mask, mask2, mask3, mask4, mask5, mode, v12, mask6, mask7, timeRangeStartDate, timeRangeEndDate, lastProcessedDate];

  return v20;
}

@end