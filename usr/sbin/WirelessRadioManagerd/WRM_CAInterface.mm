@interface WRM_CAInterface
+ (void)sendCAEvent:(id)event payload:(id)payload;
+ (void)sendCAEventLazy:(id)lazy payloadBuilder:(id)builder;
@end

@implementation WRM_CAInterface

+ (void)sendCAEvent:(id)event payload:(id)payload
{
  eventCopy = event;
  payloadCopy = payload;
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

+ (void)sendCAEventLazy:(id)lazy payloadBuilder:(id)builder
{
  lazyCopy = lazy;
  builderCopy = builder;
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