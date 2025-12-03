@interface DIURL
+ (id)newDIURLWithNSURL:(id)l;
+ (id)newDIURLWithPluginName:(id)name params:(id)params;
- (BOOL)isPlugin;
- (DIURL)initWithCoder:(id)coder;
- (DIURL)initWithPluginName:(id)name params:(id)params;
- (NSString)pluginName;
- (id)description;
- (id)path;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DIURL

+ (id)newDIURLWithNSURL:(id)l
{
  lCopy = l;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [lCopy copy];
  }

  else
  {
    v5 = [DIURL alloc];
    absoluteString = [lCopy absoluteString];
    v4 = [(DIURL *)v5 initWithString:absoluteString];
  }

  return v4;
}

+ (id)newDIURLWithPluginName:(id)name params:(id)params
{
  nameCopy = name;
  paramsCopy = params;
  v7 = [[DIURL alloc] initWithPluginName:nameCopy params:paramsCopy];

  return v7;
}

- (DIURL)initWithPluginName:(id)name params:(id)params
{
  paramsCopy = params;
  name = [NSString stringWithFormat:@"plugin://%@/", name];
  v11.receiver = self;
  v11.super_class = DIURL;
  v9 = [(DIURL *)&v11 initWithString:name];

  if (v9)
  {
    objc_storeStrong(&v9->_pluginParams, params);
  }

  return v9;
}

- (BOOL)isPlugin
{
  scheme = [(DIURL *)self scheme];
  lowercaseString = [scheme lowercaseString];
  v4 = [lowercaseString isEqualToString:@"plugin"];

  return v4;
}

- (NSString)pluginName
{
  if ([(DIURL *)self isPlugin])
  {
    host = [(DIURL *)self host];
  }

  else
  {
    host = 0;
  }

  return host;
}

- (id)path
{
  if ([(DIURL *)self isPlugin])
  {
    path = [(DIURL *)self description];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DIURL;
    path = [(DIURL *)&v5 path];
  }

  return path;
}

- (id)description
{
  if ([(DIURL *)self isPlugin])
  {
    v3 = sub_10007B45C();
    pluginName = [(DIURL *)self pluginName];
    uTF8String = [pluginName UTF8String];
    v6 = strlen(uTF8String);
    if (v6 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_100001BB0();
    }

    v7 = v6;
    if (v6 >= 0x17)
    {
      operator new();
    }

    v20 = v6;
    if (v6)
    {
      memmove(&__dst, uTF8String, v6);
    }

    *(&__dst + v7) = 0;
    pluginParams = [(DIURL *)self pluginParams];
    v13 = sub_10007CB5C(v3, &__dst, pluginParams);

    if (v20 < 0)
    {
      operator delete(__dst);
    }

    v14 = [NSURL URLWithString:v13];
    scheme = [v14 scheme];

    if (!scheme)
    {
      v16 = [NSString stringWithFormat:@"plugin://%@", v13];
      v17 = [NSURL URLWithString:v16];

      v14 = v17;
    }

    absoluteString = [v14 absoluteString];
  }

  else
  {
    v8 = [NSURLComponents componentsWithURL:self resolvingAgainstBaseURL:1];
    password = [(DIURL *)self password];

    if (password)
    {
      [v8 setPassword:0];
    }

    v10 = [v8 URL];
    absoluteString = [v10 absoluteString];
  }

  return absoluteString;
}

- (DIURL)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = DIURL;
  v5 = [(DIURL *)&v19 initWithCoder:coderCopy];
  if (v5)
  {
    v18 = objc_opt_class();
    v17 = objc_opt_class();
    v6 = objc_opt_class();
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = [NSSet setWithObjects:v18, v17, v6, v7, v8, v9, v10, v11, v12, objc_opt_class(), 0];
    v14 = [coderCopy decodeObjectOfClasses:v13 forKey:@"pluginParams"];
    pluginParams = v5->_pluginParams;
    v5->_pluginParams = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v6.receiver = self;
  v6.super_class = DIURL;
  [(DIURL *)&v6 encodeWithCoder:coderCopy];
  pluginParams = [(DIURL *)self pluginParams];
  [coderCopy encodeObject:pluginParams forKey:@"pluginParams"];
}

@end