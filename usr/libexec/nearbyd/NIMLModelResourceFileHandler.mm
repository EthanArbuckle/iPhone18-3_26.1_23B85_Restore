@interface NIMLModelResourceFileHandler
- (NIMLModelResourceFileHandler)initWithResourceBundleDirectory:(id)directory bundleName:(id)name;
@end

@implementation NIMLModelResourceFileHandler

- (NIMLModelResourceFileHandler)initWithResourceBundleDirectory:(id)directory bundleName:(id)name
{
  directoryCopy = directory;
  nameCopy = name;
  v12.receiver = self;
  v12.super_class = NIMLModelResourceFileHandler;
  v9 = [(NIMLModelResourceFileHandler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_resourceBundleDir, directory);
    objc_storeStrong(&v10->_bundleName, name);
  }

  return v10;
}

@end