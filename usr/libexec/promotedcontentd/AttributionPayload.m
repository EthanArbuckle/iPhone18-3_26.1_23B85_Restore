@interface AttributionPayload
- (AttributionPayload)initWithURL:(id)a3 bundleID:(id)a4 header:(id)a5 body:(id)a6;
@end

@implementation AttributionPayload

- (AttributionPayload)initWithURL:(id)a3 bundleID:(id)a4 header:(id)a5 body:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v18.receiver = self;
  v18.super_class = AttributionPayload;
  v15 = [(AttributionPayload *)&v18 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_url, a3);
    objc_storeStrong(&v16->_bundleID, a4);
    objc_storeStrong(&v16->_header, a5);
    objc_storeStrong(&v16->_body, a6);
  }

  return v16;
}

@end