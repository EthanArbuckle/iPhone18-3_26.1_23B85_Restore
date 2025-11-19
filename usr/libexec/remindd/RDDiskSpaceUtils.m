@interface RDDiskSpaceUtils
+ (void)requestFreeSpace:(unint64_t)a3 atPath:(id)a4 effortLevel:(unint64_t)a5 queue:(id)a6 completionBlock:(id)a7;
@end

@implementation RDDiskSpaceUtils

+ (void)requestFreeSpace:(unint64_t)a3 atPath:(id)a4 effortLevel:(unint64_t)a5 queue:(id)a6 completionBlock:(id)a7
{
  v10 = a4;
  v11 = a6;
  v12 = a7;
  v13 = &off_100904F38;
  if (!a5)
  {
    v13 = &off_100904F20;
  }

  v20 = kCPFreeSpaceEffortLevelKey;
  v21 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v18 = v10;
  v19 = v11;
  v15 = v12;
  v16 = v11;
  v17 = v10;
  CPFreeSpaceRequestBytesAtPathWithCompletionBlock();
}

@end