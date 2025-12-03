@interface MOInvitePerson
- (MOInvitePerson)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MOInvitePerson

- (void)encodeWithCoder:(id)coder
{
  displayName = self->_displayName;
  coderCopy = coder;
  [coderCopy encodeObject:displayName forKey:@"invitePersonDisplayName"];
  [coderCopy encodeObject:self->_rsvpStatus forKey:@"invitePersonRSVPStatus"];
  [coderCopy encodeBool:self->_isMe forKey:@"invitePersonIsMe"];
}

- (MOInvitePerson)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = MOInvitePerson;
  v5 = [(MOInvitePerson *)&v11 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitePersonDisplayName"];
    displayName = v5->_displayName;
    v5->_displayName = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"invitePersonRSVPStatus"];
    rsvpStatus = v5->_rsvpStatus;
    v5->_rsvpStatus = v8;

    v5->_isMe = [coderCopy decodeBoolForKey:@"invitePersonIsMe"];
  }

  return v5;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc_init(MOInvitePerson);
  displayName = [(MOInvitePerson *)self displayName];
  [(MOInvitePerson *)v4 setDisplayName:displayName];

  rsvpStatus = [(MOInvitePerson *)self rsvpStatus];
  [(MOInvitePerson *)v4 setRsvpStatus:rsvpStatus];

  [(MOInvitePerson *)v4 setIsMe:[(MOInvitePerson *)self isMe]];
  return v4;
}

- (id)description
{
  mask = [(NSString *)self->_displayName mask];
  v3 = [NSString stringWithFormat:@"displayName, %@", mask];

  return v3;
}

@end