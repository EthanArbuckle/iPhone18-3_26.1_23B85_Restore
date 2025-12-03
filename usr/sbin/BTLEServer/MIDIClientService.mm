@interface MIDIClientService
- (MIDIClientService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service;
- (void)start;
@end

@implementation MIDIClientService

- (MIDIClientService)initWithManager:(id)manager peripheral:(id)peripheral service:(id)service
{
  v8.receiver = self;
  v8.super_class = MIDIClientService;
  v5 = [(ClientService *)&v8 initWithManager:manager peripheral:peripheral service:service];
  v6 = v5;
  if (v5)
  {
    [(ClientService *)v5 setIsPrimary:1];
    [(ClientService *)v6 setPriority:9];
    [(ClientService *)v6 setStartTimeout:0.0];
  }

  return v6;
}

- (void)start
{
  v5.receiver = self;
  v5.super_class = MIDIClientService;
  [(ClientService *)&v5 start];
  v3 = +[NSNotificationCenter defaultCenter];
  peripheral = [(ClientService *)self peripheral];
  [v3 postNotificationName:@"PeerIsUsingBuiltinServiceNotification" object:peripheral];

  [(ClientService *)self notifyDidStart];
}

@end