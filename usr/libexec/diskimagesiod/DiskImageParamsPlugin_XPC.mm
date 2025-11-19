@interface DiskImageParamsPlugin_XPC
- (BOOL)setBlockSize:(unint64_t)a3 error:(id *)a4;
- (unint64_t)numBlocks;
- (unique_ptr<DiskImage,)createSinkDiskImage;
@end

@implementation DiskImageParamsPlugin_XPC

- (unique_ptr<DiskImage,)createSinkDiskImage
{
  [(DiskImageParamsXPC *)self backendXPC];
  [objc_claimAutoreleasedReturnValue() pluginHeader];
  operator new();
}

- (unint64_t)numBlocks
{
  v2 = [(DiskImageParamsXPC *)self backendXPC];
  v3 = (*(*[v2 pluginHeader] + 16))();

  return v3;
}

- (BOOL)setBlockSize:(unint64_t)a3 error:(id *)a4
{
  v6 = [(DiskImageParamsXPC *)self backendXPC];
  if ((*(*[v6 pluginHeader] + 8))() == a3)
  {
    v7 = 1;
  }

  else
  {
    v7 = [DIError failWithPOSIXCode:22 description:@"Invalid block size for image" error:a4];
  }

  return v7;
}

@end