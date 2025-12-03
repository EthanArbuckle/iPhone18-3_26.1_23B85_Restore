@interface Ace3SoCRestoreInfoHelperBackDeploy
- (Ace3SoCRestoreInfoHelperBackDeploy)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context;
- (void)logInternal:(id)internal arguments:(char *)arguments;
- (void)verboseLog:(id)log;
@end

@implementation Ace3SoCRestoreInfoHelperBackDeploy

- (Ace3SoCRestoreInfoHelperBackDeploy)initWithOptions:(id)options logFunction:(void *)function logContext:(void *)context
{
  optionsCopy = options;
  v16.receiver = self;
  v16.super_class = Ace3SoCRestoreInfoHelperBackDeploy;
  v9 = [(Ace3SoCRestoreInfoHelperBackDeploy *)&v16 init];
  v10 = v9;
  if (v9)
  {
    v9->_logFunction = function;
    v9->_logContext = context;
    v11 = [optionsCopy objectForKeyedSubscript:@"Options"];
    v12 = [v11 objectForKeyedSubscript:@"Verbose"];

    if (v12)
    {
      v10->_verbose = 1;
    }

    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [(Ace3SoCRestoreInfoHelperBackDeploy *)v10 verboseLog:@"%@: options = %@", v14, optionsCopy];
  }

  return v10;
}

- (void)logInternal:(id)internal arguments:(char *)arguments
{
  internalCopy = internal;
  v10 = [[NSMutableString alloc] initWithFormat:internalCopy arguments:arguments];

  [v10 appendString:@"\n"];
  logFunction = self->_logFunction;
  logContext = self->_logContext;
  v9 = v10;
  logFunction(logContext, [v10 UTF8String]);
}

- (void)verboseLog:(id)log
{
  if (self->_verbose)
  {
    [(Ace3SoCRestoreInfoHelperBackDeploy *)self logInternal:log arguments:&v3];
  }
}

@end