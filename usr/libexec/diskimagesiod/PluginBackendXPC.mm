@interface PluginBackendXPC
- (PluginBackendXPC)initWithCoder:(id)a3;
- (PluginBackendXPC)initWithURL:(id)a3 openMode:(int)a4;
- (const)pluginHeader;
- (void)encodeWithCoder:(id)a3;
@end

@implementation PluginBackendXPC

- (PluginBackendXPC)initWithURL:(id)a3 openMode:(int)a4
{
  v6 = a3;
  v15 = a4;
  v14.receiver = self;
  v14.super_class = PluginBackendXPC;
  if ([(PluginBackendXPC *)&v14 init])
  {
    v7 = [v6 pluginName];
    v8 = [v7 UTF8String];

    v13 = v8;
    if (v8)
    {
      v12 = [v6 pluginParams];
      sub_1000E8E8C();
    }

    exception = __cxa_allocate_exception(0x40uLL);
    *exception = &off_1002260F0;
    v11 = std::generic_category();
    exception[1] = 22;
    exception[2] = v11;
    *(exception + 24) = 0;
    *(exception + 48) = 0;
    exception[7] = "Invalid plugin URL, plugin name is missing";
  }

  return 0;
}

- (PluginBackendXPC)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = PluginBackendXPC;
  v5 = [(BackendXPC *)&v19 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"URL"];
    URL = v5->_URL;
    v5->_URL = v6;

    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = [NSSet setWithObjects:v8, v9, v10, objc_opt_class(), 0];
    v12 = [v4 decodeObjectOfClasses:v11 forKey:@"encodedDict"];

    v17 = *off_10020F448;
    v18 = j__free_0;
    [(DIURL *)v5->_URL pluginName];
    v15 = 0;
    v16 = [objc_claimAutoreleasedReturnValue() UTF8String];
    v14 = v12;
    sub_1000E93F4();
  }

  return 0;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v7.receiver = self;
  v7.super_class = PluginBackendXPC;
  [(BackendXPC *)&v7 encodeWithCoder:v4];
  v5 = [(PluginBackendXPC *)self URL];
  [v4 encodeObject:v5 forKey:@"URL"];

  v6 = +[NSMutableDictionary dictionary];
  (*(*[(PluginBackendXPC *)self pluginHeader]+ 64))();
  if ([v6 count])
  {
    [v4 encodeObject:v6 forKey:@"encodedDict"];
  }
}

- (const)pluginHeader
{
  [(BackendXPC *)self backend];
  v2 = *(v4 + 24);
  if (v5)
  {
    sub_10000E984(v5);
  }

  return v2;
}

@end