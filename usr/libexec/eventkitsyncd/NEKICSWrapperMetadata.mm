@interface NEKICSWrapperMetadata
- (id)description;
@end

@implementation NEKICSWrapperMetadata

- (id)description
{
  v3 = [NSMutableString stringWithFormat:@"<NEKICSWrapperMetadata (%p): \n", self];
  [v3 appendFormat:@"  entityType: %d\n", self->_entityType];
  [v3 appendFormat:@"  identifier: %@\n", self->_identifier];
  [v3 appendFormat:@"  externalID: %@\n", self->_externalID];
  [v3 appendFormat:@"  selfAttendeeEmail: %@\n", self->_selfAttendeeEmail];
  [v3 appendFormat:@"  selfAttendeeUUID: %@\n", self->_selfAttendeeUUID];
  [v3 appendFormat:@"  selfOrganizerEmail: %@\n", self->_selfOrganizerEmail];
  [v3 appendFormat:@"  selfOrganizerUUID: %@\n", self->_selfOrganizerUUID];
  [v3 appendFormat:@"  attendeeStatus: %d\n", self->_attendeeStatus];
  [v3 appendFormat:@"  invitationStatus: %d\n", self->_invitationStatus];
  [v3 appendFormat:@"  properInvitationStatus: %d\n", self->_properInvitationStatus];
  [v3 appendFormat:@"  hasProperInvitationStatus: %d\n", self->_hasProperInvitationStatus];
  [v3 appendFormat:@"  locationPredictionState: %d\n", self->_locationPredictionState];
  [v3 appendFormat:@"  dateChanged: %d\n", self->_dateChanged];
  [v3 appendFormat:@"  timeChanged: %d\n", self->_timeChanged];
  [v3 appendFormat:@"  titleChanged: %d\n", self->_titleChanged];
  [v3 appendFormat:@"  locationChanged: %d\n", self->_locationChanged];
  [v3 appendFormat:@"  attendeeComment: %d\n", self->_attendeeComment];
  [v3 appendFormat:@"  attendeeStatusFlag: %d\n", self->_attendeeStatusFlag];
  [v3 appendFormat:@"  startDate: %@\n", self->_startDate];
  [v3 appendString:@">"];
  v4 = [v3 copy];

  return v4;
}

@end