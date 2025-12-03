@interface UARPTLVPersonalizationPayloadTagBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)value;
+ (id)tlvWithLength:(unint64_t)length value:(void *)value;
- (UARPTLVPersonalizationPayloadTagBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setTag:(id)tag;
@end

@implementation UARPTLVPersonalizationPayloadTagBackDeploy

- (UARPTLVPersonalizationPayloadTagBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationPayloadTagBackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (void)setTag:(id)tag
{
  tagCopy = tag;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [tagCopy copy];
  v7 = *(&selfCopy->super._tlvLength + 1);
  *(&selfCopy->super._tlvLength + 1) = v6;

  objc_sync_exit(selfCopy);
}

- (id)description
{
  v3 = +[UARPTLVPersonalizationPayloadTagBackDeploy metaDataTableEntry];
  v4 = [v3 objectForKeyedSubscript:@"Name"];
  v5 = [NSString stringWithFormat:@"<%@: %@>", v4, *(&self->super._tlvLength + 1)];

  return v5;
}

- (id)generateTLV
{
  v3 = objc_alloc_init(NSMutableData);
  v8 = uarpHtonl(+[UARPTLVPersonalizationPayloadTagBackDeploy tlvType]);
  [v3 appendBytes:&v8 length:4];
  v7 = uarpHtonl(4u);
  [v3 appendBytes:&v7 length:4];
  tlvValue = [(UARPTLVPersonalizationPayloadTagBackDeploy *)self tlvValue];
  [v3 appendData:tlvValue];

  v5 = [NSData dataWithData:v3];

  return v5;
}

- (id)tlvValue
{
  v4 = [*(&self->super._tlvLength + 1) tag];
  v2 = [[NSData alloc] initWithBytes:&v4 length:4];

  return v2;
}

+ (id)metaDataTableEntry
{
  v6[0] = @"Personalization Payload Tag";
  v5[0] = @"Name";
  v5[1] = @"Value";
  v2 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", +[UARPTLVPersonalizationPayloadTagBackDeploy tlvType]);
  v6[1] = v2;
  v3 = [NSDictionary dictionaryWithObjects:v6 forKeys:v5 count:2];

  return v3;
}

+ (id)tlvFromPropertyListValue:(id)value
{
  valueCopy = value;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = valueCopy;
    if ([v4 length] == 4)
    {
      uTF8String = [v4 UTF8String];
      v6 = objc_opt_new();
      v7 = [[UARPAssetTagBackDeploy alloc] initWithChar1:*uTF8String char2:uTF8String[1] char3:uTF8String[2] char4:uTF8String[3]];
      [v6 setTag:v7];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (id)tlvWithLength:(unint64_t)length value:(void *)value
{
  if (length == 4)
  {
    v5 = objc_opt_new();
    v6 = [[UARPAssetTagBackDeploy alloc] initWithChar1:*value char2:*(value + 1) char3:*(value + 2) char4:*(value + 3)];
    [v5 setTag:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end