@interface CKKSPowerCollection
+ (void)CKKSPowerEvent:(id)a3 count:(unint64_t)a4;
+ (void)CKKSPowerEvent:(id)a3 zone:(id)a4;
+ (void)CKKSPowerEvent:(id)a3 zone:(id)a4 count:(unint64_t)a5;
+ (void)OTPowerEvent:(id)a3;
- (CKKSPowerCollection)init;
- (void)addToStatsDictionary:(id)a3 key:(id)a4;
- (void)commit;
- (void)deletedOQE:(id)a3;
- (void)storedOQE:(id)a3;
- (void)summary:(id)a3 stats:(id)a4;
@end

@implementation CKKSPowerCollection

- (void)commit
{
  [(CKKSPowerCollection *)self summary:@"store" stats:self->_store];
  delete = self->_delete;

  [(CKKSPowerCollection *)self summary:@"delete" stats:delete];
}

- (void)summary:(id)a3 stats:(id)a4
{
  v5 = a3;
  v6 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v18[0] = @"operation";
        v18[1] = @"accessgroup";
        v19[0] = v5;
        v19[1] = v11;
        v18[2] = @"items";
        v12 = [v6 objectForKeyedSubscript:?];
        v19[2] = v12;
        v13 = [NSDictionary dictionaryWithObjects:v19 forKeys:v18 count:3];
        sub_100011140(@"CKKSSyncing", v13);

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v8);
  }
}

- (void)deletedOQE:(id)a3
{
  delete = self->_delete;
  v5 = [a3 accessgroup];
  [(CKKSPowerCollection *)self addToStatsDictionary:delete key:v5];
}

- (void)storedOQE:(id)a3
{
  store = self->_store;
  v5 = [a3 accessgroup];
  [(CKKSPowerCollection *)self addToStatsDictionary:store key:v5];
}

- (void)addToStatsDictionary:(id)a3 key:(id)a4
{
  v5 = a4;
  if (!v5)
  {
    v5 = @"access-group-missing";
  }

  v9 = v5;
  v6 = a3;
  v7 = [v6 objectForKeyedSubscript:v9];
  v8 = +[NSNumber numberWithLong:](NSNumber, "numberWithLong:", [v7 longValue] + 1);
  [v6 setObject:v8 forKeyedSubscript:v9];
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

+ (void)OTPowerEvent:(id)a3
{
  v5 = @"operation";
  v6 = a3;
  v3 = a3;
  v4 = [NSDictionary dictionaryWithObjects:&v6 forKeys:&v5 count:1];

  sub_100011140(@"OctagonTrust", v4);
}

+ (void)CKKSPowerEvent:(id)a3 count:(unint64_t)a4
{
  v8[0] = @"operation";
  v8[1] = @"count";
  v9[0] = a3;
  v5 = a3;
  v6 = [NSNumber numberWithUnsignedInteger:a4];
  v9[1] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  sub_100011140(@"CKKSSyncing", v7);
}

+ (void)CKKSPowerEvent:(id)a3 zone:(id)a4 count:(unint64_t)a5
{
  v11[0] = @"operation";
  v11[1] = @"zone";
  v12[0] = a3;
  v12[1] = a4;
  v11[2] = @"count";
  v7 = a4;
  v8 = a3;
  v9 = [NSNumber numberWithUnsignedInteger:a5];
  v12[2] = v9;
  v10 = [NSDictionary dictionaryWithObjects:v12 forKeys:v11 count:3];

  sub_100011140(@"CKKSSyncing", v10);
}

+ (void)CKKSPowerEvent:(id)a3 zone:(id)a4
{
  v8[0] = @"operation";
  v8[1] = @"zone";
  v9[0] = a3;
  v9[1] = a4;
  v5 = a4;
  v6 = a3;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:2];

  sub_100011140(@"CKKSSyncing", v7);
}

@end