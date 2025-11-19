@interface DiskImageParamsSparseBundle_XPC
- (unint64_t)numBlocks;
- (unique_ptr<DiskImage,)createSinkDiskImage;
@end

@implementation DiskImageParamsSparseBundle_XPC

- (unique_ptr<DiskImage,)createSinkDiskImage
{
  v3 = [(DiskImageParamsXPC *)self backendXPC];
  if (v3)
  {
    [v3 backend];
    v4 = v6;
    v5 = v7;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  [(DiskImageParamsXPC *)self blockSize:0];
  operator new();
}

- (unint64_t)numBlocks
{
  v3 = [(DiskImageParamsXPC *)self backendXPC];
  v4 = v3;
  if (v3)
  {
    [v3 backend];
    v3 = v8;
  }

  else
  {
    v9 = 0;
  }

  v5 = (*(*v3 + 40))(v3);
  v6 = [(DiskImageParamsXPC *)self blockSize];
  if (v9)
  {
    sub_10000E984(v9);
  }

  return v5 / v6;
}

@end