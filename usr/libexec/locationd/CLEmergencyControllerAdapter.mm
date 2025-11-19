@interface CLEmergencyControllerAdapter
- (void)checkEmergencyCallStatus;
@end

@implementation CLEmergencyControllerAdapter

- (void)checkEmergencyCallStatus
{
  v2 = [qword_1026380F0 currentCalls];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
LABEL_3:
    v6 = 0;
    while (1)
    {
      if (*v9 != v5)
      {
        objc_enumerationMutation(v2);
      }

      v7 = *(*(&v8 + 1) + 8 * v6);
      if (v7)
      {
        if ([*(*(&v8 + 1) + 8 * v6) isEmergency])
        {
          break;
        }
      }

      if (v4 == ++v6)
      {
        v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v4)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v7 = 0;
  }

  sub_100303768(qword_1026380E8, v7);
}

@end