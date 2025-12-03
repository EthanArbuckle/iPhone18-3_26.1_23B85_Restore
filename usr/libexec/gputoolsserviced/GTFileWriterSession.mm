@interface GTFileWriterSession
+ (id)sessionWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error;
@end

@implementation GTFileWriterSession

+ (id)sessionWithFileEntries:(id)entries relativeToURL:(id)l options:(id)options error:(id *)error
{
  optionsCopy = options;
  lCopy = l;
  entriesCopy = entries;
  compressionAlgorithm = [optionsCopy compressionAlgorithm];
  v13 = &off_1000406D0;
  if (compressionAlgorithm)
  {
    v13 = off_1000406C8;
  }

  v14 = *v13;
  v15 = [objc_opt_class() sessionWithFileEntries:entriesCopy relativeToURL:lCopy options:optionsCopy error:error];

  return v15;
}

@end