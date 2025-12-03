@interface FMDCommandContext
+ (id)intentContextKeyForAccessory:(id)accessory;
+ (id)pendingActionKeyForAccessory:(id)accessory;
- (BOOL)pendingAction;
- (FMDCommandContext)initWithAccessory:(id)accessory;
- (FMDInternalAccessory)accessory;
- (NSDictionary)lastCompletedIntentDictionary;
- (NSUUID)pendingActionUUID;
- (id)description;
- (void)cleanupContexts;
- (void)setActionCompleted:(id)completed;
- (void)setObject:(id)object forKey:(id)key;
- (void)setPendingActionIntent:(id)intent;
@end

@implementation FMDCommandContext

- (FMDCommandContext)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v8.receiver = self;
  v8.super_class = FMDCommandContext;
  v5 = [(FMDCommandContext *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(FMDCommandContext *)v5 setAccessory:accessoryCopy];
  }

  return v6;
}

- (id)description
{
  v3 = objc_opt_class();
  accessory = [(FMDCommandContext *)self accessory];
  v5 = [NSString stringWithFormat:@"%@(0x%p) with accessory(0x%p) ", v3, self, accessory];

  return v5;
}

- (void)cleanupContexts
{
  accessory = [(FMDCommandContext *)self accessory];
  if (accessory)
  {
    v7 = accessory;
    v3 = +[FMDProtectedContextManager sharedManager];
    v4 = [objc_opt_class() intentContextKeyForAccessory:v7];
    [v3 cleanupAllContextsForKey:v4];

    v5 = +[FMDProtectedContextManager sharedManager];
    v6 = [objc_opt_class() pendingActionKeyForAccessory:v7];
    [v5 cleanupAllContextsForKey:v6];
  }

  _objc_release_x1();
}

- (void)setObject:(id)object forKey:(id)key
{
  objectCopy = object;
  keyCopy = key;
  v6 = +[FMDProtectedContextManager sharedManager];
  [v6 cleanupAllContextsForKey:keyCopy];

  v7 = +[FMDProtectedContextManager sharedManager];
  v8 = [v7 saveContext:objectCopy forContextKey:keyCopy dataProtectionClass:4];
}

+ (id)intentContextKeyForAccessory:(id)accessory
{
  accessoryIdentifier = [accessory accessoryIdentifier];
  v4 = [NSString stringWithFormat:@"AccessoryIntent:%@", accessoryIdentifier];

  return v4;
}

+ (id)pendingActionKeyForAccessory:(id)accessory
{
  accessoryIdentifier = [accessory accessoryIdentifier];
  v4 = [NSString stringWithFormat:@"AccessoryActionPending:%@", accessoryIdentifier];

  return v4;
}

- (NSDictionary)lastCompletedIntentDictionary
{
  accessory = [(FMDCommandContext *)self accessory];
  if (accessory)
  {
    v3 = +[FMDProtectedContextManager sharedManager];
    v4 = [objc_opt_class() intentContextKeyForAccessory:accessory];
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
  accessory = [(FMDCommandContext *)self accessory];
  if (accessory)
  {
    v3 = +[FMDProtectedContextManager sharedManager];
    v4 = [objc_opt_class() pendingActionKeyForAccessory:accessory];
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

- (void)setPendingActionIntent:(id)intent
{
  intentCopy = intent;
  accessory = [(FMDCommandContext *)self accessory];
  if (accessory)
  {
    v5 = [objc_opt_class() pendingActionKeyForAccessory:accessory];
    [(FMDCommandContext *)self setObject:intentCopy forKey:v5];
  }
}

- (void)setActionCompleted:(id)completed
{
  completedCopy = completed;
  accessory = [(FMDCommandContext *)self accessory];
  if (accessory)
  {
    v6 = [objc_opt_class() pendingActionKeyForAccessory:accessory];
    v7 = +[FMDProtectedContextManager sharedManager];
    v13 = 0;
    v8 = [v7 contextForKey:v6 contextUUID:&v13 error:0];
    v9 = v13;

    connectionState = [accessory connectionState];
    if (completedCopy && connectionState == 1 && [v9 isEqual:completedCopy])
    {
      v11 = [objc_opt_class() intentContextKeyForAccessory:accessory];
      [(FMDCommandContext *)self setObject:v8 forKey:v11];

      v12 = +[FMDProtectedContextManager sharedManager];
      [v12 cleanupContextsForKey:v6 contextUUID:completedCopy];
    }
  }
}

- (BOOL)pendingAction
{
  pendingActionUUID = [(FMDCommandContext *)self pendingActionUUID];
  v3 = pendingActionUUID != 0;

  return v3;
}

- (FMDInternalAccessory)accessory
{
  WeakRetained = objc_loadWeakRetained(&self->_accessory);

  return WeakRetained;
}

@end