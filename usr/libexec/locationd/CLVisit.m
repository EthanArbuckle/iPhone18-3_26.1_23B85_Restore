@interface CLVisit
- (CLVisit)initWithVisit:(id)a3;
@end

@implementation CLVisit

- (CLVisit)initWithVisit:(id)a3
{
  if (a3)
  {
    [objc_msgSend(a3 "location")];
    v6 = v5;
    [objc_msgSend(a3 "location")];
    v8 = CLLocationCoordinate2DMake(v6, v7);
    if ([a3 placeInference])
    {
      v9 = [[_CLPlaceInference alloc] _initWithRTPlaceInference:{objc_msgSend(a3, "placeInference")}];
    }

    else
    {
      v9 = 0;
    }

    [objc_msgSend(a3 "location")];
    v12 = v11;
    v13 = [a3 entry];
    v14 = [a3 exit];
    v15 = [a3 date];

    return [(CLVisit *)self initWithCoordinate:v13 horizontalAccuracy:v14 arrivalDate:v15 departureDate:v9 detectionDate:v8.latitude placeInference:v8.longitude, v12];
  }

  else
  {

    return 0;
  }
}

@end