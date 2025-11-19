@interface APAppDownloaderDataAdaptor
- (BOOL)_validateParameters:(id *)a3;
- (void)_run:(id)a3;
@end

@implementation APAppDownloaderDataAdaptor

- (void)_run:(id)a3
{
  v13 = a3;
  v4 = [(APAppDownloaderDataAdaptor *)self downloadedApps];
  v5 = [(APDataAdaptor *)self parameters];
  v6 = [v5 objectForKeyedSubscript:@"included"];
  v7 = [NSSet setWithArray:v6];

  v8 = [(APDataAdaptor *)self parameters];
  v9 = [v8 objectForKeyedSubscript:@"excluded"];
  v10 = [NSSet setWithArray:v9];

  if ([v7 intersectsSet:v4])
  {
    v11 = [v10 intersectsSet:v4] ^ 1;
  }

  else
  {
    v11 = 0;
  }

  if (v13)
  {
    v12 = [NSNumber numberWithBool:v11];
    (*(v13 + 2))(v13, v12, 0, 0);
  }
}

- (BOOL)_validateParameters:(id *)a3
{
  v11.receiver = self;
  v11.super_class = APAppDownloaderDataAdaptor;
  if (![(APDataAdaptor *)&v11 _validateParameters:?])
  {
    return 0;
  }

  v5 = [(APDataAdaptor *)self parameters];
  v6 = [v5 objectForKeyedSubscript:@"included"];
  if ([(APDataAdaptor *)self _checkClassType:v6 name:@"included" expectedClass:objc_opt_class() error:a3])
  {
    v7 = [(APDataAdaptor *)self parameters];
    v8 = [v7 objectForKeyedSubscript:@"excluded"];
    v9 = [(APDataAdaptor *)self _checkClassType:v8 name:@"excluded" expectedClass:objc_opt_class() error:a3];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end