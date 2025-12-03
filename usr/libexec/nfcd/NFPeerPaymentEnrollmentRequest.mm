@interface NFPeerPaymentEnrollmentRequest
- (NFPeerPaymentEnrollmentRequest)initWithCoder:(id)coder;
- (NFPeerPaymentEnrollmentRequest)initWithDictionary:(id)dictionary;
@end

@implementation NFPeerPaymentEnrollmentRequest

- (NFPeerPaymentEnrollmentRequest)initWithDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v9.receiver = self;
  v9.super_class = NFPeerPaymentEnrollmentRequest;
  v5 = [(NFPeerPaymentEnrollmentRequest *)&v9 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"alternateDSID"];
    alternateDSID = v5->_alternateDSID;
    v5->_alternateDSID = v6;
  }

  return v5;
}

- (NFPeerPaymentEnrollmentRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = NFPeerPaymentEnrollmentRequest;
  v5 = [(NFPeerPaymentEnrollmentRequest *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"alternateDSID"];
    alternateDSID = v5->_alternateDSID;
    v5->_alternateDSID = v6;
  }

  return v5;
}

@end