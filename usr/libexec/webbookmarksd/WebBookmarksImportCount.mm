@interface WebBookmarksImportCount
- (WebBookmarksImportCount)initWithExportMetadataDataType:(id)a3;
- (void)beginAddingFolder:(id)a3 identifier:(id)a4;
- (void)enableExtensionWithComposedIdentifier:(id)a3 adamIdentifier:(id)a4 alternatePlatformAppBundleIdentifier:(id)a5 alternatePlatformExtensionBundleIdentifier:(id)a6;
- (void)finishWithCompletionHandler:(id)a3;
@end

@implementation WebBookmarksImportCount

- (WebBookmarksImportCount)initWithExportMetadataDataType:(id)a3
{
  v5 = a3;
  v16.receiver = self;
  v16.super_class = WebBookmarksImportCount;
  v6 = [(WebBookmarksImportCount *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_exportMetadataDataType, a3);
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

- (void)enableExtensionWithComposedIdentifier:(id)a3 adamIdentifier:(id)a4 alternatePlatformAppBundleIdentifier:(id)a5 alternatePlatformExtensionBundleIdentifier:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v15 && [(NSString *)self->_exportMetadataDataType isEqualToString:WBSExtensionsExportDataType])
  {
    v13 = 8;
    v14 = v15;
LABEL_7:
    [*(&self->super.isa + v13) addObject:v14];
    goto LABEL_8;
  }

  if (v10 && [(NSString *)self->_exportMetadataDataType isEqualToString:WBSChromeExtensionsExportDataType])
  {
    v13 = 16;
    v14 = v10;
    goto LABEL_7;
  }

LABEL_8:
}

- (void)beginAddingFolder:(id)a3 identifier:(id)a4
{
  if ([a3 length])
  {
    ++self->_numberOfItemsToBeImported;
  }
}

- (void)finishWithCompletionHandler:(id)a3
{
  v5 = a3;
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
  v5[2](v5, 0);
}

@end