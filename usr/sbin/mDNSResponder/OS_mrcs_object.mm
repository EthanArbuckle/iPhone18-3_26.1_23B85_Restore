@interface OS_mrcs_object
- (BOOL)isEqual:(id)equal;
- (NSString)debugDescription;
- (NSString)description;
- (id)redactedDescription;
- (void)dealloc;
@end

@implementation OS_mrcs_object

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v6 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (isa = self[2].super.super.isa, isa == equalCopy[2].super.super.isa) && (v8 = *(isa + 4)) != 0)
    {
      v6 = v8(self, equalCopy);
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (id)redactedDescription
{
  v2 = _mdns_obj_copy_description_as_cfstring(self);

  return v2;
}

- (NSString)debugDescription
{
  v2 = _mdns_obj_copy_description_as_cfstring(self);

  return v2;
}

- (NSString)description
{
  v2 = _mdns_obj_copy_description_as_cfstring(self);

  return v2;
}

- (void)dealloc
{
  for (i = self[2].super.super.isa; i; i = *i)
  {
    v4 = *(i + 5);
    if (v4)
    {
      v4(self, a2);
    }
  }

  v5.receiver = self;
  v5.super_class = OS_mrcs_object;
  [(OS_mrcs_object *)&v5 dealloc];
}

@end