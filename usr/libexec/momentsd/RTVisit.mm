@interface RTVisit
- (BOOL)isEqualToLoiVisit:(id)visit;
- (BOOL)isEqualToVisitMoment:(id)moment;
- (id)getFinerGranularityPlaceName;
- (id)getLocation;
- (id)getPlaceName;
@end

@implementation RTVisit

- (id)getPlaceName
{
  placeInference = [(RTVisit *)self placeInference];
  preferredName = [placeInference preferredName];

  placeInference2 = [(RTVisit *)self placeInference];
  placeInference3 = placeInference2;
  if (preferredName)
  {
    preferredName2 = [placeInference2 preferredName];
    v8 = [preferredName2 copy];
LABEL_5:

    goto LABEL_6;
  }

  mapItem = [placeInference2 mapItem];
  name = [mapItem name];

  if (name)
  {
    placeInference3 = [(RTVisit *)self placeInference];
    preferredName2 = [placeInference3 mapItem];
    name2 = [preferredName2 name];
    v8 = [name2 copy];

    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)getFinerGranularityPlaceName
{
  placeInference = [(RTVisit *)self placeInference];
  preferredName = [placeInference preferredName];
  if (preferredName)
  {
    v5 = preferredName;
    placeInference2 = [(RTVisit *)self placeInference];
    userType = [placeInference2 userType];

    if (userType)
    {
      placeInference3 = [(RTVisit *)self placeInference];
      preferredName2 = [placeInference3 preferredName];
      v10 = [preferredName2 copy];
LABEL_7:

      goto LABEL_9;
    }
  }

  else
  {
  }

  placeInference4 = [(RTVisit *)self placeInference];
  finerGranularityMapItem = [placeInference4 finerGranularityMapItem];
  name = [finerGranularityMapItem name];

  if (name)
  {
    placeInference3 = [(RTVisit *)self placeInference];
    preferredName2 = [placeInference3 finerGranularityMapItem];
    name2 = [preferredName2 name];
    v10 = [name2 copy];

    goto LABEL_7;
  }

  v10 = 0;
LABEL_9:

  return v10;
}

- (id)getLocation
{
  location = [(RTVisit *)self location];

  if (location)
  {
    location2 = [(RTVisit *)self location];
    v5 = [location2 copy];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)isEqualToVisitMoment:(id)moment
{
  momentCopy = moment;
  entry = [(RTVisit *)self entry];
  if (entry && (v6 = entry, [(RTVisit *)self exit], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    entry2 = [(RTVisit *)self entry];
    startDate = [momentCopy startDate];
    v10 = [entry2 isEqualToDate:startDate];

    exit = [(RTVisit *)self exit];
    endDate = [momentCopy endDate];
    LOBYTE(startDate) = [exit isEqualToDate:endDate];

    v13 = v10 & startDate;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (BOOL)isEqualToLoiVisit:(id)visit
{
  visitCopy = visit;
  location = [(RTVisit *)self location];
  if (!location)
  {
    location2 = [visitCopy location];
    if (!location2)
    {
      v9 = 1;
LABEL_6:

      goto LABEL_7;
    }
  }

  location3 = [(RTVisit *)self location];
  location4 = [visitCopy location];
  v9 = [location3 isEqualToLocation:location4];

  if (!location)
  {
    goto LABEL_6;
  }

LABEL_7:

  entry = [(RTVisit *)self entry];
  if (!entry)
  {
    location3 = [visitCopy entryDate];
    if (!location3)
    {
      v13 = 1;
LABEL_12:

      goto LABEL_13;
    }
  }

  entry2 = [(RTVisit *)self entry];
  entryDate = [visitCopy entryDate];
  v13 = [entry2 isEqualToDate:entryDate];

  if (!entry)
  {
    goto LABEL_12;
  }

LABEL_13:

  exit = [(RTVisit *)self exit];
  if (!exit)
  {
    location3 = [visitCopy exitDate];
    if (!location3)
    {
      v17 = 1;
LABEL_18:

      goto LABEL_19;
    }
  }

  exit2 = [(RTVisit *)self exit];
  exitDate = [visitCopy exitDate];
  v17 = [exit2 isEqualToDate:exitDate];

  if (!exit)
  {
    goto LABEL_18;
  }

LABEL_19:

  return v9 & v13 & v17;
}

@end