@interface MIDIClientService
- (MIDIClientService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5;
- (void)start;
@end

@implementation MIDIClientService

- (MIDIClientService)initWithManager:(id)a3 peripheral:(id)a4 service:(id)a5
{
  v8.receiver = self;
  v8.super_class = MIDIClientService;
  v5 = [(ClientService *)&v8 initWithManager:a3 peripheral:a4 service:a5];
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
  v4 = [(ClientService *)self peripheral];
  [v3 postNotificationName:@"PeerIsUsingBuiltinServiceNotification" object:v4];

  [(ClientService *)self notifyDidStart];
}

@end