@interface MSDBasePrepareOperation
- (BOOL)_prepareStagingArea;
- (id)methodSelectors;
@end

@implementation MSDBasePrepareOperation

- (id)methodSelectors
{
  if (+[MSDOperationContext downloadOnly])
  {
    v2 = objc_opt_new();
  }

  else
  {
    v3 = [NSValue valueWithPointer:"_prepareStagingArea"];
    v2 = [NSArray arrayWithObjects:v3, 0];
  }

  return v2;
}

- (BOOL)_prepareStagingArea
{
  context = [(MSDOperation *)self context];
  stagingRootPath = [context stagingRootPath];
  v5 = [NSMutableArray arrayWithObject:stagingRootPath];

  v6 = +[NSFileManager defaultManager];
  context2 = [(MSDOperation *)self context];
  secondaryStagingRootPath = [context2 secondaryStagingRootPath];

  if (secondaryStagingRootPath)
  {
    context3 = [(MSDOperation *)self context];
    secondaryStagingRootPath2 = [context3 secondaryStagingRootPath];
    [v5 addObject:secondaryStagingRootPath2];
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v11 = v5;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = 0;
    v15 = *v24;
    while (2)
    {
      for (i = 0; i != v13; i = i + 1)
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v11);
        }

        v17 = *(*(&v23 + 1) + 8 * i);
        if (([v6 fileExistsAtPath:v17] & 1) == 0)
        {
          v22 = v14;
          v18 = [v6 createDirectoryAtPath:v17 withIntermediateDirectories:1 attributes:0 error:&v22];
          v19 = v22;

          if ((v18 & 1) == 0)
          {
            sub_1000EB4AC(v17, v19);
            v20 = 0;
            goto LABEL_16;
          }

          v14 = v19;
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }

    v20 = 1;
    v19 = v14;
  }

  else
  {
    v19 = 0;
    v20 = 1;
  }

LABEL_16:

  return v20;
}

@end