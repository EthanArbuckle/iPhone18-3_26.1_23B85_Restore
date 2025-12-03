@interface APAppDownloaderDataAdaptor
- (BOOL)_validateParameters:(id *)parameters;
- (void)_run:(id)_run;
@end

@implementation APAppDownloaderDataAdaptor

- (void)_run:(id)_run
{
  _runCopy = _run;
  downloadedApps = [(APAppDownloaderDataAdaptor *)self downloadedApps];
  parameters = [(APDataAdaptor *)self parameters];
  v6 = [parameters objectForKeyedSubscript:@"included"];
  v7 = [NSSet setWithArray:v6];

  parameters2 = [(APDataAdaptor *)self parameters];
  v9 = [parameters2 objectForKeyedSubscript:@"excluded"];
  v10 = [NSSet setWithArray:v9];

  if ([v7 intersectsSet:downloadedApps])
  {
    v11 = [v10 intersectsSet:downloadedApps] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  if (_runCopy)
  {
    v12 = [NSNumber numberWithBool:v11];
    (*(_runCopy + 2))(_runCopy, v12, 0, 0);
  }
}

- (BOOL)_validateParameters:(id *)parameters
{
  v11.receiver = self;
  v11.super_class = APAppDownloaderDataAdaptor;
  if (![(APDataAdaptor *)&v11 _validateParameters:?])
  {
    return 0;
  }

  parameters = [(APDataAdaptor *)self parameters];
  v6 = [parameters objectForKeyedSubscript:@"included"];
  if ([(APDataAdaptor *)self _checkClassType:v6 name:@"included" expectedClass:objc_opt_class() error:parameters])
  {
    parameters2 = [(APDataAdaptor *)self parameters];
    v8 = [parameters2 objectForKeyedSubscript:@"excluded"];
    v9 = [(APDataAdaptor *)self _checkClassType:v8 name:@"excluded" expectedClass:objc_opt_class() error:parameters];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end