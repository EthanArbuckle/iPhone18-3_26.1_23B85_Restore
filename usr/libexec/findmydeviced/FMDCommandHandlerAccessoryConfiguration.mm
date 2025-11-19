@interface FMDCommandHandlerAccessoryConfiguration
- (FMDCommandHandlerAccessoryConfiguration)initWithParams:(id)a3 supportedAccessoryRegistry:(id)a4;
- (FMDSupportedAccessoryRegistry)supportedAccessoryRegistry;
- (void)handleCommand;
@end

@implementation FMDCommandHandlerAccessoryConfiguration

- (FMDCommandHandlerAccessoryConfiguration)initWithParams:(id)a3 supportedAccessoryRegistry:(id)a4
{
  v6 = a4;
  v10.receiver = self;
  v10.super_class = FMDCommandHandlerAccessoryConfiguration;
  v7 = [(FMDCommandHandler *)&v10 initWithParams:a3 provider:0];
  v8 = v7;
  if (v7)
  {
    [(FMDCommandHandlerAccessoryConfiguration *)v7 setSupportedAccessoryRegistry:v6];
  }

  return v8;
}

- (void)handleCommand
{
  v3 = [(FMDCommandHandler *)self commandParams];
  v5 = [v3 objectForKeyedSubscript:@"supportedAccessories"];

  v4 = [(FMDCommandHandlerAccessoryConfiguration *)self supportedAccessoryRegistry];
  [v4 updateSupportedAccessories:v5 completion:0];
}

- (FMDSupportedAccessoryRegistry)supportedAccessoryRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_supportedAccessoryRegistry);

  return WeakRetained;
}

@end