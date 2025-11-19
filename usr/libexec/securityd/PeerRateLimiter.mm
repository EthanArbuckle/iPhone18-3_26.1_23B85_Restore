@interface PeerRateLimiter
- (PeerRateLimiter)initWithPeer:(__OpaqueSOSPeer *)a3;
- (id)setUpConfigForPeer;
- (int)stateForAccessGroup:(id)a3;
@end

@implementation PeerRateLimiter

- (int)stateForAccessGroup:(id)a3
{
  v4 = a3;
  v5 = [(PeerRateLimiter *)self accessGroupRateLimitState];
  v6 = [v5 objectForKey:v4];

  if (v6)
  {
    v7 = [v6 intValue];
  }

  else
  {
    v7 = 1;
    v8 = [[NSNumber alloc] initWithLong:1];
    v9 = [(PeerRateLimiter *)self accessGroupRateLimitState];
    [v9 setObject:v8 forKey:v4];
  }

  return v7;
}

- (PeerRateLimiter)initWithPeer:(__OpaqueSOSPeer *)a3
{
  v5 = [(PeerRateLimiter *)self setUpConfigForPeer];
  v11.receiver = self;
  v11.super_class = PeerRateLimiter;
  v6 = [(RateLimiter *)&v11 initWithConfig:v5];

  if (v6)
  {
    [(PeerRateLimiter *)v6 setPeerID:*(a3 + 2)];
    v7 = objc_alloc_init(NSMutableDictionary);
    [(PeerRateLimiter *)v6 setAccessGroupRateLimitState:v7];

    v8 = objc_alloc_init(NSMutableDictionary);
    [(PeerRateLimiter *)v6 setAccessGroupToTimer:v8];

    v9 = objc_alloc_init(NSMutableDictionary);
    [(PeerRateLimiter *)v6 setAccessGroupToNextMessageToSend:v9];
  }

  return v6;
}

- (id)setUpConfigForPeer
{
  v2 = [@"<?xml version=1.0 encoding=UTF-8?>                          <!DOCTYPE plist PUBLIC -//Apple//DTD PLIST 1.0//EN http://www.apple.com/DTDs/PropertyList-1.0.dtd>                          <plist version=1.0>                          <dict>                          <key>general</key>                          <dict>                          <key>maxStateSize</key>                          <integer>250</integer>                          <key>maxItemAge</key>                          <integer>3600</integer>                          <key>overloadDuration</key>                          <integer>1800</integer>                          <key>name</key>                          <string>SOS</string>                          <key>MAType</key>                          <string></string>                          </dict>                          <key>groups</key>                          <array>                                <dict>                                    <key>property</key>                                    <string>global</string>                                    <key>capacity</key>                                    <integer>1000</integer>                                    <key>rate</key>                                    <integer>10</integer>                                    <key>badness</key>                                    <integer>1</integer>                                </dict>                                <dict>                                    <key>property</key>                                    <string>accessGroup</string>                                    <key>capacity</key>                                    <integer>50</integer>                                    <key>rate</key>                                    <integer>900</integer>                                    <key>badness</key>                                    <integer>3</integer>                                </dict>                          </array>                          </dict>                          </plist>                          " dataUsingEncoding:4];
  v5 = 0;
  v3 = [NSPropertyListSerialization propertyListWithData:v2 options:0 format:0 error:&v5];

  return v3;
}

@end