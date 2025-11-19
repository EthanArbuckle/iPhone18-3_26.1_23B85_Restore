@interface UMDAPFSSupportVolumeHelper
- (BOOL)unmountVolumeWithSession:(id)a3 mountPath:(id)a4 error:(int *)a5 force:(BOOL)a6;
@end

@implementation UMDAPFSSupportVolumeHelper

- (BOOL)unmountVolumeWithSession:(id)a3 mountPath:(id)a4 error:(int *)a5 force:(BOOL)a6
{
  if (a6)
  {
    v7 = 0x80000;
  }

  else
  {
    v7 = 0;
  }

  return sub_100070DBC(a3, a4, a5, v7) != 0;
}

@end