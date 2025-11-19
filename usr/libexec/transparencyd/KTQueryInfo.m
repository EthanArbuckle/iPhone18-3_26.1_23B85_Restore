@interface KTQueryInfo
+ (id)descriptor;
@end

@implementation KTQueryInfo

+ (id)descriptor
{
  v2 = qword_10039CC48;
  if (!qword_10039CC48)
  {
    v3 = objc_opt_class();
    v4 = objc_opt_class();
    if (!qword_10039CC50)
    {
      qword_10039CC50 = [[TransparencyGPBFileDescriptor alloc] initWithPackage:&stru_10032E8E8 syntax:3];
    }

    LODWORD(v6) = 12;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:"allocDescriptorForClass:rootClass:file:fields:fieldCount:storageSize:flags:" rootClass:v3 file:v4 fields:v6 fieldCount:? storageSize:? flags:?];
    [v2 setupExtraTextInfo:&unk_1002DF6E8];
    qword_10039CC48 = v2;
  }

  return v2;
}

@end