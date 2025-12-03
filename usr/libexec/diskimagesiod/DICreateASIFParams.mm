@interface DICreateASIFParams
- (DICreateASIFParams)initWithURL:(id)l numBlocks:(unint64_t)blocks error:(id *)error;
- (void)createDiskImageParamsXPC;
@end

@implementation DICreateASIFParams

- (DICreateASIFParams)initWithURL:(id)l numBlocks:(unint64_t)blocks error:(id *)error
{
  v6.receiver = self;
  v6.super_class = DICreateASIFParams;
  return [(DICreateParams *)&v6 initWithURL:l numBlocks:blocks error:error];
}

- (void)createDiskImageParamsXPC
{
  v3 = [FileLocalXPC alloc];
  inputURL = [(DIBaseParams *)self inputURL];
  v5 = [(FileLocalXPC *)v3 initWithURL:inputURL fileOpenFlags:514];

  v8 = 0;
  v6 = [[DiskImageParamsASIF_XPC alloc] initWithBackendXPC:v5 header:&v8];
  [(DIBaseParams *)self setDiskImageParamsXPC:v6];

  v7 = v8;
  v8 = 0;
  if (v7)
  {
    operator delete();
  }
}

@end