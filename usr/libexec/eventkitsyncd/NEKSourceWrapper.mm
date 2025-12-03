@interface NEKSourceWrapper
- (id)description;
- (id)objectIdentifier;
@end

@implementation NEKSourceWrapper

- (id)objectIdentifier
{
  accountPersistentID = [(NEKSourceAttributes *)self->_attributes accountPersistentID];
  v3 = accountPersistentID;
  if (accountPersistentID)
  {
    v4 = accountPersistentID;
  }

  else
  {
    v4 = +[NSUUID eks_garbageUUID];
  }

  v5 = v4;

  return v5;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  accountPersistentID = [(NEKSourceAttributes *)self->_attributes accountPersistentID];
  name = [(NEKSourceAttributes *)self->_attributes name];
  v7 = sub_10002CDF8(name);
  type = [(NEKSourceAttributes *)self->_attributes type];
  if (type > 5)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_1000B5A60[type];
  }

  v10 = [NSString stringWithFormat:@"<%@ %p persistentID=%@; title=%@; type=%@>", v4, self, accountPersistentID, v7, v9];;

  return v10;
}

@end