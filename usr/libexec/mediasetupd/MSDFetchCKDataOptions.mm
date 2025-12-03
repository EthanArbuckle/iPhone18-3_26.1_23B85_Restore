@interface MSDFetchCKDataOptions
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
@end

@implementation MSDFetchCKDataOptions

- (id)description
{
  v2 = @"NO";
  if (self->_createNewZoneIfMissing)
  {
    v3 = @"YES";
  }

  else
  {
    v3 = @"NO";
  }

  if (self->_userInitiatedRequest)
  {
    v2 = @"YES";
  }

  return [NSString stringWithFormat:@"<MSDFetchCKDataOptions: createNewZoneIfMissing: %@ userInitiatedRequest: %@>", v3, v2];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  [v4 setCreateNewZoneIfMissing:{-[MSDFetchCKDataOptions createNewZoneIfMissing](self, "createNewZoneIfMissing")}];
  [v4 setUserInitiatedRequest:{-[MSDFetchCKDataOptions userInitiatedRequest](self, "userInitiatedRequest")}];
  return v4;
}

@end