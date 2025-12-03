@interface UARPMetaDataPayloadCompressionAlgorithm
- (UARPMetaDataPayloadCompressionAlgorithm)init;
- (UARPMetaDataPayloadCompressionAlgorithm)initWithLength:(unint64_t)length value:(void *)value;
- (UARPMetaDataPayloadCompressionAlgorithm)initWithPropertyListValue:(id)value relativeURL:(id)l;
- (id)description;
- (id)tlvValue;
@end

@implementation UARPMetaDataPayloadCompressionAlgorithm

- (UARPMetaDataPayloadCompressionAlgorithm)init
{
  v6.receiver = self;
  v6.super_class = UARPMetaDataPayloadCompressionAlgorithm;
  v2 = [(UARPMetaData *)&v6 init];
  v3 = v2;
  if (v2)
  {
    v2->super._tlvType = -858619636;
    v2->super._tlvLength = 4;
    tlvName = v2->super._tlvName;
    v2->super._tlvName = @"Payload Compression Algorithm";
  }

  return v3;
}

- (UARPMetaDataPayloadCompressionAlgorithm)initWithPropertyListValue:(id)value relativeURL:(id)l
{
  valueCopy = value;
  v6 = [(UARPMetaDataPayloadCompressionAlgorithm *)self init];
  if (!v6)
  {
    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = valueCopy;
    if ([v7 compare:@"LZBitmapFast2"])
    {
      v8 = 1;
    }

    else
    {
      if (![v7 compare:@"LZBitmap2"])
      {
        v6->_compressionAlgorithm = 0;
        goto LABEL_9;
      }

      v8 = 2;
    }

    v6->_compressionAlgorithm = v8;
LABEL_9:

LABEL_10:
    v9 = v6;
    goto LABEL_11;
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (UARPMetaDataPayloadCompressionAlgorithm)initWithLength:(unint64_t)length value:(void *)value
{
  v6 = [(UARPMetaDataPayloadCompressionAlgorithm *)self init];
  v7 = v6;
  v8 = 0;
  if (length == 4 && v6)
  {
    v6->_compressionAlgorithm = uarpNtohl(*value);
    v8 = v7;
  }

  return v8;
}

- (id)tlvValue
{
  v4.receiver = self;
  v4.super_class = UARPMetaDataPayloadCompressionAlgorithm;
  v2 = [(UARPMetaData *)&v4 tlvValueWithUInt32:[(UARPMetaDataPayloadCompressionAlgorithm *)self compressionAlgorithm]];

  return v2;
}

- (id)description
{
  tlvName = [(UARPMetaData *)self tlvName];
  v4 = [NSString stringWithFormat:@"<%@: %u>", tlvName, [(UARPMetaDataPayloadCompressionAlgorithm *)self compressionAlgorithm]];

  return v4;
}

@end