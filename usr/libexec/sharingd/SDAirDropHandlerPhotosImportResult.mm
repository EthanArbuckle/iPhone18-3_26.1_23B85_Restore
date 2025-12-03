@interface SDAirDropHandlerPhotosImportResult
- (SDAirDropHandlerPhotosImportResult)initWithImportedFiles:(id)files openAppURL:(id)l assetIdentifiers:(id)identifiers success:(BOOL)success shouldOfferOpenAction:(BOOL)action shouldCleanupItems:(BOOL)items;
@end

@implementation SDAirDropHandlerPhotosImportResult

- (SDAirDropHandlerPhotosImportResult)initWithImportedFiles:(id)files openAppURL:(id)l assetIdentifiers:(id)identifiers success:(BOOL)success shouldOfferOpenAction:(BOOL)action shouldCleanupItems:(BOOL)items
{
  filesCopy = files;
  lCopy = l;
  identifiersCopy = identifiers;
  v20.receiver = self;
  v20.super_class = SDAirDropHandlerPhotosImportResult;
  v17 = [(SDAirDropHandlerPhotosImportResult *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(SDAirDropHandlerImportResult *)v17 setImportedFiles:filesCopy];
    [(SDAirDropHandlerImportResult *)v18 setOpenAppURL:lCopy];
    objc_storeStrong(&v18->_assetIdentifiers, identifiers);
    v18->_success = success;
    v18->_shouldOfferOpenAction = action;
    v18->_shouldCleanupItems = items;
  }

  return v18;
}

@end