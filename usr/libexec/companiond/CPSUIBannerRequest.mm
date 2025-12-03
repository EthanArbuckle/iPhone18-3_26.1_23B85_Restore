@interface CPSUIBannerRequest
- (CPSUIBannerRequest)initWithCoder:(id)coder;
- (CPSUIBannerRequest)initWithIdentifier:(id)identifier;
- (id)description;
- (void)encodeWithCoder:(id)coder;
- (void)setDevice:(id)device;
@end

@implementation CPSUIBannerRequest

- (CPSUIBannerRequest)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v9.receiver = self;
  v9.super_class = CPSUIBannerRequest;
  v6 = [(CPSUIBannerRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestIdentifier, identifier);
  }

  return v7;
}

- (void)setDevice:(id)device
{
  deviceCopy = device;
  objc_storeStrong(&self->_device, device);
  if (!deviceCopy)
  {
    iconImageName = self->_iconImageName;
    self->_iconImageName = @"iphone";

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v19) = 0;
    v16 = "CPSUIBannerRequest: device = nil";
    v17 = 2;
LABEL_10:
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, v16, &v19, v17);
    goto LABEL_11;
  }

  model = [deviceCopy model];

  if (!model)
  {
    v18 = self->_iconImageName;
    self->_iconImageName = @"iphone";

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v19 = 138412290;
    v20 = deviceCopy;
    v16 = "CPSUIBannerRequest: model = nil, device = %@";
    v17 = 12;
    goto LABEL_10;
  }

  model2 = [deviceCopy model];
  v8 = [UTType _typeWithDeviceModelCode:model2];

  identifier = [v8 identifier];
  v10 = [ISSymbol symbolForTypeIdentifier:identifier error:0];
  name = [v10 name];
  v12 = self->_iconImageName;
  self->_iconImageName = name;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    name2 = [deviceCopy name];
    model3 = [deviceCopy model];
    v19 = 138412546;
    v20 = name2;
    v21 = 2112;
    v22 = model3;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CPSUIBannerRequest: <CPSDevice name = %@, model = %@>", &v19, 0x16u);
  }

LABEL_11:
}

- (void)encodeWithCoder:(id)coder
{
  requestIdentifier = self->_requestIdentifier;
  coderCopy = coder;
  [coderCopy encodeObject:requestIdentifier forKey:@"requestIdentifier"];
  [coderCopy encodeObject:self->_iconImageName forKey:@"iconImageName"];
  [coderCopy encodeObject:self->_text forKey:@"text"];
  [coderCopy encodeObject:self->_localizedKey forKey:@"localizedKey"];
  [coderCopy encodeObject:self->_localizationArgs forKey:@"localizationArgs"];
  [coderCopy encodeObject:self->_device forKey:@"device"];
}

- (CPSUIBannerRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_opt_self();
  v6 = [coderCopy decodeObjectOfClass:v5 forKey:@"requestIdentifier"];
  requestIdentifier = self->_requestIdentifier;
  self->_requestIdentifier = v6;

  v8 = objc_opt_self();
  v9 = [coderCopy decodeObjectOfClass:v8 forKey:@"iconImageName"];
  iconImageName = self->_iconImageName;
  self->_iconImageName = v9;

  v11 = objc_opt_self();
  v12 = [coderCopy decodeObjectOfClass:v11 forKey:@"text"];
  text = self->_text;
  self->_text = v12;

  v14 = objc_opt_self();
  v15 = [coderCopy decodeObjectOfClass:v14 forKey:@"localizedKey"];
  localizedKey = self->_localizedKey;
  self->_localizedKey = v15;

  v17 = objc_opt_self();
  v18 = [coderCopy decodeArrayOfObjectsOfClass:v17 forKey:@"localizationArgs"];
  localizationArgs = self->_localizationArgs;
  self->_localizationArgs = v18;

  v20 = objc_opt_self();
  v21 = [coderCopy decodeObjectOfClass:v20 forKey:@"device"];

  device = self->_device;
  self->_device = v21;

  return self;
}

- (id)description
{
  v3 = [BSDescriptionBuilder builderWithObject:self];
  [v3 appendString:self->_requestIdentifier withName:@"requestIdentifier"];
  [v3 appendString:self->_iconImageName withName:@"iconImageName"];
  [v3 appendString:self->_text withName:@"text"];
  [v3 appendString:self->_localizedKey withName:@"localizedKey"];
  v4 = [v3 appendObject:self->_localizationArgs withName:@"localizationArgs"];
  v5 = [v3 appendObject:self->_device withName:@"device"];
  build = [v3 build];

  return build;
}

@end