@interface NRConcurrentPipe
- (NSUUID)uuid;
@end

@implementation NRConcurrentPipe

- (NSUUID)uuid
{
  resourceManager = [(EPResource *)self resourceManager];
  uuid = [resourceManager uuid];

  return uuid;
}

@end