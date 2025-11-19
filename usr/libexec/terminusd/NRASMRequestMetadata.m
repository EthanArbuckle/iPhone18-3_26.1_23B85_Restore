@interface NRASMRequestMetadata
- (id)description;
@end

@implementation NRASMRequestMetadata

- (id)description
{
  v3 = objc_alloc_init(NSMutableArray);
  v4 = v3;
  if (self->_localOnly)
  {
    [v3 addObject:@"local"];
  }

  if (self->_isClassC)
  {
    [v4 addObject:@"classC"];
  }

  if (self->_skipQRAssert)
  {
    [v4 addObject:@"skipQRAssert"];
  }

  if (self->_removeEndpoints)
  {
    [v4 addObject:@"removeEndpoint"];
  }

  v5 = [NSString alloc];
  v6 = [v4 componentsJoinedByString:{@", "}];
  v7 = [v5 initWithFormat:@"<%@>", v6];

  return v7;
}

@end