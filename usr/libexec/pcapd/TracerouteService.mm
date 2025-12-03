@interface TracerouteService
- (TracerouteService)init;
- (void)createXPCListener;
@end

@implementation TracerouteService

- (void)createXPCListener
{
  selfCopy = self;
  TracerouteService.createXPCListener()();
}

- (TracerouteService)init
{
  Logger.init(subsystem:category:)();
  v4.receiver = self;
  v4.super_class = type metadata accessor for TracerouteService();
  return [(TracerouteService *)&v4 init];
}

@end