@interface CLStreamedLocationPrivate
- (int)tropicalSavannaProximity;
@end

@implementation CLStreamedLocationPrivate

- (int)tropicalSavannaProximity
{
  if ((*&self->_has & 0x400) != 0)
  {
    return self->_tropicalSavannaProximity;
  }

  else
  {
    return 0;
  }
}

@end