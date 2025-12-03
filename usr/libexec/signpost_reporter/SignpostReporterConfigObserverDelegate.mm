@interface SignpostReporterConfigObserverDelegate
- (SignpostReporterConfigObserverDelegate)initWithCallbackBlock:(id)block;
- (void)observer:(id)observer didChangeConfiguration:(id)configuration type:(id)type;
@end

@implementation SignpostReporterConfigObserverDelegate

- (SignpostReporterConfigObserverDelegate)initWithCallbackBlock:(id)block
{
  blockCopy = block;
  v8.receiver = self;
  v8.super_class = SignpostReporterConfigObserverDelegate;
  v5 = [(SignpostReporterConfigObserverDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SignpostReporterConfigObserverDelegate *)v5 setCallbackBlock:blockCopy];
  }

  return v6;
}

- (void)observer:(id)observer didChangeConfiguration:(id)configuration type:(id)type
{
  typeCopy = type;
  configurationCopy = configuration;
  callbackBlock = [(SignpostReporterConfigObserverDelegate *)self callbackBlock];
  callbackBlock[2](callbackBlock, configurationCopy, typeCopy);
}

@end