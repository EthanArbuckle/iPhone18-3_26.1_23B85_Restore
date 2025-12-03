@interface _DASActivityDayToDurations
- (_DASActivityDayToDurations)initWithCoder:(id)coder;
- (_DASActivityDayToDurations)initWithDate:(id)date activityDurations:(id)durations;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _DASActivityDayToDurations

- (id)description
{
  date = [(_DASActivityDayToDurations *)self date];
  activityDurations = [(_DASActivityDayToDurations *)self activityDurations];
  v5 = [NSString stringWithFormat:@"Date: %@, Activity Durations %@", date, activityDurations];

  return v5;
}

- (_DASActivityDayToDurations)initWithDate:(id)date activityDurations:(id)durations
{
  dateCopy = date;
  durationsCopy = durations;
  v12.receiver = self;
  v12.super_class = _DASActivityDayToDurations;
  v9 = [(_DASActivityDayToDurations *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_date, date);
    objc_storeStrong(&v10->_activityDurations, durations);
  }

  return v10;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  date = [(_DASActivityDayToDurations *)self date];
  activityDurations = [(_DASActivityDayToDurations *)self activityDurations];
  v7 = [v4 initWithDate:date activityDurations:activityDurations];

  return v7;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"date"];
  [coderCopy encodeObject:self->_activityDurations forKey:@"activityDurations"];
}

- (_DASActivityDayToDurations)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"date"];
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v6, v7, objc_opt_class(), 0];
  v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"activityDurations"];

  v10 = 0;
  if (v5)
  {
    v11 = v9 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (!v11)
  {
    v10 = [objc_alloc(objc_opt_class()) initWithDate:v5 activityDurations:v9];
  }

  return v10;
}

@end