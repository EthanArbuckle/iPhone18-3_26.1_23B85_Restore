@interface GTFileWriterSession
+ (id)sessionWithFileEntries:(id)a3 relativeToURL:(id)a4 options:(id)a5 error:(id *)a6;
@end

@implementation GTFileWriterSession

+ (id)sessionWithFileEntries:(id)a3 relativeToURL:(id)a4 options:(id)a5 error:(id *)a6
{
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [v9 compressionAlgorithm];
  v13 = &off_1000406D0;
  if (v12)
  {
    v13 = off_1000406C8;
  }

  v14 = *v13;
  v15 = [objc_opt_class() sessionWithFileEntries:v11 relativeToURL:v10 options:v9 error:a6];

  return v15;
}

@end