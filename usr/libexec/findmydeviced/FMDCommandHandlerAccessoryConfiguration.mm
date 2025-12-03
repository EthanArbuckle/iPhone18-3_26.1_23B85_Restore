@interface FMDCommandHandlerAccessoryConfiguration
- (FMDCommandHandlerAccessoryConfiguration)initWithParams:(id)params supportedAccessoryRegistry:(id)registry;
- (FMDSupportedAccessoryRegistry)supportedAccessoryRegistry;
- (void)handleCommand;
@end

@implementation FMDCommandHandlerAccessoryConfiguration

- (FMDCommandHandlerAccessoryConfiguration)initWithParams:(id)params supportedAccessoryRegistry:(id)registry
{
  registryCopy = registry;
  v10.receiver = self;
  v10.super_class = FMDCommandHandlerAccessoryConfiguration;
  v7 = [(FMDCommandHandler *)&v10 initWithParams:params provider:0];
  v8 = v7;
  if (v7)
  {
    [(FMDCommandHandlerAccessoryConfiguration *)v7 setSupportedAccessoryRegistry:registryCopy];
  }

  return v8;
}

- (void)handleCommand
{
  commandParams = [(FMDCommandHandler *)self commandParams];
  v5 = [commandParams objectForKeyedSubscript:@"supportedAccessories"];

  supportedAccessoryRegistry = [(FMDCommandHandlerAccessoryConfiguration *)self supportedAccessoryRegistry];
  [supportedAccessoryRegistry updateSupportedAccessories:v5 completion:0];
}

- (FMDSupportedAccessoryRegistry)supportedAccessoryRegistry
{
  WeakRetained = objc_loadWeakRetained(&self->_supportedAccessoryRegistry);

  return WeakRetained;
}

@end