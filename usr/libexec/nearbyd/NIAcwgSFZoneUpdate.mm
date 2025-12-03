@interface NIAcwgSFZoneUpdate
- (NIAcwgSFZoneUpdate)initWithCoder:(id)coder;
- (NIAcwgSFZoneUpdate)initWithSFZone:(int64_t)zone btConnHandle:(unsigned __int16)handle lastBtRssiValue:(char)value ioStateDisplacing:(BOOL)displacing explicitPAITriggered:(BOOL)triggered currentSFInBubble:(BOOL)bubble;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation NIAcwgSFZoneUpdate

- (NIAcwgSFZoneUpdate)initWithSFZone:(int64_t)zone btConnHandle:(unsigned __int16)handle lastBtRssiValue:(char)value ioStateDisplacing:(BOOL)displacing explicitPAITriggered:(BOOL)triggered currentSFInBubble:(BOOL)bubble
{
  v15.receiver = self;
  v15.super_class = NIAcwgSFZoneUpdate;
  result = [(NIAcwgSFZoneUpdate *)&v15 init];
  if (result)
  {
    result->_currentZone = zone;
    result->_btConnHandle = handle;
    result->_lastBtRssiValue = value;
    result->_ioStateDisplacing = displacing;
    result->_explicitPAITriggered = triggered;
    result->_currentSFInBubble = bubble;
  }

  return result;
}

- (id)description
{
  v3 = objc_opt_class();
  v4 = NSStringFromClass(v3);
  v5 = [NSMutableString stringWithFormat:@"<%@:\n", v4];

  currentZone = self->_currentZone;
  v7 = @"Unknown";
  if (currentZone == 1)
  {
    v7 = @"Closer";
  }

  if (currentZone == 2)
  {
    v8 = @"Further";
  }

  else
  {
    v8 = v7;
  }

  [v5 appendFormat:@"currentZone:%@\n", v8];
  [v5 appendFormat:@"btConnHandle:(0x%04x)\n", self->_btConnHandle];
  [v5 appendFormat:@"lastBtRssiValue:%d\n", self->_lastBtRssiValue];
  [v5 appendFormat:@"ioStateDisplacing:%d\n", self->_ioStateDisplacing];
  [v5 appendFormat:@"explicitPAITriggered:%d\n", self->_explicitPAITriggered];
  [v5 appendFormat:@"currentSFInBubble:%d>\n", self->_currentSFInBubble];

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  currentZone = self->_currentZone;
  btConnHandle = self->_btConnHandle;
  lastBtRssiValue = self->_lastBtRssiValue;
  ioStateDisplacing = self->_ioStateDisplacing;
  explicitPAITriggered = self->_explicitPAITriggered;
  currentSFInBubble = self->_currentSFInBubble;

  return [v4 initWithSFZone:currentZone btConnHandle:btConnHandle lastBtRssiValue:lastBtRssiValue ioStateDisplacing:ioStateDisplacing explicitPAITriggered:explicitPAITriggered currentSFInBubble:currentSFInBubble];
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt:LODWORD(self->_currentZone) forKey:@"currentZone"];
  [coderCopy encodeInt:self->_btConnHandle forKey:@"btConnHandle"];
  [coderCopy encodeInt:self->_lastBtRssiValue forKey:@"lastBtRssiValue"];
  [coderCopy encodeBool:self->_ioStateDisplacing forKey:@"ioStateDisplacing"];
  [coderCopy encodeBool:self->_explicitPAITriggered forKey:@"explicitPAITriggered"];
  [coderCopy encodeBool:self->_currentSFInBubble forKey:@"currentSFInBubble"];
}

- (NIAcwgSFZoneUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self)
  {
    self->_currentZone = [coderCopy decodeIntForKey:@"currentZone"];
    self->_btConnHandle = [v5 decodeIntForKey:@"btConnHandle"];
    self->_lastBtRssiValue = [v5 decodeIntForKey:@"lastBtRssiValue"];
    self->_ioStateDisplacing = [v5 decodeBoolForKey:@"ioStateDisplacing"];
    self->_explicitPAITriggered = [v5 decodeBoolForKey:@"explicitPAITriggered"];
    self->_currentSFInBubble = [v5 decodeBoolForKey:@"currentSFInBubble"];
  }

  return self;
}

@end