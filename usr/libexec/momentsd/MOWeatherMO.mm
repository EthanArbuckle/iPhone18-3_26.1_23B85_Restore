@interface MOWeatherMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
@end

@implementation MOWeatherMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOWeatherMO alloc] initWithContext:contextCopy];

  weatherIdentifier = [objectCopy weatherIdentifier];
  [(MOWeatherMO *)v7 setWeatherIdentifier:weatherIdentifier];

  startDate = [objectCopy startDate];
  [(MOWeatherMO *)v7 setStartDate:startDate];

  endDate = [objectCopy endDate];
  [(MOWeatherMO *)v7 setEndDate:endDate];

  weatherSummary = [objectCopy weatherSummary];
  [(MOWeatherMO *)v7 setWeatherSummary:weatherSummary];

  weatherSymbolName = [objectCopy weatherSymbolName];
  [(MOWeatherMO *)v7 setWeatherSymbolName:weatherSymbolName];

  temperature = [objectCopy temperature];
  [(MOWeatherMO *)v7 setTemperature:temperature];

  windSpeed = [objectCopy windSpeed];
  [(MOWeatherMO *)v7 setWindSpeed:windSpeed];

  -[MOWeatherMO setSourceEventAccessType:](v7, "setSourceEventAccessType:", [objectCopy sourceEventAccessType]);
  sourceEventIdentifier = [objectCopy sourceEventIdentifier];

  [(MOWeatherMO *)v7 setSourceEventIdentifier:sourceEventIdentifier];

  return v7;
}

@end