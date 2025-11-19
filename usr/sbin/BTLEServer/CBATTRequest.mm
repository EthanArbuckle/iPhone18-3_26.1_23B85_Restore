@interface CBATTRequest
+ (id)consolidatedDataForRequests:(id)a3;
@end

@implementation CBATTRequest

+ (id)consolidatedDataForRequests:(id)a3
{
  v3 = a3;
  v4 = +[NSMutableData data];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [v10 offset];
        if (v11 != [v4 length])
        {

          v4 = 0;
          goto LABEL_11;
        }

        v12 = [v10 value];
        [v4 appendData:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

@end