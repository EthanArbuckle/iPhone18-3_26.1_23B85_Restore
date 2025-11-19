@interface PerfDiagsSelfEnablementController
+ (BOOL)isAnyModeActive;
@end

@implementation PerfDiagsSelfEnablementController

+ (BOOL)isAnyModeActive
{
  v16[0] = @"PDSEHangTracer";
  v16[1] = @"PDSEHTThirdParty";
  v16[2] = @"PDSESentry";
  v16[3] = @"PDSEAppLaunch";
  v16[4] = @"PDSEWorkflowResponsiveness";
  [NSArray arrayWithObjects:v16 count:5];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = sub_10002B7C8(@"com.apple.da", @"mobile", *(*(&v11 + 1) + 8 * i));
        v9 = [v8 count];

        v5 |= v9 != 0;
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

@end