@interface _DASBMHistogramBuilder
+ (id)builderForAppInFocusStream;
+ (id)builderForAppInFocusStreamStarting:(id)a3;
+ (id)builderForAppInFocusStreamStarting:(id)a3 ending:(id)a4;
@end

@implementation _DASBMHistogramBuilder

+ (id)builderForAppInFocusStream
{
  v2 = +[_DASBMUtilityProvider sharedUtilityProvider];
  v3 = [v2 getConsoleUserUid];

  v4 = BiomeLibrary();
  v5 = [v4 App];
  v6 = [v5 InFocus];
  v7 = [v6 publisherWithUser:v3 useCase:@"DASBiomeUtilityUseCase" options:0];

  v8 = [_DASBMHistogramBuilder builderWithPublisher:v7 saveSpans:0];
  [v8 setFilter:&stru_1001B5C40];
  [v8 setTransform:&stru_1001B5C60];

  return v8;
}

+ (id)builderForAppInFocusStreamStarting:(id)a3
{
  v3 = [BMPublisherOptions optionsWithStartDate:a3];
  v4 = +[_DASBMUtilityProvider sharedUtilityProvider];
  v5 = [v4 getConsoleUserUid];

  v6 = BiomeLibrary();
  v7 = [v6 App];
  v8 = [v7 InFocus];
  v9 = [v8 publisherWithUser:v5 useCase:@"DASBiomeUtilityUseCase" options:v3];

  v10 = [_DASBMHistogramBuilder builderWithPublisher:v9 saveSpans:0];
  [v10 setFilter:&stru_1001B5C80];
  [v10 setTransform:&stru_1001B5CA0];

  return v10;
}

+ (id)builderForAppInFocusStreamStarting:(id)a3 ending:(id)a4
{
  v4 = [BMPublisherOptions optionsWithStartDate:a3 endDate:a4];
  v5 = +[_DASBMUtilityProvider sharedUtilityProvider];
  v6 = [v5 getConsoleUserUid];

  v7 = BiomeLibrary();
  v8 = [v7 App];
  v9 = [v8 InFocus];
  v10 = [v9 publisherWithUser:v6 useCase:@"DASBiomeUtilityUseCase" options:v4];

  v11 = [_DASBMHistogramBuilder builderWithPublisher:v10 saveSpans:0];
  [v11 setFilter:&stru_1001B5CC0];
  [v11 setTransform:&stru_1001B5CE0];

  return v11;
}

@end