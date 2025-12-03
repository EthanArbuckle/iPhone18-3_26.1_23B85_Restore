@interface DiskImageParamsSparseBundle_XPC
- (unint64_t)numBlocks;
- (unique_ptr<DiskImage,)createSinkDiskImage;
@end

@implementation DiskImageParamsSparseBundle_XPC

- (unique_ptr<DiskImage,)createSinkDiskImage
{
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  if (backendXPC)
  {
    [backendXPC backend];
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
  backendXPC = [(DiskImageParamsXPC *)self backendXPC];
  v4 = backendXPC;
  if (backendXPC)
  {
    [backendXPC backend];
    backendXPC = v8;
  }

  else
  {
    v9 = 0;
  }

  v5 = (*(*backendXPC + 40))(backendXPC);
  blockSize = [(DiskImageParamsXPC *)self blockSize];
  if (v9)
  {
    sub_10000E984(v9);
  }

  return v5 / blockSize;
}

@end