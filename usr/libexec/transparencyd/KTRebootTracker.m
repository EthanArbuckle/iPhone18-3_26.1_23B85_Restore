@interface KTRebootTracker
- (id)getLastRebootTime;
@end

@implementation KTRebootTracker

- (id)getLastRebootTime
{
  v8[0] = 0;
  v8[1] = 0;
  *v9 = 0x1500000001;
  v6 = 16;
  v7 = 0;
  time(&v7);
  v2 = sysctl(v9, 2u, v8, &v6, 0, 0);
  v3 = v8[0];
  if (v2 == -1)
  {
    v3 = 0.0;
  }

  v4 = [NSDate dateWithTimeIntervalSince1970:v3, v6];

  return v4;
}

@end