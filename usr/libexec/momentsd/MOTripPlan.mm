@interface MOTripPlan
- (MOTripPlan)initWithDestination:(id)destination destinationType:(unint64_t)type startDate:(id)date endDate:(id)endDate;
@end

@implementation MOTripPlan

- (MOTripPlan)initWithDestination:(id)destination destinationType:(unint64_t)type startDate:(id)date endDate:(id)endDate
{
  destinationCopy = destination;
  dateCopy = date;
  endDateCopy = endDate;
  v17.receiver = self;
  v17.super_class = MOTripPlan;
  v14 = [(MOTripPlan *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_destination, destination);
    v15->_destinationType = type;
    objc_storeStrong(&v15->_startDate, date);
    objc_storeStrong(&v15->_endDate, endDate);
  }

  return v15;
}

@end