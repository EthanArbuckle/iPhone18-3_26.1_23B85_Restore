@interface _DASBMHistogramBuilder
+ (id)builderForAppInFocusStream;
+ (id)builderForAppInFocusStreamStarting:(id)starting;
+ (id)builderForAppInFocusStreamStarting:(id)starting ending:(id)ending;
@end

@implementation _DASBMHistogramBuilder

+ (id)builderForAppInFocusStream
{
  v2 = +[_DASBMUtilityProvider sharedUtilityProvider];
  getConsoleUserUid = [v2 getConsoleUserUid];

  v4 = BiomeLibrary();
  v5 = [v4 App];
  inFocus = [v5 InFocus];
  v7 = [inFocus publisherWithUser:getConsoleUserUid useCase:@"DASBiomeUtilityUseCase" options:0];

  v8 = [_DASBMHistogramBuilder builderWithPublisher:v7 saveSpans:0];
  [v8 setFilter:&stru_1001B5C40];
  [v8 setTransform:&stru_1001B5C60];

  return v8;
}

+ (id)builderForAppInFocusStreamStarting:(id)starting
{
  v3 = [BMPublisherOptions optionsWithStartDate:starting];
  v4 = +[_DASBMUtilityProvider sharedUtilityProvider];
  getConsoleUserUid = [v4 getConsoleUserUid];

  v6 = BiomeLibrary();
  v7 = [v6 App];
  inFocus = [v7 InFocus];
  v9 = [inFocus publisherWithUser:getConsoleUserUid useCase:@"DASBiomeUtilityUseCase" options:v3];

  v10 = [_DASBMHistogramBuilder builderWithPublisher:v9 saveSpans:0];
  [v10 setFilter:&stru_1001B5C80];
  [v10 setTransform:&stru_1001B5CA0];

  return v10;
}

+ (id)builderForAppInFocusStreamStarting:(id)starting ending:(id)ending
{
  v4 = [BMPublisherOptions optionsWithStartDate:starting endDate:ending];
  v5 = +[_DASBMUtilityProvider sharedUtilityProvider];
  getConsoleUserUid = [v5 getConsoleUserUid];

  v7 = BiomeLibrary();
  v8 = [v7 App];
  inFocus = [v8 InFocus];
  v10 = [inFocus publisherWithUser:getConsoleUserUid useCase:@"DASBiomeUtilityUseCase" options:v4];

  v11 = [_DASBMHistogramBuilder builderWithPublisher:v10 saveSpans:0];
  [v11 setFilter:&stru_1001B5CC0];
  [v11 setTransform:&stru_1001B5CE0];

  return v11;
}

@end