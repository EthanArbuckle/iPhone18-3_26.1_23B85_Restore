@interface APAgePolicyProcessor
+ (id)processContentData:(id)a3;
@end

@implementation APAgePolicyProcessor

+ (id)processContentData:(id)a3
{
  v3 = a3;
  v4 = [v3 representations];
  v5 = [v4 allObjects];
  v6 = [v5 firstObject];

  if (v6)
  {
    v19 = [v6 targetingDimensions];
    [v19 exclusionCriteria];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v7 = v23 = 0u;
    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = [v12 identifier];
          v14 = [v13 isEqualToString:@"contentMinimumAge"];

          if (v14)
          {
            v15 = [v12 values];
            if ([v15 count])
            {
              v16 = [v15 objectAtIndexedSubscript:0];
              v17 = [v16 intValue];

              if (v17 <= 30 && +[APIDAccountProvider effectiveAge]< v17)
              {
                [v3 setServerUnfilledReason:1030];
              }

              goto LABEL_17;
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  return v3;
}

@end