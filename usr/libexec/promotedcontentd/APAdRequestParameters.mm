@interface APAdRequestParameters
- (APAdRequestParameters)initWithCoder:(id)coder;
- (APAdRequestParameters)initWithContext:(id)context bundleID:(id)d identifier:(id)identifier placement:(int64_t)placement completionHandler:(id)handler;
- (void)encodeWithCoder:(id)coder;
@end

@implementation APAdRequestParameters

- (APAdRequestParameters)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = APAdRequestParameters;
  v5 = [(APAdRequestParameters *)&v14 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"context"];
    context = v5->_context;
    v5->_context = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v8;

    v5->_placementType = [coderCopy decodeIntegerForKey:@"placementType"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleID"];
    bundleID = v5->_bundleID;
    v5->_bundleID = v10;

    [coderCopy decodeDoubleForKey:@"timestamp"];
    v5->_timestamp = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  context = [(APAdRequestParameters *)self context];
  [coderCopy encodeObject:context forKey:@"context"];

  identifier = [(APAdRequestParameters *)self identifier];
  [coderCopy encodeObject:identifier forKey:@"identifier"];

  [coderCopy encodeInteger:-[APAdRequestParameters placementType](self forKey:{"placementType"), @"placementType"}];
  bundleID = [(APAdRequestParameters *)self bundleID];
  [coderCopy encodeObject:bundleID forKey:@"bundleID"];

  [(APAdRequestParameters *)self timestamp];
  [coderCopy encodeDouble:@"timestamp" forKey:?];
}

- (APAdRequestParameters)initWithContext:(id)context bundleID:(id)d identifier:(id)identifier placement:(int64_t)placement completionHandler:(id)handler
{
  contextCopy = context;
  dCopy = d;
  identifierCopy = identifier;
  v26.receiver = self;
  v26.super_class = APAdRequestParameters;
  handlerCopy = handler;
  v16 = [(APAdRequestParameters *)&v26 init];
  context = v16->_context;
  v16->_context = contextCopy;
  v18 = contextCopy;

  bundleID = v16->_bundleID;
  v16->_bundleID = dCopy;
  v20 = dCopy;

  identifier = v16->_identifier;
  v16->_identifier = identifierCopy;
  v22 = identifierCopy;

  v16->_placementType = placement;
  v23 = objc_retainBlock(handlerCopy);

  completionHandler = v16->_completionHandler;
  v16->_completionHandler = v23;

  v16->_timestamp = CFAbsoluteTimeGetCurrent();
  return v16;
}

@end