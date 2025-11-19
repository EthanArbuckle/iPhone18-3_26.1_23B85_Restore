@interface UARPTLVPersonalizationPayloadTagBackDeploy
+ (id)metaDataTableEntry;
+ (id)tlvFromPropertyListValue:(id)a3;
+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4;
- (UARPTLVPersonalizationPayloadTagBackDeploy)init;
- (id)description;
- (id)generateTLV;
- (id)tlvValue;
- (void)setTag:(id)a3;
@end

@implementation UARPTLVPersonalizationPayloadTagBackDeploy

- (UARPTLVPersonalizationPayloadTagBackDeploy)init
{
  v3.receiver = self;
  v3.super_class = UARPTLVPersonalizationPayloadTagBackDeploy;
  return [(UARPMetaDataTLVBackDeploy *)&v3 init];
}

- (void)setTag:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [v4 copy];
  v7 = *(&v5->super._tlvLength + 1);
  *(&v5->super._tlvLength + 1) = v6;

  objc_sync_exit(v5);
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
  v4 = [(UARPTLVPersonalizationPayloadTagBackDeploy *)self tlvValue];
  [v3 appendData:v4];

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

+ (id)tlvFromPropertyListValue:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    if ([v4 length] == 4)
    {
      v5 = [v4 UTF8String];
      v6 = objc_opt_new();
      v7 = [[UARPAssetTagBackDeploy alloc] initWithChar1:*v5 char2:v5[1] char3:v5[2] char4:v5[3]];
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

+ (id)tlvWithLength:(unint64_t)a3 value:(void *)a4
{
  if (a3 == 4)
  {
    v5 = objc_opt_new();
    v6 = [[UARPAssetTagBackDeploy alloc] initWithChar1:*a4 char2:*(a4 + 1) char3:*(a4 + 2) char4:*(a4 + 3)];
    [v5 setTag:v6];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

@end