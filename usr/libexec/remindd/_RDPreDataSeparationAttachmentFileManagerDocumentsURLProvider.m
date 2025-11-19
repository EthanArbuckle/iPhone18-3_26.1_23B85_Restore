@interface _RDPreDataSeparationAttachmentFileManagerDocumentsURLProvider
- (id)documentsURLForAccountIdentifier:(id)a3;
@end

@implementation _RDPreDataSeparationAttachmentFileManagerDocumentsURLProvider

- (id)documentsURLForAccountIdentifier:(id)a3
{
  v3 = +[REMPaths legacy_centralizedDataPath];
  v4 = [RDPaths reminderDataContainerURLWithAppDocumentsURL:v3];

  return v4;
}

@end