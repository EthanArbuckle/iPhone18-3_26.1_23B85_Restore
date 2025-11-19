@interface W5LogItemRequestInternal
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToLogItemRequestInternal:(id)a3;
- (W5LogItemRequestInternal)init;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (void)dealloc;
@end

@implementation W5LogItemRequestInternal

- (W5LogItemRequestInternal)init
{
  v5.receiver = self;
  v5.super_class = W5LogItemRequestInternal;
  v2 = [(W5LogItemRequestInternal *)&v5 init];
  if (v2)
  {
    v3 = os_transaction_create();
    [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];
    v2->_transaction = v3;
  }

  return v2;
}

- (void)dealloc
{
  [+[W5ActivityManager sharedActivityManager](W5ActivityManager "sharedActivityManager")];

  self->_transaction = 0;
  v3.receiver = self;
  v3.super_class = W5LogItemRequestInternal;
  [(W5LogItemRequestInternal *)&v3 dealloc];
}

- (id)description
{
  v3 = [NSMutableString stringWithCapacity:0];
  [(NSMutableString *)v3 appendFormat:@"UUID: %@\n", self->_uuid];
  [(NSMutableString *)v3 appendFormat:@"UID: %d\n", self->_uid];
  [(NSMutableString *)v3 appendFormat:@"GID: %d\n", self->_gid];
  if (self->_includeEvents)
  {
    v4 = "Yes";
  }

  else
  {
    v4 = "No";
  }

  [(NSMutableString *)v3 appendFormat:@"Events: %s\n", v4];
  [(NSMutableString *)v3 appendFormat:@"Filename: %@\n", self->_filename];
  [(NSMutableString *)v3 appendFormat:@"AdditionalLog: %@\n", self->_additionalLog];
  [(NSMutableString *)v3 appendFormat:@"Configuration: %@\n", self->_configuration];
  [(NSMutableString *)v3 appendFormat:@"AddedAt: %@\n", self->_addedAt];
  [(NSMutableString *)v3 appendFormat:@"Requests:\n"];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  itemRequests = self->_itemRequests;
  v6 = [(NSArray *)itemRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(itemRequests);
        }

        [(NSMutableString *)v3 appendFormat:@"%@\n", *(*(&v11 + 1) + 8 * v9)];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [(NSArray *)itemRequests countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  return [(NSMutableString *)v3 copy];
}

- (BOOL)isEqualToLogItemRequestInternal:(id)a3
{
  uuid = self->_uuid;
  v4 = [a3 uuid];

  return [(NSUUID *)uuid isEqual:v4];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    return 1;
  }

  if (!a3)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    return 0;
  }

  return [(W5LogItemRequestInternal *)self isEqualToLogItemRequestInternal:a3];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[W5LogItemRequestInternal allocWithZone:?]];
  [(W5LogItemRequestInternal *)v4 setUuid:self->_uuid];
  [(W5LogItemRequestInternal *)v4 setItemRequests:self->_itemRequests];
  [(W5LogItemRequestInternal *)v4 setConfiguration:self->_configuration];
  [(W5LogItemRequestInternal *)v4 setFilename:self->_filename];
  [(W5LogItemRequestInternal *)v4 setAdditionalLog:self->_additionalLog];
  [(W5LogItemRequestInternal *)v4 setUid:self->_uid];
  [(W5LogItemRequestInternal *)v4 setGid:self->_gid];
  [(W5LogItemRequestInternal *)v4 setIncludeEvents:self->_includeEvents];
  [(W5LogItemRequestInternal *)v4 setAddedAt:self->_addedAt];
  [(W5LogItemRequestInternal *)v4 setReply:self->_reply];
  return v4;
}

@end