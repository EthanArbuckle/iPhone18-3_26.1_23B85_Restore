@interface MOEventWorkout
- (MOEventWorkout)init;
- (MOEventWorkout)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOEventWorkout

- (id)description
{
  v2 = [[NSString alloc] initWithFormat:@"workoutType, %@", self->_workoutType];

  return v2;
}

- (MOEventWorkout)init
{
  v3.receiver = self;
  v3.super_class = MOEventWorkout;
  result = [(MOEventWorkout *)&v3 init];
  if (result)
  {
    *&result->_isFitnessPlusSession = 0;
  }

  return result;
}

- (void)encodeWithCoder:(id)coder
{
  workoutType = self->_workoutType;
  coderCopy = coder;
  [coderCopy encodeObject:workoutType forKey:@"workoutType"];
  [coderCopy encodeObject:self->_workoutTotalDistance forKey:@"workoutTotalDistance"];
  [coderCopy encodeObject:self->_workoutTotalEnergyBurned forKey:@"workoutTotalEnergyBurned"];
  [coderCopy encodeObject:self->_workoutDuration forKey:@"workoutDuration"];
  [coderCopy encodeObject:self->_workoutLocationStart forKey:@"workoutLocationStart"];
  [coderCopy encodeObject:self->_workoutLocationRoute forKey:@"workoutLocationRoute"];
  [coderCopy encodeBool:self->_isFitnessPlusSession forKey:@"isFitnessPlusSession"];
  [coderCopy encodeBool:self->_isIndoors forKey:@"isIndoors"];
}

- (MOEventWorkout)initWithCoder:(id)coder
{
  coderCopy = coder;
  v23.receiver = self;
  v23.super_class = MOEventWorkout;
  v5 = [(MOEventWorkout *)&v23 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutType"];
    workoutType = v5->_workoutType;
    v5->_workoutType = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutTotalDistance"];
    workoutTotalDistance = v5->_workoutTotalDistance;
    v5->_workoutTotalDistance = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutTotalEnergyBurned"];
    workoutTotalEnergyBurned = v5->_workoutTotalEnergyBurned;
    v5->_workoutTotalEnergyBurned = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutDuration"];
    workoutDuration = v5->_workoutDuration;
    v5->_workoutDuration = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"workoutLocationStart"];
    workoutLocationStart = v5->_workoutLocationStart;
    v5->_workoutLocationStart = v14;

    v16 = objc_autoreleasePoolPush();
    v17 = [NSSet alloc];
    v18 = objc_opt_class();
    v19 = [v17 initWithObjects:{v18, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v16);
    v20 = [coderCopy decodeObjectOfClasses:v19 forKey:@"workoutLocationRoute"];
    workoutLocationRoute = v5->_workoutLocationRoute;
    v5->_workoutLocationRoute = v20;

    v5->_isFitnessPlusSession = [coderCopy decodeBoolForKey:@"isFitnessPlusSession"];
    v5->_isIndoors = [coderCopy decodeBoolForKey:@"isIndoors"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOEventWorkout);
  objc_storeStrong(&v4->_workoutType, self->_workoutType);
  objc_storeStrong(&v4->_workoutTotalDistance, self->_workoutTotalDistance);
  objc_storeStrong(&v4->_workoutTotalEnergyBurned, self->_workoutTotalEnergyBurned);
  objc_storeStrong(&v4->_workoutDuration, self->_workoutDuration);
  objc_storeStrong(&v4->_workoutLocationStart, self->_workoutLocationStart);
  objc_storeStrong(&v4->_workoutLocationRoute, self->_workoutLocationRoute);
  v4->_isFitnessPlusSession = self->_isFitnessPlusSession;
  v4->_isIndoors = self->_isIndoors;
  return v4;
}

@end