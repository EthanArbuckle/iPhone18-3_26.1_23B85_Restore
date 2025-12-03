@interface UMDAPFSSupportVolumeHelper
- (BOOL)unmountVolumeWithSession:(id)session mountPath:(id)path error:(int *)error force:(BOOL)force;
@end

@implementation UMDAPFSSupportVolumeHelper

- (BOOL)unmountVolumeWithSession:(id)session mountPath:(id)path error:(int *)error force:(BOOL)force
{
  if (force)
  {
    v7 = 0x80000;
  }

  else
  {
    v7 = 0;
  }

  return sub_100070DBC(session, path, error, v7) != 0;
}

@end