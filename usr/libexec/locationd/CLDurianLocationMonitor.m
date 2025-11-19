@interface CLDurianLocationMonitor
- (void)evaluateLastLocation;
@end

@implementation CLDurianLocationMonitor

- (void)evaluateLastLocation
{
  if ([(NSMutableArray *)[(CLDurianLocationMonitor *)self currentLocationRequests] count])
  {
    v3 = [(CLDurianLocationMonitor *)self lastValidLocationWithHorizontalAccuracy:[(CLDurianLocationMonitor *)self lastEvaluationDate] evaluationDate:0 error:15.0];
    if (v3)
    {

      [(CLDurianLocationMonitor *)self sendLastLocation:v3 error:0];
    }

    else
    {

      [(CLDurianLocationMonitor *)self startActiveLocationRequest];
    }
  }
}

@end