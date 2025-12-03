@interface CKKSPowerCollection
+ (void)CKKSPowerEvent:(id)event count:(unint64_t)count;
+ (void)CKKSPowerEvent:(id)event zone:(id)zone;
+ (void)CKKSPowerEvent:(id)event zone:(id)zone count:(unint64_t)count;
+ (void)OTPowerEvent:(id)event;
- (CKKSPowerCollection)init;
- (void)addToStatsDictionary:(id)dictionary key:(id)key;
- (void)commit;
- (void)deletedOQE:(id)e;
- (void)storedOQE:(id)e;
- (void)summary:(id)summary stats:(id)stats;
@end

@implementation CKKSPowerCollection

- (void)commit
{
  [(CKKSPowerCollection *)self summary:@"store" stats:self->_store];
  delete = self->_delete;

  [(CKKSPowerCollection *)self summary:@"delete" stats:delete];
}

- (void)summary:(id)summary stats:(id)stats
{
  summaryCopy = summary;
  statsCopy = stats;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [statsCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(statsCopy);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v18[0] = @"operation";
        v18[1] = @"accessgroup";
        v19[0] = summaryCopy;
        v19[1] = v11;
        v18[2] = @"items";
        v12 = [statsCopy objectForKeyedSubscript:?];
        v19[2] = v12;
        v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
        sub_100011140(@"CKKSSyncing", v13);

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [statsCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)deletedOQE:(id)e
{
  delete = self->_delete;
  accessgroup = [e accessgroup];
  [(CKKSPowerCollection *)self addToStatsDictionary:delete key:accessgroup];
}

- (void)storedOQE:(id)e
{
  store = self->_store;
  accessgroup = [e accessgroup];
  [(CKKSPowerCollection *)self addToStatsDictionary:store key:accessgroup];
}

- (void)addToStatsDictionary:(id)dictionary key:(id)key
{
  keyCopy = key;
  if (!keyCopy)
  {
    keyCopy = @"access-group-missing";
  }

  v9 = keyCopy;
  dictionaryCopy = dictionary;
  v7 = [dictionaryCopy objectForKeyedSubscript:v9];
  v8 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v7 longValue] + 1);
  [dictionaryCopy setObject:v8 forKeyedSubscript:v9];
}

- (CKKSPowerCollection)init
{
  v8.receiver = self;
  v8.super_class = CKKSPowerCollection;
  v2 = [(CKKSPowerCollection *)&v8 init];
  if (v2)
  {
    v3 = +[NSMutableDictionary dictionary];
    store = v2->_store;
    v2->_store = v3;

    v5 = +[NSMutableDictionary dictionary];
    delete = v2->_delete;
    v2->_delete = v5;
  }

  return v2;
}

+ (void)OTPowerEvent:(id)event
{
  v5 = @"operation";
  eventCopy = event;
  eventCopy2 = event;
  v4 = [NSDictionary dictionaryWithObjects:&eventCopy forKeys:&v5 count:1];

  sub_100011140(@"OctagonTrust", v4);
}

+ (void)CKKSPowerEvent:(id)event count:(unint64_t)count
{
  v8[0] = @"operation";
  v8[1] = @"count";
  v9[0] = event;
  eventCopy = event;
  v6 = [NSNumber numberWithUnsignedInteger:count];
  v9[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  sub_100011140(@"CKKSSyncing", v7);
}

+ (void)CKKSPowerEvent:(id)event zone:(id)zone count:(unint64_t)count
{
  v11[0] = @"operation";
  v11[1] = @"zone";
  v12[0] = event;
  v12[1] = zone;
  v11[2] = @"count";
  zoneCopy = zone;
  eventCopy = event;
  v9 = [NSNumber numberWithUnsignedInteger:count];
  v12[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  sub_100011140(@"CKKSSyncing", v10);
}

+ (void)CKKSPowerEvent:(id)event zone:(id)zone
{
  v8[0] = @"operation";
  v8[1] = @"zone";
  v9[0] = event;
  v9[1] = zone;
  zoneCopy = zone;
  eventCopy = event;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  sub_100011140(@"CKKSSyncing", v7);
}

@end