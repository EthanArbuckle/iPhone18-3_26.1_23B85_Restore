@interface MapHead
+ (id)descriptor;
- (id)diagnosticsJsonDictionary;
@end

@implementation MapHead

+ (id)descriptor
{
  v2 = qword_10039C878;
  if (!qword_10039C878)
  {
    LODWORD(v4) = 28;
    v2 = [TransparencyGPBDescriptor allocDescriptorForClass:MapHead messageName:@"MapHead" fileDescription:&unk_10038A4D8 fields:&off_10038A790 fieldCount:9 storageSize:64 flags:v4];
    [v2 setupExtraTextInfo:&unk_1002DF5D2];
    qword_10039C878 = v2;
  }

  return v2;
}

- (id)diagnosticsJsonDictionary
{
  v3 = +[NSMutableDictionary dictionary];
  v4 = [NSNumber numberWithUnsignedLongLong:[(MapHead *)self logBeginningMs]];
  [v3 setObject:v4 forKeyedSubscript:@"logBeginningMs"];

  v5 = [NSDate dateWithTimeIntervalSince1970:([(MapHead *)self logBeginningMs]/ 0x3E8)];
  v6 = [v5 kt_toISO_8601_UTCString];
  [v3 setObject:v6 forKeyedSubscript:@"logBeginningDateReadable"];

  v7 = [(MapHead *)self mapHeadHash];
  v8 = [v7 kt_hexString];
  [v3 setObject:v8 forKeyedSubscript:@"mapHeadHash"];

  v9 = Application_EnumDescriptor();
  v10 = [v9 textFormatNameForValue:{-[MapHead application](self, "application")}];
  [v3 setObject:v10 forKeyedSubscript:@"application"];

  v11 = [NSNumber numberWithUnsignedLongLong:[(MapHead *)self revision]];
  [v3 setObject:v11 forKeyedSubscript:@"revision"];

  v12 = MapType_EnumDescriptor();
  v13 = [v12 textFormatNameForValue:{-[MapHead mapType](self, "mapType")}];
  [v3 setObject:v13 forKeyedSubscript:@"mapType"];

  v14 = [NSNumber numberWithUnsignedLongLong:[(MapHead *)self treeId]];
  [v3 setObject:v14 forKeyedSubscript:@"treeId"];

  v15 = [NSNumber numberWithUnsignedLongLong:[(MapHead *)self timestampMs]];
  [v3 setObject:v15 forKeyedSubscript:@"timestampMs"];

  v16 = [NSDate dateWithTimeIntervalSince1970:([(MapHead *)self timestampMs]/ 0x3E8)];
  v17 = [v16 kt_toISO_8601_UTCString];
  [v3 setObject:v17 forKeyedSubscript:@"timestampReadable"];

  v18 = [NSNumber numberWithBool:[(MapHead *)self populating]];
  [v3 setObject:v18 forKeyedSubscript:@"populating"];

  return v3;
}

@end