@interface AppleTypeCRetimerRestoreInfoHelperBackDeploy
- (AppleTypeCRetimerRestoreInfoHelperBackDeploy)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context;
- (void)logInternal:(id)internal arguments:(char *)arguments;
- (void)verboseLog:(id)log;
@end

@implementation AppleTypeCRetimerRestoreInfoHelperBackDeploy

- (AppleTypeCRetimerRestoreInfoHelperBackDeploy)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context
{
  optionsCopy = options;
  v14.receiver = self;
  v14.super_class = AppleTypeCRetimerRestoreInfoHelperBackDeploy;
  v9 = [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)&v14 init];
  v10 = v9;
  if (v9)
  {
    v9->_logFunction = function;
    v9->_logContext = context;
    v11 = objc_opt_class();
    v12 = NSStringFromClass(v11);
    [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)v10 verboseLog:@"%@: options = %@", v12, optionsCopy];
  }

  return v10;
}

- (void)logInternal:(id)internal arguments:(char *)arguments
{
  internalCopy = internal;
  v7 = [[NSMutableString alloc] initWithFormat:internalCopy arguments:arguments];

  [v7 appendString:@"\n"];
  (self->_logFunction)(self->_logContext, [v7 UTF8String]);
}

- (void)verboseLog:(id)log
{
  if (self->_verbose)
  {
    [(AppleTypeCRetimerRestoreInfoHelperBackDeploy *)self logInternal:log arguments:&v3];
  }
}

@end