@interface DIURL
+ (id)newDIURLWithNSURL:(id)a3;
+ (id)newDIURLWithPluginName:(id)a3 params:(id)a4;
- (BOOL)isPlugin;
- (DIURL)initWithCoder:(id)a3;
- (DIURL)initWithPluginName:(id)a3 params:(id)a4;
- (NSString)pluginName;
- (id)description;
- (id)path;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DIURL

+ (id)newDIURLWithNSURL:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 copy];
  }

  else
  {
    v5 = [DIURL alloc];
    v6 = [v3 absoluteString];
    v4 = [(DIURL *)v5 initWithString:v6];
  }

  return v4;
}

+ (id)newDIURLWithPluginName:(id)a3 params:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = [[DIURL alloc] initWithPluginName:v5 params:v6];

  return v7;
}

- (DIURL)initWithPluginName:(id)a3 params:(id)a4
{
  v7 = a4;
  v8 = [NSString stringWithFormat:@"plugin://%@/", a3];
  v11.receiver = self;
  v11.super_class = DIURL;
  v9 = [(DIURL *)&v11 initWithString:v8];

  if (v9)
  {
    objc_storeStrong(&v9->_pluginParams, a4);
  }

  return v9;
}

- (BOOL)isPlugin
{
  v2 = [(DIURL *)self scheme];
  v3 = [v2 lowercaseString];
  v4 = [v3 isEqualToString:@"plugin"];

  return v4;
}

- (NSString)pluginName
{
  if ([(DIURL *)self isPlugin])
  {
    v3 = [(DIURL *)self host];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)path
{
  if ([(DIURL *)self isPlugin])
  {
    v3 = [(DIURL *)self description];
  }

  else
  {
    v5.receiver = self;
    v5.super_class = DIURL;
    v3 = [(DIURL *)&v5 path];
  }

  return v3;
}

- (id)description
{
  if ([(DIURL *)self isPlugin])
  {
    v3 = sub_10007B45C();
    v4 = [(DIURL *)self pluginName];
    v5 = [v4 UTF8String];
    v6 = strlen(v5);
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
      memmove(&__dst, v5, v6);
    }

    *(&__dst + v7) = 0;
    v12 = [(DIURL *)self pluginParams];
    v13 = sub_10007CB5C(v3, &__dst, v12);

    if (v20 < 0)
    {
      operator delete(__dst);
    }

    v14 = [NSURL URLWithString:v13];
    v15 = [v14 scheme];

    if (!v15)
    {
      v16 = [NSString stringWithFormat:@"plugin://%@", v13];
      v17 = [NSURL URLWithString:v16];

      v14 = v17;
    }

    v11 = [v14 absoluteString];
  }

  else
  {
    v8 = [NSURLComponents componentsWithURL:self resolvingAgainstBaseURL:1];
    v9 = [(DIURL *)self password];

    if (v9)
    {
      [v8 setPassword:0];
    }

    v10 = [v8 URL];
    v11 = [v10 absoluteString];
  }

  return v11;
}

- (DIURL)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = DIURL;
  v5 = [(DIURL *)&v19 initWithCoder:v4];
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
    v14 = [v4 decodeObjectOfClasses:v13 forKey:@"pluginParams"];
    pluginParams = v5->_pluginParams;
    v5->_pluginParams = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = DIURL;
  [(DIURL *)&v6 encodeWithCoder:v4];
  v5 = [(DIURL *)self pluginParams];
  [v4 encodeObject:v5 forKey:@"pluginParams"];
}

@end