@interface MOTripPlan
- (MOTripPlan)initWithDestination:(id)a3 destinationType:(unint64_t)a4 startDate:(id)a5 endDate:(id)a6;
@end

@implementation MOTripPlan

- (MOTripPlan)initWithDestination:(id)a3 destinationType:(unint64_t)a4 startDate:(id)a5 endDate:(id)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = MOTripPlan;
  v14 = [(MOTripPlan *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_destination, a3);
    v15->_destinationType = a4;
    objc_storeStrong(&v15->_startDate, a5);
    objc_storeStrong(&v15->_endDate, a6);
  }

  return v15;
}

@end