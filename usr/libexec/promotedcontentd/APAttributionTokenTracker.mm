@interface APAttributionTokenTracker
+ (id)defaultTracker;
- (APAttributionTokenTracker)init;
- (BOOL)isTokenUsed:(id)used;
- (BOOL)isTokenUsedByOtherBundle:(id)bundle bundleID:(id)d;
- (void)addToken:(id)token bundleID:(id)d;
@end

@implementation APAttributionTokenTracker

- (APAttributionTokenTracker)init
{
  v8.receiver = self;
  v8.super_class = APAttributionTokenTracker;
  v2 = [(APAttributionTokenTracker *)&v8 init];
  if (v2)
  {
    v3 = [[APUnfairLock alloc] initWithOptions:1];
    tokensLock = v2->_tokensLock;
    v2->_tokensLock = v3;

    v5 = [NSMutableDictionary dictionaryWithCapacity:10];
    bundles = v2->_bundles;
    v2->_bundles = v5;
  }

  return v2;
}

+ (id)defaultTracker
{
  if (qword_1004DF6E8 != -1)
  {
    sub_1003939F4();
  }

  v3 = qword_1004DF6E0;

  return v3;
}

- (void)addToken:(id)token bundleID:(id)d
{
  dCopy = d;
  tokenCopy = token;
  tokensLock = [(APAttributionTokenTracker *)self tokensLock];
  [tokensLock lock];

  bundles = [(APAttributionTokenTracker *)self bundles];
  [bundles setObject:tokenCopy forKey:dCopy];

  tokensLock2 = [(APAttributionTokenTracker *)self tokensLock];
  [tokensLock2 unlock];
}

- (BOOL)isTokenUsedByOtherBundle:(id)bundle bundleID:(id)d
{
  bundleCopy = bundle;
  dCopy = d;
  tokensLock = [(APAttributionTokenTracker *)self tokensLock];
  [tokensLock lock];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  bundles = [(APAttributionTokenTracker *)self bundles];
  v10 = [bundles countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(bundles);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        bundles2 = [(APAttributionTokenTracker *)self bundles];
        v15 = [bundles2 objectForKeyedSubscript:v13];
        if ([bundleCopy isEqualToString:v15])
        {
          v16 = [dCopy isEqualToString:v13];

          if ((v16 & 1) == 0)
          {
            LOBYTE(v10) = 1;
            goto LABEL_12;
          }
        }

        else
        {
        }
      }

      v10 = [bundles countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

LABEL_12:

  tokensLock2 = [(APAttributionTokenTracker *)self tokensLock];
  [tokensLock2 unlock];

  return v10;
}

- (BOOL)isTokenUsed:(id)used
{
  usedCopy = used;
  tokensLock = [(APAttributionTokenTracker *)self tokensLock];
  [tokensLock lock];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  bundles = [(APAttributionTokenTracker *)self bundles];
  v7 = [bundles countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(bundles);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        bundles2 = [(APAttributionTokenTracker *)self bundles];
        v12 = [bundles2 objectForKeyedSubscript:v10];
        v13 = [usedCopy isEqualToString:v12];

        if (v13)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [bundles countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  tokensLock2 = [(APAttributionTokenTracker *)self tokensLock];
  [tokensLock2 unlock];

  return v7;
}

@end