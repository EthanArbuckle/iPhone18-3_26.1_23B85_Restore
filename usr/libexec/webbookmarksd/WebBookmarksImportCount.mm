@interface WebBookmarksImportCount
- (WebBookmarksImportCount)initWithExportMetadataDataType:(id)type;
- (void)beginAddingFolder:(id)folder identifier:(id)identifier;
- (void)enableExtensionWithComposedIdentifier:(id)identifier adamIdentifier:(id)adamIdentifier alternatePlatformAppBundleIdentifier:(id)bundleIdentifier alternatePlatformExtensionBundleIdentifier:(id)extensionBundleIdentifier;
- (void)finishWithCompletionHandler:(id)handler;
@end

@implementation WebBookmarksImportCount

- (WebBookmarksImportCount)initWithExportMetadataDataType:(id)type
{
  typeCopy = type;
  v16.receiver = self;
  v16.super_class = WebBookmarksImportCount;
  v6 = [(WebBookmarksImportCount *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_exportMetadataDataType, type);
    v8 = +[NSMutableSet set];
    uniqueComposedIdentifiers = v7->_uniqueComposedIdentifiers;
    v7->_uniqueComposedIdentifiers = v8;

    v10 = +[NSMutableSet set];
    uniqueAdamIdentifiers = v7->_uniqueAdamIdentifiers;
    v7->_uniqueAdamIdentifiers = v10;

    v12 = +[NSMutableSet set];
    uniqueHighLevelDomains = v7->_uniqueHighLevelDomains;
    v7->_uniqueHighLevelDomains = v12;

    v14 = v7;
  }

  return v7;
}

- (void)enableExtensionWithComposedIdentifier:(id)identifier adamIdentifier:(id)adamIdentifier alternatePlatformAppBundleIdentifier:(id)bundleIdentifier alternatePlatformExtensionBundleIdentifier:(id)extensionBundleIdentifier
{
  identifierCopy = identifier;
  adamIdentifierCopy = adamIdentifier;
  bundleIdentifierCopy = bundleIdentifier;
  extensionBundleIdentifierCopy = extensionBundleIdentifier;
  if (identifierCopy && [(NSString *)self->_exportMetadataDataType isEqualToString:WBSExtensionsExportDataType])
  {
    v13 = 8;
    v14 = identifierCopy;
LABEL_7:
    [*(&self->super.isa + v13) addObject:v14];
    goto LABEL_8;
  }

  if (adamIdentifierCopy && [(NSString *)self->_exportMetadataDataType isEqualToString:WBSChromeExtensionsExportDataType])
  {
    v13 = 16;
    v14 = adamIdentifierCopy;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)beginAddingFolder:(id)folder identifier:(id)identifier
{
  if ([folder length])
  {
    ++self->_numberOfItemsToBeImported;
  }
}

- (void)finishWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  if ([(NSString *)self->_exportMetadataDataType isEqualToString:WBSHistoryExportDataType]|| [(NSString *)self->_exportMetadataDataType isEqualToString:WBSChromeHistoryExportDataType])
  {
    v4 = 24;
LABEL_4:
    self->_numberOfItemsToBeImported = [*(&self->super.isa + v4) count];
    goto LABEL_5;
  }

  if ([(NSString *)self->_exportMetadataDataType isEqualToString:WBSExtensionsExportDataType])
  {
    v4 = 8;
    goto LABEL_4;
  }

  if ([(NSString *)self->_exportMetadataDataType isEqualToString:WBSChromeExtensionsExportDataType])
  {
    v4 = 16;
    goto LABEL_4;
  }

LABEL_5:
  handlerCopy[2](handlerCopy, 0);
}

@end