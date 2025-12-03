@interface NPTOWatchAssetsImportController
- (void)handleIncomingFile:(id)file;
@end

@implementation NPTOWatchAssetsImportController

- (void)handleIncomingFile:(id)file
{
  fileCopy = file;
  selfCopy = self;
  sub_100044DEC(fileCopy);
}

@end