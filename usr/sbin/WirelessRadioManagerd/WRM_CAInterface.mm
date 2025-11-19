@interface WRM_CAInterface
+ (void)sendCAEvent:(id)a3 payload:(id)a4;
+ (void)sendCAEventLazy:(id)a3 payloadBuilder:(id)a4;
@end

@implementation WRM_CAInterface

+ (void)sendCAEvent:(id)a3 payload:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSString stringWithUTF8String:CASendEventOptionKeyLogPayload];
  v8 = v7;
  if (v7)
  {
    v10 = v7;
    v11 = &__kCFBooleanTrue;
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v9 = 0;
  }

  AnalyticsSendEventWithOptions();
}

+ (void)sendCAEventLazy:(id)a3 payloadBuilder:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [NSString stringWithUTF8String:CASendEventOptionKeyLogPayload];
  v8 = v7;
  if (v7)
  {
    v10 = v7;
    v11 = &__kCFBooleanTrue;
    v9 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v9 = 0;
  }

  AnalyticsSendEventLazyWithOptions();
}

@end