@interface SignpostReporterConfigObserverDelegate
- (SignpostReporterConfigObserverDelegate)initWithCallbackBlock:(id)a3;
- (void)observer:(id)a3 didChangeConfiguration:(id)a4 type:(id)a5;
@end

@implementation SignpostReporterConfigObserverDelegate

- (SignpostReporterConfigObserverDelegate)initWithCallbackBlock:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = SignpostReporterConfigObserverDelegate;
  v5 = [(SignpostReporterConfigObserverDelegate *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(SignpostReporterConfigObserverDelegate *)v5 setCallbackBlock:v4];
  }

  return v6;
}

- (void)observer:(id)a3 didChangeConfiguration:(id)a4 type:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [(SignpostReporterConfigObserverDelegate *)self callbackBlock];
  v9[2](v9, v8, v7);
}

@end