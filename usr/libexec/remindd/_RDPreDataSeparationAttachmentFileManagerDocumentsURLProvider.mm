@interface _RDPreDataSeparationAttachmentFileManagerDocumentsURLProvider
- (id)documentsURLForAccountIdentifier:(id)identifier;
@end

@implementation _RDPreDataSeparationAttachmentFileManagerDocumentsURLProvider

- (id)documentsURLForAccountIdentifier:(id)identifier
{
  v3 = +[REMPaths legacy_centralizedDataPath];
  v4 = [RDPaths reminderDataContainerURLWithAppDocumentsURL:v3];

  return v4;
}

@end