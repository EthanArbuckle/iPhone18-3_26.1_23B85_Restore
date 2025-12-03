@interface DMDFetchDeclarationCapabilitiesOperation
+ (BOOL)validateRequest:(id)request error:(id *)error;
+ (id)whitelistedClassesForRequest;
- (void)runWithRequest:(id)request;
- (void)waitUntilFinished;
@end

@implementation DMDFetchDeclarationCapabilitiesOperation

- (void)waitUntilFinished
{
  v2.receiver = self;
  v2.super_class = DMDFetchDeclarationCapabilitiesOperation;
  [(DMDFetchDeclarationCapabilitiesOperation *)&v2 waitUntilFinished];
}

+ (id)whitelistedClassesForRequest
{
  v2 = objc_opt_class();

  return [NSSet setWithObject:v2];
}

+ (BOOL)validateRequest:(id)request error:(id *)error
{
  v5.receiver = self;
  v5.super_class = &OBJC_METACLASS___DMDFetchDeclarationCapabilitiesOperation;
  return objc_msgSendSuper2(&v5, "validateRequest:error:", request, error);
}

- (void)runWithRequest:(id)request
{
  v11 = objc_opt_new();
  v4 = +[DMDConfigurationCapabilities supportedCommandTypes];
  [v11 setSupportedCommands:v4];

  v5 = +[DMDConfigurationCapabilities supportedAssetTypes];
  [v11 setSupportedAssets:v5];

  v6 = +[DMDConfigurationCapabilities supportedConfigurationTypes];
  [v11 setSupportedConfigurations:v6];

  v7 = +[DMDConfigurationCapabilities supportedEventTypes];
  [v11 setSupportedEvents:v7];

  v8 = +[DMDConfigurationCapabilities supportedActivationTypes];
  [v11 setSupportedActivations:v8];

  v9 = +[DMDConfigurationCapabilities supportedPredicateTypes];
  [v11 setSupportedPredicates:v9];

  v10 = +[DMDConfigurationCapabilities supportedMessageTypes];
  [v11 setSupportedMessages:v10];

  [(DMDFetchDeclarationCapabilitiesOperation *)self endOperationWithResultObject:v11];
}

@end