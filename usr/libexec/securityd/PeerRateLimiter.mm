@interface PeerRateLimiter
- (PeerRateLimiter)initWithPeer:(__OpaqueSOSPeer *)peer;
- (id)setUpConfigForPeer;
- (int)stateForAccessGroup:(id)group;
@end

@implementation PeerRateLimiter

- (int)stateForAccessGroup:(id)group
{
  groupCopy = group;
  accessGroupRateLimitState = [(PeerRateLimiter *)self accessGroupRateLimitState];
  v6 = [accessGroupRateLimitState objectForKey:groupCopy];

  if (v6)
  {
    intValue = [v6 intValue];
  }

  else
  {
    intValue = 1;
    v8 = [[NSNumber alloc] initWithLong:1];
    accessGroupRateLimitState2 = [(PeerRateLimiter *)self accessGroupRateLimitState];
    [accessGroupRateLimitState2 setObject:v8 forKey:groupCopy];
  }

  return intValue;
}

- (PeerRateLimiter)initWithPeer:(__OpaqueSOSPeer *)peer
{
  setUpConfigForPeer = [(PeerRateLimiter *)self setUpConfigForPeer];
  v11.receiver = self;
  v11.super_class = PeerRateLimiter;
  v6 = [(RateLimiter *)&v11 initWithConfig:setUpConfigForPeer];

  if (v6)
  {
    [(PeerRateLimiter *)v6 setPeerID:*(peer + 2)];
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