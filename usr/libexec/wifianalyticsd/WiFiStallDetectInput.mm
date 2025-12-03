@interface WiFiStallDetectInput
- (WiFiStallDetectInput)initWithAC_problem_bitfield:(double)c_problem_bitfield TxBE_expiredCompletions:(double)completions TxBE_failedCompletions:(double)e_failedCompletions TxBE_noAckCompletions:(double)ackCompletions TxBE_otherErrCompletions:(double)errCompletions TxBK_expiredCompletions:(double)k_expiredCompletions TxBK_failedCompletions:(double)k_failedCompletions TxBK_noAckCompletions:(double)self0 TxBK_otherErrCompletions:(double)self1 TxVI_expiredCompletions:(double)self2 TxVI_failedCompletions:(double)self3 TxVI_noAckCompletions:(double)self4 TxVI_otherErrCompletions:(double)self5 TxVO_expiredCompletions:(double)self6 TxVO_failedCompletions:(double)self7 TxVO_noAckCompletions:(double)self8 TxVO_otherErrCompletions:(double)self9 bt_abort:(double)bt_abort bt_grant:(double)bt_grant bt_request:(double)bt_request bt_uch_latency:(double)bt_uch_latency cca_bin:(double)cca_bin completions_chipmodeerror:(double)completions_chipmodeerror completions_expired:(double)completions_expired completions_internalerror:(double)completions_internalerror completions_ioerror:(double)completions_ioerror completions_noack:(double)completions_noack completions_nobuf:(double)c_problem_bitfield0 completions_noremotepeer:(double)c_problem_bitfield1 completions_noresources:(double)c_problem_bitfield2 completions_txfailure:(double)c_problem_bitfield3 roam_count:(double)c_problem_bitfield4 roam_duration:(double)c_problem_bitfield5 rssi_bin:(double)c_problem_bitfield6 snr_bin:(double)c_problem_bitfield7;
- (id)featureValueForName:(id)name;
@end

@implementation WiFiStallDetectInput

- (WiFiStallDetectInput)initWithAC_problem_bitfield:(double)c_problem_bitfield TxBE_expiredCompletions:(double)completions TxBE_failedCompletions:(double)e_failedCompletions TxBE_noAckCompletions:(double)ackCompletions TxBE_otherErrCompletions:(double)errCompletions TxBK_expiredCompletions:(double)k_expiredCompletions TxBK_failedCompletions:(double)k_failedCompletions TxBK_noAckCompletions:(double)self0 TxBK_otherErrCompletions:(double)self1 TxVI_expiredCompletions:(double)self2 TxVI_failedCompletions:(double)self3 TxVI_noAckCompletions:(double)self4 TxVI_otherErrCompletions:(double)self5 TxVO_expiredCompletions:(double)self6 TxVO_failedCompletions:(double)self7 TxVO_noAckCompletions:(double)self8 TxVO_otherErrCompletions:(double)self9 bt_abort:(double)bt_abort bt_grant:(double)bt_grant bt_request:(double)bt_request bt_uch_latency:(double)bt_uch_latency cca_bin:(double)cca_bin completions_chipmodeerror:(double)completions_chipmodeerror completions_expired:(double)completions_expired completions_internalerror:(double)completions_internalerror completions_ioerror:(double)completions_ioerror completions_noack:(double)completions_noack completions_nobuf:(double)c_problem_bitfield0 completions_noremotepeer:(double)c_problem_bitfield1 completions_noresources:(double)c_problem_bitfield2 completions_txfailure:(double)c_problem_bitfield3 roam_count:(double)c_problem_bitfield4 roam_duration:(double)c_problem_bitfield5 rssi_bin:(double)c_problem_bitfield6 snr_bin:(double)c_problem_bitfield7
{
  v46.receiver = self;
  v46.super_class = WiFiStallDetectInput;
  result = [(WiFiStallDetectInput *)&v46 init];
  if (result)
  {
    result->_AC_problem_bitfield = c_problem_bitfield;
    result->_TxBE_expiredCompletions = completions;
    result->_TxBE_failedCompletions = e_failedCompletions;
    result->_TxBE_noAckCompletions = ackCompletions;
    result->_TxBE_otherErrCompletions = errCompletions;
    result->_TxBK_expiredCompletions = k_expiredCompletions;
    result->_TxBK_failedCompletions = k_failedCompletions;
    result->_TxBK_noAckCompletions = k_noAckCompletions;
    result->_TxBK_otherErrCompletions = k_otherErrCompletions;
    result->_TxVI_expiredCompletions = i_expiredCompletions;
    result->_TxVI_failedCompletions = i_failedCompletions;
    result->_TxVI_noAckCompletions = i_noAckCompletions;
    result->_TxVI_otherErrCompletions = i_otherErrCompletions;
    result->_TxVO_expiredCompletions = o_expiredCompletions;
    result->_TxVO_failedCompletions = o_failedCompletions;
    result->_TxVO_noAckCompletions = o_noAckCompletions;
    result->_TxVO_otherErrCompletions = o_otherErrCompletions;
    result->_bt_abort = bt_abort;
    result->_bt_grant = bt_grant;
    result->_bt_request = bt_request;
    result->_bt_uch_latency = bt_uch_latency;
    result->_cca_bin = cca_bin;
    result->_completions_chipmodeerror = completions_chipmodeerror;
    result->_completions_expired = completions_expired;
    result->_completions_internalerror = completions_internalerror;
    result->_completions_ioerror = completions_ioerror;
    result->_completions_noack = completions_noack;
    result->_completions_nobuf = completions_nobuf;
    result->_completions_noremotepeer = completions_noremotepeer;
    result->_completions_noresources = completions_noresources;
    result->_completions_txfailure = completions_txfailure;
    result->_roam_count = roam_count;
    result->_roam_duration = roam_duration;
    result->_rssi_bin = rssi_bin;
    result->_snr_bin = snr_bin;
  }

  return result;
}

- (id)featureValueForName:(id)name
{
  nameCopy = name;
  if ([nameCopy isEqualToString:@"AC_problem_bitfield"])
  {
    [(WiFiStallDetectInput *)self AC_problem_bitfield];
LABEL_71:
    v5 = [MLFeatureValue featureValueWithDouble:?];
    goto LABEL_72;
  }

  if ([nameCopy isEqualToString:@"TxBE_expiredCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBE_expiredCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxBE_failedCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBE_failedCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxBE_noAckCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBE_noAckCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxBE_otherErrCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBE_otherErrCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxBK_expiredCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBK_expiredCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxBK_failedCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBK_failedCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxBK_noAckCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBK_noAckCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxBK_otherErrCompletions"])
  {
    [(WiFiStallDetectInput *)self TxBK_otherErrCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxVI_expiredCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVI_expiredCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxVI_failedCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVI_failedCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxVI_noAckCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVI_noAckCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxVI_otherErrCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVI_otherErrCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxVO_expiredCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVO_expiredCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxVO_failedCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVO_failedCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxVO_noAckCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVO_noAckCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"TxVO_otherErrCompletions"])
  {
    [(WiFiStallDetectInput *)self TxVO_otherErrCompletions];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"bt_abort"])
  {
    [(WiFiStallDetectInput *)self bt_abort];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"bt_grant"])
  {
    [(WiFiStallDetectInput *)self bt_grant];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"bt_request"])
  {
    [(WiFiStallDetectInput *)self bt_request];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"bt_uch_latency"])
  {
    [(WiFiStallDetectInput *)self bt_uch_latency];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"cca_bin"])
  {
    [(WiFiStallDetectInput *)self cca_bin];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"completions_chipmodeerror"])
  {
    [(WiFiStallDetectInput *)self completions_chipmodeerror];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"completions_expired"])
  {
    [(WiFiStallDetectInput *)self completions_expired];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"completions_internalerror"])
  {
    [(WiFiStallDetectInput *)self completions_internalerror];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"completions_ioerror"])
  {
    [(WiFiStallDetectInput *)self completions_ioerror];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"completions_noack"])
  {
    [(WiFiStallDetectInput *)self completions_noack];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"completions_nobuf"])
  {
    [(WiFiStallDetectInput *)self completions_nobuf];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"completions_noremotepeer"])
  {
    [(WiFiStallDetectInput *)self completions_noremotepeer];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"completions_noresources"])
  {
    [(WiFiStallDetectInput *)self completions_noresources];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"completions_txfailure"])
  {
    [(WiFiStallDetectInput *)self completions_txfailure];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"roam_count"])
  {
    [(WiFiStallDetectInput *)self roam_count];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"roam_duration"])
  {
    [(WiFiStallDetectInput *)self roam_duration];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"rssi_bin"])
  {
    [(WiFiStallDetectInput *)self rssi_bin];
    goto LABEL_71;
  }

  if ([nameCopy isEqualToString:@"snr_bin"])
  {
    [(WiFiStallDetectInput *)self snr_bin];
    goto LABEL_71;
  }

  v5 = 0;
LABEL_72:

  return v5;
}

@end