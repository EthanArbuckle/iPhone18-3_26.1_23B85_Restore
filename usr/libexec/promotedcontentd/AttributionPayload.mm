@interface AttributionPayload
- (AttributionPayload)initWithURL:(id)l bundleID:(id)d header:(id)header body:(id)body;
@end

@implementation AttributionPayload

- (AttributionPayload)initWithURL:(id)l bundleID:(id)d header:(id)header body:(id)body
{
  lCopy = l;
  dCopy = d;
  headerCopy = header;
  bodyCopy = body;
  v18.receiver = self;
  v18.super_class = AttributionPayload;
  v15 = [(AttributionPayload *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_url, l);
    objc_storeStrong(&v16->_bundleID, d);
    objc_storeStrong(&v16->_header, header);
    objc_storeStrong(&v16->_body, body);
  }

  return v16;
}

@end