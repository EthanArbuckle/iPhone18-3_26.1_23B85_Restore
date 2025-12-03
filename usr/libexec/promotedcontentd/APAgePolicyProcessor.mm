@interface APAgePolicyProcessor
+ (id)processContentData:(id)data;
@end

@implementation APAgePolicyProcessor

+ (id)processContentData:(id)data
{
  dataCopy = data;
  representations = [dataCopy representations];
  allObjects = [representations allObjects];
  firstObject = [allObjects firstObject];

  if (firstObject)
  {
    targetingDimensions = [firstObject targetingDimensions];
    [targetingDimensions exclusionCriteria];
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
          identifier = [v12 identifier];
          v14 = [identifier isEqualToString:@"contentMinimumAge"];

          if (v14)
          {
            values = [v12 values];
            if ([values count])
            {
              v16 = [values objectAtIndexedSubscript:0];
              intValue = [v16 intValue];

              if (intValue <= 30 && +[APIDAccountProvider effectiveAge]< intValue)
              {
                [dataCopy setServerUnfilledReason:1030];
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

  return dataCopy;
}

@end