@interface Account
- (Account)init;
- (BOOL)hasSameRelevantInfoAs:(id)as;
@end

@implementation Account

- (Account)init
{
  v6.receiver = self;
  v6.super_class = Account;
  v2 = [(Account *)&v6 init];
  if (v2)
  {
    v3 = +[NSUUID UUID];
    uUIDString = [v3 UUIDString];
    [(Account *)v2 setUuid:uUIDString];
  }

  return v2;
}

- (BOOL)hasSameRelevantInfoAs:(id)as
{
  asCopy = as;
  if (asCopy && [asCopy isMemberOfClass:objc_opt_class()])
  {
    uniqueId = [asCopy uniqueId];
    if (uniqueId || ([asCopy uniqueId], (v3 = objc_claimAutoreleasedReturnValue()) != 0))
    {
      uniqueId2 = [asCopy uniqueId];
      uniqueId3 = [(Account *)self uniqueId];
      v9 = [uniqueId2 isEqualToString:uniqueId3];

      if (uniqueId)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_10;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

@end