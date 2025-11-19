@interface SPLoadInfo
- (id)debugDescription;
@end

@implementation SPLoadInfo

- (id)debugDescription
{
  v3 = [(SABinary *)self->_binary debugDescription];
  v4 = [NSString stringWithFormat:@"%@ %@ @ 0x%llx-0x%llx", v3, self->_segmentName, self->_startAddress, self->_endAddress];

  return v4;
}

@end