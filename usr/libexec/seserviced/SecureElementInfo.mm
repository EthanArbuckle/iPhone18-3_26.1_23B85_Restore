@interface SecureElementInfo
+ (id)withSEID:(id)d casdCertificate:(id)certificate casdCertificateRSA:(id)a isProd:(BOOL)prod isSkyOrLater:(BOOL)later secureElementType:(unint64_t)type csn:(unint64_t)csn chipID:(unint64_t)self0;
@end

@implementation SecureElementInfo

+ (id)withSEID:(id)d casdCertificate:(id)certificate casdCertificateRSA:(id)a isProd:(BOOL)prod isSkyOrLater:(BOOL)later secureElementType:(unint64_t)type csn:(unint64_t)csn chipID:(unint64_t)self0
{
  dCopy = d;
  certificateCopy = certificate;
  aCopy = a;
  v18 = objc_opt_new();
  v19 = *(v18 + 16);
  *(v18 + 16) = dCopy;
  v20 = dCopy;

  v21 = *(v18 + 24);
  *(v18 + 24) = certificateCopy;
  v22 = certificateCopy;

  v23 = *(v18 + 32);
  *(v18 + 32) = aCopy;

  *(v18 + 8) = prod;
  *(v18 + 9) = later;
  *(v18 + 40) = type;
  *(v18 + 48) = csn;
  *(v18 + 56) = iD;

  return v18;
}

@end