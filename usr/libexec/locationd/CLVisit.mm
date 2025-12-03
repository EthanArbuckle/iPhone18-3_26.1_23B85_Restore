@interface CLVisit
- (CLVisit)initWithVisit:(id)visit;
@end

@implementation CLVisit

- (CLVisit)initWithVisit:(id)visit
{
  if (visit)
  {
    [objc_msgSend(visit "location")];
    v6 = v5;
    [objc_msgSend(visit "location")];
    v8 = CLLocationCoordinate2DMake(v6, v7);
    if ([visit placeInference])
    {
      v9 = [[_CLPlaceInference alloc] _initWithRTPlaceInference:{objc_msgSend(visit, "placeInference")}];
    }

    else
    {
      v9 = 0;
    }

    [objc_msgSend(visit "location")];
    v12 = v11;
    entry = [visit entry];
    exit = [visit exit];
    date = [visit date];

    return [(CLVisit *)self initWithCoordinate:entry horizontalAccuracy:exit arrivalDate:date departureDate:v9 detectionDate:v8.latitude placeInference:v8.longitude, v12];
  }

  else
  {

    return 0;
  }
}

@end