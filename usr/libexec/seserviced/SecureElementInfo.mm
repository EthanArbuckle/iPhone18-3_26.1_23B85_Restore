@interface SecureElementInfo
+ (id)withSEID:(id)a3 casdCertificate:(id)a4 casdCertificateRSA:(id)a5 isProd:(BOOL)a6 isSkyOrLater:(BOOL)a7 secureElementType:(unint64_t)a8 csn:(unint64_t)a9 chipID:(unint64_t)a10;
@end

@implementation SecureElementInfo

+ (id)withSEID:(id)a3 casdCertificate:(id)a4 casdCertificateRSA:(id)a5 isProd:(BOOL)a6 isSkyOrLater:(BOOL)a7 secureElementType:(unint64_t)a8 csn:(unint64_t)a9 chipID:(unint64_t)a10
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = objc_opt_new();
  v19 = *(v18 + 16);
  *(v18 + 16) = v15;
  v20 = v15;

  v21 = *(v18 + 24);
  *(v18 + 24) = v16;
  v22 = v16;

  v23 = *(v18 + 32);
  *(v18 + 32) = v17;

  *(v18 + 8) = a6;
  *(v18 + 9) = a7;
  *(v18 + 40) = a8;
  *(v18 + 48) = a9;
  *(v18 + 56) = a10;

  return v18;
}

@end