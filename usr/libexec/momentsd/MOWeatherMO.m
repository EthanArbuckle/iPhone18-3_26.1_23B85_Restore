@interface MOWeatherMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
@end

@implementation MOWeatherMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOWeatherMO alloc] initWithContext:v5];

  v8 = [v6 weatherIdentifier];
  [(MOWeatherMO *)v7 setWeatherIdentifier:v8];

  v9 = [v6 startDate];
  [(MOWeatherMO *)v7 setStartDate:v9];

  v10 = [v6 endDate];
  [(MOWeatherMO *)v7 setEndDate:v10];

  v11 = [v6 weatherSummary];
  [(MOWeatherMO *)v7 setWeatherSummary:v11];

  v12 = [v6 weatherSymbolName];
  [(MOWeatherMO *)v7 setWeatherSymbolName:v12];

  v13 = [v6 temperature];
  [(MOWeatherMO *)v7 setTemperature:v13];

  v14 = [v6 windSpeed];
  [(MOWeatherMO *)v7 setWindSpeed:v14];

  -[MOWeatherMO setSourceEventAccessType:](v7, "setSourceEventAccessType:", [v6 sourceEventAccessType]);
  v15 = [v6 sourceEventIdentifier];

  [(MOWeatherMO *)v7 setSourceEventIdentifier:v15];

  return v7;
}

@end