@interface FMDCommandContext
+ (id)intentContextKeyForAccessory:(id)a3;
+ (id)pendingActionKeyForAccessory:(id)a3;
- (BOOL)pendingAction;
- (FMDCommandContext)initWithAccessory:(id)a3;
- (FMDInternalAccessory)accessory;
- (NSDictionary)lastCompletedIntentDictionary;
- (NSUUID)pendingActionUUID;
- (id)description;
- (void)cleanupContexts;
- (void)setActionCompleted:(id)a3;
- (void)setObject:(id)a3 forKey:(id)a4;
- (void)setPendingActionIntent:(id)a3;
@end

@implementation FMDCommandContext

- (FMDCommandContext)initWithAccessory:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = FMDCommandContext;
  v5 = [(FMDCommandContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMDCommandContext *)v5 setAccessory:v4];
  }

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = [(FMDCommandContext *)self accessory];
  v5 = [NSString stringWithFormat:@"%@(0x%p) with accessory(0x%p) ", v3, self, v4];

  return v5;
}

- (void)cleanupContexts
{
  v2 = [(FMDCommandContext *)self accessory];
  if (v2)
  {
    v7 = v2;
    v3 = +[FMDProtectedContextManager sharedManager];
    v4 = [objc_opt_class() intentContextKeyForAccessory:v7];
    [v3 cleanupAllContextsForKey:v4];

    v5 = +[FMDProtectedContextManager sharedManager];
    v6 = [objc_opt_class() pendingActionKeyForAccessory:v7];
    [v5 cleanupAllContextsForKey:v6];
  }

  _objc_release_x1();
}

- (void)setObject:(id)a3 forKey:(id)a4
{
  v9 = a3;
  v5 = a4;
  v6 = +[FMDProtectedContextManager sharedManager];
  [v6 cleanupAllContextsForKey:v5];

  v7 = +[FMDProtectedContextManager sharedManager];
  v8 = [v7 saveContext:v9 forContextKey:v5 dataProtectionClass:4];
}

+ (id)intentContextKeyForAccessory:(id)a3
{
  v3 = [a3 accessoryIdentifier];
  v4 = [NSString stringWithFormat:@"AccessoryIntent:%@", v3];

  return v4;
}

+ (id)pendingActionKeyForAccessory:(id)a3
{
  v3 = [a3 accessoryIdentifier];
  v4 = [NSString stringWithFormat:@"AccessoryActionPending:%@", v3];

  return v4;
}

- (NSDictionary)lastCompletedIntentDictionary
{
  v2 = [(FMDCommandContext *)self accessory];
  if (v2)
  {
    v3 = +[FMDProtectedContextManager sharedManager];
    v4 = [objc_opt_class() intentContextKeyForAccessory:v2];
    v5 = [v3 contextForKey:v4 contextUUID:0 error:0];

    objc_opt_class();
    v6 = 0;
    if (objc_opt_isKindOfClass())
    {
      v6 = v5;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (NSUUID)pendingActionUUID
{
  v2 = [(FMDCommandContext *)self accessory];
  if (v2)
  {
    v3 = +[FMDProtectedContextManager sharedManager];
    v4 = [objc_opt_class() pendingActionKeyForAccessory:v2];
    v8 = 0;
    v5 = [v3 contextForKey:v4 contextUUID:&v8 error:0];
    v6 = v8;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setPendingActionIntent:(id)a3
{
  v6 = a3;
  v4 = [(FMDCommandContext *)self accessory];
  if (v4)
  {
    v5 = [objc_opt_class() pendingActionKeyForAccessory:v4];
    [(FMDCommandContext *)self setObject:v6 forKey:v5];
  }
}

- (void)setActionCompleted:(id)a3
{
  v4 = a3;
  v5 = [(FMDCommandContext *)self accessory];
  if (v5)
  {
    v6 = [objc_opt_class() pendingActionKeyForAccessory:v5];
    v7 = +[FMDProtectedContextManager sharedManager];
    v13 = 0;
    v8 = [v7 contextForKey:v6 contextUUID:&v13 error:0];
    v9 = v13;

    v10 = [v5 connectionState];
    if (v4 && v10 == 1 && [v9 isEqual:v4])
    {
      v11 = [objc_opt_class() intentContextKeyForAccessory:v5];
      [(FMDCommandContext *)self setObject:v8 forKey:v11];

      v12 = +[FMDProtectedContextManager sharedManager];
      [v12 cleanupContextsForKey:v6 contextUUID:v4];
    }
  }
}

- (BOOL)pendingAction
{
  v2 = [(FMDCommandContext *)self pendingActionUUID];
  v3 = v2 != 0;

  return v3;
}

- (FMDInternalAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

@end