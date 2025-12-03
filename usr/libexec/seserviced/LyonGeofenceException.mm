@interface LyonGeofenceException
- (void)homeManagerDidUpdateHomes:(id)homes;
@end

@implementation LyonGeofenceException

- (void)homeManagerDidUpdateHomes:(id)homes
{
  homesCopy = homes;
  selfCopy = self;
  sub_1001E03B4(&unk_1004CB3F8, sub_1001E0744, &unk_1004CB410);
}

@end