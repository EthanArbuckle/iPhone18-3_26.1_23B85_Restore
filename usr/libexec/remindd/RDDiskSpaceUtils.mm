@interface RDDiskSpaceUtils
+ (void)requestFreeSpace:(unint64_t)space atPath:(id)path effortLevel:(unint64_t)level queue:(id)queue completionBlock:(id)block;
@end

@implementation RDDiskSpaceUtils

+ (void)requestFreeSpace:(unint64_t)space atPath:(id)path effortLevel:(unint64_t)level queue:(id)queue completionBlock:(id)block
{
  pathCopy = path;
  queueCopy = queue;
  blockCopy = block;
  v13 = &off_100904F38;
  if (!level)
  {
    v13 = &off_100904F20;
  }

  v20 = kCPFreeSpaceEffortLevelKey;
  v21 = v13;
  v14 = [NSDictionary dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  v18 = pathCopy;
  v19 = queueCopy;
  v15 = blockCopy;
  v16 = queueCopy;
  v17 = pathCopy;
  CPFreeSpaceRequestBytesAtPathWithCompletionBlock();
}

@end