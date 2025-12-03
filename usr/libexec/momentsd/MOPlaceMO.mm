@interface MOPlaceMO
+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context;
- (id)clonedObjectWithContext:(id)context;
@end

@implementation MOPlaceMO

+ (id)managedObjectWithObject:(id)object inManagedObjectContext:(id)context
{
  contextCopy = context;
  objectCopy = object;
  v7 = [[MOPlaceMO alloc] initWithContext:contextCopy];

  identifier = [objectCopy identifier];
  [(MOPlaceMO *)v7 setIdentifier:identifier];

  placeName = [objectCopy placeName];
  [(MOPlaceMO *)v7 setName:placeName];

  location = [objectCopy location];
  [location latitude];
  [(MOPlaceMO *)v7 setLatitude:?];

  location2 = [objectCopy location];
  [location2 longitude];
  [(MOPlaceMO *)v7 setLongitude:?];

  location3 = [objectCopy location];
  [location3 horizontalUncertainty];
  [(MOPlaceMO *)v7 setRange:?];

  -[MOPlaceMO setUserSpecificPlaceType:](v7, "setUserSpecificPlaceType:", [objectCopy placeUserType]);
  -[MOPlaceMO setProposition:](v7, "setProposition:", [objectCopy proposition]);
  -[MOPlaceMO setPlaceType:](v7, "setPlaceType:", [objectCopy placeType]);
  -[MOPlaceMO setLocationMode:](v7, "setLocationMode:", [objectCopy locationMode]);
  poiCategory = [objectCopy poiCategory];
  [(MOPlaceMO *)v7 setPoiCategory:poiCategory];

  categoryMuid = [objectCopy categoryMuid];
  [(MOPlaceMO *)v7 setCategoryMuid:categoryMuid];

  [objectCopy distanceToHomeInMiles];
  [(MOPlaceMO *)v7 setDistanceToHomeInMiles:?];
  [objectCopy placeNameConfidence];
  [(MOPlaceMO *)v7 setPlaceNameConfidence:?];
  [objectCopy familiarityIndexLOI];
  [(MOPlaceMO *)v7 setFamiliarityIndexLOI:?];
  enclosingArea = [objectCopy enclosingArea];
  [(MOPlaceMO *)v7 setCityName:enclosingArea];

  startDate = [objectCopy startDate];
  [(MOPlaceMO *)v7 setStartDate:startDate];

  endDate = [objectCopy endDate];
  [(MOPlaceMO *)v7 setEndDate:endDate];

  [objectCopy priorityScore];
  [(MOPlaceMO *)v7 setPriorityScore:?];
  -[MOPlaceMO setSourceEventAccessType:](v7, "setSourceEventAccessType:", [objectCopy sourceEventAccessType]);
  sourceEventIdentifier = [objectCopy sourceEventIdentifier];

  [(MOPlaceMO *)v7 setSourceEventIdentifier:sourceEventIdentifier];

  return v7;
}

- (id)clonedObjectWithContext:(id)context
{
  contextCopy = context;
  v5 = [[MOPlace alloc] initWithPlaceMO:self];
  v6 = [MOPlaceMO managedObjectWithObject:v5 inManagedObjectContext:contextCopy];

  return v6;
}

@end