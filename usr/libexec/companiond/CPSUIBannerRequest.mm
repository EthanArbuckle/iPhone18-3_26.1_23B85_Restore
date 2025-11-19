@interface CPSUIBannerRequest
- (CPSUIBannerRequest)initWithCoder:(id)a3;
- (CPSUIBannerRequest)initWithIdentifier:(id)a3;
- (id)description;
- (void)encodeWithCoder:(id)a3;
- (void)setDevice:(id)a3;
@end

@implementation CPSUIBannerRequest

- (CPSUIBannerRequest)initWithIdentifier:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = CPSUIBannerRequest;
  v6 = [(CPSUIBannerRequest *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_requestIdentifier, a3);
  }

  return v7;
}

- (void)setDevice:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_device, a3);
  if (!v5)
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

  v6 = [v5 model];

  if (!v6)
  {
    v18 = self->_iconImageName;
    self->_iconImageName = @"iphone";

    if (!os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v19 = 138412290;
    v20 = v5;
    v16 = "CPSUIBannerRequest: model = nil, device = %@";
    v17 = 12;
    goto LABEL_10;
  }

  v7 = [v5 model];
  v8 = [UTType _typeWithDeviceModelCode:v7];

  v9 = [v8 identifier];
  v10 = [ISSymbol symbolForTypeIdentifier:v9 error:0];
  v11 = [v10 name];
  v12 = self->_iconImageName;
  self->_iconImageName = v11;

  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v5 name];
    v14 = [v5 model];
    v19 = 138412546;
    v20 = v13;
    v21 = 2112;
    v22 = v14;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "CPSUIBannerRequest: <CPSDevice name = %@, model = %@>", &v19, 0x16u);
  }

LABEL_11:
}

- (void)encodeWithCoder:(id)a3
{
  requestIdentifier = self->_requestIdentifier;
  v5 = a3;
  [v5 encodeObject:requestIdentifier forKey:@"requestIdentifier"];
  [v5 encodeObject:self->_iconImageName forKey:@"iconImageName"];
  [v5 encodeObject:self->_text forKey:@"text"];
  [v5 encodeObject:self->_localizedKey forKey:@"localizedKey"];
  [v5 encodeObject:self->_localizationArgs forKey:@"localizationArgs"];
  [v5 encodeObject:self->_device forKey:@"device"];
}

- (CPSUIBannerRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = objc_opt_self();
  v6 = [v4 decodeObjectOfClass:v5 forKey:@"requestIdentifier"];
  requestIdentifier = self->_requestIdentifier;
  self->_requestIdentifier = v6;

  v8 = objc_opt_self();
  v9 = [v4 decodeObjectOfClass:v8 forKey:@"iconImageName"];
  iconImageName = self->_iconImageName;
  self->_iconImageName = v9;

  v11 = objc_opt_self();
  v12 = [v4 decodeObjectOfClass:v11 forKey:@"text"];
  text = self->_text;
  self->_text = v12;

  v14 = objc_opt_self();
  v15 = [v4 decodeObjectOfClass:v14 forKey:@"localizedKey"];
  localizedKey = self->_localizedKey;
  self->_localizedKey = v15;

  v17 = objc_opt_self();
  v18 = [v4 decodeArrayOfObjectsOfClass:v17 forKey:@"localizationArgs"];
  localizationArgs = self->_localizationArgs;
  self->_localizationArgs = v18;

  v20 = objc_opt_self();
  v21 = [v4 decodeObjectOfClass:v20 forKey:@"device"];

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
  v6 = [v3 build];

  return v6;
}

@end