@interface NIAcwgM2Msg
+ (id)fromStruct:(AcwgM2MsgStruct)struct;
- (AcwgM2MsgStruct)toStruct;
- (NIAcwgM2Msg)initWithCoder:(id)coder;
- (NIAcwgM2Msg)initWithSelectedUwbConfigId:(unsigned __int16)id selectedPulseShapeCombo:(unsigned __int8)combo selectedChannelBitmask:(unsigned __int8)bitmask supportedSyncCodeIndexBitmask:(unsigned int)indexBitmask minRanMultiplier:(unsigned __int8)multiplier supportedSlotBitmask:(unsigned __int8)slotBitmask supportedHoppingConfigBitmask:(unsigned __int8)configBitmask;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIAcwgM2Msg

- (NIAcwgM2Msg)initWithSelectedUwbConfigId:(unsigned __int16)id selectedPulseShapeCombo:(unsigned __int8)combo selectedChannelBitmask:(unsigned __int8)bitmask supportedSyncCodeIndexBitmask:(unsigned int)indexBitmask minRanMultiplier:(unsigned __int8)multiplier supportedSlotBitmask:(unsigned __int8)slotBitmask supportedHoppingConfigBitmask:(unsigned __int8)configBitmask
{
  v16.receiver = self;
  v16.super_class = NIAcwgM2Msg;
  result = [(NIAcwgM2Msg *)&v16 init];
  if (result)
  {
    result->_selectedUwbConfigId = id;
    result->_selectedPulseShapeCombo = combo;
    result->_selectedChannelBitmask = bitmask;
    result->_supportedSyncCodeIndexBitmask = indexBitmask;
    result->_minRanMultiplier = multiplier;
    result->_supportedSlotBitmask = slotBitmask;
    *&result->_supportedHoppingConfigBitmask = configBitmask;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"<%@:\n", v4];

  [v5 appendFormat:@"selectedUwbConfigId:%u\n", self->_selectedUwbConfigId];
  [v5 appendFormat:@"selectedPulseShapeCombo:%u\n", self->_selectedPulseShapeCombo];
  [v5 appendFormat:@"selectedChannelBitmask:0x%02x\n", self->_selectedChannelBitmask];
  [v5 appendFormat:@"supportedSyncCodeIndexBitmask:0x%08x\n", self->_supportedSyncCodeIndexBitmask];
  [v5 appendFormat:@"minRanMultiplier:%u\n", self->_minRanMultiplier];
  [v5 appendFormat:@"supportedSlotBitmask:0x%02x\n", self->_supportedSlotBitmask];
  [v5 appendFormat:@"supportedHoppingConfigBitmask:0x%02x\n", self->_supportedHoppingConfigBitmask];
  [v5 appendFormat:@"selectedFinalData2Bitmask:0x%02x>", self->_selectedFinalData2Bitmask];

  return v5;
}

- (AcwgM2MsgStruct)toStruct
{
  v2 = *&self->_minRanMultiplier;
  v3 = self->_selectedUwbConfigId | (self->_selectedPulseShapeCombo << 16) | (self->_selectedChannelBitmask << 24) | (self->_supportedSyncCodeIndexBitmask << 32);
  result.var0 = v3;
  result.var1 = BYTE2(v3);
  result.var2 = BYTE3(v3);
  result.var3 = HIDWORD(v3);
  result.var4 = v2;
  result.var5 = BYTE1(v2);
  result.var6 = BYTE2(v2);
  result.var7 = HIBYTE(v2);
  return result;
}

+ (id)fromStruct:(AcwgM2MsgStruct)struct
{
  BYTE1(v5) = struct.var7;
  LOBYTE(v5) = struct.var6;
  v3 = [[self alloc] initWithSelectedUwbConfigId:struct.var0 selectedPulseShapeCombo:struct.var1 selectedChannelBitmask:struct.var2 supportedSyncCodeIndexBitmask:struct.var3 minRanMultiplier:struct.var4 supportedSlotBitmask:struct.var5 supportedHoppingConfigBitmask:v5 selectedFinalData2Bitmask:?];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  LOWORD(v6) = *&self->_supportedHoppingConfigBitmask;
  return [v4 initWithSelectedUwbConfigId:self->_selectedUwbConfigId selectedPulseShapeCombo:self->_selectedPulseShapeCombo selectedChannelBitmask:self->_selectedChannelBitmask supportedSyncCodeIndexBitmask:self->_supportedSyncCodeIndexBitmask minRanMultiplier:self->_minRanMultiplier supportedSlotBitmask:self->_supportedSlotBitmask supportedHoppingConfigBitmask:v6 selectedFinalData2Bitmask:?];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:self->_selectedUwbConfigId forKey:@"selectedUwbConfigId"];
  [coderCopy encodeInt:self->_selectedPulseShapeCombo forKey:@"selectedPulseShapeCombo"];
  [coderCopy encodeInt:self->_selectedChannelBitmask forKey:@"selectedChannelBitmask"];
  [coderCopy encodeInt64:self->_supportedSyncCodeIndexBitmask forKey:@"supportedSyncCodeIndexBitmask"];
  [coderCopy encodeInt:self->_minRanMultiplier forKey:@"minRanMultiplier"];
  [coderCopy encodeInt:self->_supportedSlotBitmask forKey:@"supportedSlotBitmask"];
  [coderCopy encodeInt:self->_supportedHoppingConfigBitmask forKey:@"supportedHoppingConfigBitmask"];
  [coderCopy encodeInt:self->_selectedFinalData2Bitmask forKey:@"selectedFinalData2Bitmask"];
}

- (NIAcwgM2Msg)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self)
  {
    self->_selectedUwbConfigId = [coderCopy decodeIntForKey:@"selectedUwbConfigId"];
    self->_selectedPulseShapeCombo = [v5 decodeIntForKey:@"selectedPulseShapeCombo"];
    self->_selectedChannelBitmask = [v5 decodeIntForKey:@"selectedChannelBitmask"];
    self->_supportedSyncCodeIndexBitmask = [v5 decodeInt64ForKey:@"supportedSyncCodeIndexBitmask"];
    self->_minRanMultiplier = [v5 decodeIntForKey:@"minRanMultiplier"];
    self->_supportedSlotBitmask = [v5 decodeIntForKey:@"supportedSlotBitmask"];
    self->_supportedHoppingConfigBitmask = [v5 decodeIntForKey:@"supportedHoppingConfigBitmask"];
    self->_selectedFinalData2Bitmask = [v5 decodeIntForKey:@"selectedFinalData2Bitmask"];
  }

  return self;
}

@end