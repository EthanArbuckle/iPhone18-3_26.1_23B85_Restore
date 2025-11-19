@interface NESMPolicySession
- (void)dealloc;
@end

@implementation NESMPolicySession

- (void)dealloc
{
  sub_100030CC4(self);
  sub_100030D44(self);
  sub_100030DC4(self);
  sub_100030E44(self);
  sub_100030EC4(self, v3);
  sub_100030F60(self);
  sub_100030FE0(self, v4);
  sub_100031108(self);
  sub_100031148(self);
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  if (self)
  {
    Property = objc_getProperty(self, v5, 176, 1);
  }

  else
  {
    Property = 0;
  }

  v7 = Property;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        sub_1000311C8(self, v12);
        sub_10003129C(self, v12);
        sub_100031370(self, v12);
        sub_100031444(self, v12);
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13.receiver = self;
  v13.super_class = NESMPolicySession;
  [(NESMPolicySession *)&v13 dealloc];
}

@end