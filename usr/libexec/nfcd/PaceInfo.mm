@interface PaceInfo
- (id)description;
@end

@implementation PaceInfo

- (id)description
{
  if (self)
  {
    v3 = objc_getProperty(self, a2, 32, 1);
    if (v3)
    {
      v5 = v3;
      v6 = [NSString stringWithFormat:@", parameterId=%@", objc_getProperty(self, v4, 32, 1)];
    }

    else
    {
      v6 = &stru_10031EA18;
    }

    v7 = off_10031C8E8[self->_protocol];
    version = self->_version;
  }

  else
  {
    version = 0;
    v6 = &stru_10031EA18;
    v7 = "DH_GM_3DES_CBC_CBC";
  }

  v9 = [NSString stringWithFormat:@"PACEInfo: protocol=%s, version=%ld%@", v7, version, v6];

  return v9;
}

@end