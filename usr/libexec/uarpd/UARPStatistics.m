@interface UARPStatistics
- (UARPStatistics)initWithPacketsNoVersionAgreement:(unint64_t)a3 packetsMissed:(unint64_t)a4 packetsDuplicate:(unint64_t)a5 packetsOutOfOrder:(unint64_t)a6;
@end

@implementation UARPStatistics

- (UARPStatistics)initWithPacketsNoVersionAgreement:(unint64_t)a3 packetsMissed:(unint64_t)a4 packetsDuplicate:(unint64_t)a5 packetsOutOfOrder:(unint64_t)a6
{
  v11.receiver = self;
  v11.super_class = UARPStatistics;
  result = [(UARPStatistics *)&v11 init];
  if (result)
  {
    result->_packetsNoVersionAgreement = a3;
    result->_packetsMissed = a4;
    result->_packetsDuplicate = a5;
    result->_packetsOutOfOrder = a6;
  }

  return result;
}

@end