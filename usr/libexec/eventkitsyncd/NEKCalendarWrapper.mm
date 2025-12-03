@interface NEKCalendarWrapper
- (id)description;
- (id)objectIdentifier;
@end

@implementation NEKCalendarWrapper

- (id)objectIdentifier
{
  calendarIdentifier = [(NEKCalendarWrapper *)self calendarIdentifier];
  v3 = calendarIdentifier;
  if (calendarIdentifier)
  {
    v4 = calendarIdentifier;
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
  objectIdentifier = [(NEKCalendarWrapper *)self objectIdentifier];
  v7 = [NSString stringWithFormat:@"<%@ %p, source = %@, calendarIdentifier = %@>", v4, self, storeIdentifier, objectIdentifier];

  return v7;
}

@end