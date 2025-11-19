@interface MediaSession
- (MediaSession)init;
@end

@implementation MediaSession

- (MediaSession)init
{
  v6.receiver = self;
  v6.super_class = MediaSession;
  v2 = [(MediaSession *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSMutableDictionary);
    registrations = v2->_registrations;
    v2->_registrations = v3;

    v2->_loadedEntityID = -1;
    v2->_loadedAttributeID = -1;
  }

  return v2;
}

@end