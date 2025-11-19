@interface APAttributionTokenTracker
+ (id)defaultTracker;
- (APAttributionTokenTracker)init;
- (BOOL)isTokenUsed:(id)a3;
- (BOOL)isTokenUsedByOtherBundle:(id)a3 bundleID:(id)a4;
- (void)addToken:(id)a3 bundleID:(id)a4;
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

- (void)addToken:(id)a3 bundleID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(APAttributionTokenTracker *)self tokensLock];
  [v8 lock];

  v9 = [(APAttributionTokenTracker *)self bundles];
  [v9 setObject:v7 forKey:v6];

  v10 = [(APAttributionTokenTracker *)self tokensLock];
  [v10 unlock];
}

- (BOOL)isTokenUsedByOtherBundle:(id)a3 bundleID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(APAttributionTokenTracker *)self tokensLock];
  [v8 lock];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = [(APAttributionTokenTracker *)self bundles];
  v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v10)
  {
    v11 = *v20;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [(APAttributionTokenTracker *)self bundles];
        v15 = [v14 objectForKeyedSubscript:v13];
        if ([v6 isEqualToString:v15])
        {
          v16 = [v7 isEqualToString:v13];

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

      v10 = [v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v10);
  }

LABEL_12:

  v17 = [(APAttributionTokenTracker *)self tokensLock];
  [v17 unlock];

  return v10;
}

- (BOOL)isTokenUsed:(id)a3
{
  v4 = a3;
  v5 = [(APAttributionTokenTracker *)self tokensLock];
  [v5 lock];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [(APAttributionTokenTracker *)self bundles];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [(APAttributionTokenTracker *)self bundles];
        v12 = [v11 objectForKeyedSubscript:v10];
        v13 = [v4 isEqualToString:v12];

        if (v13)
        {
          LOBYTE(v7) = 1;
          goto LABEL_11;
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v14 = [(APAttributionTokenTracker *)self tokensLock];
  [v14 unlock];

  return v7;
}

@end