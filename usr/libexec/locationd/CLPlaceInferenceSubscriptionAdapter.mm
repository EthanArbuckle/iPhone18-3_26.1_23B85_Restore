@interface CLPlaceInferenceSubscriptionAdapter
- (CLPlaceInferenceSubscriptionAdapter)init;
@end

@implementation CLPlaceInferenceSubscriptionAdapter

- (CLPlaceInferenceSubscriptionAdapter)init
{
  v5.receiver = self;
  v5.super_class = CLPlaceInferenceSubscriptionAdapter;
  v2 = [(CLPlaceInferenceSubscriptionAdapter *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(CLPlaceInferenceSubscriptionAdapter *)v2 setValid:1];
  }

  return v3;
}

@end