@interface NEKCalendarWrapper
- (id)description;
- (id)objectIdentifier;
@end

@implementation NEKCalendarWrapper

- (id)objectIdentifier
{
  v2 = [(NEKCalendarWrapper *)self calendarIdentifier];
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
  storeIdentifier = self->_storeIdentifier;
  v6 = [(NEKCalendarWrapper *)self objectIdentifier];
  v7 = [NSString stringWithFormat:@"<%@ %p, source = %@, calendarIdentifier = %@>", v4, self, storeIdentifier, v6];

  return v7;
}

@end