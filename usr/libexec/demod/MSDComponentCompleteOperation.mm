@interface MSDComponentCompleteOperation
- (void)execute;
@end

@implementation MSDComponentCompleteOperation

- (void)execute
{
  v3 = +[MSDProgressUpdater sharedInstance];
  v68 = +[MSDHelperAgent sharedInstance];
  v4 = objc_alloc_init(NSMutableSet);
  component = [(MSDOperation *)self component];
  finishedOperationContexts = [component finishedOperationContexts];

  component2 = [(MSDOperation *)self component];
  name = [component2 name];

  component3 = [(MSDOperation *)self component];
  errors = [component3 errors];
  firstObject = [errors firstObject];

  v11 = +[MSDOperationContext downloadOnly];
  component4 = [(MSDOperation *)self component];
  result = [component4 result];

  v67 = finishedOperationContexts;
  v65 = firstObject;
  if (!result)
  {
    v16 = firstObject;
    goto LABEL_6;
  }

  if (v11)
  {
    if (+[MSDHubFeatureFlags disableBackgroundInstall])
    {
      v14 = 0;
      v15 = 1;
      goto LABEL_56;
    }

    selfCopy3 = self;
    v64 = v3;
    v18 = objc_alloc_init(NSMutableSet);
    v79 = 0u;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v31 = finishedOperationContexts;
    v32 = [v31 countByEnumeratingWithState:&v79 objects:v87 count:16];
    if (v32)
    {
      v33 = v32;
      v62 = result;
      v34 = *v80;
      obj = v31;
      do
      {
        v35 = 0;
        do
        {
          if (*v80 != v34)
          {
            objc_enumerationMutation(obj);
          }

          v36 = *(*(&v79 + 1) + 8 * v35);
          secondaryStagingRootPath = [v36 secondaryStagingRootPath];
          if (secondaryStagingRootPath && ![v36 skipped])
          {
            uniqueName = [v36 uniqueName];
            v40 = [v18 containsObject:uniqueName];

            if ((v40 & 1) == 0)
            {
              secondaryStagingRootPath2 = [v36 secondaryStagingRootPath];
              stashedStagingRootPath = [v36 stashedStagingRootPath];
              v43 = [v68 moveStagingToFinal:secondaryStagingRootPath2 finalPath:stashedStagingRootPath];

              if ((v43 & 1) == 0)
              {
                sub_1000D7D34(obj, v18);
                v16 = 0;
                self = selfCopy3;
                v3 = v64;
                finishedOperationContexts = v67;
                goto LABEL_61;
              }
            }
          }

          else
          {
          }

          uniqueName2 = [v36 uniqueName];
          [v18 addObject:uniqueName2];

          v35 = v35 + 1;
        }

        while (v33 != v35);
        v31 = obj;
        v44 = [obj countByEnumeratingWithState:&v79 objects:v87 count:16];
        v33 = v44;
      }

      while (v44);
    }

LABEL_42:
    v14 = 0;
    v15 = 1;
    finishedOperationContexts = v67;
    goto LABEL_43;
  }

  v62 = result;
  selfCopy3 = self;
  v64 = v3;
  v18 = objc_alloc_init(NSMutableSet);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v19 = finishedOperationContexts;
  v20 = [v19 countByEnumeratingWithState:&v75 objects:v86 count:16];
  if (!v20)
  {
    goto LABEL_24;
  }

  v21 = v20;
  v22 = *v76;
  do
  {
    for (i = 0; i != v21; i = i + 1)
    {
      if (*v76 != v22)
      {
        objc_enumerationMutation(v19);
      }

      v24 = *(*(&v75 + 1) + 8 * i);
      if (([v24 uninstallOperation] & 1) == 0)
      {
        secondaryStagingRootPath3 = [v24 secondaryStagingRootPath];
        if (secondaryStagingRootPath3)
        {
          v26 = secondaryStagingRootPath3;
          if (![v24 skipped])
          {

LABEL_21:
            secondaryStagingRootPath4 = [v24 secondaryStagingRootPath];
            [v18 addObject:secondaryStagingRootPath4];

            continue;
          }

          restored = [v24 restored];

          if (restored)
          {
            goto LABEL_21;
          }
        }
      }
    }

    v21 = [v19 countByEnumeratingWithState:&v75 objects:v86 count:16];
  }

  while (v21);
LABEL_24:

  if (![v18 count])
  {
    goto LABEL_42;
  }

  allObjects = [v18 allObjects];
  v30 = [v68 moveStagingsToFinal:allObjects finalPath:@"/private/var/.backup"];

  finishedOperationContexts = v67;
  if (v30)
  {
    v14 = 0;
    v15 = 1;
    goto LABEL_43;
  }

  sub_1000D7CC0(v18);
  v16 = 0;
  self = selfCopy3;
  v3 = v64;
LABEL_61:
  result = v62;
LABEL_6:
  selfCopy3 = self;
  v64 = v3;
  v74 = v16;
  sub_1000C1424(&v74, 3727744768, @"An error has occurred.");
  v14 = v74;

  if ([v14 code] != 3727741184 && objc_msgSend(v14, "code") != 3727741185)
  {
    v17 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v17 demoUpdateFailed:v14];
  }

  v18 = +[MSDAnalyticsEventHandler sharedInstance];
  [v18 sendContentUpdateFailureEvent:v14 isFatal:result];
  v15 = 0;
LABEL_43:

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v45 = finishedOperationContexts;
  v46 = [v45 countByEnumeratingWithState:&v70 objects:v85 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v71;
    do
    {
      for (j = 0; j != v47; j = j + 1)
      {
        if (*v71 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v70 + 1) + 8 * j);
        stagingRootPath = [v50 stagingRootPath];
        [v4 addObject:stagingRootPath];

        secondaryStagingRootPath5 = [v50 secondaryStagingRootPath];

        if (secondaryStagingRootPath5)
        {
          secondaryStagingRootPath6 = [v50 secondaryStagingRootPath];
          [v4 addObject:secondaryStagingRootPath6];
        }

        if ((v11 & 1) == 0)
        {
          stashedStagingRootPath2 = [v50 stashedStagingRootPath];

          if (stashedStagingRootPath2)
          {
            stashedStagingRootPath3 = [v50 stashedStagingRootPath];
            [v4 addObject:stashedStagingRootPath3];
          }
        }
      }

      v47 = [v45 countByEnumeratingWithState:&v70 objects:v85 count:16];
    }

    while (v47);
  }

  allObjects2 = [v4 allObjects];
  [v68 removeWorkDirectories:allObjects2];

  self = selfCopy3;
  v3 = v64;
LABEL_56:
  bundleInProgress = [v3 bundleInProgress];
  [bundleInProgress updateComponentProgress:name withResult:v15 withAdditionalInfo:&__NSDictionary0__struct];

  bundleInProgress2 = [v3 bundleInProgress];
  getPercentageProgress = [bundleInProgress2 getPercentageProgress];

  v60 = sub_100063A54();
  if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v84 = getPercentageProgress;
    _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, "New update progress: %ld", buf, 0xCu);
  }

  if ((v11 & 1) == 0)
  {
    v61 = +[MSDDemoUpdateStatusHub sharedInstance];
    [v61 demoUpdateProgress:getPercentageProgress];
  }

  [(MSDOperation *)self setResult:v15];
  [(MSDOperation *)self setError:v14];
}

@end