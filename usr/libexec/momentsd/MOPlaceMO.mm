@interface MOPlaceMO
+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4;
- (id)clonedObjectWithContext:(id)a3;
@end

@implementation MOPlaceMO

+ (id)managedObjectWithObject:(id)a3 inManagedObjectContext:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[MOPlaceMO alloc] initWithContext:v5];

  v8 = [v6 identifier];
  [(MOPlaceMO *)v7 setIdentifier:v8];

  v9 = [v6 placeName];
  [(MOPlaceMO *)v7 setName:v9];

  v10 = [v6 location];
  [v10 latitude];
  [(MOPlaceMO *)v7 setLatitude:?];

  v11 = [v6 location];
  [v11 longitude];
  [(MOPlaceMO *)v7 setLongitude:?];

  v12 = [v6 location];
  [v12 horizontalUncertainty];
  [(MOPlaceMO *)v7 setRange:?];

  -[MOPlaceMO setUserSpecificPlaceType:](v7, "setUserSpecificPlaceType:", [v6 placeUserType]);
  -[MOPlaceMO setProposition:](v7, "setProposition:", [v6 proposition]);
  -[MOPlaceMO setPlaceType:](v7, "setPlaceType:", [v6 placeType]);
  -[MOPlaceMO setLocationMode:](v7, "setLocationMode:", [v6 locationMode]);
  v13 = [v6 poiCategory];
  [(MOPlaceMO *)v7 setPoiCategory:v13];

  v14 = [v6 categoryMuid];
  [(MOPlaceMO *)v7 setCategoryMuid:v14];

  [v6 distanceToHomeInMiles];
  [(MOPlaceMO *)v7 setDistanceToHomeInMiles:?];
  [v6 placeNameConfidence];
  [(MOPlaceMO *)v7 setPlaceNameConfidence:?];
  [v6 familiarityIndexLOI];
  [(MOPlaceMO *)v7 setFamiliarityIndexLOI:?];
  v15 = [v6 enclosingArea];
  [(MOPlaceMO *)v7 setCityName:v15];

  v16 = [v6 startDate];
  [(MOPlaceMO *)v7 setStartDate:v16];

  v17 = [v6 endDate];
  [(MOPlaceMO *)v7 setEndDate:v17];

  [v6 priorityScore];
  [(MOPlaceMO *)v7 setPriorityScore:?];
  -[MOPlaceMO setSourceEventAccessType:](v7, "setSourceEventAccessType:", [v6 sourceEventAccessType]);
  v18 = [v6 sourceEventIdentifier];

  [(MOPlaceMO *)v7 setSourceEventIdentifier:v18];

  return v7;
}

- (id)clonedObjectWithContext:(id)a3
{
  v4 = a3;
  v5 = [[MOPlace alloc] initWithPlaceMO:self];
  v6 = [MOPlaceMO managedObjectWithObject:v5 inManagedObjectContext:v4];

  return v6;
}

@end