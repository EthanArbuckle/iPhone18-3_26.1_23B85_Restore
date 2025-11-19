@interface SDAirDropHandlerPhotosImportResult
- (SDAirDropHandlerPhotosImportResult)initWithImportedFiles:(id)a3 openAppURL:(id)a4 assetIdentifiers:(id)a5 success:(BOOL)a6 shouldOfferOpenAction:(BOOL)a7 shouldCleanupItems:(BOOL)a8;
@end

@implementation SDAirDropHandlerPhotosImportResult

- (SDAirDropHandlerPhotosImportResult)initWithImportedFiles:(id)a3 openAppURL:(id)a4 assetIdentifiers:(id)a5 success:(BOOL)a6 shouldOfferOpenAction:(BOOL)a7 shouldCleanupItems:(BOOL)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v20.receiver = self;
  v20.super_class = SDAirDropHandlerPhotosImportResult;
  v17 = [(SDAirDropHandlerPhotosImportResult *)&v20 init];
  v18 = v17;
  if (v17)
  {
    [(SDAirDropHandlerImportResult *)v17 setImportedFiles:v14];
    [(SDAirDropHandlerImportResult *)v18 setOpenAppURL:v15];
    objc_storeStrong(&v18->_assetIdentifiers, a5);
    v18->_success = a6;
    v18->_shouldOfferOpenAction = a7;
    v18->_shouldCleanupItems = a8;
  }

  return v18;
}

@end