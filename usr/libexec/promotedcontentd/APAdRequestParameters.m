@interface APAdRequestParameters
- (APAdRequestParameters)initWithCoder:(id)a3;
- (APAdRequestParameters)initWithContext:(id)a3 bundleID:(id)a4 identifier:(id)a5 placement:(int64_t)a6 completionHandler:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation APAdRequestParameters

- (APAdRequestParameters)initWithCoder:(id)a3
{
  v4 = a3;
  v14.receiver = self;
  v14.super_class = APAdRequestParameters;
  v5 = [(APAdRequestParameters *)&v14 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_placementType = [v4 decodeIntegerForKey:@"placementType"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    [v4 decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(APAdRequestParameters *)self context];
  [v7 encodeObject:v4 forKey:@"context"];

  v5 = [(APAdRequestParameters *)self identifier];
  [v7 encodeObject:v5 forKey:@"identifier"];

  [v7 encodeInteger:-[APAdRequestParameters placementType](self forKey:{"placementType"), @"placementType"}];
  v6 = [(APAdRequestParameters *)self bundleID];
  [v7 encodeObject:v6 forKey:@"bundleID"];

  [(APAdRequestParameters *)self timestamp];
  [v7 encodeDouble:@"timestamp" forKey:?];
}

- (APAdRequestParameters)initWithContext:(id)a3 bundleID:(id)a4 identifier:(id)a5 placement:(int64_t)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v26.receiver = self;
  v26.super_class = APAdRequestParameters;
  v15 = a7;
  v16 = [(APAdRequestParameters *)&v26 init];
  context = v16->_context;
  v16->_context = v12;
  v18 = v12;

  bundleID = v16->_bundleID;
  v16->_bundleID = v13;
  v20 = v13;

  identifier = v16->_identifier;
  v16->_identifier = v14;
  v22 = v14;

  v16->_placementType = a6;
  v23 = objc_retainBlock(v15);

  completionHandler = v16->_completionHandler;
  v16->_completionHandler = v23;

  v16->_timestamp = CFAbsoluteTimeGetCurrent();
  return v16;
}

@end