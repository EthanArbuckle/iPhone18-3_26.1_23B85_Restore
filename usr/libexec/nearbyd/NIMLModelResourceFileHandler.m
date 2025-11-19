@interface NIMLModelResourceFileHandler
- (NIMLModelResourceFileHandler)initWithResourceBundleDirectory:(id)a3 bundleName:(id)a4;
@end

@implementation NIMLModelResourceFileHandler

- (NIMLModelResourceFileHandler)initWithResourceBundleDirectory:(id)a3 bundleName:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NIMLModelResourceFileHandler;
  v9 = [(NIMLModelResourceFileHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceBundleDir, a3);
    objc_storeStrong(&v10->_bundleName, a4);
  }

  return v10;
}

@end