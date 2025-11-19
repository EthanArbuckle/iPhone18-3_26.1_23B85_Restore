@interface NEKSourceWrapper
- (id)description;
- (id)objectIdentifier;
@end

@implementation NEKSourceWrapper

- (id)objectIdentifier
{
  v2 = [(NEKSourceAttributes *)self->_attributes accountPersistentID];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
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
  v5 = [(NEKSourceAttributes *)self->_attributes accountPersistentID];
  v6 = [(NEKSourceAttributes *)self->_attributes name];
  v7 = sub_10002CDF8(v6);
  v8 = [(NEKSourceAttributes *)self->_attributes type];
  if (v8 > 5)
  {
    v9 = @"Unknown";
  }

  else
  {
    v9 = off_1000B5A60[v8];
  }

  v10 = [NSString stringWithFormat:@"<%@ %p persistentID=%@; title=%@; type=%@>", v4, self, v5, v7, v9];;

  return v10;
}

@end