@interface NFFuryCALogger
- (NFFuryCALogger)init;
@end

@implementation NFFuryCALogger

- (NFFuryCALogger)init
{
  v24.receiver = self;
  v24.super_class = NFFuryCALogger;
  v2 = [(NFFuryCALogger *)&v24 init];
  if (v2)
  {
    v3 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm.analytics"];
    v4 = *(v2 + 1);
    *(v2 + 1) = v3;

    v5 = [[NSUserDefaults alloc] initWithSuiteName:@"com.apple.stockholm.awd"];
    v6 = v5;
    if (*(v2 + 1))
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      dictionaryRepresentation = [v5 dictionaryRepresentation];
      allKeys = [dictionaryRepresentation allKeys];
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v10 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v26;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v26 != v12)
            {
              objc_enumerationMutation(allKeys);
            }

            v14 = *(*(&v25 + 1) + 8 * i);
            v15 = [*(v2 + 1) objectForKey:v14];
            if (v15)
            {
            }

            else
            {
              v16 = [v6 objectForKey:v14];

              if (v16)
              {
                v17 = *(v2 + 1);
                v18 = [v6 objectForKey:v14];
                [v17 setObject:v18 forKey:v14];

                [v6 removeObjectForKey:v14];
              }
            }
          }

          v11 = [allKeys countByEnumeratingWithState:&v25 objects:v29 count:16];
        }

        while (v11);
      }
    }

    v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_BACKGROUND, 0);
    v21 = dispatch_queue_create("com.apple.nfcacd.caLogger", v20);
    v22 = *(v2 + 2);
    *(v2 + 2) = v21;

    dispatch_queue_set_specific(*(v2 + 2), kNFLOG_DISPATCH_SPECIFIC_KEY, 3, 0);
  }

  return v2;
}

@end