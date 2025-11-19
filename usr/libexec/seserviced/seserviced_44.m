uint64_t sub_1003B1F4C(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  v2 = sub_1003C75C8(*(result + 24));

  if (!v2)
  {
    sub_1003DADB0(*(v1 + 24), *(v1 + 216));
  }

  v3 = sub_1003B85AC(*(v1 + 24));

  if (!v3)
  {
    sub_1003DAD80(*(v1 + 24), *(v1 + 48));
  }

  v4 = sub_1003B85B8(*(v1 + 24));

  if (!v4)
  {
    sub_1003DAD90(*(v1 + 24), *(v1 + 64));
  }

  if (*(v1 + 8) == 13)
  {
    v5 = sub_1003C75BC(*(v1 + 24));

    if (!v5)
    {
      sub_1003DADA0(*(v1 + 24), *(v1 + 160));
    }

    [*(v1 + 192) agreedKmlSharingVersion];
    if ([sub_100367538() doesVersion:? support:?])
    {
      v6 = sub_1003C7D40(*(v1 + 24));
      if (v6)
      {
LABEL_15:

        goto LABEL_16;
      }

      v7 = sub_1003C7D34(*(v1 + 24));

      if (v7)
      {
        v6 = objc_opt_new();
        sub_1003C7DD0(*(v1 + 24), v6);
        goto LABEL_15;
      }
    }
  }

LABEL_16:
  sub_1003DAD74(*(v1 + 24), *(v1 + 98));
  sub_1003DAD28(*(v1 + 24), [*(v1 + 192) agreedKmlSharingVersion]);
  v8 = *(v1 + 8);
  v9 = 2;
  if (v8 <= 0x1F)
  {
    if (((1 << v8) & 0x80E00000) != 0)
    {
      v9 = 5;
    }

    else if (((1 << v8) & 0x1800) != 0)
    {
      v9 = 3;
    }

    else if (v8 == 13)
    {
      v9 = 4;
    }
  }

  v10 = *(v1 + 24);

  return sub_1003C7DEC(v10, v9);
}

id sub_1003B2100(void *a1)
{
  if (a1)
  {
    v1 = a1;
    objc_sync_enter(v1);
    v2 = v1[24];
    objc_sync_exit(v1);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void sub_1003B2160(uint64_t a1)
{
  if (a1)
  {
    v3 = KmlLogger();
    if (sub_100057AEC(v3))
    {
      v4 = *(a1 + 216);
      [v4 UTF8String];

      sub_1003672C0();
      sub_1003672B0();
      sub_100367358();
      _os_log_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }

    sub_1003B18E8(a1);
  }
}

void sub_1003B2240(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7)
{
  v13 = a2;
  v14 = a3;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  if (!a1)
  {
    goto LABEL_33;
  }

  if (sub_1003DACE0(*(a1 + 24)))
  {
    v18 = sub_1003ACF68(*(a1 + 24));
    v19 = [v18 isEqualToString:v15];

    if (v19)
    {
      v18 = sub_1003AD0FC(*(a1 + 24));
      v20 = [v18 isEqual:v14];

      if (v20)
      {
        goto LABEL_5;
      }

      v64 = KmlLogger();
      if (sub_1003674CC(v64))
      {
        v65 = *(a1 + 216);
        v66 = [v65 UTF8String];
        v67 = sub_1003AD0FC(*(a1 + 24));
        *v141 = 136315906;
        sub_1003672F0();
        sub_100367320();
        v142 = v66;
        v143 = 2112;
        v144 = v68;
        sub_100367310();
        _os_log_impl(v69, v70, v71, v72, v73, 0x26u);
      }
    }

    else
    {
      v32 = KmlLogger();
      if (sub_1003674CC(v32))
      {
        v33 = *(a1 + 216);
        v34 = [v33 UTF8String];

        *v141 = 136315906;
        sub_1003672F0();
        sub_100367320();
        v142 = v34;
        v143 = 2112;
        v144 = v15;
        sub_100367310();
        _os_log_impl(v35, v36, v37, v38, v39, 0x26u);
      }
    }

    goto LABEL_32;
  }

LABEL_5:
  v21 = [NSString stringWithFormat:@"Message for - %@", *(a1 + 216)];
  kmlUtilLogLargeData();

  v22 = a4 == 2 || a4 == 7;
  v23 = &unk_100409000;
  if (!v22)
  {
    if (a4 != 5)
    {
      goto LABEL_33;
    }

    goto LABEL_25;
  }

  v21 = (a1 + 32);
  if (*(a1 + 32) && *(a1 + 152))
  {
    v24 = KmlLogger();
    if (sub_1003674CC(v24))
    {
      v25 = *(a1 + 216);
      v26 = [v25 UTF8String];

      *v141 = 136315650;
      sub_1003672F0();
      sub_100367320();
      v142 = v26;
      sub_100367310();
      _os_log_impl(v27, v28, v29, v30, v31, 0x1Cu);
    }

    if (!sub_1003DACE0(*(a1 + 24)))
    {
      goto LABEL_33;
    }

LABEL_32:
    sub_1003CD134(*(a1 + 120), v15);
    goto LABEL_33;
  }

  v40 = objc_alloc_init(KeySigningRequest);
  sub_1003BAE64(v40, *(a1 + 192));
  if ((sub_1003BA7E4(v40, v13) & 1) == 0)
  {
    v41 = KmlLogger();
    if (sub_1003674CC(v41))
    {
      v42 = *(a1 + 216);
      v43 = [v42 UTF8String];

      *v141 = 136315650;
      sub_1003672F0();
      sub_100367320();
      v142 = v43;
      sub_100367310();
      _os_log_impl(v44, v45, v46, v47, v48, 0x1Cu);
    }

    if (sub_1003DACE0(*(a1 + 24)))
    {
      sub_1003CD134(*(a1 + 120), v15);
    }

LABEL_23:

    goto LABEL_33;
  }

  v74 = sub_1003C75EC(*(a1 + 24));
  if (v74)
  {
    v131 = v74;
    v124 = sub_1003C22E0(*(a1 + 24));

    if (v124)
    {
      v133 = *(a1 + 24);
      v94 = sub_1003C22E0(v133);
      sub_1003DADFC(v133, v94 - 1);
      v134 = sub_1003AF3D8(v40);

      if (!v134)
      {
        goto LABEL_49;
      }

      v135 = [NSString alloc];
      v126 = sub_1003AF3D8(v40);
      v121 = [v126 value];
      v136 = [v135 initWithData:v121 encoding:4];

      if (v136)
      {
        v128 = sub_1003C75EC(*(a1 + 24));
        v122 = [v128 isEqualToString:v136];

        if (v122)
        {
          v129 = KmlLogger();
          if (os_log_type_enabled(v129, OS_LOG_TYPE_INFO))
          {
            v119 = *(a1 + 216);
            v123 = [v119 UTF8String];

            *v141 = 136315650;
            sub_1003672F0();
            sub_100367320();
            v142 = v123;
            sub_100367454(&_mh_execute_header, v129, v118, "%s : %i : %s : Passcode verified. Ok to continue", v141);
          }

          goto LABEL_36;
        }
      }

      else
      {
LABEL_49:
        v136 = 0;
      }

      v95 = KmlLogger();
      if (sub_1003674CC(v95))
      {
        v96 = *(a1 + 216);
        v97 = [v96 UTF8String];

        *v141 = 136315650;
        sub_1003672F0();
        sub_100367320();
        v142 = v97;
        sub_100367310();
        _os_log_impl(v98, v99, v100, v101, v102, 0x1Cu);
      }

      if (sub_1003C22E0(*(a1 + 24)))
      {
        v108 = KmlLogger();
        if (sub_1003674CC(v108))
        {
          v109 = *(a1 + 216);
          v127 = [v109 UTF8String];
          v110 = sub_1003C22E0(*(a1 + 24));

          *v141 = 136315906;
          sub_1003672F0();
          *&v141[7] = 776;
          v141[9] = 2080;
          v142 = v127;
          v143 = v111;
          LODWORD(v144) = v110;
          sub_100367310();
          _os_log_impl(v112, v113, v114, v115, v116, 0x22u);
        }

        sub_1003B42C8(a1);
        WeakRetained = objc_loadWeakRetained((a1 + 232));
        [WeakRetained handlePasscodeRetryRequestedForInvitation:*(a1 + 216)];
      }

      else
      {
        v103 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        v147 = NSLocalizedDescriptionKey;
        v104 = [NSString stringWithUTF8String:KmlErrorString()];
        v148 = v104;
        v105 = [NSDictionary dictionaryWithObjects:&v148 forKeys:&v147 count:1];
        v106 = [NSError errorWithDomain:v103 code:118 userInfo:v105];
        v107 = *(a1 + 128);
        *(a1 + 128) = v106;

        sub_1003B18E8(a1);
      }

      goto LABEL_23;
    }
  }

LABEL_36:
  objc_storeStrong((a1 + 32), v40);
  v75 = [v16 uppercaseString];
  v76 = *(a1 + 160);
  *(a1 + 160) = v75;

  v77 = *(a1 + 160);
  v78 = kmlUtilDataForHexString();
  v79 = *(a1 + 152);
  *(a1 + 152) = v78;

  objc_storeStrong((a1 + 80), a7);
  v80 = KmlLogger();
  if (sub_1003674CC(v80))
  {
    v81 = *(a1 + 216);
    v120 = [v81 UTF8String];
    v125 = *(a1 + 160);
    v132 = *(a1 + 80);

    *v141 = 136316162;
    sub_1003672F0();
    sub_100367320();
    v142 = v120;
    v143 = 2112;
    v144 = v125;
    v145 = 2112;
    v146 = v132;
    sub_100367310();
    _os_log_impl(v82, v83, v84, v85, v86, 0x30u);
  }

  sub_1003B49C8(a1);
  v23 = &unk_100409000;
  if (a4 == 5)
  {
LABEL_25:
    v49 = v23;
    v50 = KmlLogger();
    if (sub_1003674CC(v50))
    {
      v51 = *(a1 + 216);
      v52 = [v51 UTF8String];

      *v141 = v49[277];
      sub_1003672F0();
      sub_100367320();
      v142 = v52;
      sub_100367310();
      _os_log_impl(v53, v54, v55, v56, v57, 0x1Cu);
    }

    v58 = [[KmlCancelMessage alloc] initWithData:v13];
    v130 = v58;
    if (v58)
    {
      v87 = [v58 kmlCode];
      if (v87 == 105)
      {
        v88 = 102;
      }

      else
      {
        v88 = v87;
      }

      v59 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v139 = NSLocalizedDescriptionKey;
      v60 = [NSString stringWithUTF8String:KmlErrorString()];
      v140 = v60;
      v61 = [NSDictionary dictionaryWithObjects:&v140 forKeys:&v139 count:1];
      v62 = v59;
      v63 = v88;
    }

    else
    {
      v59 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v137 = NSLocalizedDescriptionKey;
      v60 = [NSString stringWithUTF8String:KmlErrorString()];
      v138 = v60;
      v61 = [NSDictionary dictionaryWithObjects:&v138 forKeys:&v137 count:1];
      v62 = v59;
      v63 = 102;
    }

    v89 = [NSError errorWithDomain:v62 code:v63 userInfo:v61];
    v90 = *(a1 + 128);
    *(a1 + 128) = v89;

    v91 = objc_loadWeakRetained((a1 + 200));
    if (v91)
    {
      v92 = [[DAShareInitiatorResult alloc] initFailureResultWithResponse:0 error:*(a1 + 128)];
      v93 = objc_loadWeakRetained((a1 + 200));
      [v93 handleInitiatorMessageResult:v92];
    }

    sub_1003B18E8(a1);
  }

LABEL_33:
}

void sub_1003B2CA8(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return;
  }

  v7 = *(a1 + 8);
  v8 = KmlLogger();
  v9 = sub_100057AEC(v8);
  if (v7 >= a2)
  {
    if (!v9)
    {
LABEL_92:

      return;
    }

LABEL_18:
    v29 = *(a1 + 216);
    v30 = [v29 UTF8String];

    sub_100367248();
    sub_1003672A0();
    v202 = v30;
    sub_1003672D0();
    _os_log_impl(v31, v32, v33, v34, v35, 0x1Cu);
    goto LABEL_92;
  }

  if (v9)
  {
    v7 = *(a1 + 216);
    v3 = [v7 UTF8String];
    v10 = *(a1 + 8);

    sub_100367248();
    sub_1003672A0();
    v202 = v3;
    v203 = 2048;
    v204 = v10;
    v205 = 2048;
    v206 = a2;
    sub_1003672D0();
    _os_log_impl(v11, v12, v13, v14, v15, 0x30u);
  }

  v16 = *(a1 + 8);
  *(a1 + 8) = a2;
  *(a1 + 16) = v16;
  if (!(!v18 & v17))
  {
    switch(a2)
    {
      case 11:
        v36 = KmlLogger();
        if (sub_100057AEC(v36))
        {
          v37 = *(a1 + 216);
          [v37 UTF8String];

          sub_100367248();
          sub_100367278();
          sub_1003672D0();
          _os_log_impl(v38, v39, v40, v41, v42, 0x1Cu);
        }

        sub_1003C7DEC(*(a1 + 24), 3);
        WeakRetained = objc_loadWeakRetained((a1 + 232));
        [WeakRetained handleSentInvitationWithIdentifier:*(a1 + 216)];
        goto LABEL_92;
      case 12:
        v43 = KmlLogger();
        if (sub_100057AEC(v43))
        {
          v44 = *(a1 + 216);
          [v44 UTF8String];

          sub_100367248();
          sub_100367278();
          sub_1003672D0();
          _os_log_impl(v45, v46, v47, v48, v49, 0x1Cu);
        }

        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100367344();
        if (!(!v18 & v17) && os_signpost_enabled(WeakRetained))
        {
          *buf = 0;
          sub_100367330();
          _os_signpost_emit_with_name_impl(v50, v51, v52, v53, v54, v55, v56, 2u);
        }

        v57 = [NSString stringWithFormat:@"SignedResponse - %@", *(a1 + 216)];
        v58 = *(a1 + 40);
        kmlUtilLogLargeData();

        if (sub_1003DACE0(*(a1 + 24)))
        {
          v59 = *(a1 + 120);
          v60 = sub_1003ACF68(*(a1 + 24));
          *(a1 + 144) = sub_10037E34C(v59, v60);

          v61 = *(a1 + 120);
          v62 = *(a1 + 40);
          v63 = *(a1 + 216);
          v64 = *(a1 + 160);
          v65 = sub_1003AD0FC(*(a1 + 24));
          v66 = sub_1003ACF68(*(a1 + 24));
          v67 = sub_1003C7D28(*(a1 + 24));
          sub_1003CD23C(v61, v62, 0, 0, v63, v64, v65, v66, v67, 3);

          return;
        }

        WeakRetained = [[DACarKeyGenericCrossPlatformSharingData alloc] initWithSharingIdentifier:*(a1 + 216) friendKeyIdentifier:0 sharingMessageType:3 message:*(a1 + 40)];
        if (sub_1003F6F5C(v150) && (v151 = objc_opt_new(), v152 = [v151 pretendBindingAttestationUsed], v151, v152))
        {
          v153 = KmlLogger();
          if (os_log_type_enabled(v153, OS_LOG_TYPE_DEBUG))
          {
            v154 = *(a1 + 216);
            v155 = [v154 UTF8String];

            sub_100367248();
            sub_1003672A0();
            v202 = v155;
            _os_log_impl(&_mh_execute_header, v153, OS_LOG_TYPE_DEBUG, "%s : %i : %s : Pretending binding attestation was used", buf, 0x1Cu);
          }
        }

        else if (!*(a1 + 80))
        {
          v179 = 0;
          goto LABEL_87;
        }

        v180 = sub_100399BE8(KmlEndpointManager, *(a1 + 104));
        v181 = sub_1003DF2B8([KmlBindingAttestation alloc], *(a1 + 80));
        v182 = sub_1003BA3D0(v181);
        if (v182)
        {
          v183 = [*(a1 + 104) anonymizedDsid];
          *(a1 + 144) = [v183 isEqualToData:v182];
        }

        if (v180)
        {
          v179 = sub_10037E49C(*(a1 + 120));
        }

        else if (*(a1 + 144))
        {
          v179 = @"NON_OWNER_INTRA_ACCOUNT_IDS";
        }

        else
        {
          v179 = @"NON_OWNER_INTER_ACCOUNT_IDS";
        }

LABEL_87:
        v185 = [DACarKeyAdditionalCrossPlatformSharingData alloc];
        v186 = sub_1003AD0FC(*(a1 + 24));
        sub_1003C7D28(*(a1 + 24));
        v187 = [sub_100367544() initWithSharingSessionUUID:? bindingAttestation:? targetDeviceType:? initiatorIdsPseudonym:?];

        v188 = [[DACarKeySharingMessage alloc] initWithGenericCrossPlatformSharingData:WeakRetained additionalData:v187 privateData:0];
        v189 = +[KmlClientReporterFactory getReporter];
        v190 = sub_1003AF3D8(*(a1 + 24));
        sub_100367558(v190);

        v191 = objc_loadWeakRetained((a1 + 200));
        if (v191)
        {
          v192 = [[DAShareInitiatorResult alloc] initInviteAcceptedResultWithResponse:v188];
          v193 = objc_loadWeakRetained((a1 + 200));
          [v193 handleInitiatorMessageResult:v192];
        }

        v194 = KmlLogger();
        if (os_log_type_enabled(v194, OS_LOG_TYPE_INFO))
        {
          v195 = *(a1 + 216);
          v196 = [v195 UTF8String];

          sub_100367248();
          sub_1003672A0();
          v202 = v196;
          sub_100367454(&_mh_execute_header, v194, v197, "%s : %i : %s : We don't get send results for cross-platform. Sharing is successful from our perspective.", buf);
        }

        sub_1003B18E8(a1, 13);
        break;
      case 13:
        v92 = KmlLogger();
        if (sub_100057AEC(v92))
        {
          v93 = *(a1 + 216);
          v7 = [v93 UTF8String];
          v94 = *(a1 + 160);

          sub_100367248();
          sub_100367278();
          v203 = 2112;
          v204 = v94;
          sub_1003672D0();
          _os_log_impl(v95, v96, v97, v98, v99, 0x26u);
        }

        WeakRetained = +[KmlClientReporterFactory getReporter];
        [WeakRetained sharingCompleteForInvitationIdentifier:*(a1 + 216) friendKeyIdentifier:*(a1 + 160) status:0];
        v100 = *(a1 + 120);
        sub_1003ACF68(*(a1 + 24));
        objc_claimAutoreleasedReturnValue();
        v101 = sub_10036746C();
        sub_10037E34C(v101, v7);

        sub_1003CCFD8(*(a1 + 120), *(a1 + 216));
        v102 = objc_loadWeakRetained((a1 + 232));
        sub_100367478(v102);
        goto LABEL_82;
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
        return;
      case 21:
        v103 = KmlLogger();
        if (sub_100057AEC(v103))
        {
          v104 = *(a1 + 216);
          [v104 UTF8String];

          sub_100367248();
          sub_100367278();
          sub_1003672D0();
          _os_log_impl(v105, v106, v107, v108, v109, 0x1Cu);
        }

        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100367344();
        if (!(!v18 & v17) && os_signpost_enabled(WeakRetained))
        {
          v110 = *(a1 + 128);
          *buf = 138412290;
          v201 = v110;
          sub_100367330();
          _os_signpost_emit_with_name_impl(v111, v112, v113, v114, v115, v116, v117, 0xCu);
        }

        [SESTapToRadar requestTapToRadarKML:@"Owner failed to send invitation" client:@"KMLSendInvitationError"];
        v118 = a1;
        v119 = 23;
        goto LABEL_73;
      case 22:
        v136 = KmlLogger();
        if (sub_100057AEC(v136))
        {
          v137 = *(a1 + 216);
          [v137 UTF8String];

          sub_100367248();
          sub_100367278();
          sub_1003672D0();
          _os_log_impl(v138, v139, v140, v141, v142, 0x1Cu);
        }

        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100367344();
        if (!(!v18 & v17) && os_signpost_enabled(WeakRetained))
        {
          *buf = 0;
          sub_100367330();
          _os_signpost_emit_with_name_impl(v143, v144, v145, v146, v147, v148, v149, 2u);
        }

        sub_1003B4268(a1);
        return;
      case 23:
        v120 = KmlLogger();
        if (os_log_type_enabled(v120, OS_LOG_TYPE_ERROR))
        {
          v121 = *(a1 + 216);
          v7 = [v121 UTF8String];

          sub_100367248();
          sub_100367278();
          _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_ERROR, "%s : %i : %s : Error while sharing key.", buf, 0x1Cu);
        }

        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100367344();
        if (!(!v18 & v17) && os_signpost_enabled(v120))
        {
          v122 = *(a1 + 128);
          *buf = 138412290;
          v201 = v122;
          sub_100367330();
          _os_signpost_emit_with_name_impl(v123, v124, v125, v126, v127, v128, v129, 0xCu);
        }

        WeakRetained = +[KmlClientReporterFactory getReporter];
        [WeakRetained sharingCompleteForInvitationIdentifier:*(a1 + 216) friendKeyIdentifier:0 status:*(a1 + 128)];
        v130 = *(a1 + 120);
        sub_1003ACF68(*(a1 + 24));
        objc_claimAutoreleasedReturnValue();
        v131 = sub_10036746C();
        sub_10037E34C(v131, v7);

        sub_1003CCFD8(*(a1 + 120), *(a1 + 216));
        v132 = objc_loadWeakRetained((a1 + 232));
        sub_100367478(v132);

        v133 = sub_1003DACE0(*(a1 + 24));
        v134 = *(a1 + 120);
        v135 = *(a1 + 24);
        if (v133)
        {
          sub_1003ACF68(v135);
        }

        else
        {
          sub_1003BFE98(v135);
        }

        objc_claimAutoreleasedReturnValue();
        v184 = sub_10036746C();
        *(a1 + 144) = sub_10037E34C(v184, v7);
LABEL_82:

        sub_1003B3AD8(a1);
        goto LABEL_92;
      default:
        JUMPOUT(0);
    }

    goto LABEL_92;
  }

  if (a2 == 31)
  {
    v90 = KmlLogger();
    if (!sub_100057AEC(v90))
    {
      goto LABEL_92;
    }

    goto LABEL_18;
  }

  if (a2 == 3)
  {
    v68 = KmlLogger();
    if (sub_100057AEC(v68))
    {
      v70 = *(a1 + 216);
      [v70 UTF8String];

      sub_100367248();
      sub_100367278();
      sub_1003672D0();
      _os_log_impl(v71, v72, v73, v74, v75, 0x1Cu);
    }

    KmlSignpostLogger();
    objc_claimAutoreleasedReturnValue();
    sub_100367344();
    if (!(!v18 & v17) && os_signpost_enabled(WeakRetained))
    {
      *buf = 0;
      sub_100367330();
      _os_signpost_emit_with_name_impl(v76, v77, v78, v79, v80, v81, v82, 2u);
    }

    v83 = *(a1 + 120);
    v84 = *(a1 + 224);
    v85 = sub_1003C7D1C(*(a1 + 24));
    v86 = *(a1 + 216);
    v87 = sub_1003AD0FC(*(a1 + 24));
    v88 = sub_1003ACF68(*(a1 + 24));
    v89 = sub_1003C7D28(*(a1 + 24));
    sub_1003CD23C(v83, v84, v85, 0, v86, 0, v87, v88, v89, 1);

    return;
  }

  if (a2 != 2)
  {
    return;
  }

  v19 = *(a1 + 216);
  if (!v19)
  {
    v156 = KmlLogger();
    if (sub_100057AEC(v156))
    {
      v157 = *(a1 + 216);
      [v157 UTF8String];

      sub_100367248();
      sub_100367278();
      sub_1003672D0();
      _os_log_impl(v158, v159, v160, v161, v162, 0x1Cu);
    }

    v163 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v198 = NSLocalizedDescriptionKey;
    v164 = [NSString stringWithUTF8String:KmlErrorString()];
    v199 = v164;
    [NSDictionary dictionaryWithObjects:&v199 forKeys:&v198 count:1];
    objc_claimAutoreleasedReturnValue();
    v165 = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
    sub_100367578(v165);

    v118 = a1;
    v119 = 21;
    goto LABEL_73;
  }

  sub_1003CCDC4(*(a1 + 120), a1, v19);
  v20 = sub_1003DACE0(*(a1 + 24));
  v21 = KmlLogger();
  v22 = sub_100057AEC(v21);
  if (!v20)
  {
    if (v22)
    {
      v166 = *(a1 + 216);
      [v166 UTF8String];

      sub_100367248();
      sub_100367278();
      sub_1003672D0();
      _os_log_impl(v167, v168, v169, v170, v171, 0x1Cu);
    }

    v172 = KmlLogger();
    if (sub_100057AEC(v172))
    {
      v173 = *(a1 + 216);
      [v173 UTF8String];

      sub_100367248();
      sub_100367278();
      sub_1003672D0();
      _os_log_impl(v174, v175, v176, v177, v178, 0x1Cu);
    }

    v118 = a1;
    v119 = 11;
LABEL_73:
    sub_1003B18E8(v118, v119);
    return;
  }

  if (v22)
  {
    v23 = *(a1 + 216);
    [v23 UTF8String];

    sub_100367248();
    sub_100367278();
    sub_1003672D0();
    _os_log_impl(v24, v25, v26, v27, v28, 0x1Cu);
  }

  sub_1003CD1B8(*(a1 + 120), *(a1 + 216));
}

void sub_1003B3AD8(uint64_t a1)
{
  if (a1)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 232));
    v56 = [WeakRetained getTotalNumberOfSharedKeys];

    v3 = +[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 192) agreedKmlSharingVersion], 768);
    v59 = [*(a1 + 104) readerInfo];
    v4 = [[KmlRoutingInformation alloc] initWithReaderInformation:v59];
    v5 = [*(a1 + 168) readerSupportsNfc];
    if ([*(a1 + 168) readerSupportsUwb])
    {
      v6 = 2;
    }

    else
    {
      v6 = 0;
    }

    v7 = sub_1003C75EC(*(a1 + 24));
    v8 = v7 != 0;

    v9 = 2 * v8;
    v10 = *(a1 + 24);
    if (v3)
    {
      if (sub_1003DACD4(v10) == 2)
      {
        v11 = v9 | 4;
      }

      else
      {
        v11 = v9;
      }

      v12 = sub_1003DACD4(*(a1 + 24));
      v13 = v11 | 8;
      if (v12 != 1)
      {
        v13 = v11;
      }
    }

    else
    {
      v13 = v9 | sub_1003DAC98(v10);
    }

    v53 = v13;
    v14 = *(a1 + 120);
    v15 = sub_1003ACF68(*(a1 + 24));
    LODWORD(v14) = sub_10037E34C(v14, v15);

    if (v14)
    {
      v16 = 1;
    }

    else
    {
      v16 = 2;
    }

    if (v4)
    {
      v17 = [v4 manufacturer];
      v62 = [v17 copy];

      v18 = [v4 brand];
      v61 = [v18 copy];

      v19 = [v4 regionString];
      v60 = [v19 copy];
    }

    else
    {
      v20 = KmlLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v66 = "[KmlOwnerSharingSession reportSharingEventToCA]";
        v67 = 1024;
        v68 = 1202;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s : %i : No routing info available", buf, 0x12u);
      }

      v60 = @"Unknown";
      v61 = @"Unknown";
      v62 = @"Unknown";
    }

    v21 = v5;
    v22 = *(a1 + 128);
    if (v22)
    {
      v23 = *(a1 + 16);
      v24 = [v22 code];
    }

    else
    {
      v24 = 0;
      v23 = *(a1 + 8);
    }

    v58 = v4;
    v25 = sub_1003BA3F8(*(a1 + 24));
    if (!v25)
    {
      if (sub_1003DACD4(*(a1 + 24)) == 2)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }
    }

    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 192) agreedKmlVehicleVersion], 768))
    {
      v26 = 0x80;
    }

    else
    {
      v26 = 0;
    }

    v27 = [*(a1 + 104) configuration];
    [v27 opt2];
    v50 = kmlUtilKeyClassOriginBitmap();

    v28 = [*(a1 + 192) ourSupportedFrameworkVersionsAsCAString];
    v63[0] = @"destination";
    v55 = [NSNumber numberWithUnsignedInt:v16];
    v64[0] = v55;
    v64[1] = &off_1004DCB28;
    v63[1] = @"type";
    v63[2] = @"targetDeviceType";
    v52 = [NSNumber numberWithInteger:sub_1003C7D28(*(a1 + 24))];
    v64[2] = v52;
    v63[3] = @"step";
    v51 = [NSNumber numberWithInteger:v23];
    v64[3] = v51;
    v64[4] = v60;
    v63[4] = @"dataCenterCode";
    v63[5] = @"manufacturer";
    v64[5] = v62;
    v64[6] = v61;
    v63[6] = @"brand";
    v63[7] = @"transportSupported";
    v49 = [NSNumber numberWithUnsignedInteger:v6 | v21];
    v64[7] = v49;
    v63[8] = @"totalSharedKeysForOwnerKey";
    v57 = [NSNumber numberWithInteger:v56];
    v64[8] = v57;
    v63[9] = @"status";
    v48 = [NSNumber numberWithUnsignedInt:v24];
    v64[9] = v48;
    v63[10] = @"inviteCancelReason";
    v29 = *(a1 + 136);
    if (v29)
    {
      v30 = [v29 code];
    }

    else
    {
      v30 = 0;
    }

    v47 = [NSNumber numberWithInteger:v30];
    v64[10] = v47;
    v63[11] = @"activationOption";
    v54 = [NSNumber numberWithUnsignedInteger:v53];
    v64[11] = v54;
    v63[12] = @"sharingTransport";
    v46 = [NSNumber numberWithInteger:v25];
    v64[12] = v46;
    v63[13] = @"pinAttempts";
    v31 = sub_1003DACB0(*(a1 + 24));
    v45 = [NSNumber numberWithUnsignedInteger:v31 - sub_1003C22E0(*(a1 + 24))];
    v64[13] = v45;
    v63[14] = @"appleToApple";
    v32 = [NSNumber numberWithInt:*(a1 + 80) != 0];
    v43 = v32;
    v33 = &stru_1004D9380;
    if (v28)
    {
      v33 = v28;
    }

    v64[14] = v32;
    v64[15] = v33;
    v63[15] = @"senderSupportedFrameworkVersions";
    v63[16] = @"receiverSupportedFrameworkVersions";
    v34 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%04X", [*(a1 + 192) agreedKmlSharingVersion]);
    v64[16] = v34;
    v63[17] = @"attestationChainLength";
    v35 = [NSNumber numberWithUnsignedChar:*(a1 + 97)];
    v64[17] = v35;
    v63[18] = @"certificateChainLength";
    sub_1003DAC8C(*(a1 + 24));
    [sub_100367538() numberWithUnsignedChar:?];
    v36 = v44 = v28;
    v64[18] = v36;
    v63[19] = @"accountRole";
    v37 = [NSNumber numberWithUnsignedInteger:sub_1003BA3D0(*(a1 + 24))];
    v64[19] = v37;
    v63[20] = @"isIntraAccountShare";
    v38 = [NSNumber numberWithBool:*(a1 + 144)];
    v64[20] = v38;
    v64[21] = &off_1004DCB40;
    v63[21] = @"wasUserAuthRequired";
    v63[22] = @"mailboxVersion";
    v39 = [NSNumber numberWithUnsignedChar:v26];
    v64[22] = v39;
    v63[23] = @"frameworkVersion";
    v40 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(a1 + 192) agreedKmlSharingVersion]);
    v64[23] = v40;
    v64[24] = &off_1004DCB58;
    v63[24] = @"accessProfile";
    v63[25] = @"keyClassOriginBitmap";
    v41 = [NSNumber numberWithUnsignedChar:v50];
    v64[25] = v41;
    v42 = [NSDictionary dictionaryWithObjects:v64 forKeys:v63 count:26];

    sub_100368DC8(KmlAnalyticsLogger, v42);
  }
}

void sub_1003B4268(uint64_t a1)
{
  if (a1)
  {
    v3 = 3221225472;
    v4 = sub_1003676B8;
    v5 = &unk_1004C08D8;
    v6 = sub_1003673A0(a1);
    dispatch_async(v1, block);
  }
}

void sub_1003B42C8(uint64_t a1)
{
  if (a1)
  {
    v3 = 3221225472;
    v4 = sub_100366EA8;
    v5 = &unk_1004C08D8;
    v6 = sub_1003673A0(a1);
    dispatch_async(v1, block);
  }
}

id sub_1003B4328(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = [KmlDeviceConfigurationData alloc];
    [*(v2 + 104) deviceConfiguration];
    objc_claimAutoreleasedReturnValue();
    v4 = [sub_100367434() initWithData:?];

    [*(v2 + 104) bleIntroKey];
    objc_claimAutoreleasedReturnValue();
    [sub_100367434() setDeviceBtIntroKey:?];

    v5 = [v4 readerBtIdAddress];

    if (!v5)
    {
      [*(v2 + 104) bleAddress];
      objc_claimAutoreleasedReturnValue();
      [sub_100367434() setReaderBtIdAddress:?];
    }

    v6 = sub_1003B85A0(*(v2 + 24));
    v7 = kmlUtilGetDckIdFromSlotId();

    v8 = [*(v2 + 104) bleOOBMasterKey];
    v9 = kmlUtilGetOOBKey();
    [v4 setDeviceBtOOBKey:v9];

    if (*(v2 + 8) == 1)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v2 = [v4 supportedRadiosAsDataForTarget:v10];
  }

  return v2;
}

void sub_1003B4460(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v4 = +[NSMutableArray array];
  v5 = +[NSMutableArray array];
  if (([*(a1 + 168) isFriendImmoTokenOrSlotOnline] & 1) == 0)
  {
    v1 = KmlTlv;
    sub_1003B85A0(*(a1 + 24));
    objc_claimAutoreleasedReturnValue();
    [sub_1003674FC() TLVWithTag:4 value:v2];
    objc_claimAutoreleasedReturnValue();
    [sub_10036746C() addObject:KmlTlv];
  }

  v41 = 0;
  [KmlTlv TLVWithTag:215 unsignedChar:0];
  objc_claimAutoreleasedReturnValue();
  [sub_1003674F0() addObject:v1];

  if (sub_1003DAC98(*(a1 + 24)) && [*(a1 + 168) sharingPasswordRequired])
  {
    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v2 = *(a1 + 216);
      v7 = [v2 UTF8String];

      v44 = 136315650;
      v45 = "[KmlOwnerSharingSession saveEntitlements]";
      sub_1003674B0();
      v46 = 1040;
      sub_100367520();
      v47 = v7;
      sub_100367454(&_mh_execute_header, v6, v8, "%s : %i : %s : activation option is required", &v44);
    }

    v41 = 1;
    v9 = sub_1003C75E0(*(a1 + 24));
    if (![v9 length])
    {
      goto LABEL_15;
    }

    v2 = sub_1003C75D4(*(a1 + 24));
    if (![v2 length])
    {
LABEL_14:

LABEL_15:
      goto LABEL_16;
    }

    v10 = [*(a1 + 168) sharingPasswordLength];

    if (v10)
    {
      v11 = KmlLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v12 = *(a1 + 216);
        v13 = [v12 UTF8String];

        v44 = 136315650;
        v45 = "[KmlOwnerSharingSession saveEntitlements]";
        sub_1003674B0();
        v46 = 1043;
        sub_100367520();
        v47 = v13;
        sub_100367454(&_mh_execute_header, v11, v14, "%s : %i : %s : VEP can be an activation option for v1 shares", &v44);
      }

      v9 = sub_1003C75E0(*(a1 + 24));
      v2 = [KmlTlv TLVWithTag:4 value:v9];
      [v4 addObject:v2];
      goto LABEL_14;
    }
  }

LABEL_16:
  [NSData dataWithBytes:&v41 length:1];
  objc_claimAutoreleasedReturnValue();
  [sub_1003674FC() TLVWithTag:1 value:v2];
  objc_claimAutoreleasedReturnValue();
  [sub_10036746C() addObject:KmlTlv];

  if ([*(a1 + 168) isFriendImmoTokenOrSlotOnline])
  {
    [*(a1 + 104) readerIdentifier];
    objc_claimAutoreleasedReturnValue();
    [sub_1003674FC() TLVWithTag:4 value:v2];
    objc_claimAutoreleasedReturnValue();
    [sub_10036746C() addObject:KmlTlv];

    [*(a1 + 104) readerIdentifier];
    objc_claimAutoreleasedReturnValue();
    [sub_1003674FC() TLVWithTag:77 value:v2];
    objc_claimAutoreleasedReturnValue();
    [sub_1003674F0() addObject:KmlTlv];
  }

  [*(a1 + 104) slotIdentifier];
  objc_claimAutoreleasedReturnValue();
  [sub_1003674FC() TLVWithTag:130 value:v2];
  objc_claimAutoreleasedReturnValue();
  [sub_1003674F0() addObject:KmlTlv];

  v15 = +[NSMutableData data];
  [v15 appendData:*(a1 + 56)];
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v16 = v4;
  v17 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v38;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v38 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [*(*(&v37 + 1) + 8 * i) asData];
        [v15 appendData:v21];
      }

      v18 = [v16 countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v18);
  }

  v22 = [KmlTlv TLVWithTag:48 value:v15];
  v23 = [v22 asData];
  v24 = *(a1 + 48);
  *(a1 + 48) = v23;

  v25 = +[NSMutableData data];
  [v25 appendData:*(a1 + 72)];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v26 = v5;
  v27 = [v26 countByEnumeratingWithState:&v33 objects:v42 count:16];
  if (v27)
  {
    v28 = v27;
    v29 = *v34;
    do
    {
      for (j = 0; j != v28; j = j + 1)
      {
        if (*v34 != v29)
        {
          objc_enumerationMutation(v26);
        }

        v31 = [*(*(&v33 + 1) + 8 * j) asData];
        [v25 appendData:v31];
      }

      v28 = [v26 countByEnumeratingWithState:&v33 objects:v42 count:16];
    }

    while (v28);
  }

  v32 = *(a1 + 64);
  *(a1 + 64) = v25;
}

void sub_1003B49C8(uint64_t a1)
{
  if (a1)
  {
    v4 = KmlLogger();
    if (sub_100057AEC(v4))
    {
      v5 = *(a1 + 216);
      [v5 UTF8String];
      v2 = sub_1003ACF68(*(a1 + 32));
      v6 = kmlUtilHexStringFromData();
      sub_100367364();
      sub_10036725C();
      v126 = v7;
      sub_100367300();
      _os_log_impl(v8, v9, v10, v11, v12, 0x26u);
    }

    v13 = KmlVersions;
    [*(a1 + 192) agreedKmlSharingVersion];
    if ([sub_100367538() doesVersion:? support:?])
    {
      sub_1003B528C(a1);
      v14 = KmlLogger();
      if (sub_100057AEC(v14))
      {
        v15 = *(a1 + 216);
        [v15 UTF8String];
        v16 = *(a1 + 64);
        v2 = kmlUtilHexStringFromData();
        sub_100367364();
        sub_10036725C();
        v126 = v17;
        sub_100367300();
        _os_log_impl(v18, v19, v20, v21, v22, 0x26u);
      }

      v23 = 64;
    }

    else
    {
      v13 = KmlLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v24 = *(a1 + 216);
        [v24 UTF8String];
        v25 = *(a1 + 48);
        v2 = kmlUtilHexStringFromData();
        sub_100367364();
        sub_10036725C();
        v126 = v26;
        sub_100367300();
        _os_log_impl(v27, v28, v29, v30, v31, 0x26u);
      }

      v23 = 48;
    }

    v116 = *(a1 + v23);
    if ((*(a1 + 96) & 1) != 0 || (sub_1003C7D34(*(a1 + 24)), v32 = objc_claimAutoreleasedReturnValue(), v32, v32))
    {
      v36 = [*(a1 + 104) publicKeyIdentifier];
      v37 = kmlUtilHexStringFromData();

      v38 = sub_1003AD0FC(*(a1 + 24));
      v115 = kmlUtilUUIDToData();

      v114 = v37;
      if (*(a1 + 96) == 1)
      {
        v39 = KmlLogger();
        if (sub_100057AEC(v39))
        {
          v40 = *(a1 + 216);
          v41 = [v40 UTF8String];

          sub_100367364();
          v123 = 847;
          v124 = 2080;
          v125 = v41;
          sub_100367300();
          _os_log_impl(v42, v43, v44, v45, v46, 0x1Cu);
        }

        v47 = *(a1 + 88);
        v48 = SESEndpointPreAuthorizeWithSession();
      }

      else
      {
        v48 = 0;
      }

      v113 = sub_1003AAA6C(*(a1 + 32));
      v111 = [v113 value];
      v112 = sub_1003AAA78(*(a1 + 32));
      v49 = [v112 value];
      v50 = sub_1003AD0FC(*(a1 + 32));
      v51 = [v50 value];
      v52 = sub_1003ACF68(*(a1 + 32));
      v53 = *(a1 + 80);
      v54 = sub_1003DAC74(*(a1 + 24));
      v55 = sub_1003B9198(*(a1 + 24));
      sub_1003C7D34(*(a1 + 24));
      v110 = v117 = v48;
      WORD1(v109) = v55;
      LOWORD(v109) = v54;
      v108 = v53;
      v56 = v114;
      v57 = SESEndPointAuthorizeWithSession();
      v58 = v48;
      v59 = v48;
      v60 = v58;

      v61 = *(a1 + 112);
      *(a1 + 112) = v57;

      v62 = v60;
      if (v60)
      {
        v90 = KmlLogger();
        if (sub_100057AEC(v90))
        {
          v91 = *(a1 + 216);
          v49 = [v91 UTF8String];

          v120 = 136315906;
          v121 = "[KmlOwnerSharingSession signTheRequest]";
          v122 = 1024;
          sub_10036725C();
          v126 = v60;
          sub_100367300();
          _os_log_impl(v92, v93, v94, v95, v96, 0x26u);
        }

        v97 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        [v60 userInfo];
        objc_claimAutoreleasedReturnValue();
        v98 = [sub_1003674F0() errorWithDomain:v97 code:204 userInfo:v49];
        sub_100367578(v98);

        sub_1003B18E8(a1);
      }

      else
      {
        v63 = [NSData alloc];
        [*(a1 + 104) mailboxMapping];
        objc_claimAutoreleasedReturnValue();
        v64 = [sub_100367434() initWithData:?];

        v65 = KmlLogger();
        if (sub_100057AEC(v65))
        {
          v66 = *(a1 + 216);
          v49 = [v66 UTF8String];
          v67 = kmlUtilHexStringFromData();
          sub_1003673E4();
          sub_10036725C();
          v126 = v68;
          sub_100367300();
          _os_log_impl(v69, v70, v71, v72, v73, 0x26u);
        }

        v74 = sub_1003B4328(a1);
        v75 = KmlLogger();
        if (sub_100057AEC(v75))
        {
          v76 = *(a1 + 216);
          v49 = [v76 UTF8String];
          v77 = kmlUtilHexStringFromData();
          sub_1003673E4();
          sub_10036725C();
          v126 = v78;
          sub_100367300();
          _os_log_impl(v79, v80, v81, v82, v83, 0x26u);
        }

        v84 = sub_1003B55A0(a1);
        kmlUtilLogLargeData();
        v85 = objc_alloc_init(SharingSignedResponse);
        sub_1003BA3E8(v85, *(a1 + 192));
        v86 = *(a1 + 112);
        v87 = sub_1003DACBC(*(a1 + 24));
        v88 = sub_1003B91A4(&v85->super.isa, v86, v64, v74, v87, v84);
        v89 = *(a1 + 40);
        *(a1 + 40) = v88;

        v62 = sub_1003B5C88(a1);
        if (v62)
        {
          v99 = KmlLogger();
          if (sub_100057AEC(v99))
          {
            v100 = *(a1 + 216);
            v49 = [v100 UTF8String];

            sub_1003673E4();
            sub_10036725C();
            v126 = v62;
            sub_100367300();
            _os_log_impl(v101, v102, v103, v104, v105, 0x26u);
          }

          v106 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          [v62 userInfo];
          objc_claimAutoreleasedReturnValue();
          v107 = [sub_1003674F0() errorWithDomain:v106 code:204 userInfo:v49];
          sub_100367578(v107);
        }

        sub_1003B18E8(a1);

        v56 = v114;
      }
    }

    else
    {
      v33 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v118[0] = NSLocalizedDescriptionKey;
      v34 = [NSString stringWithUTF8String:KmlErrorString()];
      v118[1] = NSLocalizedFailureReasonErrorKey;
      v119[0] = v34;
      v119[1] = @"Missing user auth";
      [NSDictionary dictionaryWithObjects:v119 forKeys:v118 count:2];
      objc_claimAutoreleasedReturnValue();
      v35 = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
      sub_100367578(v35);

      sub_1003B18E8(a1);
    }
  }
}

void sub_1003B528C(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  location = (a1 + 64);
  v2 = [KmlTlv TLVsWithData:*(a1 + 64)];
  v3 = +[NSMutableData data];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v27 objects:v33 count:16];
  if (!v5)
  {
    goto LABEL_23;
  }

  v6 = v5;
  v7 = *v28;
  do
  {
    for (i = 0; i != v6; i = i + 1)
    {
      if (*v28 != v7)
      {
        objc_enumerationMutation(v4);
      }

      v9 = *(*(&v27 + 1) + 8 * i);
      if ([v9 tag] != 215)
      {
        v17 = [v9 asData];
        [v3 appendData:v17];
        goto LABEL_21;
      }

      v10 = sub_1003DACD4(*(a1 + 24));
      switch(v10)
      {
        case 2:
          v19 = KmlLogger();
          if (sub_100367508(v19))
          {
            *v31 = 136315394;
            sub_100367444();
            v12 = sub_100367378();
            v16 = "%s : %i : OSP required for this share";
LABEL_18:
            _os_log_impl(v12, v13, v14, v16, v15, 0x12u);
          }

LABEL_19:

          break;
        case 1:
          v18 = KmlLogger();
          if (sub_100367508(v18))
          {
            *v31 = 136315394;
            sub_100367444();
            v12 = sub_100367378();
            v16 = "%s : %i : Bring other key required for this share";
            goto LABEL_18;
          }

          goto LABEL_19;
        case 0:
          v11 = KmlLogger();
          if (sub_100367508(v11))
          {
            *v31 = 136315394;
            sub_100367444();
            v12 = sub_100367378();
            v16 = "%s : %i : No second factor required for this share";
            goto LABEL_18;
          }

          goto LABEL_19;
      }

      v17 = [KmlTlv TLVWithTag:215 unsignedChar:sub_1003DACD4(*(a1 + 24))];
      v20 = [v17 asData];
      [v3 appendData:v20];

LABEL_21:
    }

    v6 = [v4 countByEnumeratingWithState:&v27 objects:v33 count:16];
  }

  while (v6);
LABEL_23:

  objc_storeStrong(location, v3);
  v21 = KmlLogger();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
  {
    v22 = *location;
    v23 = kmlUtilHexStringFromData();
    *v31 = 136315650;
    sub_100367444();
    *&v31[7] = 1102;
    v31[9] = 2112;
    v32 = v24;
    sub_100367454(&_mh_execute_header, v21, v25, "%s : %i : Rebuilt V3 Entitlements: %@", v31);
  }
}

id sub_1003B55A0(uint64_t a1)
{
  if (!a1 || !+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 192) agreedKmlSharingVersion], 768))
  {
    v22 = 0;
    goto LABEL_16;
  }

  v2 = KmlLogger();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 216);
    v4 = [v3 UTF8String];

    v77 = 136315650;
    v78 = "[KmlOwnerSharingSession getAttestationPackageList]";
    sub_1003674B0();
    v80 = 937;
    sub_100367520();
    v82 = v4;
    sub_100367454(&_mh_execute_header, v2, v5, "%s : %i : %s : Let's check for additional attestation packages to send", &v77);
  }

  v6 = [KmlMailboxMappingData alloc];
  v7 = [*(a1 + 104) mailboxMapping];
  v8 = [v6 initWithData:v7 preferredVersion:{objc_msgSend(*(a1 + 192), "agreedKmlSharingVersion")}];

  [v8 mailboxEndOffset];
  [v8 signalingBitmapOffset];
  v9 = [*(a1 + 104) publicKeyIdentifier];
  v10 = kmlUtilHexStringFromData();

  [v8 signalingBitmapOffset];
  v75 = 0;
  v11 = SESEndPointGetPrivateData();
  v12 = 0;
  if (v12)
  {
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 216);
      v15 = [v14 UTF8String];

      v77 = 136315906;
      v78 = "[KmlOwnerSharingSession getAttestationPackageList]";
      sub_1003674B0();
      v80 = 950;
      sub_100367520();
      v82 = v15;
      v83 = 2112;
      *v84 = v12;
      sub_10036752C();
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 38;
LABEL_13:
      _os_log_impl(v16, v17, v20, v18, v19, v21);
    }
  }

  else
  {
    kmlUtilLogLargeData();
    v23 = *[v11 bytes];
    if ([v8 isKeyAttestationSetByDeviceInSignalingBitmap:v23] && objc_msgSend(*(a1 + 168), "maxOfflineAttestationCount") > 1)
    {
      v29 = [*(a1 + 168) maxOfflineAttestationCount];
      v30 = [v8 attestationPackageLength] * v29;
      v31 = [v8 mailboxEndOffset];
      if ((v31 - [v8 keyAttestationStartOffset]) >= v30)
      {
        v64 = v10;
        *(a1 + 97) = 0;
        v22 = +[NSMutableData data];
        v39 = [v8 keyAttestationStartOffset];
        v40 = [v8 signalingBitmapOffset];
        v65 = v8;
        v68 = [v8 attestationPackageLength];
        if ([*(a1 + 168) maxOfflineAttestationCount] >= 2)
        {
          v41 = 0;
          v67 = v39 - v40;
          v66 = v11;
          while (1)
          {
            v42 = [v11 subdataWithRange:{(v67 + v41 * v68), v68}];
            v43 = [KmlTlv TLVsWithData:v42];
            v71 = 0u;
            v72 = 0u;
            v73 = 0u;
            v74 = 0u;
            v44 = v43;
            v45 = [v44 countByEnumeratingWithState:&v71 objects:v76 count:16];
            if (!v45)
            {
              break;
            }

            v46 = v45;
            v69 = v42;
            v47 = 0;
            v48 = *v72;
            v70 = v41;
            v49 = v41 + 48;
            do
            {
              for (i = 0; i != v46; i = i + 1)
              {
                if (*v72 != v48)
                {
                  objc_enumerationMutation(v44);
                }

                v51 = *(*(&v71 + 1) + 8 * i);
                if ([v51 tag] == 32565)
                {
                  v52 = [v51 asData];
                  v53 = [KmlTlv TLVWithTag:v49 value:v52];

                  v54 = [v53 asData];
                  [v22 appendData:v54];

                  ++*(a1 + 97);
                  v47 = 1;
                }
              }

              v46 = [v44 countByEnumeratingWithState:&v71 objects:v76 count:16];
            }

            while (v46);

            v11 = v66;
            if (v47)
            {
              v41 = v70 + 1;
              if (([*(a1 + 168) maxOfflineAttestationCount] - 1) > (v70 + 1))
              {
                continue;
              }
            }

            goto LABEL_38;
          }
        }

LABEL_38:
        v13 = KmlLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v55 = *(a1 + 216);
          v56 = [v55 UTF8String];
          v57 = *(a1 + 97);

          v77 = 136315906;
          v78 = "[KmlOwnerSharingSession getAttestationPackageList]";
          sub_1003674B0();
          *(v58 + 14) = 996;
          v81 = 2080;
          *(v58 + 20) = v56;
          v83 = v59;
          *(v58 + 30) = v57;
          sub_10036752C();
          _os_log_impl(v60, v61, OS_LOG_TYPE_INFO, v62, v63, 0x22u);
        }

        v10 = v64;
        v8 = v65;
      }

      else
      {
        v13 = KmlLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          v32 = *(a1 + 216);
          v33 = [v32 UTF8String];

          LODWORD(v32) = [v8 mailboxEndOffset];
          v34 = [v8 keyAttestationStartOffset];
          v77 = 136316162;
          v78 = "[KmlOwnerSharingSession getAttestationPackageList]";
          v79 = 1024;
          v80 = 964;
          v81 = 2080;
          v82 = v33;
          v83 = 1024;
          *v84 = v30;
          *&v84[4] = 1024;
          *&v84[6] = v32 - v34;
          sub_10036752C();
          _os_log_impl(v35, v36, OS_LOG_TYPE_ERROR, v37, v38, 0x28u);
        }

        v22 = 0;
      }

      v12 = 0;
      goto LABEL_15;
    }

    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v24 = *(a1 + 216);
      v25 = [v24 UTF8String];
      v26 = [*(a1 + 168) maxOfflineAttestationCount];

      v77 = 136316162;
      v78 = "[KmlOwnerSharingSession getAttestationPackageList]";
      sub_1003674B0();
      v80 = 958;
      v81 = 2080;
      v82 = v25;
      v83 = v27;
      *v84 = v23;
      *&v84[4] = v27;
      *&v84[6] = v26;
      sub_10036752C();
      v20 = OS_LOG_TYPE_INFO;
      v21 = 40;
      goto LABEL_13;
    }
  }

  v22 = 0;
LABEL_15:

LABEL_16:

  return v22;
}

id sub_1003B5C88(id *a1)
{
  v3 = a1;
  if (a1)
  {
    if ([a1[21] isFriendImmoTokenOrSlotOnline])
    {
      v4 = KmlLogger();
      if (sub_100057AEC(v4))
      {
        v5 = *(v3 + 216);
        [v5 UTF8String];

        v19[0] = 136315650;
        sub_1003672C0();
        sub_10036728C();
        sub_100367358();
        _os_log_impl(v6, v7, v8, v9, v10, 0x1Cu);
      }

      v3 = 0;
LABEL_10:

      goto LABEL_11;
    }

    v11 = sub_100388B10();
    v12 = *(v3 + 104);
    sub_1003DAC80(*(v3 + 24));
    v13 = sub_100367538();
    v15 = sub_100388EEC(v13, v12, v14);

    if (v15)
    {
      v16 = KmlLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = *(v3 + 216);
        v2 = [v17 UTF8String];

        v19[0] = 136315906;
        sub_1003672C0();
        sub_1003672B0();
        sub_100367418();
        v20 = v15;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "%s : %i : %s : Error while setting signaling bitmap %@", v19, 0x26u);
      }

      v1 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      [v15 userInfo];
      objc_claimAutoreleasedReturnValue();
      v3 = [sub_10036746C() errorWithDomain:v1 code:204 userInfo:v2];

      goto LABEL_10;
    }

    v3 = 0;
  }

LABEL_11:

  return v3;
}

id *sub_1003B5E9C(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 25, a2);
  }

  return result;
}

id *sub_1003B5EAC(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 26, a2);
  }

  return result;
}

uint64_t sub_1003B5EBC(uint64_t result)
{
  if (result)
  {
    return *(result + 224);
  }

  return result;
}

void sub_1003B5EC8(void *a1, char *newValue)
{
  if (a1)
  {
    objc_setProperty_atomic(a1, newValue, newValue, 8);
  }
}

id *sub_1003B5EDC(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    v18.receiver = a1;
    v18.super_class = KmlKeyDataTransmitter;
    v14 = objc_msgSendSuper2(&v18, "init");
    a1 = v14;
    if (v14)
    {
      objc_storeStrong(v14 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
      objc_storeStrong(a1 + 4, a5);
      v15 = +[NSMutableData data];
      v16 = a1[5];
      a1[5] = v15;

      *(a1 + 12) = 0;
    }
  }

  return a1;
}

id sub_1003B5FE0(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  if (!a1)
  {
    goto LABEL_17;
  }

  if (![*(a1 + 40) length])
  {
    v11 = sub_1003C8F2C(v6);
    v12 = KmlLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v56 = "[KmlKeyDataTransmitter handleGetDataCommand:error:]";
      v57 = 1024;
      v58 = 65;
      v59 = 1024;
      LODWORD(v60) = v11;
      sub_10036BEE4();
      _os_log_impl(v13, v14, v15, v16, v17, 0x18u);
    }

    v18 = KmlLogger();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
    if (v11 == 211)
    {
      if (v19)
      {
        sub_10036BED0();
        v58 = 80;
        sub_10036BEE4();
        _os_log_impl(v34, v35, v36, v37, v38, 0x12u);
      }

      v39 = *(a1 + 40);
      v40 = [*(a1 + 32) dataUsingEncoding:4];
      v41 = [KmlTlv TLVWithTag:211 value:v40];
      v42 = [v41 asData];
      [v39 appendData:v42];
    }

    else
    {
      switch(v11)
      {
        case 32548:
          if (v19)
          {
            sub_10036BED0();
            v58 = 76;
            sub_10036BEE4();
            _os_log_impl(v43, v44, v45, v46, v47, 0x12u);
          }

          v32 = *(a1 + 40);
          v33 = *(a1 + 24);
          break;
        case 32546:
          if (v19)
          {
            sub_10036BED0();
            v58 = 72;
            sub_10036BEE4();
            _os_log_impl(v27, v28, v29, v30, v31, 0x12u);
          }

          v32 = *(a1 + 40);
          v33 = *(a1 + 16);
          break;
        case 32544:
          if (v19)
          {
            sub_10036BED0();
            v58 = 68;
            sub_10036BEE4();
            _os_log_impl(v48, v49, v50, v51, v52, 0x12u);
          }

          v32 = *(a1 + 40);
          v33 = *(a1 + 8);
          break;
        default:
          if (v19)
          {
            sub_10036BED0();
            v58 = 84;
            sub_10036BEE4();
            _os_log_impl(v20, v21, v22, v23, v24, 0x12u);
          }

          v25 = sub_10037814C(KmlApduResponse, 34922, 0);
          goto LABEL_16;
      }

      [v32 appendData:v33];
    }

    v25 = sub_1003B6460(a1);
LABEL_16:
    a1 = v25;
    goto LABEL_17;
  }

  v7 = KmlLogger();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = sub_1003C8DD8(v6);
    *buf = 136315650;
    v56 = "[KmlKeyDataTransmitter handleGetDataCommand:error:]";
    v57 = 1024;
    v58 = 55;
    v59 = 2112;
    v60 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : KeyDataTransmitter: Received GET_DATA (%@) while we are expecting GET_RESPONSE", buf, 0x1Cu);
  }

  a1 = sub_10037814C(KmlApduResponse, 34153, 0);
  if (a3)
  {
    v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v10 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
    v54 = v10;
    [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    objc_claimAutoreleasedReturnValue();
    *a3 = [sub_10036BEF4() errorWithDomain:? code:? userInfo:?];
  }

LABEL_17:

  return a1;
}

int *sub_1003B6460(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = 239 * *(a1 + 12);
    if ([a1[5] length] <= v2)
    {
      v1 = sub_10037814C(KmlApduResponse, 144, 0);
    }

    else
    {
      v3 = 239 * *(v1 + 12) + 239;
      v4 = [v1[5] length];
      v5 = v1[5];
      if (v4 <= v3)
      {
        [v5 length];
        v13 = 239 * *(v1 + 12);
        v14 = [v1[5] subdataWithRange:?];
        v7 = [v14 copy];

        [v1[5] setLength:0];
        *(v1 + 12) = 0;
        v12 = 144;
      }

      else
      {
        v6 = [v5 subdataWithRange:{239 * *(v1 + 12), 239}];
        v7 = [v6 copy];

        v8 = *(v1 + 12);
        *(v1 + 12) = v8 + 1;
        v9 = 24832;
        if ([v1[5] length] < 239 * v8 + 478)
        {
          v10 = [v1[5] length];
          v11 = 17 * *(v1 + 12) + v10;
          v9 = (17 * *(v1 + 48) + v10) | 0x6100;
        }

        v12 = __rev16(v9);
      }

      v1 = sub_1003781BC(KmlApduResponse, v12, v7);
    }
  }

  return v1;
}

id *sub_1003B65D4(id *a1, void *a2, void *a3)
{
  v6 = a2;
  if (a1)
  {
    if ([a1[5] length])
    {
      a1 = sub_1003B6460(a1);
    }

    else
    {
      v7 = KmlLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        sub_10036BED0();
        v18 = 96;
        sub_10036BEE4();
        _os_log_impl(v8, v9, v10, v11, v12, 0x12u);
      }

      a1 = sub_10037814C(KmlApduResponse, 34153, 0);
      if (a3)
      {
        v13 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v14 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
        v17 = v14;
        [NSDictionary dictionaryWithObjects:&v17 forKeys:&v16 count:1];
        objc_claimAutoreleasedReturnValue();
        *a3 = [sub_10036BEF4() errorWithDomain:? code:? userInfo:?];
      }
    }
  }

  return a1;
}

void **sub_1003B6790(void **a1, void *a2, void *a3, NSObject *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = KmlDataExchangeManager;
    a1 = objc_msgSendSuper2(&v26, "init");
    if (a1)
    {
      v12 = KmlLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        sub_10036DC9C();
        v28 = 95;
        sub_10036DC0C(&_mh_execute_header, v12, v13, "%s : %i : let's init", v27);
      }

      a1[1] = 0;
      a1[2] = 0;
      if (v10)
      {
        v14 = [v10 copy];
      }

      else
      {
        v14 = 0;
      }

      v15 = a1[4];
      a1[4] = v14;

      a1[5] = 0;
      objc_storeWeak(a1 + 14, v9);
      v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v17 = dispatch_queue_create("com.apple.sesd.kml.dxmanager", v16);
      v18 = a1[8];
      a1[8] = v17;

      v19 = sub_1003D8E40([KmlSecureChannel alloc], 0);
      v20 = a1[3];
      a1[3] = v19;

      objc_storeStrong(a1 + 10, a5);
      v21 = sub_1003C9114([KmlCommandHandler alloc], a1[3], a1[4], a4, a1[10]);
      v22 = a1[9];
      a1[9] = v21;

      a1[18] = a4;
      *(a1 + 96) = -1;
      a1[13] = 0xFFFF;
      v23 = KmlLogger();
      if (sub_10036DC64(v23))
      {
        sub_10036DC9C();
        v28 = 115;
        sub_10036DC0C(&_mh_execute_header, a4, v24, "%s : %i : ready to roll", v27);
      }
    }
  }

  return a1;
}

void sub_1003B69C4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 64);
    sub_1003673C4();
    v5[1] = 3221225472;
    v5[2] = sub_10036BF20;
    v5[3] = &unk_1004C2B00;
    v5[4] = v2;
    v5[5] = v3;
    dispatch_async(v4, v5);
  }
}

void sub_1003B6A28(uint64_t a1, id WeakRetained)
{
  if (a1)
  {
    v5 = KmlLogger();
    if (sub_10036DCF8(v5))
    {
      v6 = *(a1 + 8);
      sub_10036DBDC();
      v115 = 136;
      v116 = 2048;
      v117 = v7;
      v118 = 2048;
      v119 = WeakRetained;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Current state %ld, new state %ld", buf, 0x26u);
    }

    v8 = *(a1 + 8);
    *(a1 + 8) = WeakRetained;
    *(a1 + 16) = v8;
    switch(WeakRetained)
    {
      case 1uLL:
        v9 = *(a1 + 144);
        if (v9 >= 2)
        {
          if (v9 != 2)
          {
            goto LABEL_58;
          }

          v10 = sub_100379110(KmlPairingTransportFactory, a1);
        }

        else
        {
          v10 = sub_1003790B0(KmlPairingTransportFactory, a1);
        }

        v98 = *(a1 + 88);
        *(a1 + 88) = v10;

LABEL_58:
        [*(a1 + 88) startSession];
        break;
      case 2uLL:
        v45 = KmlLogger();
        if (!sub_100057AEC(v45))
        {
          goto LABEL_41;
        }

        sub_10036DB64();
        v115 = 159;
        goto LABEL_40;
      case 3uLL:
        v37 = KmlLogger();
        if (!sub_100057AEC(v37))
        {
          goto LABEL_41;
        }

        sub_10036DB64();
        v115 = 164;
        goto LABEL_40;
      case 4uLL:
        v38 = KmlLogger();
        if (!sub_100057AEC(v38))
        {
          goto LABEL_41;
        }

        sub_10036DB64();
        v115 = 169;
        goto LABEL_40;
      case 5uLL:
        WeakRetained = objc_loadWeakRetained((a1 + 112));
        [WeakRetained handlePairingDidStart];

        v18 = KmlLogger();
        if (sub_100057AEC(v18))
        {
          sub_10036DB64();
          v115 = 177;
          sub_1003672D0();
          _os_log_impl(v19, v20, v21, v22, v23, 0x12u);
        }

        sub_1003D8EDC(*(a1 + 24));
        v24 = sub_1003BA3DC(*(a1 + 24));
        v25 = *(a1 + 120);
        *(a1 + 120) = v24;

        v26 = sub_1003C7D1C(*(a1 + 24));
        v27 = *(a1 + 128);
        *(a1 + 128) = v26;

        v28 = sub_1003BFE98(*(a1 + 24));
        v29 = *(a1 + 136);
        *(a1 + 136) = v28;

        v30 = KmlLogger();
        if (!sub_100057AEC(v30))
        {
          goto LABEL_41;
        }

        sub_10036DB64();
        v115 = 183;
        goto LABEL_40;
      case 6uLL:
        v48 = KmlLogger();
        if (sub_100057AEC(v48))
        {
          sub_10036DB64();
          v115 = 188;
          sub_1003672D0();
          _os_log_impl(v49, v50, v51, v52, v53, 0x12u);
        }

        [*(a1 + 88) readApdu];
        [*(a1 + 88) pauseSession];
        return;
      case 7uLL:
        v54 = KmlLogger();
        if (sub_100057AEC(v54))
        {
          sub_10036DB64();
          v115 = 194;
          sub_1003672D0();
          _os_log_impl(v55, v56, v57, v58, v59, 0x12u);
        }

        v17 = objc_loadWeakRetained((a1 + 112));
        [v17 handleRemoteConfigurationReceived];
        goto LABEL_45;
      case 8uLL:
        v39 = KmlLogger();
        if (sub_100057AEC(v39))
        {
          sub_10036DB64();
          v115 = 199;
          sub_1003672D0();
          _os_log_impl(v40, v41, v42, v43, v44, 0x12u);
        }

        [*(a1 + 88) resumeSessionWithTimeout];
        return;
      case 9uLL:
        v66 = KmlLogger();
        if (!sub_100057AEC(v66))
        {
          goto LABEL_41;
        }

        sub_10036DB64();
        v115 = 204;
        goto LABEL_40;
      case 0xAuLL:
        v31 = KmlLogger();
        if (sub_100057AEC(v31))
        {
          sub_10036DB64();
          v115 = 209;
          sub_1003672D0();
          _os_log_impl(v32, v33, v34, v35, v36, 0x12u);
        }

        [*(a1 + 88) readApdu];
        [*(a1 + 88) endSession];
        return;
      case 0xBuLL:
        v60 = KmlLogger();
        if (sub_100057AEC(v60))
        {
          sub_10036DB64();
          v115 = 215;
          sub_1003672D0();
          _os_log_impl(v61, v62, v63, v64, v65, 0x12u);
        }

        v17 = objc_loadWeakRetained((a1 + 112));
        [v17 handleKeysExchangeDoneWaitForMailboxes];
        goto LABEL_45;
      case 0xCuLL:
        v11 = KmlLogger();
        if (sub_100057AEC(v11))
        {
          sub_10036DB64();
          v115 = 221;
          sub_1003672D0();
          _os_log_impl(v12, v13, v14, v15, v16, 0x12u);
        }

        v17 = objc_loadWeakRetained((a1 + 112));
        [v17 handleMailboxConfigurationDone];
        goto LABEL_45;
      case 0xDuLL:
        v99 = KmlLogger();
        if (sub_100057AEC(v99))
        {
          sub_10036DB64();
          v115 = 226;
          sub_1003672D0();
          _os_log_impl(v100, v101, v102, v103, v104, 0x12u);
        }

        [*(a1 + 88) reset];
        v105 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v112 = NSLocalizedDescriptionKey;
        v106 = [NSString stringWithUTF8String:KmlErrorString()];
        v113 = v106;
        v107 = [NSDictionary dictionaryWithObjects:&v113 forKeys:&v112 count:1];
        v108 = [NSError errorWithDomain:v105 code:8 userInfo:v107];
        v109 = *(a1 + 48);
        *(a1 + 48) = v108;

        sub_1003B69C4(a1, 14);
        return;
      case 0xEuLL:
        v83 = KmlLogger();
        if (sub_100057AEC(v83))
        {
          if (*(a1 + 48))
          {
            v84 = *(a1 + 48);
          }

          sub_10036DBDC();
          sub_10036DCB0();
          sub_1003672D0();
          _os_log_impl(v85, v86, v87, v88, v89, 0x1Cu);
        }

        v90 = objc_loadWeakRetained((a1 + 112));
        [v90 handleFirstPostPairingTransactionEndResult:*(a1 + 48)];

        [*(a1 + 88) reset];
        return;
      case 0xFuLL:
        [*(a1 + 88) reset];
        v47 = objc_loadWeakRetained((a1 + 112));
        [v47 handleProbingCompletionWithBrandCode:*(a1 + 104) error:*(a1 + 48)];
        goto LABEL_54;
      case 0x10uLL:
        v46 = KmlLogger();
        if (!sub_100057AEC(v46))
        {
          goto LABEL_41;
        }

        sub_10036DB64();
        v115 = 244;
LABEL_40:
        sub_1003672D0();
        _os_log_impl(v67, v68, v69, v70, v71, 0x12u);
LABEL_41:

        [*(a1 + 88) readApdu];
        return;
      case 0x11uLL:
        v91 = KmlLogger();
        if (sub_100057AEC(v91))
        {
          v92 = *(a1 + 48);
          sub_10036DBDC();
          sub_10036DCB0();
          sub_1003672D0();
          _os_log_impl(v93, v94, v95, v96, v97, 0x1Cu);
        }

        [*(a1 + 88) pairingEndedWithResult:*(a1 + 48)];
        [*(a1 + 88) reset];
        v47 = objc_loadWeakRetained((a1 + 112));
        [v47 handlePairingTransportSessionFailedWithError:*(a1 + 48)];
LABEL_54:

        return;
      case 0x12uLL:
        v72 = KmlLogger();
        if (sub_100057AEC(v72))
        {
          sub_10036DB64();
          v115 = 256;
          sub_1003672D0();
          _os_log_impl(v73, v74, v75, v76, v77, 0x12u);
        }

        v78 = *(a1 + 88);
        v79 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v80 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
        v111 = v80;
        v81 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
        v82 = [NSError errorWithDomain:v79 code:1 userInfo:v81];
        [v78 pairingEndedWithResult:v82];

        [*(a1 + 88) reset];
        v17 = objc_loadWeakRetained((a1 + 112));
        [v17 handleOwnerPairingCancellationWithResult:1];
LABEL_45:

        return;
      default:
        return;
    }
  }
}

uint64_t sub_1003B72D4(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 64));
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v2 = *(v1 + 64);
    sub_10036DBBC();
    v14 = 3221225472;
    v15 = sub_10036C068;
    v16 = &unk_1004C24F8;
    v17 = v1;
    v18 = v3;
    dispatch_sync(v4, block);
    if (*(v20 + 24) == 1)
    {
      v5 = *(v1 + 64);
      sub_100057A60();
      v9 = 3221225472;
      v10 = sub_10036DD10;
      v11 = &unk_1004C08D8;
      v12 = v1;
      dispatch_async(v6, v8);
      LOBYTE(v1) = *(v20 + 24);
    }

    else
    {
      LOBYTE(v1) = 0;
    }

    _Block_object_dispose(&v19, 8);
  }

  return v1 & 1;
}

void sub_1003B73CC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a1)
  {
    v13 = *(a1 + 64);
    sub_100057A60();
    v15 = 3221225472;
    v16 = sub_10036C084;
    v17 = &unk_1004C2780;
    v18 = a1;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    v22 = v12;
    dispatch_async(v13, block);
  }
}

void sub_1003B74C4(uint64_t a1)
{
  if (a1)
  {
    sub_10036DB40(a1);
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_10036C158, &unk_1004C08D8, v6);
  }
}

void sub_1003B7514(uint64_t a1)
{
  if (a1)
  {
    sub_10036DB40(a1);
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_10036C27C, &unk_1004C08D8, v6);
  }
}

void sub_1003B7564(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    *(a1 + 40) = a2;
    if (a2 == 7)
    {
      v4 = KmlLogger();
      if (sub_100057AEC(v4))
      {
        sub_10036DB8C();
        v8 = 457;
        sub_10036DBA0(&_mh_execute_header, v5, v6, "%s : %i : Reporting key creation error in get data, needs transport session established.", v7);
      }

      sub_1003B69C4(a1);
    }

    else
    {

      sub_1003B69C4(a1);
    }
  }
}

id *sub_1003B765C(id *a1)
{
  if (a1)
  {
    a1 = a1[7];
    v1 = vars8;
  }

  return a1;
}

id *sub_1003B768C(id *a1)
{
  if (a1)
  {
    a1 = [a1[11] getSecureElementSession];
    v1 = vars8;
  }

  return a1;
}

void sub_1003B76C0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 64);
    sub_1000167BC();
    v5[1] = 3221225472;
    v5[2] = sub_10036C48C;
    v5[3] = &unk_1004C22F0;
    v5[4] = a1;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

uint64_t sub_1003B7750(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 64));
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 1;
    v4 = *(a1 + 64);
    sub_10036DBBC();
    v12 = 3221225472;
    v13 = sub_10036C598;
    v14 = &unk_1004C24F8;
    v15 = a1;
    v16 = v5;
    dispatch_sync(v6, block);
    if (*(v18 + 24) == 1)
    {
      v7 = *(a1 + 64);
      sub_1000167BC();
      v9[1] = 3221225472;
      v9[2] = sub_10036C670;
      v9[3] = &unk_1004C22F0;
      v9[4] = a1;
      v10 = v3;
      dispatch_async(v7, v9);

      LOBYTE(a1) = *(v18 + 24);
    }

    else
    {
      LOBYTE(a1) = 0;
    }

    _Block_object_dispose(&v17, 8);
  }

  return a1 & 1;
}

void sub_1003B7870(uint64_t a1)
{
  if (a1)
  {
    sub_10036DB40(a1);
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_10036C67C, &unk_1004C08D8, v6);
  }
}

uint64_t sub_1003B78C0(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 64));
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 1;
    v2 = *(v1 + 64);
    sub_1003673C4();
    v6[1] = 3221225472;
    v6[2] = sub_10036C780;
    v6[3] = &unk_1004C24F8;
    v6[4] = v1;
    v6[5] = v3;
    dispatch_sync(v4, v6);
    if (*(v8 + 24) == 1)
    {
      sub_1003B69C4(v1);
      LOBYTE(v1) = *(v8 + 24);
    }

    else
    {
      LOBYTE(v1) = 0;
    }

    _Block_object_dispose(&v7, 8);
  }

  return v1 & 1;
}

void sub_1003B7988(uint64_t a1)
{
  if (a1)
  {
    sub_10036DB40(a1);
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_10036DD54, &unk_1004C08D8, v6);
  }
}

void sub_1003B79D8(uint64_t a1)
{
  if (a1)
  {
    sub_10036DB40(a1);
    sub_10036DC58();
    sub_10036DBF0(v1, v2, v3, v4, v5, sub_10036C7A4, &unk_1004C08D8, v6);
  }
}

void sub_1003B7A28(uint64_t a1, void *a2, char a3, void *a4)
{
  v7 = a2;
  v8 = a4;
  if (a1)
  {
    v9 = *(a1 + 64);
    sub_1000167BC();
    v10[1] = 3221225472;
    v10[2] = sub_10036C7B0;
    v10[3] = &unk_1004D1AD8;
    v14 = a3;
    v11 = v7;
    v12 = a1;
    v13 = v8;
    dispatch_async(v9, v10);
  }
}

uint64_t sub_1003B7AE4(uint64_t result)
{
  if (result)
  {
    return (*(result + 16) << 16) | (*(result + 96) << 8) | [*(result + 88) stepForAnalytics];
  }

  return result;
}

void sub_1003B7B2C(uint64_t a1, void *a2)
{
  v5 = a2;
  v6 = v5;
  if (a1)
  {
    v41 = 1;
    if (v5)
    {
      v7 = [KmlApduRequest alloc];
      v8 = [v6 bytes];
      v9 = [v6 length];
      v10 = *(a1 + 24);
      v40 = 0;
      v2 = sub_1003C8714(&v7->super.isa, v8, v9, v10, &v40);
      v11 = v40;
      if (sub_1003C90F0(v2))
      {
        v3 = CertificationLogging;
        v12 = sub_1003AF3D8(v2);
        v13 = sub_1003BA3C4(v2);
        [CertificationLogging logEncryptedAPDU:v12 decrypted:v13];
      }

      v14 = KmlLogger();
      if (sub_10036DC64(v14))
      {
        v15 = sub_1003C8DD8(v2);
        sub_10036DCC4();
        v45 = 479;
        v46 = 2112;
        v47 = v16;
        sub_10036DC24();
        _os_log_impl(v17, v18, v19, v20, v21, 0x1Cu);
      }

      if (v11)
      {
        v22 = KmlLogger();
        if (sub_10036DC64(v22))
        {
          [v11 code];
          sub_10036DCC4();
          v45 = 482;
          v46 = 2048;
          v47 = v23;
          sub_10036DC24();
          _os_log_impl(v24, v25, v26, v27, v28, 0x1Cu);
        }

        v29 = sub_10037814C(KmlApduResponse, bswap32([v11 code]) >> 16, 0);
      }

      else
      {
        if (*(a1 + 40))
        {
          v39[1] = 0;
          v29 = sub_1003B7E58(a1, v2, &v41);
          v38 = 0;
        }

        else
        {
          v39[0] = 0;
          v29 = sub_1003B810C(a1, v2, &v41, v39);
          v38 = v39[0];
        }

        v11 = v38;
      }

      if (sub_1003C8DA4(v2))
      {
        v30 = *(a1 + 24);
      }

      else
      {
        v30 = 0;
      }

      v37 = sub_1003C78C8(v29, v30);
      [*(a1 + 88) sendApdu:v37];
      if (v41 == 1)
      {
        [*(a1 + 88) readApdu];
      }
    }

    else
    {
      v31 = KmlLogger();
      if (sub_100057AEC(v31))
      {
        v42 = 136315394;
        v43 = "[KmlDataExchangeManager handleReceivedAPDU:]";
        v44 = 1024;
        v45 = 470;
        sub_1003672D0();
        _os_log_impl(v32, v33, v34, v35, v36, 0x12u);
      }
    }
  }
}

id sub_1003B7E58(uint64_t a1, void *a2, NSObject *a3)
{
  v6 = a2;
  if (a1)
  {
    switch(*(a1 + 40))
    {
      case 0:
        v21 = KmlLogger();
        if (!sub_10036DCF8(v21))
        {
          goto LABEL_6;
        }

        sub_10036DB78();
        v30 = 577;
        v9 = "%s : %i : Strangely not expecting a command to communicate error";
        goto LABEL_5;
      case 1:
      case 2:
      case 3:
      case 4:
      case 6:
      case 8:
        v7 = KmlLogger();
        if (sub_10036DCF8(v7))
        {
          sub_10036DB78();
          v30 = 605;
          v9 = "%s : %i : We should never expect one of these commands when waiting for reporting error.";
LABEL_5:
          sub_10036DC0C(&_mh_execute_header, a3, v8, v9, v29);
        }

LABEL_6:

        goto LABEL_7;
      case 5:
        v15 = KmlLogger();
        if (sub_10036DC64(v15))
        {
          sub_10036DB78();
          v30 = 592;
          sub_10036DC0C(&_mh_execute_header, v3, v16, "%s : %i : Expecting OpControlFlow", v29);
        }

        if (!sub_1003C8D2C(v6))
        {
          goto LABEL_7;
        }

        v17 = sub_10036DC7C();
        v12 = sub_1003B810C(v17, v18, v19, v20);
        LOBYTE(a3->isa) = 0;
        goto LABEL_26;
      case 7:
        v22 = KmlLogger();
        if (sub_10036DC64(v22))
        {
          sub_10036DB78();
          v30 = 580;
          sub_10036DC0C(&_mh_execute_header, v3, v23, "%s : %i : Expecting Select followed by Get Data", v29);
        }

        if (sub_1003C8C7C(v6))
        {
          sub_1003C922C(*(a1 + 72));
          v24 = sub_10036DC7C();
          v12 = sub_1003B810C(v24, v25, v26, v27);
          if (v12)
          {
            break;
          }

          goto LABEL_7;
        }

        if (!sub_1003C8CC0(v6))
        {
          goto LABEL_7;
        }

        v12 = sub_10037814C(KmlApduResponse, 100, 0);
LABEL_26:
        v28 = sub_10036DC90();
        sub_1003B69C4(v28);
        if (!v12)
        {
LABEL_7:
          v10 = KmlLogger();
          if (sub_10036DCF8(v10))
          {
            sub_10036DB78();
            v30 = 610;
            sub_10036DC0C(&_mh_execute_header, a3, v11, "%s : %i : Did not receive expected command", v29);
          }

          v12 = sub_10037814C(KmlApduResponse, 34153, 0);
          v13 = sub_10036DC90();
          sub_1003B69C4(v13);
          break;
        }

        break;
      default:
        goto LABEL_7;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_1003B810C(uint64_t a1, void *a2, _BYTE *a3, id *a4)
{
  if (!a1)
  {
    v8 = 0;
    goto LABEL_7;
  }

  v8 = sub_1003C9978(*(a1 + 72), a2, a4);
  if (*a4)
  {
    if (*(a1 + 8) == 4)
    {
      v13 = KmlLogger();
      if (sub_10036DC64(v13))
      {
        v14 = *a4;
        v43 = 136315650;
        v44 = "[KmlDataExchangeManager handleIncomingCommand:continueReading:error:]";
        v45 = 1024;
        v46 = 507;
        v47 = 2112;
        v48 = v14;
        sub_10036DC24();
        _os_log_impl(v15, v16, v17, v18, v19, 0x1Cu);
      }

      objc_storeStrong((a1 + 48), *a4);
      if (sub_1003BA3DC(*(a1 + 72)) != 5 || sub_1003C7D1C(*(a1 + 72)) != 3)
      {
        *a3 = 1;
        *(a1 + 40) = 5;
        v28 = a1;
        goto LABEL_36;
      }

      *(a1 + 96) = sub_1003CC8AC(*(a1 + 72));
    }

    else
    {
      objc_storeStrong((a1 + 48), *a4);
      v20 = KmlLogger();
      if (sub_10036DC64(v20))
      {
        v21 = sub_1003BA3DC(*(a1 + 72));
        [*a4 code];
        v43 = 136315906;
        sub_10036DC30();
        v46 = 520;
        v47 = 2048;
        v48 = v21;
        v49 = 2048;
        v50 = v22;
        sub_10036DC24();
        _os_log_impl(v23, v24, v25, v26, v27, 0x26u);
      }
    }

    *a3 = 0;
    v28 = sub_10036DC90();
LABEL_36:
    sub_1003B69C4(v28);
    goto LABEL_7;
  }

  switch(sub_1003BA3DC(*(a1 + 72)))
  {
    case 0:
    case 4:
    case 7:
    case 8:
      v9 = KmlLogger();
      if (sub_100057AEC(v9))
      {
        v43 = 136315394;
        sub_10036DC30();
        v46 = 564;
        sub_10036DBA0(&_mh_execute_header, v10, v11, "%s : %i : No state change needed.", &v43);
      }

      break;
    case 1:
      v28 = a1;
      goto LABEL_36;
    case 2:
      if (!*(a1 + 32))
      {
        *(a1 + 104) = sub_1003C7D34(*(a1 + 72));
        *a3 = 0;
      }

      v28 = a1;
      goto LABEL_36;
    case 3:
      v28 = a1;
      goto LABEL_36;
    case 5:
    case 6:
      if (sub_1003C7D1C(*(a1 + 72)) == 2)
      {
        if (*(a1 + 8) == 9)
        {
          v29 = sub_1003CC848(*(a1 + 72));
          v30 = *(a1 + 56);
          *(a1 + 56) = v29;

          v28 = a1;
          goto LABEL_36;
        }

        v31 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v32 = [NSString stringWithUTF8String:KmlErrorString(), NSLocalizedDescriptionKey];
        v42 = v32;
        v33 = [NSDictionary dictionaryWithObjects:&v42 forKeys:&v41 count:1];
        v34 = [NSError errorWithDomain:v31 code:14 userInfo:v33];
        v35 = *(a1 + 48);
        *(a1 + 48) = v34;

        v36 = sub_10036DC90();
        sub_1003B69C4(v36);
        v37 = KmlLogger();
        if (sub_100057AEC(v37))
        {
          v43 = 136315394;
          sub_10036DC30();
          v46 = 538;
          sub_10036DBA0(&_mh_execute_header, v38, v39, "%s : %i : Remote Reader sent end message in wrong state. Treating it as abort, stop reading.", &v43);
        }

        *a3 = 0;
        v40 = sub_10037814C(KmlApduResponse, 32874, 0);

        v8 = v40;
      }

      else if (sub_1003C7D1C(*(a1 + 72)) == 4 && *(a1 + 8) == 5)
      {
        sub_1003B69C4(a1);
        sub_1003C922C(*(a1 + 72));
      }

      break;
    default:
      break;
  }

LABEL_7:

  return v8;
}

id *sub_1003B8584(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 14, a2);
  }

  return result;
}

uint64_t sub_1003B8594(uint64_t result)
{
  if (result)
  {
    return *(result + 120);
  }

  return result;
}

uint64_t sub_1003B85A0(uint64_t result)
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

uint64_t sub_1003B85AC(uint64_t result)
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

uint64_t sub_1003B85B8(uint64_t result)
{
  if (result)
  {
    return *(result + 144);
  }

  return result;
}

void sub_1003B85C4(uint64_t a1, void *a2, void *a3, id a4)
{
  v60 = a2;
  if (a1)
  {
    v9 = +[NSMutableArray array];
    v10 = +[NSMutableArray array];
    *(a1 + 9) = 1;
    [NSData dataWithBytes:a1 + 9 length:1];
    objc_claimAutoreleasedReturnValue();
    v11 = [sub_10036EF94() TLVWithTag:? value:?];
    sub_10036EF64(v11);

    *(a1 + 10) = 0;
    [NSData dataWithBytes:a1 + 10 length:1];
    objc_claimAutoreleasedReturnValue();
    v12 = [sub_10036EF94() TLVWithTag:? value:?];
    sub_10036EF64(v12);

    *(a1 + 8) = a3;
    v13 = [sub_10036EF80() dataWithBytes:? length:?];
    [a3 TLVWithTag:10 value:v13];
    objc_claimAutoreleasedReturnValue();
    [sub_10036EF54() addObject:?];

    v14 = [sub_10036EF80() dataWithBytes:? length:?];
    v15 = [a3 TLVWithTag:208 value:v14];
    [v10 addObject:v15];

    if ([*(a1 + 40) keyRoleToShare] != 0xFFFF)
    {
      v16 = KmlLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = [*(a1 + 40) keyRoleToShare];
        *buf = 136315650;
        v72 = "[SharingKeyConfig createKeyConfigWithFriendlyName:profile:keyRole:]";
        v73 = 1024;
        v74 = 45;
        v75 = 1024;
        LODWORD(v76) = v17;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s : %i : Over riding key role based on profile to :%02x", buf, 0x18u);
      }

      a4 = [*(a1 + 40) keyRoleToShare];
    }

    *(a1 + 12) = a4;
    v18 = [KmlTlv TLVWithTag:213 unsignedShort:a4];
    [v10 addObject:v18];

    kmlUtilTimeNow();
    objc_claimAutoreleasedReturnValue();
    [sub_10036EFA8() TLVWithTag:? value:?];
    objc_claimAutoreleasedReturnValue();
    [sub_10036EF54() addObject:?];

    v59 = v18;
    v19 = [KmlTlv TLVWithTag:81 value:v18];
    [v10 addObject:v19];

    kmlUtilInfiniteTime();
    objc_claimAutoreleasedReturnValue();
    v20 = [sub_10036EFA8() TLVWithTag:? value:?];
    sub_10036EF64(v20);

    v58 = v18;
    v21 = [KmlTlv TLVWithTag:82 value:v18];
    [v10 addObject:v21];

    objc_storeStrong((a1 + 32), a2);
    v22 = KmlLogger();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v25 = *(a1 + 32);
      *buf = 136315650;
      v72 = "[SharingKeyConfig createKeyConfigWithFriendlyName:profile:keyRole:]";
      v73 = 1024;
      v74 = 64;
      v75 = 2112;
      v76 = v25;
      sub_10036EFBC(&_mh_execute_header, v23, v24, "%s : %i : Friendly name: %@");
    }

    v26 = KmlLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [*(a1 + 32) dataUsingEncoding:4];
      *buf = 136315650;
      v72 = "[SharingKeyConfig createKeyConfigWithFriendlyName:profile:keyRole:]";
      v73 = 1024;
      v74 = 65;
      v75 = 2112;
      v76 = v27;
      sub_10036EFBC(&_mh_execute_header, v28, v29, "%s : %i : Friendly name as UTF8 encoded data: %@");
    }

    v30 = *(a1 + 32);
    if (v30)
    {
      v31 = [v30 dataUsingEncoding:4];
      v32 = [KmlTlv TLVWithTag:12 value:v31];
      [v9 addObject:v32];

      v33 = [*(a1 + 32) dataUsingEncoding:4];
      v34 = [KmlTlv TLVWithTag:211 value:v33];
      [v10 addObject:v34];
    }

    v35 = +[NSMutableData data];
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v36 = v9;
    v37 = [v36 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v66;
      do
      {
        for (i = 0; i != v38; i = i + 1)
        {
          if (*v66 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = [*(*(&v65 + 1) + 8 * i) asData];
          [v35 appendData:v41];
        }

        v38 = [v36 countByEnumeratingWithState:&v65 objects:v70 count:16];
      }

      while (v38);
    }

    v42 = [KmlTlv TLVWithTag:48 value:v35];
    v43 = [v42 asData];
    v44 = [KmlTlv TLVWithTag:32560 value:v43];
    v45 = *(a1 + 16);
    *(a1 + 16) = v44;

    v46 = +[NSMutableData data];
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v47 = v10;
    v48 = [v47 countByEnumeratingWithState:&v61 objects:v69 count:16];
    if (v48)
    {
      v49 = v48;
      v50 = *v62;
      do
      {
        for (j = 0; j != v49; j = j + 1)
        {
          if (*v62 != v50)
          {
            objc_enumerationMutation(v47);
          }

          v52 = [*(*(&v61 + 1) + 8 * j) asData];
          [v46 appendData:v52];
        }

        v49 = [v47 countByEnumeratingWithState:&v61 objects:v69 count:16];
      }

      while (v49);
    }

    v53 = objc_opt_new();
    v54 = [v53 useOldKeyConfigTag];

    if (v54)
    {
      v55 = 32526;
    }

    else
    {
      v55 = 32572;
    }

    v56 = [KmlTlv TLVWithTag:v55 value:v46];
    v57 = *(a1 + 24);
    *(a1 + 24) = v56;
  }
}

BOOL sub_1003B8C54(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = &swift_cvw_destroy_ptr;
  v5 = [KmlTlv TLVsWithData:a2];
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  v59 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v56 objects:v69 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v57;
    v2 = 32560;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v57 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v56 + 1) + 8 * i);
        if ([v10 tag] == 32560)
        {
          objc_storeStrong((a1 + 16), v10);
        }

        if ([v10 tag] == 32526 || objc_msgSend(v10, "tag") == 32572)
        {
          objc_storeStrong((a1 + 24), v10);
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v56 objects:v69 count:16];
    }

    while (v7);
  }

  v11 = *(a1 + 16);
  v12 = v11 != 0;
  if (v11)
  {
    v13 = [*(a1 + 16) value];
    v14 = [KmlTlv TLVsWithData:v13];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v52 objects:v68 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v53;
      v43 = *v53;
      do
      {
        for (j = 0; j != v17; j = j + 1)
        {
          if (*v53 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v2 = *(*(&v52 + 1) + 8 * j);
          if ([v2 tag] == 48)
          {
            v20 = v4[276];
            v21 = [v2 value];
            v22 = [v20 TLVsWithData:v21];

            v50 = 0u;
            v51 = 0u;
            v48 = 0u;
            v49 = 0u;
            v2 = v22;
            v23 = [v2 countByEnumeratingWithState:&v48 objects:v67 count:16];
            if (v23)
            {
              v24 = v23;
              v25 = *v49;
              while (2)
              {
                for (k = 0; k != v24; k = k + 1)
                {
                  if (*v49 != v25)
                  {
                    objc_enumerationMutation(v2);
                  }

                  v27 = *(*(&v48 + 1) + 8 * k);
                  if ([v27 tag] == 12)
                  {
                    v28 = [NSString alloc];
                    v29 = [v27 value];
                    v30 = [v28 initWithData:v29 encoding:4];
                    v31 = *(a1 + 32);
                    *(a1 + 32) = v30;

                    v32 = KmlLogger();
                    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                    {
                      v33 = *(a1 + 32);
                      *buf = 136315650;
                      v62 = "[SharingKeyConfig parseKeyConfigFromData:]";
                      v63 = 1024;
                      v64 = 131;
                      v65 = 2112;
                      v66 = v33;
                      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_INFO, "%s : %i : Friendly name sent by owner: %@", buf, 0x1Cu);
                    }

                    v4 = &swift_cvw_destroy_ptr;
                    goto LABEL_36;
                  }
                }

                v24 = [v2 countByEnumeratingWithState:&v48 objects:v67 count:16];
                if (v24)
                {
                  continue;
                }

                break;
              }
            }

            v4 = &swift_cvw_destroy_ptr;
            v18 = v43;
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v52 objects:v68 count:16];
      }

      while (v17);
    }

LABEL_36:

    v34 = v4[276];
    [*(a1 + 24) value];
    objc_claimAutoreleasedReturnValue();
    v35 = [sub_10036EF54() TLVsWithData:?];

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v36 = v35;
    v37 = [v36 countByEnumeratingWithState:&v44 objects:v60 count:16];
    if (v37)
    {
      v38 = v37;
      v39 = *v45;
      do
      {
        for (m = 0; m != v38; m = m + 1)
        {
          if (*v45 != v39)
          {
            objc_enumerationMutation(v36);
          }

          v41 = *(*(&v44 + 1) + 8 * m);
          if ([v41 tag] == 213)
          {
            *(a1 + 12) = [v41 valueAsUnsignedShort];
          }

          else if ([v41 tag] == 208)
          {
            *(a1 + 8) = [v41 valueAsUnsignedChar];
          }
        }

        v38 = [v36 countByEnumeratingWithState:&v44 objects:v60 count:16];
      }

      while (v38);
    }

    v12 = 1;
  }

  else
  {
    v15 = KmlLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      v62 = "[SharingKeyConfig parseKeyConfigFromData:]";
      v63 = 1024;
      v64 = 113;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : KSInvitationData: No invitation TLV found", buf, 0x12u);
    }
  }

  return v12;
}

uint64_t sub_1003B918C(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t sub_1003B9198(uint64_t result)
{
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

id *sub_1003B91A4(id *a1, uint64_t a2, void *a3, void *a4, int a5, void *a6)
{
  HIDWORD(v70) = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  if (a1)
  {
    [a1 setEpAuthResponse:a2];
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = [a1 epAuthResponse];
      v15 = [v14 endPointAttestationData];
      v16 = kmlUtilHexStringFromData();
      sub_10036F0C4();
      sub_10036F0E4();
      sub_10036F104(&_mh_execute_header, v17, v18, "%s : %i : SignedData: Auth Response Object - Attestation = %@", v19, v20, v21, v22, v69, v70, v71);
    }

    v23 = KmlLogger();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [a1 epAuthResponse];
      v25 = [v24 encryptedData];
      v26 = kmlUtilHexStringFromData();
      sub_10036F0C4();
      sub_10036F0E4();
      sub_10036F104(&_mh_execute_header, v27, v28, "%s : %i : SignedData: Auth Response Object - encryptedData = %@", v29, v30, v31, v32, v69, v70, v71);
    }

    v33 = KmlLogger();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      v34 = [a1 epAuthResponse];
      v35 = [v34 encryptionPublicKeyData];
      v36 = kmlUtilHexStringFromData();
      sub_10036F0C4();
      sub_10036F0E4();
      sub_10036F104(&_mh_execute_header, v37, v38, "%s : %i : SignedData: Auth Response Object - encryptionPublicKey = %@", v39, v40, v41, v42, v69, v70, v71);
    }

    v43 = +[NSMutableData data];
    v44 = [a1 epAuthResponse];
    v45 = [v44 endPointAttestationData];
    v46 = sub_1003B9684(a1, v45);

    [v43 appendData:v46];
    if ([v12 length] && +[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", objc_msgSend(a1[10], "agreedKmlSharingVersion"), 768))
    {
      v47 = KmlLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        sub_10036F0C4();
        v74 = 44;
        sub_10036DC0C(&_mh_execute_header, v47, v48, "%s : %i : Add additional attestation packages", &v71);
      }

      [v43 appendData:v12];
    }

    v49 = v10;
    [v43 appendData:v10];
    v50 = [a1 epAuthResponse];
    v51 = [v50 encryptedData];

    if (v51)
    {
      v52 = [a1 epAuthResponse];
      v53 = [v52 encryptedData];
      v54 = [KmlTlv TLVWithTag:74 value:v53];
      v55 = a1[2];
      a1[2] = v54;

      v56 = [a1[2] asData];
      sub_10036F154(v56);

      v57 = [a1 epAuthResponse];
      v58 = [v57 encryptionPublicKeyData];
      v59 = [KmlTlv TLVWithTag:151 value:v58];
      v60 = a1[3];
      a1[3] = v59;

      v61 = [a1[3] asData];
      sub_10036F154(v61);
    }

    v62 = v11;
    [v43 appendData:v11];
    if (HIDWORD(v70))
    {
      v63 = KmlLogger();
      if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
      {
        v71 = 136315394;
        v72 = "[SharingSignedResponse createdSignedResponseWithEndpointAuthResponse:mailboxMappingData:supportedRadiosData:mockRefreshInstanceCA:additionalAttestationPackages:]";
        v73 = 1024;
        v74 = 63;
        sub_10036DC0C(&_mh_execute_header, v63, v64, "%s : %i : Adding mock refrehs instance CA", &v71);
      }

      v65 = kmlUtilGetMockInstanceCAData();
      [v43 appendData:v65];
    }

    v66 = [KmlTlv TLVWithTag:32562 value:v43];
    v67 = a1[5];
    a1[5] = v66;

    a1 = [a1[5] asData];
  }

  else
  {
    v49 = v10;
    v62 = v11;
  }

  return a1;
}

id sub_1003B9684(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = [KmlTlv TLVsWithData:v4];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v6 = [v5 countByEnumeratingWithState:&v34 objects:v43 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v34 + 1) + 8 * i);
          v10 = [v9 tag];
          v11 = (a1 + 8);
          if (v10 != 32549)
          {
            v12 = [v9 tag];
            v11 = (a1 + 48);
            if (v12 != 158)
            {
              continue;
            }
          }

          objc_storeStrong(v11, v9);
        }

        v7 = [v5 countByEnumeratingWithState:&v34 objects:v43 count:16];
      }

      while (v7);
    }

    v13 = *(a1 + 8);
    if (v13 && *(a1 + 48))
    {
      v14 = [v13 value];
      v15 = [KmlTlv TLVsWithData:v14];
      v16 = [NSMutableArray arrayWithArray:v15];

      [v16 addObject:*(a1 + 48)];
      v17 = +[NSMutableData data];
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v18 = v16;
      v19 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v19)
      {
        v20 = v19;
        v21 = *v31;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v31 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v22 = [*(*(&v30 + 1) + 8 * i) asData];
            [v17 appendData:v22];
          }

          v20 = [v18 countByEnumeratingWithState:&v30 objects:v38 count:16];
        }

        while (v20);
      }

      v23 = [KmlTlv TLVWithTag:32549 value:v17];
      v24 = +[NSMutableData data];
      v25 = [v23 asData];
      sub_10036F154(v25);

      v26 = [*(a1 + 48) asData];
      [v24 appendData:v26];
    }

    else
    {
      v27 = KmlLogger();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v39 = 136315394;
        v40 = "[SharingSignedResponse getBackwardsCompatibleAttestationDataFrom:]";
        v41 = 1024;
        v42 = 178;
        sub_10036DC0C(&_mh_execute_header, v27, v28, "%s : %i : Attestation Data incomplete", &v39);
      }

      v24 = v4;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

uint64_t sub_1003B99F4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    return v2;
  }

  v3 = [KmlTlv TLVsWithData:a2];
  v4 = KmlLogger();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    *v177 = 136315394;
    sub_10036F170();
    *(v5 + 14) = 75;
    sub_10036DC0C(&_mh_execute_header, v4, v6, "%s : %i : Looking for signed response TLV", v177);
  }

  v175 = 0u;
  v176 = 0u;
  v173 = 0u;
  v174 = 0u;
  v7 = v3;
  v8 = [v7 countByEnumeratingWithState:&v173 objects:v181 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v174;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v174 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v173 + 1) + 8 * i);
        if ([v12 tag] == 32562)
        {
          objc_storeStrong((v2 + 40), v12);
          goto LABEL_14;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v173 objects:v181 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  if (!*(v2 + 40))
  {
    v15 = KmlLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      *v177 = 136315394;
      sub_10036F170();
      *(v160 + 14) = 84;
      sub_10036DC0C(&_mh_execute_header, v15, v161, "%s : %i : No signed response TLV found", v177);
    }

    v2 = 0;
    goto LABEL_78;
  }

  v164 = v7;
  v13 = [*(v2 + 40) value];
  v14 = [KmlTlv TLVsWithData:v13];

  v167 = +[NSMutableDictionary dictionary];
  v169 = 0u;
  v170 = 0u;
  v171 = 0u;
  v172 = 0u;
  v15 = v14;
  v16 = [v15 countByEnumeratingWithState:&v169 objects:v180 count:16];
  if (!v16)
  {
    goto LABEL_65;
  }

  v18 = v16;
  v19 = *v170;
  *&v17 = 136315394;
  v168 = v17;
  *&v17 = 136315650;
  v165 = v17;
  do
  {
    v20 = 0;
    do
    {
      if (*v170 != v19)
      {
        objc_enumerationMutation(v15);
      }

      v21 = *(*(&v169 + 1) + 8 * v20);
      if ([v21 tag] == 32549)
      {
        v95 = KmlLogger();
        v96 = sub_10036F124(v95);
        if (v96)
        {
          sub_10036F0AC(v96, v97, v98, v99, v100, v101, v102, v103, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
          sub_10036F0F8(v104);
          sub_10036F0D8();
          _os_log_impl(v105, v106, v107, "%s : %i : Found Key Attestation TLV", v108, 0x12u);
        }

        sub_1003BA1A0(v2, v21);
      }

      else
      {
        if ([v21 tag] == 74)
        {
          v22 = KmlLogger();
          v23 = sub_10036F124(v22);
          if (v23)
          {
            sub_10036F0AC(v23, v24, v25, v26, v27, v28, v29, v30, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
            sub_10036F0F8(v31);
            sub_10036F0D8();
            _os_log_impl(v32, v33, v34, "%s : %i : Found encrypted confidential mailbox TLV", v35, 0x12u);
          }

          v36 = (v2 + 16);
LABEL_37:
          objc_storeStrong(v36, v21);
          goto LABEL_38;
        }

        if ([v21 tag] == 151)
        {
          v37 = KmlLogger();
          v38 = sub_10036F124(v37);
          if (v38)
          {
            sub_10036F0AC(v38, v39, v40, v41, v42, v43, v44, v45, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
            sub_10036F0F8(v46);
            sub_10036F0D8();
            _os_log_impl(v47, v48, v49, "%s : %i : Found Owner Encryption Key TLV", v50, 0x12u);
          }

          v36 = (v2 + 24);
          goto LABEL_37;
        }

        if ([v21 tag] == 69)
        {
          v51 = KmlLogger();
          v52 = sub_10036F124(v51);
          if (v52)
          {
            sub_10036F0AC(v52, v53, v54, v55, v56, v57, v58, v59, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
            sub_10036F0F8(v60);
            sub_10036F0D8();
            _os_log_impl(v61, v62, v63, "%s : %i : Found KTS receipt TLV", v64, 0x12u);
          }

          v36 = (v2 + 32);
          goto LABEL_37;
        }

        if ([v21 tag] == 158)
        {
          v65 = KmlLogger();
          v66 = sub_10036F124(v65);
          if (v66)
          {
            sub_10036F0AC(v66, v67, v68, v69, v70, v71, v72, v73, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
            sub_10036F0F8(v74);
            sub_10036F0D8();
            _os_log_impl(v75, v76, v77, "%s : %i : Found owner Signature TLV", v78, 0x12u);
          }

          v36 = (v2 + 48);
          goto LABEL_37;
        }

        if ([v21 tag] == 32589)
        {
          v79 = KmlLogger();
          v80 = sub_10036F124(v79);
          if (v80)
          {
            sub_10036F0AC(v80, v81, v82, v83, v84, v85, v86, v87, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
            sub_10036F0F8(v88);
            sub_10036F0D8();
            _os_log_impl(v89, v90, v91, "%s : %i : Found mailbox mapping TLV", v92, 0x12u);
          }

          v93 = [v21 asData];
          v94 = *(v2 + 56);
          *(v2 + 56) = v93;
LABEL_51:

          goto LABEL_38;
        }

        if ([v21 tag] == 32585)
        {
          v109 = KmlLogger();
          v110 = sub_10036F124(v109);
          if (v110)
          {
            sub_10036F0AC(v110, v111, v112, v113, v114, v115, v116, v117, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
            sub_10036F0F8(v118);
            sub_10036F0D8();
            _os_log_impl(v119, v120, v121, "%s : %i : Found SupportedRadios TLV", v122, 0x12u);
          }

          v123 = [v21 value];
          v94 = *(v2 + 64);
          *(v2 + 64) = v123;
          goto LABEL_51;
        }

        if ([v21 tag] == 32546)
        {
          v124 = KmlLogger();
          v125 = sub_10036F124(v124);
          if (v125)
          {
            sub_10036F0AC(v125, v126, v127, v128, v129, v130, v131, v132, v163, v164, v165, *(&v165 + 1), v166, v167, v168);
            sub_10036F0F8(v133);
            sub_10036F0D8();
            _os_log_impl(v134, v135, v136, "%s : %i : Found refreshed instance CA", v137, 0x12u);
          }

          v138 = [v21 value];
          v13 = [KmlTlv TLVWithTag:32547 value:v138];

          v139 = [v13 asData];
          v140 = *(v2 + 72);
          *(v2 + 72) = v139;

LABEL_63:
          goto LABEL_38;
        }

        if ([v21 tag] == 48 || objc_msgSend(v21, "tag") == 49 || objc_msgSend(v21, "tag") == 50 || objc_msgSend(v21, "tag") == 51)
        {
          v141 = KmlLogger();
          if (sub_10036F124(v141))
          {
            [v21 tag];
            sub_10036F13C();
            *(v142 + 14) = 122;
            v178 = v143;
            v179 = v144;
            sub_10036F0D8();
            _os_log_impl(v145, v146, v147, "%s : %i : Found additional attestation TLV with Tag (%02X)", v148, 0x18u);
          }

          v13 = [v21 value];
          v149 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [v21 tag]);
          [v167 setObject:v13 forKeyedSubscript:v149];

          goto LABEL_63;
        }
      }

LABEL_38:
      v20 = v20 + 1;
    }

    while (v18 != v20);
    v150 = [v15 countByEnumeratingWithState:&v169 objects:v180 count:16];
    v18 = v150;
  }

  while (v150);
LABEL_65:

  if (*(v2 + 8) && *(v2 + 48) && *(v2 + 56))
  {
    v151 = v167;
    if ([v167 count])
    {
      v152 = v167;
      v13 = *(v2 + 88);
      *(v2 + 88) = v152;
      v2 = 1;
      v7 = v164;
      goto LABEL_73;
    }

    v2 = 1;
    v7 = v164;
  }

  else
  {
    v153 = KmlLogger();
    if (sub_10036F124(v153))
    {
      sub_10036F13C();
      *(v154 + 14) = 131;
      sub_10036F0D8();
      _os_log_impl(v155, v156, v157, v158, v159, 0x12u);
    }

    v2 = 0;
    v7 = v164;
    v151 = v167;
LABEL_73:
  }

LABEL_78:
  return v2;
}

void sub_1003BA1A0(uint64_t a1, void *a2)
{
  if (a1)
  {
    v3 = [a2 value];
    v4 = [KmlTlv TLVsWithData:v3];

    v5 = +[NSMutableData data];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v20;
      *&v8 = 136315394;
      v18 = v8;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v20 != v10)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v19 + 1) + 8 * i);
          if ([v12 tag] == 158)
          {
            v13 = KmlLogger();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = v18;
              v24 = "[SharingSignedResponse parseKeyAttestationTLV:]";
              v25 = 1024;
              v26 = 217;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : Found owner Signature TLV in KeyAttestationTlv", buf, 0x12u);
            }

            v14 = v12;
            v15 = *(a1 + 48);
            *(a1 + 48) = v14;
          }

          else
          {
            v15 = [v12 asData];
            [v5 appendData:v15];
          }
        }

        v9 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v9);
    }

    v16 = [KmlTlv TLVWithTag:32549 value:v5];
    v17 = *(a1 + 8);
    *(a1 + 8) = v16;
  }
}

uint64_t sub_1003BA3C4(uint64_t result)
{
  if (result)
  {
    return *(result + 56);
  }

  return result;
}

uint64_t sub_1003BA3D0(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

uint64_t sub_1003BA3DC(uint64_t result)
{
  if (result)
  {
    return *(result + 72);
  }

  return result;
}

void sub_1003BA3E8(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
  }
}

uint64_t sub_1003BA3F8(uint64_t result)
{
  if (result)
  {
    return *(result + 88);
  }

  return result;
}

id sub_1003BA404(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    [a1 setEndpoint:a2];
    v10 = [a1 endpoint];
    v11 = [v10 certificates];

    v12 = [v11 objectAtIndexedSubscript:0];
    v13 = [KmlTlv TLVWithTag:32544 value:v12];
    v14 = *(a1 + 8);
    *(a1 + 8) = v13;

    v15 = [v11 objectAtIndexedSubscript:1];
    v16 = [KmlTlv TLVWithTag:32546 value:v15];
    v17 = *(a1 + 16);
    *(a1 + 16) = v16;

    v18 = [v11 objectAtIndexedSubscript:2];
    v19 = [KmlTlv TLVWithTag:32548 value:v18];
    v20 = *(a1 + 24);
    *(a1 + 24) = v19;

    objc_storeStrong((a1 + 32), a3);
    if (v9)
    {
      v21 = [v9 dataUsingEncoding:4];
      v22 = [KmlTlv TLVWithTag:24383 value:v21];
      v23 = *(a1 + 48);
      *(a1 + 48) = v22;
    }

    a1 = sub_1003BA5BC(a1);
  }

  return a1;
}

id *sub_1003BA5BC(id *a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = +[NSMutableData data];
    v4 = [v2[1] asData];
    sub_10036F258(v4);

    v5 = [v2[2] asData];
    sub_10036F258(v5);

    v6 = [v2[3] asData];
    sub_10036F258(v6);

    [v3 appendData:v2[4]];
    v7 = [KmlTlv TLVWithTag:32592 value:v2[4]];
    v8 = [v7 asData];
    [v3 appendData:v8];

    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [v2[7] agreedKmlSharingVersion], 768))
    {
      v9 = KmlLogger();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v17 = 136315394;
        v18 = "[KeySigningRequest getSigningRequestTLVAsData]";
        v19 = 1024;
        v20 = 118;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : Add SharingInAChain version TLV", &v17, 0x12u);
      }

      v10 = [v2[7] getKmlSupportedVersionsTlvAsShareRecipient];
      v11 = [v10 asData];
      [v3 appendData:v11];
    }

    v12 = v2[6];
    if (v12)
    {
      v13 = [v12 asData];
      [v3 appendData:v13];
    }

    v14 = [KmlTlv TLVWithTag:32566 value:v3];
    v15 = v2[5];
    v2[5] = v14;

    v2 = [v2[5] asData];
  }

  return v2;
}

uint64_t sub_1003BA7E4(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = [KmlTlv TLVsWithData:a2];
  v5 = KmlLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    sub_10036F224("[KeySigningRequest parseRequestFromData:]");
    v141 = 53;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : KeySigningData: Looking for signing request TLV", buf, 0x12u);
  }

  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v134 objects:v139 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v135;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v135 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v134 + 1) + 8 * i);
        if ([v10 tag] == 32566)
        {
          objc_storeStrong((a1 + 40), v10);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v134 objects:v139 count:16];
    }

    while (v8);
  }

  v11 = *(a1 + 40);
  v12 = v11 != 0;
  if (v11)
  {
    HIDWORD(v129) = 1;
    v13 = [*(a1 + 40) value];
    v14 = [KmlTlv TLVsWithData:v13];

    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v15 = v14;
    v16 = [v15 countByEnumeratingWithState:&v130 objects:v138 count:16];
    if (!v16)
    {
      goto LABEL_53;
    }

    v17 = v16;
    v18 = *v131;
    while (1)
    {
      v19 = 0;
      do
      {
        if (*v131 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v130 + 1) + 8 * v19);
        if ([v20 tag] == 32544)
        {
          v21 = KmlLogger();
          v22 = sub_100367508(v21);
          if (v22)
          {
            sub_10036F24C(v22, v23, v24, v25, v26, v27, v28, v29, v128, v129, v30);
            sub_10036F224("[KeySigningRequest parseRequestFromData:]");
            sub_10036F234(68);
            sub_10036F240();
            _os_log_impl(v31, v32, v33, "%s : %i : KeySigningData: Found Ext. CA Cert TLV", v34, 0x12u);
          }

          v35 = v20;
          v36 = *(a1 + 8);
          *(a1 + 8) = v35;
          goto LABEL_46;
        }

        if ([v20 tag] == 32546)
        {
          v37 = KmlLogger();
          v38 = sub_100367508(v37);
          if (v38)
          {
            sub_10036F24C(v38, v39, v40, v41, v42, v43, v44, v45, v128, v129, v46);
            sub_10036F224("[KeySigningRequest parseRequestFromData:]");
            sub_10036F234(71);
            sub_10036F240();
            _os_log_impl(v47, v48, v49, "%s : %i : KeySigningData: Found Instance CA Cert TLV", v50, 0x12u);
          }

          v51 = v20;
          v36 = *(a1 + 16);
          *(a1 + 16) = v51;
          goto LABEL_46;
        }

        if ([v20 tag] == 32548)
        {
          v52 = KmlLogger();
          v53 = sub_100367508(v52);
          if (v53)
          {
            sub_10036F24C(v53, v54, v55, v56, v57, v58, v59, v60, v128, v129, v61);
            sub_10036F224("[KeySigningRequest parseRequestFromData:]");
            sub_10036F234(74);
            sub_10036F240();
            _os_log_impl(v62, v63, v64, "%s : %i : KeySigningData: Found Endpoint Cert TLV", v65, 0x12u);
          }

          v66 = v20;
          v36 = *(a1 + 24);
          *(a1 + 24) = v66;
          goto LABEL_46;
        }

        if ([v20 tag] == 32550)
        {
          v67 = KmlLogger();
          v68 = sub_100367508(v67);
          if (v68)
          {
            sub_10036F24C(v68, v69, v70, v71, v72, v73, v74, v75, v128, v129, v76);
            sub_10036F224("[KeySigningRequest parseRequestFromData:]");
            sub_10036F234(77);
            sub_10036F240();
            _os_log_impl(v77, v78, v79, "%s : %i : KeySigningData: Found Endpoint Encryption Key Attestation Data", v80, 0x12u);
          }

          v81 = [v20 asData];
LABEL_35:
          v36 = *(a1 + 32);
          *(a1 + 32) = v81;
          goto LABEL_46;
        }

        if ([v20 tag] == 32592 && !*(a1 + 32))
        {
          v112 = KmlLogger();
          v113 = sub_100367508(v112);
          if (v113)
          {
            sub_10036F24C(v113, v114, v115, v116, v117, v118, v119, v120, v128, v129, v121);
            sub_10036F224("[KeySigningRequest parseRequestFromData:]");
            sub_10036F234(80);
            sub_10036F240();
            _os_log_impl(v122, v123, v124, "%s : %i : KeySigningData: Getting Encryption Key Attestation data from Custom TLV", v125, 0x12u);
          }

          v81 = [v20 value];
          goto LABEL_35;
        }

        if ([v20 tag] == 24383)
        {
          v82 = KmlLogger();
          v83 = sub_100367508(v82);
          if (v83)
          {
            sub_10036F24C(v83, v84, v85, v86, v87, v88, v89, v90, v128, v129, v91);
            sub_10036F224("[KeySigningRequest parseRequestFromData:]");
            sub_10036F234(83);
            sub_10036F240();
            _os_log_impl(v92, v93, v94, "%s : %i : KeySigningData: Found Passcode TLV", v95, 0x12u);
          }

          v96 = v20;
          v36 = *(a1 + 48);
          *(a1 + 48) = v96;
        }

        else
        {
          if ([v20 tag] != 85)
          {
            goto LABEL_47;
          }

          v97 = KmlLogger();
          v98 = sub_100367508(v97);
          if (v98)
          {
            sub_10036F24C(v98, v99, v100, v101, v102, v103, v104, v105, v128, v129, v106);
            sub_10036F224("[KeySigningRequest parseRequestFromData:]");
            sub_10036F234(86);
            sub_10036F240();
            _os_log_impl(v107, v108, v109, "%s : %i : Found Recipient Framework version TLV", v110, 0x12u);
          }

          i = *(a1 + 56);
          v36 = [v20 asData];
          v111 = [i updateSupportedFrameworkVersionsForSharing:v36];
        }

LABEL_46:

LABEL_47:
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v126 = [v15 countByEnumeratingWithState:&v130 objects:v138 count:16];
      v17 = v126;
      if (!v126)
      {
LABEL_53:

        v12 = HIDWORD(v129);
        goto LABEL_56;
      }
    }
  }

  v15 = KmlLogger();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    *buf = 136315394;
    sub_10036F224("[KeySigningRequest parseRequestFromData:]");
    v141 = 61;
    _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : KeySigningData: No signing request TLV found", buf, 0x12u);
  }

LABEL_56:

  return v12;
}

id *sub_1003BADDC(id *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    v4 = [a2 dataUsingEncoding:4];
    v5 = [KmlTlv TLVWithTag:24383 value:v4];
    v6 = v3[6];
    v3[6] = v5;

    a1 = sub_1003BA5BC(v3);
    v2 = vars8;
  }

  return a1;
}

void sub_1003BAE64(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
  }
}

uint64_t sub_1003BAE74(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    v50 = 0;
    goto LABEL_108;
  }

  v4 = &swift_cvw_destroy_ptr;
  [KmlTlv TLVsWithData:v3];
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v5 = v128 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v125 objects:v153 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v126;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v126 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v125 + 1) + 8 * i);
        if ([v10 tag] == 32555)
        {
          objc_storeStrong((a1 + 80), v10);
          goto LABEL_12;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v125 objects:v153 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  v11 = *(a1 + 80);
  if (!v11)
  {
    v48 = KmlLogger();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_10036F470("[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]", 4.8151e-34);
      v148 = 62;
      sub_10036F500(&_mh_execute_header, v48, v49, "%s : %i : Share initiator cert chain not found", &v146);
    }

    v50 = 0;
    goto LABEL_107;
  }

  v12 = [v11 value];
  j = [KmlTlv TLVsWithData:v12];

  v14 = objc_opt_new();
  v15 = *(a1 + 64);
  *(a1 + 64) = v14;

  if (![j count])
  {
    v51 = KmlLogger();
    if (sub_10004F844(v51))
    {
      sub_10036F470("[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]", 4.8151e-34);
      v148 = 71;
      sub_10036F4E4(&_mh_execute_header, v52, v53, "%s : %i : Missing cert sets", &v146);
    }

    HIBYTE(v130) = 0;
    goto LABEL_106;
  }

  v112 = a1;
  [j sortedArrayUsingComparator:&stru_1004D1BC0];
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v16 = v124 = 0u;
  v17 = [v16 countByEnumeratingWithState:&v121 objects:v152 count:16];
  v110 = v16;
  if (!v17)
  {
    v47 = 0;
    v46 = -48;
LABEL_51:

    if ([v47 count])
    {
      if ([*(v112 + 64) count] == v46)
      {
        v115 = 0u;
        v116 = 0u;
        v113 = 0u;
        v114 = 0u;
        v64 = v47;
        v65 = [v64 countByEnumeratingWithState:&v113 objects:&v131 count:{16, j, v5, v3}];
        if (!v65)
        {
LABEL_88:

          v78 = v64;
          if ([*(v112 + 64) count])
          {
            v79 = [*(v112 + 64) lastObject];
            v80 = [v79 value];
            v81 = *(v112 + 72);
            *(v112 + 72) = v80;
          }

          else
          {
            v102 = *(v112 + 56);
            v79 = *(v112 + 72);
            *(v112 + 72) = v102;
          }

          sub_10036F644();

          v103 = KmlLogger();
          if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
          {
            sub_10036F470("[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]", 4.8151e-34);
            v148 = 158;
            sub_10036DC0C(&_mh_execute_header, v103, v104, "%s : %i : Sucessfully parsed sharing initiator cert chain from data", &v146);
          }

          HIBYTE(v130) = 1;
          v86 = v110;
          v47 = v78;
          goto LABEL_105;
        }

        v66 = v65;
        v67 = 0;
        j = *v114;
LABEL_55:
        v68 = 0;
        while (1)
        {
          if (*v114 != j)
          {
            objc_enumerationMutation(v64);
          }

          v3 = *(*(&v113 + 1) + 8 * v68);
          if ([v3 tag] != 32544)
          {
            break;
          }

          v69 = [v3 value];
          v70 = *(v112 + 40);
          *(v112 + 40) = v69;

LABEL_74:
          if (v66 == ++v68)
          {
            v77 = [v64 countByEnumeratingWithState:&v113 objects:&v131 count:16];
            v66 = v77;
            if (!v77)
            {
              goto LABEL_88;
            }

            goto LABEL_55;
          }
        }

        if ([v3 tag] == 32546 || objc_msgSend(v3, "tag") == 32578)
        {
          v71 = [v3 value];
          v5 = v112;
          v72 = *(v112 + 48);
          *(v112 + 48) = v71;

          if (v67)
          {
            if (*(v112 + 9) != 1)
            {
              goto LABEL_66;
            }

            if ([v3 tag] == 32546)
            {
              goto LABEL_100;
            }

            if ((*(v112 + 9) & 1) == 0)
            {
LABEL_66:
              if ([v3 tag] == 32578)
              {
LABEL_100:
                v47 = v64;
                v94 = KmlLogger();
                if (sub_10036F548(v94))
                {
                  v146 = 136315394;
                  v147 = "[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]";
                  sub_10036F4D8();
                  *(v95 + 14) = 139;
                  goto LABEL_102;
                }

                goto LABEL_103;
              }
            }

            goto LABEL_73;
          }

          v73 = [v3 tag] == 32578;
        }

        else
        {
          if ([v3 tag] != 32548)
          {
            [v3 tag];
            sub_10036F650();
            if (!v73)
            {
              goto LABEL_74;
            }
          }

          v75 = [v3 value];
          v5 = v112;
          v76 = *(v112 + 56);
          *(v112 + 56) = v75;

          if (v67)
          {
            if (*(v112 + 9) != 1)
            {
              goto LABEL_84;
            }

            if ([v3 tag] == 32548)
            {
              goto LABEL_113;
            }

            if ((*(v112 + 9) & 1) == 0)
            {
LABEL_84:
              [v3 tag];
              sub_10036F650();
              if (v73)
              {
LABEL_113:
                v47 = v64;
                v105 = KmlLogger();
                if (sub_10036F548(v105))
                {
                  v146 = 136315394;
                  v147 = "[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]";
                  sub_10036F4D8();
                  *(v106 + 14) = 150;
LABEL_102:
                  sub_10036F4C8();
                  _os_log_impl(v96, v97, v98, v99, v100, 0x12u);
                }

LABEL_103:
                sub_10036F644();

                HIBYTE(v130) = 0;
                goto LABEL_104;
              }
            }

            goto LABEL_73;
          }

          [v3 tag];
          sub_10036F650();
        }

        v74 = v73;
        v5[9] = v74;
LABEL_73:
        v67 = 1;
        goto LABEL_74;
      }

      v88 = KmlLogger();
      if (!sub_10036F548(v88))
      {
LABEL_99:

        HIBYTE(v130) = 0;
LABEL_104:
        v86 = v110;
        goto LABEL_105;
      }

      sub_10036F470("[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]", 4.8151e-34);
      v148 = 122;
    }

    else
    {
      v87 = KmlLogger();
      if (!sub_10036F548(v87))
      {
        goto LABEL_99;
      }

      sub_10036F470("[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]", 4.8151e-34);
      v148 = 117;
    }

    sub_10036F4C8();
    _os_log_impl(v89, v90, v91, v92, v93, 0x12u);
    goto LABEL_99;
  }

  v18 = v17;
  v107 = j;
  v108 = v5;
  v109 = v3;
  v5 = 0;
  v111 = 0;
  v19 = *v122;
LABEL_16:
  v20 = 0;
  while (1)
  {
    if (*v122 != v19)
    {
      objc_enumerationMutation(v16);
    }

    v3 = *(*(&v121 + 1) + 8 * v20);
    if ([v3 tag] < 0x30 || objc_msgSend(v3, "tag") > 0x3E)
    {
      goto LABEL_39;
    }

    if ([v3 tag] == v5)
    {
      v54 = KmlLogger();
      if (!sub_10036F548(v54))
      {
        goto LABEL_93;
      }

      [v3 tag];
      v146 = 136315650;
      v147 = "[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]";
      sub_10036F4D8();
      *(v55 + 14) = 91;
      v149 = v56;
      v150 = v57;
      sub_10036F4C8();
      v63 = 24;
      goto LABEL_92;
    }

    if ([v3 tag] != 48)
    {
      break;
    }

    v21 = v4[276];
    v22 = [v3 value];
    v23 = [v21 TLVsWithData:v22];

    v111 = v23;
LABEL_38:

    v5 = [v3 tag];
LABEL_39:
    if (++v20 == v18)
    {
      v18 = [v16 countByEnumeratingWithState:&v121 objects:v152 count:16];
      if (!v18)
      {
        v46 = v5 - 48;
        sub_10036F644();
        v47 = v111;
        goto LABEL_51;
      }

      goto LABEL_16;
    }
  }

  if ([v3 tag] - v5 == 1)
  {
    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    v24 = v4[276];
    v25 = [v3 value];
    v22 = [v24 TLVsWithData:v25];

    v34 = sub_10036F65C(v26, v27, v28, v29, v30, v31, v32, v33, v107, v108, v109, v110, v111, v112, v113, *(&v113 + 1), v114, *(&v114 + 1), v115, *(&v115 + 1), v116, *(&v116 + 1), 0, 0, 0, 0, 0, 0, 0, 0, v121, *(&v121 + 1), v122, *(&v122 + 1), v123, *(&v123 + 1), v124, *(&v124 + 1), v125, *(&v125 + 1), v126, *(&v126 + 1), v127, *(&v127 + 1), v128, *(&v128 + 1), v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
    if (v34)
    {
      v35 = v34;
      v36 = *v118;
      while (2)
      {
        for (j = 0; j != v35; ++j)
        {
          if (*v118 != v36)
          {
            objc_enumerationMutation(v22);
          }

          v37 = *(*(&v117 + 1) + 8 * j);
          if ([v37 tag] != 32548)
          {
            [v37 tag];
            sub_10036F650();
            if (!v73)
            {
              continue;
            }
          }

          [*(v112 + 64) addObject:v37];
          goto LABEL_36;
        }

        v35 = sub_10036F65C(v38, v39, v40, v41, v42, v43, v44, v45, v107, v108, v109, v110, v111, v112, v113, *(&v113 + 1), v114, *(&v114 + 1), v115, *(&v115 + 1), v116, *(&v116 + 1), v117, *(&v117 + 1), v118, *(&v118 + 1), v119, *(&v119 + 1), v120, *(&v120 + 1), v121, *(&v121 + 1), v122, *(&v122 + 1), v123, *(&v123 + 1), v124, *(&v124 + 1), v125, *(&v125 + 1), v126, *(&v126 + 1), v127, *(&v127 + 1), v128, *(&v128 + 1), v129, v130, v131, v132, v133, v134, v135, v136, v137, v138, v139, v140, v141, v142, v143, v144, v145);
        if (v35)
        {
          continue;
        }

        break;
      }

LABEL_36:
      v16 = v110;
    }

    v4 = &swift_cvw_destroy_ptr;
    goto LABEL_38;
  }

  v82 = KmlLogger();
  if (!sub_10036F548(v82))
  {
    goto LABEL_93;
  }

  [v3 tag];
  v146 = 136315906;
  v147 = "[SharingInitiatorCertChain parseSharingInitiatorCertChainFromData:]";
  sub_10036F4D8();
  *(v83 + 14) = 100;
  v149 = v84;
  v150 = v5;
  v151 = v84;
  *(v83 + 26) = v85;
  sub_10036F4C8();
  v63 = 30;
LABEL_92:
  _os_log_impl(v58, v59, v60, v61, v62, v63);
LABEL_93:
  sub_10036F644();

  HIBYTE(v130) = 0;
  v86 = v110;

  v47 = v111;
LABEL_105:

LABEL_106:
  v50 = HIBYTE(v130);
LABEL_107:

LABEL_108:
  return v50;
}

id sub_1003BB820(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = +[NSMutableData data];
    v4 = +[NSMutableData data];
    if ([*(v2 + 40) length])
    {
      v5 = [KmlTlv TLVWithTag:32544 value:*(v2 + 40)];
      v6 = [v5 asData];
      sub_10036F5A8(v6);
    }

    if ([*(v2 + 48) length])
    {
      if (*(v2 + 9))
      {
        v7 = 32578;
      }

      else
      {
        v7 = 32546;
      }

      v8 = [KmlTlv TLVWithTag:v7 value:*(v2 + 48)];
      v9 = [v8 asData];
      sub_10036F5A8(v9);
    }

    if ([*(v2 + 56) length])
    {
      if (*(v2 + 9))
      {
        v10 = 32580;
      }

      else
      {
        v10 = 32548;
      }

      v11 = [KmlTlv TLVWithTag:v10 value:*(v2 + 56)];
      v12 = [v11 asData];
      sub_10036F5A8(v12);

      v30 = v3;
      v29 = [KmlTlv TLVWithTag:48 value:v3];
      v13 = [v29 asData];
      [v4 appendData:v13];

      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      v14 = *(v2 + 64);
      v15 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = *v32;
        v18 = 49;
        do
        {
          for (i = 0; i != v16; i = i + 1)
          {
            if (*v32 != v17)
            {
              objc_enumerationMutation(v14);
            }

            v20 = *(*(&v31 + 1) + 8 * i);
            if (v18 >= 0x3Fu)
            {
              v21 = KmlLogger();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v37 = "[SharingInitiatorCertChain certChainAsData]";
                v38 = 1024;
                v39 = 191;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s : %i : There are too many certificate sets in the cert chain", buf, 0x12u);
              }
            }

            v22 = [v20 asData];
            v23 = [KmlTlv TLVWithTag:v18 value:v22];

            v24 = [v23 asData];
            [v4 appendData:v24];

            ++v18;
          }

          v16 = [v14 countByEnumeratingWithState:&v31 objects:v35 count:16];
        }

        while (v16);
      }

      v25 = [KmlTlv TLVWithTag:32555 value:v4];
      v2 = [v25 asData];

      v26 = v29;
      v3 = v30;
    }

    else
    {
      v26 = KmlLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v37 = "[SharingInitiatorCertChain certChainAsData]";
        v38 = 1024;
        v39 = 180;
        sub_10036F500(&_mh_execute_header, v26, v27, "%s : %i : Endpoint cert is required to create cert chain", buf);
      }

      v2 = 0;
    }
  }

  return v2;
}

uint64_t sub_1003BBBD8(uint64_t a1)
{
  if (a1)
  {
    return ([*(a1 + 64) count] + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1003BBC0C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 64);
    if (v4 && [(objc_class *)v4 count]>= 0xE)
    {
      v5 = KmlLogger();
      if (sub_10036F5DC(v5))
      {
        sub_10036DB8C();
        v13 = 212;
        v7 = "%s : %i : Maximum number of certs in chain reached, can't share further";
LABEL_10:
        sub_10036F500(&_mh_execute_header, a1, v6, v7, v12);
        goto LABEL_11;
      }

      goto LABEL_11;
    }

    if (![v3 length])
    {
      v10 = KmlLogger();
      if (sub_10036F5DC(v10))
      {
        sub_10036DB8C();
        v13 = 217;
        v7 = "%s : %i : Empty endpoint cert supplied";
        goto LABEL_10;
      }

LABEL_11:

      a1 = 0;
      goto LABEL_12;
    }

    v8 = *(a1 + 64);
    v9 = [KmlTlv TLVWithTag:32548 value:v3];
    [(objc_class *)v8 addObject:v9];

    a1 = 1;
  }

LABEL_12:

  return a1;
}

uint64_t sub_1003BBD64(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_24;
  }

  v8 = SecCertificateCreateWithData(0, *(a1 + 72));
  v9 = v8;
  if (v8)
  {
    v10 = SecCertificateCopyKey(v8);
    if (v10)
    {
      v11 = v10;
      if (SecKeyIsAlgorithmSupported(v10, kSecKeyOperationTypeVerify, kSecKeyAlgorithmECDSASignatureMessageRFC4754SHA256))
      {
        error = 0;
        if (SecKeyVerifySignature(v11, kSecKeyAlgorithmECDSASignatureMessageRFC4754SHA256, v6, v7, &error))
        {
          v12 = KmlLogger();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            sub_10036BED0();
            v41 = 265;
            sub_10036F584();
            sub_10036DC0C(v13, v14, v15, v16, v17);
          }

          v18 = 1;
          goto LABEL_22;
        }

        v30 = error;
        v31 = KmlLogger();
        if (sub_10036F5C4(v31))
        {
          v39 = 136315650;
          v40 = "[SharingInitiatorCertChain verifyAttestationPackage:withSignature:]";
          sub_10036F4A8();
          sub_10036F460();
          v42 = v30;
          sub_10036F584();
          sub_10036F590(v32, v33, v34, v35, v36);
        }
      }

      else
      {
        v24 = KmlLogger();
        if (sub_10036F5C4(v24))
        {
          sub_10036BED0();
          v41 = 261;
          sub_10036F584();
          sub_10036F500(v25, v26, v27, v28, v29);
        }
      }

      v18 = 0;
LABEL_22:
      CFRelease(v11);
      goto LABEL_23;
    }

    v23 = KmlLogger();
    if (sub_10004F844(v23))
    {
      sub_10036BED0();
      v41 = 239;
      v22 = "%s : %i : Unable to retrieve public key from cert";
      goto LABEL_13;
    }
  }

  else
  {
    v19 = KmlLogger();
    if (sub_10004F844(v19))
    {
      sub_10036BED0();
      v41 = 232;
      v22 = "%s : %i : Invalid last endpoint cert";
LABEL_13:
      sub_10036F4E4(&_mh_execute_header, v20, v21, v22, &v39);
    }
  }

  v18 = 0;
LABEL_23:

LABEL_24:
  return v18;
}

BOOL sub_1003BBFF4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!a1)
  {
    v39 = 0;
    goto LABEL_65;
  }

  v4 = SecCertificateCreateWithData(0, *(a1 + 56));
  v5 = &unk_100409000;
  if (!v4)
  {
    v37 = KmlLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      sub_100367248();
      v97 = 278;
      sub_10036F500(&_mh_execute_header, v37, v38, "%s : %i : Invalid endpoint cert", buf);
    }

    v39 = 0;
    goto LABEL_64;
  }

  sub_10036F638();
  SecCertificateCopyCommonName(v4, v6);
  v7 = cf;
  v8 = KmlLogger();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    sub_100367248();
    sub_10036F484();
    v99 = cf;
    sub_100367454(&_mh_execute_header, v8, v9, "%s : %i : Received endpointCommonName): %@", buf);
  }

  v10 = SecCertificateGetAuthorityKeyID();
  v11 = KmlLogger();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = kmlUtilHexStringFromData();
    sub_100367248();
    sub_10036F484();
    v99 = v13;
    sub_100367454(&_mh_execute_header, v11, v14, "%s : %i : Endpoint certificateAuthorityKeyID=%@", buf);
  }

  if (v10)
  {
    v91 = objc_opt_new();
    [v91 addObject:v4];
    if (*(a1 + 9) == 1)
    {
      v90 = sub_1003BC798(a1);
      v15 = *(a1 + 24);
      *(a1 + 24) = v90;
    }

    else
    {
      v15 = KmlLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        sub_100367248();
        v97 = 300;
        sub_10036F620();
        sub_10036DC0C(v16, v17, v18, v19, v20);
      }
    }

    v21 = *(a1 + 48);
    if (v21)
    {
      v22 = SecCertificateCreateWithData(0, v21);
      if (!v22)
      {
        v66 = KmlLogger();
        if (sub_10036F5C4(v66))
        {
          sub_100367248();
          v97 = 308;
          sub_10036F62C();
          sub_10036F500(v67, v68, v69, v70, v71);
        }

        v93 = 0;
        goto LABEL_62;
      }

      v23 = v22;
      sub_10036F638();
      SecCertificateCopyCommonName(v24, v25);
      v26 = KmlLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        sub_10036F4B4();
        sub_10036DCB0();
        sub_10036F620();
        sub_100367454(v27, v28, v29, v30, v31);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      [v91 addObject:v23];
      v32 = SecCertificateGetAuthorityKeyID();

      v33 = KmlLogger();
      if (sub_10036F124(v33))
      {
        v34 = kmlUtilHexStringFromData();
        *buf = 136315650;
        v95 = "[SharingInitiatorCertChain isFirstSharerCertChainTrustedForManufacturer:]";
        v96 = 1024;
        sub_10036F484();
        v99 = v35;
        sub_100367454(&_mh_execute_header, v10, v36, "%s : %i : Intermediate certificateAuthorityKeyID=%@", buf);
      }

      v5 = &unk_100409000;
    }

    else
    {
      v32 = v10;
    }

    v40 = *(a1 + 40);
    if (v40)
    {
      v41 = SecCertificateCreateWithData(0, v40);
      if (!v41)
      {
        v80 = KmlLogger();
        if (sub_10004F844(v80))
        {
          v81 = v5[278];
          sub_100367248();
          v97 = 328;
          sub_10036F4E4(&_mh_execute_header, v82, v83, "%s : %i : Invalid ext CA cert", buf);
        }

        v93 = 0;
        v10 = v32;
        goto LABEL_62;
      }

      v42 = v41;
      sub_10036F638();
      SecCertificateCopyCommonName(v43, v44);
      v45 = KmlLogger();
      if (sub_10036F124(v45))
      {
        sub_10036F4B4();
        sub_10036DCB0();
        sub_100367454(&_mh_execute_header, v10, v46, "%s : %i : Ext CA certificate CommonName: %@", buf);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      [v91 addObject:v42];
      v10 = SecCertificateGetAuthorityKeyID();

      v47 = KmlLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
      {
        kmlUtilHexStringFromData();
        v49 = v48 = v5;
        sub_100367248();
        sub_10036F484();
        v99 = v50;
        sub_10036F620();
        sub_100367454(v51, v52, v53, v54, v55);

        v5 = v48;
      }
    }

    else
    {
      v10 = v32;
    }

    v56 = objc_opt_new();
    v57 = [v56 getRootCertificateFor:v3 keyId:v10];

    if (v57)
    {
      v58 = SecCertificateCreateWithData(0, v57);
      if (v58)
      {
        sub_10036F638();
        SecCertificateCopyCommonName(v58, v59);
        v60 = KmlLogger();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          sub_10036F4B4();
          sub_10036DCB0();
          sub_100367454(&_mh_execute_header, v60, v61, "%s : %i : Root certificate CommonName: %@", buf);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v62 = SecCertificateCopyIssuerSummary();
        v63 = KmlLogger();
        if (os_log_type_enabled(v63, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          v95 = "[SharingInitiatorCertChain isFirstSharerCertChainTrustedForManufacturer:]";
          v96 = 1024;
          sub_10036F484();
          v99 = v62;
          sub_100367454(&_mh_execute_header, v63, v64, "%s : %i : rootCert certificateIssuer=%@", buf);
        }

        v65 = sub_100396990(KmlEndpointCreationConfig, v58, v91);
        v7 = cf;
      }

      else
      {
        v84 = v5;
        v62 = KmlLogger();
        if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
        {
          v85 = v84[278];
          sub_100367248();
          v97 = 374;
          sub_10036DC0C(&_mh_execute_header, v62, v86, "%s : %i : Root certificate is nil", buf);
        }

        v65 = 0;
      }

      v87 = KmlLogger();
      if (os_log_type_enabled(v87, OS_LOG_TYPE_INFO))
      {
        v88 = @"NO";
        *buf = 136315906;
        v95 = "[SharingInitiatorCertChain isFirstSharerCertChainTrustedForManufacturer:]";
        v96 = 1024;
        if (v65)
        {
          v88 = @"YES";
        }

        v97 = 377;
        v98 = 2112;
        v99 = v3;
        v100 = 2112;
        v101 = v88;
        _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_INFO, "%s : %i : Verified that first sharer cert is signed by %@ : %@", buf, 0x26u);
      }

      v93 = v65;
    }

    else
    {
      v72 = KmlLogger();
      if (sub_10036F548(v72))
      {
        v73 = kmlUtilHexStringFromData();
        sub_100367248();
        sub_10036F484();
        v99 = v74;
        sub_10036F620();
        sub_10036F590(v75, v76, v77, v78, v79);
      }

      v93 = 0;
    }

LABEL_62:
    goto LABEL_63;
  }

  v93 = 0;
LABEL_63:

  v39 = v93;
LABEL_64:

LABEL_65:
  return v39;
}

id sub_1003BC798(uint64_t a1)
{
  if (a1)
  {
    v1 = SecCertificateCopyExtensionValue();
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = kmlUtilHexStringFromData();
      v25 = 136315650;
      v26 = "[SharingInitiatorCertChain getServiceProviderForCert:]";
      sub_10036F4A8();
      sub_10036F460();
      v27 = v4;
      sub_10036F5F4(&_mh_execute_header, v2, v5, "%s : %i : Extension: %@", &v25);
    }

    v6 = [KmlTlv TLVsWithData:v1];
    if ([v6 count])
    {
      v7 = [v6 objectAtIndexedSubscript:0];
      v8 = [v7 value];
    }

    else
    {
      v8 = 0;
    }

    v9 = [KmlTlv TLVsWithData:v8];
    [v9 count];
    v10 = KmlLogger();
    if (sub_10036F5C4(v10))
    {
      [v9 count];
      v25 = 136315906;
      v26 = "[SharingInitiatorCertChain getServiceProviderForCert:]";
      sub_10036F4A8();
      sub_10036F460();
      v27 = @"No";
      v28 = 2048;
      v29 = v11;
      sub_10036F584();
      _os_log_impl(v12, v13, OS_LOG_TYPE_ERROR, v14, v15, 0x26u);
    }

    v16 = KmlLogger();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      v17 = kmlUtilHexStringFromData();
      v25 = 136315650;
      v26 = "[SharingInitiatorCertChain getServiceProviderForCert:]";
      sub_10036F4A8();
      sub_10036F460();
      v27 = v18;
      sub_10036F584();
      sub_10036F5F4(v19, v20, v21, v22, v23);
    }
  }

  return 0;
}

uint64_t sub_1003BCA70(NSObject *a1, void *a2, NSObject *a3, NSObject **a4)
{
  v7 = a2;
  if (!a1)
  {
    v34 = 0;
    goto LABEL_62;
  }

  if (a4)
  {
    *a4 = 0;
  }

  if (sub_1003F6F5C(v8))
  {
    v9 = objc_opt_new();
    v10 = [v9 disableFleetKeyStrictShareInitCertChainValidation];
    v11 = [v9 disablePrivateKeyStrictShareInitCertChainValidation];
    v12 = [v9 disableOptTwoShareInitCertChainValidation];
  }

  else
  {
    v12 = 0;
    v11 = 0;
    v10 = 0;
  }

  v70 = 0;
  v13 = sub_1003BD1A4(a1, a3, v7, &v70);
  v14 = v70;
  if ((v13 & 1) == 0)
  {
    v15 = KmlLogger();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      sub_100367390();
      v74 = 413;
      sub_10036F500(&_mh_execute_header, v15, v16, "%s : %i : Unable to verify option two settings for cert chain", buf);
    }

    if (!v12)
    {
      goto LABEL_58;
    }

    v17 = KmlLogger();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      sub_100367390();
      v74 = 415;
      sub_10036F560();
      _os_log_impl(v18, v19, OS_LOG_TYPE_DEBUG, v20, v21, 0x12u);
    }
  }

  isa = a1[10].isa;
  v23 = KmlLogger();
  v24 = v23;
  if (isa)
  {
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      *buf = 136315394;
      sub_100367390();
      v74 = 436;
      sub_10036F560();
      sub_10036DC0C(v37, v38, v39, v40, v41);
    }

    if (!sub_1003BBFF4(a1, v7))
    {
      v42 = KmlLogger();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        sub_100367390();
        sub_10036F60C();
        sub_10036F560();
        sub_10036F590(v43, v44, v45, v46, v47);
      }

      if ((kmlUtilIsFleetKey() & 1) != 0 || ((kmlUtilIsFleetKey() | v11) & 1) == 0)
      {
        if (!a4)
        {
          goto LABEL_60;
        }

        if (kmlUtilIsFleetKey())
        {
          v48 = 224;
        }

        else
        {
          v48 = 227;
        }

        v35 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        v71 = NSLocalizedDescriptionKey;
        v49 = [NSString stringWithUTF8String:KmlErrorString()];
        v72 = v49;
        v50 = [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
        *a4 = [NSError errorWithDomain:v35 code:v48 userInfo:v50];

        goto LABEL_25;
      }

      v51 = KmlLogger();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315650;
        sub_100367390();
        sub_10036F60C();
        sub_10036F560();
        sub_10036F5F4(v52, v53, v54, v55, v56);
      }
    }

    sub_1003BD764(a1);
    v69 = v14;
    v57 = sub_1003BD998(a1, &v69);
    v58 = v69;

    if ((v57 & 1) == 0)
    {
      v59 = KmlLogger();
      if (sub_10036F5DC(v59))
      {
        *buf = 136315394;
        sub_100367390();
        v74 = 457;
        sub_10036F500(&_mh_execute_header, v14, v60, "%s : %i : Unable to verify first cert set service provider", buf);
      }

      if (a4)
      {
        v61 = v58;
        v34 = 0;
        *a4 = v58;
      }

      else
      {
        v34 = 0;
      }

      v14 = v58;
      goto LABEL_61;
    }

    v68 = v58;
    v62 = sub_1003BDDCC(a1, &v68);
    v14 = v68;

    if (v62)
    {
LABEL_49:
      v30 = KmlLogger();
      if (!os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        goto LABEL_22;
      }

      *buf = 136315394;
      sub_100367390();
      v74 = 477;
      v31 = "%s : %i : Successfully verified cert chain!";
      v32 = v30;
      v33 = OS_LOG_TYPE_INFO;
      goto LABEL_21;
    }

    v63 = KmlLogger();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      sub_100367390();
      v74 = 465;
      sub_10036F500(&_mh_execute_header, v63, v64, "%s : %i : Unable to verify service providers in cert chain", buf);
    }

    if (v10 & 1 | ((kmlUtilIsFleetKey() & 1) == 0) && ((kmlUtilIsFleetKey() | v11) & 1) != 0)
    {
      v65 = KmlLogger();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        sub_100367390();
        v74 = 473;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEBUG, "%s : %i : Continuing to validate despite failing to validate intermediate cert service providers", buf, 0x12u);
      }

      goto LABEL_49;
    }

LABEL_58:
    if (a4)
    {
      v66 = v14;
      v34 = 0;
      *a4 = v14;
      goto LABEL_61;
    }

    goto LABEL_60;
  }

  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    sub_100367390();
    v74 = 425;
    sub_10036F560();
    sub_10036F500(v25, v26, v27, v28, v29);
  }

  if (kmlUtilIsFleetKey() & 1) != 0 || ((v11 ^ 1))
  {
    if (a4)
    {
      v35 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v75[0] = NSLocalizedDescriptionKey;
      v36 = [NSString stringWithUTF8String:KmlErrorString()];
      v75[1] = NSLocalizedFailureReasonErrorKey;
      v76[0] = v36;
      v76[1] = @"Missing sharing initiator cert chain";
      [NSDictionary dictionaryWithObjects:v76 forKeys:v75 count:2];
      objc_claimAutoreleasedReturnValue();
      *a4 = [sub_10036F56C() errorWithDomain:? code:? userInfo:?];

LABEL_25:
    }

LABEL_60:
    v34 = 0;
    goto LABEL_61;
  }

  v30 = KmlLogger();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315394;
    sub_100367390();
    v74 = 427;
    v31 = "%s : %i : Ignoring missing cert chain and returning that cert chain is valid";
    v32 = v30;
    v33 = OS_LOG_TYPE_DEBUG;
LABEL_21:
    _os_log_impl(&_mh_execute_header, v32, v33, v31, buf, 0x12u);
  }

LABEL_22:

  v34 = 1;
LABEL_61:

LABEL_62:
  return v34;
}

uint64_t sub_1003BD1A4(uint64_t a1, NSObject *a2, void *a3, uint64_t a4)
{
  v8 = a3;
  if (!a1)
  {
    a4 = 0;
    goto LABEL_12;
  }

  if (a4)
  {
    *a4 = 0;
  }

  v9 = *(a1 + 9);
  if (v9 == kmlUtilIsFleetKey())
  {
    v15 = sub_1003BE1AC(a1);
    v12 = v15;
    if (!v15)
    {
      v22 = KmlLogger();
      if (sub_10004F844(v22))
      {
        sub_10036BED0();
        v54 = 499;
        sub_10036F4E4(&_mh_execute_header, v23, v24, "%s : %i : Unable to retrieve optionTwo from cert chain", &v52);
      }

      if (!a4)
      {
        goto LABEL_11;
      }

      a2 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v58[0] = NSLocalizedDescriptionKey;
      v13 = [NSString stringWithUTF8String:KmlErrorString()];
      v58[1] = NSLocalizedFailureReasonErrorKey;
      v59[0] = v13;
      v59[1] = @"Unable to retrieve optionTwo from last endpoint cert";
      v20 = v59;
      v21 = v58;
LABEL_23:
      [NSDictionary dictionaryWithObjects:v20 forKeys:v21 count:2];
      objc_claimAutoreleasedReturnValue();
      *a4 = [sub_10036F56C() errorWithDomain:? code:? userInfo:?];

      goto LABEL_9;
    }

    [v15 unsignedCharValue];
    IsFleetKey = kmlUtilIsFleetKey();
    if (IsFleetKey != kmlUtilIsFleetKey())
    {
      v17 = KmlLogger();
      if (sub_10004F844(v17))
      {
        sub_10036BED0();
        v54 = 505;
        sub_10036F4E4(&_mh_execute_header, v18, v19, "%s : %i : OptionTwo from endpoint and cert chain disagree on key being a fleet key", &v52);
      }

      if (!a4)
      {
        goto LABEL_11;
      }

      a2 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v56[0] = NSLocalizedDescriptionKey;
      v13 = [NSString stringWithUTF8String:KmlErrorString()];
      v56[1] = NSLocalizedFailureReasonErrorKey;
      v57[0] = v13;
      v57[1] = @"OptionTwo from endpoint and cert chain disagree on key being a fleet key";
      v20 = v57;
      v21 = v56;
      goto LABEL_23;
    }

    if (kmlUtilIsFleetKey())
    {
      v25 = KmlLogger();
      if (sub_10036F124(v25))
      {
        sub_10036BED0();
        v54 = 514;
        sub_10036F518(&_mh_execute_header, v26, v27, "%s : %i : We have received an invitation for a fleet vehicle", v28, v29, v30, v31, v50, v51, v52);
      }

      a2 = objc_opt_new();
      v51 = 0;
      v32 = [a2 fleetManufacturerAllowListWithError:&v51];
      v13 = v51;
      if (v13 || ([v32 containsObject:v8] & 1) == 0)
      {
        v46 = KmlLogger();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          v52 = 136315650;
          v53 = "[SharingInitiatorCertChain verifyOptionTwoSettings:forManufacturer:withError:]";
          sub_10036F4A8();
          sub_10036F460();
          v55 = v8;
          sub_10036F590(&_mh_execute_header, v46, v47, "%s : %i : %@ is not in allow list for fleet cars", &v52);
        }

        if (a4)
        {
          v48 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v49 = [v13 userInfo];
          *a4 = [NSError errorWithDomain:v48 code:223 userInfo:v49];
        }

        goto LABEL_9;
      }
    }

    else
    {
      if (!kmlUtilIsServerIssuedKey())
      {
        goto LABEL_34;
      }

      v33 = KmlLogger();
      if (sub_10036F124(v33))
      {
        sub_10036BED0();
        v54 = 530;
        sub_10036F518(&_mh_execute_header, v34, v35, "%s : %i : We have received an invitation for private car from server", v36, v37, v38, v39, v50, v51, v52);
      }
    }

LABEL_34:
    a2 = KmlLogger();
    a4 = 1;
    if (os_log_type_enabled(a2, OS_LOG_TYPE_INFO))
    {
      sub_10036BED0();
      v54 = 534;
      sub_10036F518(&_mh_execute_header, v40, v41, "%s : %i : Successfully verified option two settings for cert chain", v42, v43, v44, v45, v50, v51, v52);
    }

    goto LABEL_10;
  }

  v10 = KmlLogger();
  if (sub_10036F5DC(v10))
  {
    sub_10036BED0();
    v54 = 489;
    sub_10036F500(&_mh_execute_header, a1, v11, "%s : %i : Origin of first cert set does not agree with option two settings", &v52);
  }

  if (a4)
  {
    v12 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v60[0] = NSLocalizedDescriptionKey;
    a2 = [NSString stringWithUTF8String:KmlErrorString()];
    v60[1] = NSLocalizedFailureReasonErrorKey;
    v61[0] = a2;
    v61[1] = @"Origin of first cert set does not agree with option two settings";
    v13 = [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
    *a4 = [NSError errorWithDomain:v12 code:105 userInfo:v13];
LABEL_9:

    a4 = 0;
LABEL_10:

LABEL_11:
  }

LABEL_12:

  return a4;
}

void sub_1003BD764(uint64_t a1)
{
  if (a1)
  {
    v2 = objc_opt_new();
    v3 = *(a1 + 32);
    *(a1 + 32) = v2;

    *(a1 + 8) = 0;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v4 = *(a1 + 64);
    v5 = [v4 countByEnumeratingWithState:&v19 objects:v29 count:16];
    if (v5)
    {
      v7 = v5;
      v8 = *v20;
      *&v6 = 136315650;
      v18 = v6;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v4);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          v11 = [v10 value];
          v12 = SecCertificateCreateWithData(0, v11);

          if ([v10 tag] == 32548)
          {
            ++*(a1 + 8);
          }

          else if ([v10 tag] == 32580)
          {
            v15 = sub_1003BC798(a1);
            if (v15)
            {
              v16 = v15;
            }

            else
            {
              v16 = @"NIL_SERVICE_PROVIDER";
            }

            [*(a1 + 32) addObject:v16];
          }

          else
          {
            v13 = KmlLogger();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v14 = [v10 tag];
              *buf = v18;
              v24 = "[SharingInitiatorCertChain prepareAdditionalCertsForValidation]";
              v25 = 1024;
              v26 = 557;
              v27 = 1024;
              v28 = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s : %i : Unexpected Tag: 0x%x in cert chain", buf, 0x18u);
            }
          }

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v17 = [v4 countByEnumeratingWithState:&v19 objects:v29 count:16];
        v7 = v17;
      }

      while (v17);
    }
  }
}

uint64_t sub_1003BD998(uint64_t a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v3 = a2;
  if (a2)
  {
    *a2 = 0;
  }

  if ((*(a1 + 9) & 1) == 0)
  {
    v5 = KmlLogger();
    v3 = 1;
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      sub_10036F494();
      v42 = 630;
      sub_10036DC0C(&_mh_execute_header, v5, v16, "%s : %i : First sharer is not server, no service provider to verify", &v39);
    }

    goto LABEL_27;
  }

  if (*(a1 + 24))
  {
    v5 = objc_opt_new();
    v36 = 0;
    v6 = [v5 fleetServiceProviderAllowListWithError:&v36];
    v7 = v36;
    if (v7)
    {
      v8 = KmlLogger();
      if (sub_10036F5C4(v8))
      {
        sub_10036F494();
        v42 = 646;
        sub_10036F62C();
        sub_10036F500(v9, v10, v11, v12, v13);
      }

      if (!v3)
      {
        goto LABEL_26;
      }

      v14 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v15 = [v7 userInfo];
      *v3 = [sub_10036F538() errorWithDomain:? code:? userInfo:?];
    }

    else
    {
      v21 = [v6 containsObject:*(a1 + 24)];
      v22 = KmlLogger();
      v14 = v22;
      if (v21)
      {
        v3 = 1;
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          sub_10036F494();
          v42 = 662;
          sub_10036F62C();
          sub_10036DC0C(v23, v24, v25, v26, v27);
        }

        goto LABEL_25;
      }

      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v28 = *(a1 + 24);
        v39 = 136315650;
        v40 = "[SharingInitiatorCertChain verifyFirstCertServiceProviderWithError:]";
        v41 = 1024;
        sub_10036DCB0();
        sub_10036F62C();
        sub_10036F590(v29, v30, v31, v32, v33);
      }

      if (!v3)
      {
        goto LABEL_26;
      }

      v14 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v37 = NSLocalizedDescriptionKey;
      v15 = [NSString stringWithUTF8String:KmlErrorString()];
      v38 = v15;
      v34 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];
      *v3 = [sub_10036F538() errorWithDomain:? code:? userInfo:?];
    }

    v3 = 0;
LABEL_25:

LABEL_26:
    goto LABEL_27;
  }

  v17 = KmlLogger();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    sub_10036F494();
    v42 = 635;
    sub_10036F500(&_mh_execute_header, v17, v18, "%s : %i : First sharer server endpoint cert missing service provider extension", &v39);
  }

  if (v3)
  {
    v5 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v43 = NSLocalizedDescriptionKey;
    v19 = [NSString stringWithUTF8String:KmlErrorString()];
    v44 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
    *v3 = [NSError errorWithDomain:v5 code:225 userInfo:v20];

    v3 = 0;
LABEL_27:
  }

  return v3;
}

uint64_t sub_1003BDDCC(NSObject *a1, void *a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a2;
  if (a2)
  {
    *a2 = 0;
  }

  if (![(objc_class *)a1[4].isa count])
  {
    v4 = KmlLogger();
    v2 = 1;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *v31 = 136315394;
      sub_100367444();
      v32 = 673;
      sub_10036DC0C(&_mh_execute_header, v4, v11, "%s : %i : No additional service providers in cert chain, nothing to verify", v31);
    }

    goto LABEL_29;
  }

  v4 = objc_opt_new();
  v28 = 0;
  v5 = [v4 fleetServiceProviderAllowListWithError:&v28];
  v6 = v28;
  if (v6)
  {
    v7 = KmlLogger();
    if (sub_10036F5C4(v7))
    {
      *v31 = 136315394;
      sub_100367444();
      v32 = 681;
      sub_10036F500(&_mh_execute_header, a1, v8, "%s : %i : Unable to retrieve fleet server allowlist", v31);
    }

    if (!v2)
    {
      goto LABEL_28;
    }

    v9 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v10 = [v6 userInfo];
    *v2 = [sub_10036F538() errorWithDomain:? code:? userInfo:?];

LABEL_26:
    v2 = 0;
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = a1[4].isa;
    v12 = [v9 countByEnumeratingWithState:&v24 objects:v35 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
LABEL_14:
      v15 = 0;
      while (1)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v9);
        }

        v16 = *(*(&v24 + 1) + 8 * v15);
        if (([v5 containsObject:{v16, v24}] & 1) == 0)
        {
          break;
        }

        if (v13 == ++v15)
        {
          v13 = [v9 countByEnumeratingWithState:&v24 objects:v35 count:16];
          if (v13)
          {
            goto LABEL_14;
          }

          goto LABEL_20;
        }
      }

      v18 = KmlLogger();
      if (sub_10036F548(v18))
      {
        *v31 = 136315650;
        sub_100367444();
        v32 = 691;
        v33 = 2112;
        v34 = v16;
        sub_10036F590(&_mh_execute_header, v13, v19, "%s : %i : %@ (additional sharer) is not in allow list for fleet car service provider", v31);
      }

      if (v2)
      {
        v20 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        v29 = NSLocalizedDescriptionKey;
        v21 = [NSString stringWithUTF8String:KmlErrorString()];
        v30 = v21;
        v22 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
        *v2 = [NSError errorWithDomain:v20 code:225 userInfo:v22];

        goto LABEL_26;
      }
    }

    else
    {
LABEL_20:

      v9 = KmlLogger();
      v2 = 1;
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v31 = 136315394;
        sub_100367444();
        v32 = 700;
        sub_10036DC0C(&_mh_execute_header, v9, v17, "%s : %i : Successfully verified additional service providers in cert chain", v31);
      }
    }
  }

LABEL_28:
LABEL_29:

  return v2;
}

id sub_1003BE1AC(uint64_t a1)
{
  if (a1)
  {
    v2 = SecCertificateCreateWithData(0, *(a1 + 72));
    if (v2)
    {
      v3 = SecCertificateCopyExtensionValue();
      v4 = KmlLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
      {
        v5 = kmlUtilHexStringFromData();
        *buf = 136315650;
        v22 = "[SharingInitiatorCertChain getOptionTwoForCertData:]";
        sub_10036F4A8();
        sub_10036F460();
        v24 = v6;
        sub_10036F5F4(&_mh_execute_header, v4, v7, "%s : %i : Extension: %@", buf);
      }

      v8 = [KmlTlv TLVsWithData:v3];
      if ([v8 count])
      {
        v9 = [v8 objectAtIndexedSubscript:0];
        v10 = [v9 value];
      }

      else
      {
        v10 = 0;
      }

      v13 = [KmlTlv TLVsWithData:v10];
      [v13 count];
      v14 = KmlLogger();
      if (sub_10036F548(v14))
      {
        [v13 count];
        *buf = 136315906;
        v22 = "[SharingInitiatorCertChain getOptionTwoForCertData:]";
        sub_10036F4A8();
        sub_10036F460();
        v24 = @"No";
        v25 = 2048;
        v26 = v15;
        _os_log_impl(&_mh_execute_header, &swift_cvw_destroy_ptr, OS_LOG_TYPE_ERROR, "%s : %i : Endpoint certificate extension invalid: Marked Critical (%@), sequenceCount(%lu)", buf, 0x26u);
      }

      v16 = KmlLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v17 = kmlUtilHexStringFromData();
        *buf = 136315650;
        v22 = "[SharingInitiatorCertChain getOptionTwoForCertData:]";
        sub_10036F4A8();
        sub_10036F460();
        v24 = v18;
        sub_10036F5F4(&_mh_execute_header, v16, v19, "%s : %i : Extension: %@", buf);
      }
    }

    else
    {
      v11 = KmlLogger();
      if (sub_10036F5DC(v11))
      {
        sub_10036BED0();
        v23 = 594;
        sub_10036F500(&_mh_execute_header, v1, v12, "%s : %i : Unable to retrieve endpoint cert", buf);
      }
    }
  }

  return 0;
}

uint64_t sub_1003BE4E8(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 9) = a2;
  }

  return result;
}

void sub_1003BE4F4(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 48), a2);
  }
}

id sub_1003BE504(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a1)
  {
    objc_storeStrong((a1 + 40), a5);
    v12 = a2;
    sub_1003ADB68(*(a1 + 8), v12);

    sub_1003BE4F4(*(a1 + 8), *(a1 + 40));
    sub_1003ADB68(*(a1 + 16), *(a1 + 40));
    sub_1003AAB7C(*(a1 + 24), *(a1 + 40));
    v13 = +[NSMutableData data];
    v14 = *(a1 + 8);
    v15 = sub_1003B85A0(v10);
    sub_1003BF1B0(v14, v15);

    v16 = sub_1003AAA6C(*(a1 + 8));
    v17 = [v16 asData];
    sub_10036F7E4(v17);

    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 40) agreedKmlVehicleVersion], 768))
    {
      v18 = sub_1003AAA78(*(a1 + 8));
      v19 = [v18 asData];
      sub_10036F7E4(v19);
    }

    v20 = *(a1 + 16);
    v21 = sub_1003BA3DC(v10);
    v22 = sub_1003BA3C4(v10);
    v23 = sub_1003BA3D0(v10);
    sub_1003B85C4(v20, v21, v22, v23);

    v24 = sub_1003AAA78(*(a1 + 16));
    v25 = [v24 asData];
    sub_10036F7E4(v25);

    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 40) agreedKmlVehicleVersion], 768))
    {
      v26 = sub_1003AD0FC(*(a1 + 16));
      v27 = [v26 asData];
      sub_10036F7E4(v27);
    }

    v28 = sub_1003BFEA4(*(a1 + 8), v9, v10);
    [v13 appendData:v28];

    v30 = sub_1003BE7A8(a1, v29);
    if ([v30 length])
    {
      [v13 appendData:v30];
    }

    v31 = [KmlTlv TLVWithTag:32561 value:v13];
    v32 = *(a1 + 32);
    *(a1 + 32) = v31;

    a1 = [*(a1 + 32) asData];
  }

  return a1;
}

id sub_1003BE7A8(uint64_t a1, double a2)
{
  v3 = a1;
  if (a1)
  {
    if (sub_1003F6F5C(a2))
    {
      v5 = objc_opt_new();
      v6 = [v5 mockFleetEndpointCert];
      v7 = [v5 mockFleetIntermediateCert];
      v8 = [v5 mockFleetExtCaCert];
      v9 = ![v6 length] && !objc_msgSend(v7, "length") && objc_msgSend(v8, "length") == 0;

      if (sub_1003F6F5C(v10) && !v9)
      {
        v11 = KmlLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          sub_10036DB8C();
          v65 = 136;
          sub_10036F7C4(&_mh_execute_header, v12, v13, "%s : %i : Using mock certs for sharer cert chain", v14, v15, v16, v17, v62);
        }

        if ([v6 length] && (objc_msgSend(v7, "length") || objc_msgSend(v8, "length")))
        {
          sub_1003BE4E8(*(v3 + 24), 1);
          sub_1003BAE64(*(v3 + 24), v6);
          if ([v7 length])
          {
            sub_1003BE4F4(*(v3 + 24), v7);
          }

          if ([v8 length])
          {
            sub_1003ADB68(*(v3 + 24), v8);
          }

          v18 = sub_1003BFE98(*(v3 + 8));
          v19 = [v18 readerInfo];

          v20 = [[KmlRoutingInformation alloc] initWithReaderInformation:v19];
          v21 = *(v3 + 24);
          v22 = [v20 manufacturer];
          v23 = sub_1003BBFF4(v21, v22);

          v2 = KmlLogger();
          if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
          {
            v24 = @"No";
            v63 = "[KeySharingInvitation getSharerCertChain]";
            v62 = 136315650;
            if (v23)
            {
              v24 = @"Yes";
            }

            v64 = 1024;
            v65 = 157;
            v66 = 2112;
            v67 = v24;
            _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Is the test cert chain trusted: %@", &v62, 0x1Cu);
          }

LABEL_34:

          v3 = sub_1003BB820(*(v3 + 24));
LABEL_40:

          goto LABEL_41;
        }

        v42 = KmlLogger();
        if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          goto LABEL_38;
        }

        sub_10036DB8C();
        v65 = 139;
        v43 = "%s : %i : Can't use mock certs for cert chain, missing certs";
        goto LABEL_37;
      }
    }

    else
    {
      sub_1003F6F5C(v4);
      v6 = 0;
      v7 = 0;
      v8 = 0;
    }

    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(v3 + 40) agreedKmlVehicleVersion], 768))
    {
      v25 = sub_1003BFE98(*(v3 + 8));
      v26 = sub_100399BE8(KmlEndpointManager, v25);

      if ((v26 & 1) != 0 || (sub_1003BFE98(*(v3 + 8)), v27 = objc_claimAutoreleasedReturnValue(), [v27 shareInitiatorCertificateChainData], v28 = objc_claimAutoreleasedReturnValue(), v2 = objc_msgSend(v28, "length"), v28, v27, !v2))
      {
        v44 = KmlLogger();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
        {
          sub_10036DB8C();
          v65 = 169;
          sub_10036F7C4(&_mh_execute_header, v45, v46, "%s : %i : Constructing initiator cert chain for owner key or migrated friend key", v47, v48, v49, v50, v62);
        }

        sub_1003BE4E8(*(v3 + 24), 0);
        v51 = sub_1003BFE98(*(v3 + 8));
        v52 = [v51 certificates];
        [v52 objectAtIndexedSubscript:2];
        objc_claimAutoreleasedReturnValue();
        v53 = sub_10036F800();
        sub_1003BAE64(v53, v54);

        v55 = sub_1003BFE98(*(v3 + 8));
        v56 = [v55 certificates];
        [v56 objectAtIndexedSubscript:1];
        objc_claimAutoreleasedReturnValue();
        v57 = sub_10036F800();
        sub_1003BE4F4(v57, v58);

        v19 = sub_1003BFE98(*(v3 + 8));
        v20 = [v19 certificates];
        [v20 objectAtIndexedSubscript:0];
        objc_claimAutoreleasedReturnValue();
        v59 = sub_10036F800();
        sub_1003ADB68(v59, v60);
        goto LABEL_34;
      }

      v29 = *(v3 + 24);
      v30 = sub_1003BFE98(*(v3 + 8));
      v31 = [v30 shareInitiatorCertificateChainData];
      v32 = sub_1003BAE74(v29, v31);

      v33 = KmlLogger();
      v34 = v33;
      if (v32)
      {
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          sub_10036DB8C();
          v65 = 176;
          sub_10036F7C4(&_mh_execute_header, v35, v36, "%s : %i : Constructing initiator cert chain for friend key", v37, v38, v39, v40, v62);
        }

        v41 = *(v3 + 24);
        v19 = sub_1003BFE98(*(v3 + 8));
        v20 = [v19 certificates];
        v2 = [v20 objectAtIndexedSubscript:2];
        sub_1003BBC0C(v41, v2);
        goto LABEL_34;
      }

      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_10036DB8C();
        v65 = 179;
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "%s : %i : Unable to parse sharing certificate chain from friend endpoint", &v62, 0x12u);
      }

LABEL_39:
      v3 = 0;
      goto LABEL_40;
    }

    v42 = KmlLogger();
    if (!os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
    {
LABEL_38:

      goto LABEL_39;
    }

    sub_10036DB8C();
    v65 = 160;
    v43 = "%s : %i : Return nil for v1 key";
LABEL_37:
    _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, v43, &v62, 0x12u);
    goto LABEL_38;
  }

LABEL_41:

  return v3;
}

uint64_t sub_1003BEDDC(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    v4 = [KmlTlv TLVsWithData:a2];
    v5 = KmlLogger();
    if (sub_10036DCF8(v5))
    {
      sub_10036F790(4.8151e-34);
      v50 = 83;
      sub_10036F7A4(&_mh_execute_header, v6, v7, "%s : %i : KSInvitationData: Looking for invitation TLV");
    }

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v8 = v4;
    v9 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
    if (v9)
    {
      v2 = v9;
      v10 = *v46;
      do
      {
        for (i = 0; i != v2; i = (i + 1))
        {
          if (*v46 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v45 + 1) + 8 * i);
          if ([v12 tag] == 32561)
          {
            objc_storeStrong((v3 + 32), v12);
          }
        }

        v2 = [v8 countByEnumeratingWithState:&v45 objects:v49 count:16];
      }

      while (v2);
    }

    v13 = *(v3 + 32);
    v14 = KmlLogger();
    v15 = sub_10036DCF8(v14);
    if (v13)
    {
      if (v15)
      {
        sub_10036F790(4.8151e-34);
        v50 = 95;
        sub_10036F7A4(&_mh_execute_header, v16, v17, "%s : %i : KSInvitationData: Looking for Endpoint Config and Device Config TLVs");
      }

      v18 = *(v3 + 8);
      v2 = *(v3 + 32);
      v19 = v18;
      v20 = [v2 value];
      v21 = sub_1003C042C(v19, v20);

      v22 = KmlLogger();
      v23 = sub_10036DCF8(v22);
      if (v21)
      {
        if (v23)
        {
          sub_10036F790(4.8151e-34);
          v50 = 101;
          sub_10036F7A4(&_mh_execute_header, v24, v25, "%s : %i : KSInvitationData: Looking for KeyConfig TLV");
        }

        v26 = *(v3 + 16);
        v2 = *(v3 + 32);
        v27 = v26;
        v28 = [v2 value];
        v29 = sub_1003B8C54(v27, v28);

        v30 = KmlLogger();
        v31 = sub_10036DCF8(v30);
        if (v29)
        {
          if (v31)
          {
            sub_10036F790(4.8151e-34);
            v50 = 107;
            sub_10036F7A4(&_mh_execute_header, v32, v33, "%s : %i : KSInvitationData: Looking for Server cert chain TLV");
          }

          v34 = *(v3 + 24);
          v35 = *(v3 + 32);
          v36 = v34;
          v37 = [v35 value];
          v38 = sub_1003BAE74(v36, v37);

          if (v38)
          {
            v3 = 1;
LABEL_33:

            return v3;
          }

          v2 = KmlLogger();
          v3 = 1;
          if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
          {
            sub_10036F790(4.8151e-34);
            v50 = 109;
            sub_10036F7A4(&_mh_execute_header, v43, v44, "%s : %i : KSInvitationData: No Cert chain TLV found");
          }

LABEL_32:

          goto LABEL_33;
        }

        if (v31)
        {
          sub_10036F790(4.8151e-34);
          v50 = 103;
          v41 = "%s : %i : KSInvitationData: No KeyConfig TLV found";
          goto LABEL_30;
        }

LABEL_31:
        v3 = 0;
        goto LABEL_32;
      }

      if (!v23)
      {
        goto LABEL_31;
      }

      sub_10036F790(4.8151e-34);
      v50 = 97;
      v41 = "%s : %i : KSInvitationData: No Endpoint Config TLV found";
    }

    else
    {
      if (!v15)
      {
        goto LABEL_31;
      }

      sub_10036F790(4.8151e-34);
      v50 = 91;
      v41 = "%s : %i : KSInvitationData: No invitation TLV found";
    }

LABEL_30:
    sub_10036F7A4(&_mh_execute_header, v39, v40, v41);
    goto LABEL_31;
  }

  return v3;
}

void sub_1003BF1B0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (!a1)
  {
    goto LABEL_75;
  }

  v5 = +[NSMutableData data];
  v6 = +[NSMutableData data];
  v7 = [*(a1 + 40) readerIdentifier];

  if (v7)
  {
    [*(a1 + 40) readerIdentifier];
    objc_claimAutoreleasedReturnValue();
    v8 = [sub_10036F8CC() TLVWithTag:77 value:v2];
    v9 = [v8 asData];

    sub_10036F960();
    [v6 appendData:v9];
  }

  v135 = v6;
  v136 = v5;
  v10 = [*(a1 + 40) configuration];
  v11 = [v10 opt1];

  v12 = [*(a1 + 40) configuration];
  v13 = [v12 opt2];

  v14 = KmlLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v161 = "[EndpointConfigForSharing createEndpointConfigWithSlotIdentifier:]";
    v162 = 1024;
    v163 = 36;
    v164 = 1024;
    v165 = v11;
    v166 = 1024;
    v167 = v13 & 0xFB;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : SiaC : options_1: %02x; options_2: %02x", buf, 0x1Eu);
  }

  v15 = [KmlTlv TLVWithTag:70 unsignedChar:v11];
  v16 = [v15 asData];
  [v6 appendData:v16];

  v17 = v6;
  v18 = [KmlTlv TLVWithTag:71 unsignedChar:v13 & 0xFB];
  v19 = [v18 asData];
  [v6 appendData:v19];

  v20 = v11 & 0xCF;
  v21 = v13 & 0xB3;
  v22 = KmlLogger();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    *buf = 136315906;
    v161 = "[EndpointConfigForSharing createEndpointConfigWithSlotIdentifier:]";
    v162 = 1024;
    v163 = 50;
    v164 = 1024;
    v165 = v20;
    v166 = 1024;
    v167 = v21;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s : %i : V1 : options_1: %02x; options_2: %02x", buf, 0x1Eu);
  }

  v23 = [KmlTlv TLVWithTag:70 unsignedChar:v20];
  v24 = [v23 asData];
  v25 = v136;
  sub_10036F960();

  v26 = [KmlTlv TLVWithTag:71 unsignedChar:v21];
  v27 = [v26 asData];
  [v136 appendData:v27];

  v28 = [KmlTlv TLVWithTag:92 unsignedShort:256];
  v29 = [v28 asData];

  [v136 appendData:v29];
  v133 = v29;
  [v6 appendData:v29];
  v30 = [*(a1 + 40) readerPublicKey];

  if (v30)
  {
    [*(a1 + 40) readerPublicKey];
    objc_claimAutoreleasedReturnValue();
    v31 = [sub_10036F8CC() TLVWithTag:91 value:v29];
    v32 = [v31 asData];

    sub_10036F960();
    [v6 appendData:v32];
  }

  kmlUtilTimeNow();
  objc_claimAutoreleasedReturnValue();
  v33 = [sub_10036F8CC() TLVWithTag:81 value:v29];
  v34 = [v33 asData];

  sub_10036F960();
  v132 = v34;
  [v6 appendData:v34];
  kmlUtilInfiniteTime();
  objc_claimAutoreleasedReturnValue();
  v35 = [sub_10036F8CC() TLVWithTag:82 value:v29];
  v36 = [v35 asData];

  sub_10036F960();
  v131 = v36;
  [v6 appendData:v36];
  v37 = [*(a1 + 40) authorizedKeys];
  v38 = +[NSMutableData data];
  v153 = 0u;
  v154 = 0u;
  v155 = 0u;
  v156 = 0u;
  v39 = v37;
  v40 = [v39 countByEnumeratingWithState:&v153 objects:v159 count:16];
  if (v40)
  {
    v41 = v40;
    v42 = *v154;
    do
    {
      for (i = 0; i != v41; i = i + 1)
      {
        if (*v154 != v42)
        {
          objc_enumerationMutation(v39);
        }

        [v38 appendData:*(*(&v153 + 1) + 8 * i)];
      }

      v41 = [v39 countByEnumeratingWithState:&v153 objects:v159 count:16];
    }

    while (v41);
  }

  if (v38)
  {
    v44 = [KmlTlv TLVWithTag:73 value:v38];
    v45 = [v44 asData];

    [v136 appendData:v45];
    [v6 appendData:v45];
  }

  v46 = [*(a1 + 40) confidentialMailBoxSize];
  v47 = bswap32([v46 unsignedIntValue]) >> 16;

  v152 = v47;
  v48 = [*(a1 + 40) privateMailBoxSize];
  v49 = bswap32([v48 unsignedIntValue]) >> 16;

  v151 = v49;
  v50 = KmlLogger();
  if (sub_10036F978(v50))
  {
    v49 = [*(a1 + 40) confidentialMailBoxSize];
    v51 = [v49 unsignedIntValue];
    *buf = 136315906;
    v161 = "[EndpointConfigForSharing createEndpointConfigWithSlotIdentifier:]";
    v162 = 1024;
    sub_10036F930(v51, 1024);
    sub_10036F920();
    _os_log_impl(v52, v53, v54, v55, v56, 0x1Eu);
  }

  v57 = KmlLogger();
  if (sub_10036F978(v57))
  {
    v49 = [*(a1 + 40) privateMailBoxSize];
    v58 = [v49 unsignedIntValue];
    *buf = 136315906;
    v161 = "[EndpointConfigForSharing createEndpointConfigWithSlotIdentifier:]";
    v162 = 1024;
    sub_10036F930(v58, 1024);
    sub_10036F920();
    _os_log_impl(v59, v60, v61, v62, v63, 0x1Eu);
  }

  [NSData dataWithBytes:&v152 length:2];
  objc_claimAutoreleasedReturnValue();
  v64 = [sub_10036F8CC() TLVWithTag:74 value:v49];

  v65 = [NSData dataWithBytes:&v151 length:2];
  v66 = [KmlTlv TLVWithTag:75 value:v65];

  v138 = v64;
  v137 = v66;
  v130 = [*(a1 + 40) mailboxSizesPlusAdditionalData];
  v67 = [KmlTlv TLVsWithData:?];
  v134 = a1;
  v129 = v67;
  if (![v67 count])
  {
    v93 = KmlLogger();
    if (sub_10036F978(v93))
    {
      *buf = 136315394;
      v161 = "[EndpointConfigForSharing createEndpointConfigWithSlotIdentifier:]";
      v162 = 1024;
      v163 = 133;
      sub_10036F920();
      _os_log_impl(v94, v95, v96, v97, v98, 0x12u);
    }

    v99 = v138;
    v100 = v137;
    v140 = v100;
    v71 = v99;
    if (v99)
    {
      goto LABEL_67;
    }

    goto LABEL_68;
  }

  v127 = v39;
  v128 = v4;
  v149 = 0u;
  v150 = 0u;
  v147 = 0u;
  v148 = 0u;
  v68 = v67;
  v69 = [v68 countByEnumeratingWithState:&v147 objects:v158 count:16];
  if (!v69)
  {
    v139 = 0;
    v141 = 0;
    v71 = 0;
    goto LABEL_48;
  }

  v70 = v69;
  v139 = 0;
  v141 = 0;
  v71 = 0;
  v72 = *v148;
  do
  {
    for (j = 0; j != v70; j = j + 1)
    {
      if (*v148 != v72)
      {
        objc_enumerationMutation(v68);
      }

      v74 = *(*(&v147 + 1) + 8 * j);
      if ([v74 tag] == 74)
      {
        v75 = KmlLogger();
        if (sub_10036F124(v75))
        {
          sub_10036F990(4.8151e-34);
          sub_10036F8A0(v76);
          v78 = sub_10036F948(v77);
          _os_log_impl(v78, v79, v80, "%s : %i : Using conf mailbox size for V1 from data saved from Car", v81, 0x12u);
        }

        v82 = v74;
        v83 = v71;
        v71 = v82;
      }

      else if ([v74 tag] == 75)
      {
        v84 = KmlLogger();
        if (sub_10036F124(v84))
        {
          sub_10036F990(4.8151e-34);
          sub_10036F8A0(v85);
          v87 = sub_10036F948(v86);
          _os_log_impl(v87, v88, v89, "%s : %i : Using priv mailbox size for V1 from data saved from Car", v90, 0x12u);
        }

        v91 = v74;
        v83 = v141;
        v141 = v91;
      }

      else
      {
        if ([v74 tag] != 96)
        {
          continue;
        }

        v92 = [v74 value];
        v83 = v139;
        v139 = v92;
      }
    }

    v70 = [v68 countByEnumeratingWithState:&v147 objects:v158 count:16];
  }

  while (v70);
LABEL_48:

  v101 = v139;
  v99 = v138;
  v140 = v137;
  if (![v139 length])
  {
    goto LABEL_66;
  }

  v102 = [KmlTlv TLVsWithData:v139];
  v143 = 0u;
  v144 = 0u;
  v145 = 0u;
  v146 = 0u;
  v103 = [v102 countByEnumeratingWithState:&v143 objects:v157 count:16];
  v99 = v138;
  v140 = v137;
  if (!v103)
  {
    goto LABEL_65;
  }

  v104 = v103;
  v105 = *v144;
  v99 = v138;
  v140 = v137;
  while (2)
  {
    v106 = 0;
    while (2)
    {
      if (*v144 != v105)
      {
        objc_enumerationMutation(v102);
      }

      v107 = *(*(&v143 + 1) + 8 * v106);
      if ([v107 tag] == 74)
      {
        v108 = KmlLogger();
        if (sub_10036F124(v108))
        {
          sub_10036F990(4.8151e-34);
          sub_10036F8A0(v109);
          *(v110 + 14) = 124;
          _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_INFO, "%s : %i : Using conf mailbox size for V3 from data saved from Car", buf, 0x12u);
        }

        v111 = v99;
        v99 = v107;
        goto LABEL_62;
      }

      if ([v107 tag] == 75)
      {
        v112 = KmlLogger();
        if (sub_10036F124(v112))
        {
          sub_10036F990(4.8151e-34);
          sub_10036F8A0(v113);
          *(v114 + 14) = 127;
          _os_log_impl(&_mh_execute_header, v136, OS_LOG_TYPE_INFO, "%s : %i : Using priv mailbox size for V3 from data saved from Car", buf, 0x12u);
        }

        v111 = v140;
        v140 = v107;
LABEL_62:

        v115 = v107;
      }

      if (v104 != ++v106)
      {
        continue;
      }

      break;
    }

    v104 = [v102 countByEnumeratingWithState:&v143 objects:v157 count:16];
    if (v104)
    {
      continue;
    }

    break;
  }

LABEL_65:

  v101 = v139;
LABEL_66:

  v39 = v127;
  v4 = v128;
  v17 = v135;
  v25 = v136;
  v100 = v141;
  if (v71)
  {
LABEL_67:
    v116 = [v71 asData];
    [v25 appendData:v116];
  }

LABEL_68:
  if (v100)
  {
    v117 = [v100 asData];
    [v25 appendData:v117];
  }

  if (v99)
  {
    v118 = [v99 asData];
    [v17 appendData:v118];
  }

  v142 = v100;
  if (v140)
  {
    v119 = [v140 asData];
    [v17 appendData:v119];
  }

  v120 = [KmlTlv TLVWithTag:78 value:v4, v127, v128];
  v121 = [v120 asData];
  sub_10036F960();

  v122 = [v120 asData];
  [v17 appendData:v122];

  v123 = [KmlTlv TLVWithTag:32551 value:v25];
  v124 = *(v134 + 8);
  *(v134 + 8) = v123;

  v125 = [KmlTlv TLVWithTag:32556 value:v17];
  v126 = *(v134 + 16);
  *(v134 + 16) = v125;

LABEL_75:
}

uint64_t sub_1003BFE98(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

id sub_1003BFEA4(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (!a1)
  {
    v8 = 0;
    goto LABEL_38;
  }

  v8 = +[NSMutableData data];
  if (sub_1003DACE0(v7))
  {
    v9 = [*(a1 + 40) readerInfo];
    v10 = [v9 dataUsingEncoding:4];
    v11 = [KmlTlv TLVWithTag:89 value:v10];
    v12 = [v11 asData];
    sub_10036F8D8(v12);
  }

  else
  {
    v13 = [KmlRoutingInformation alloc];
    v14 = [*(a1 + 40) readerInfo];
    v9 = [v13 initWithReaderInformation:v14];

    v10 = [v9 getRoutingInformation];
    v11 = [v10 dataUsingEncoding:4];
    v3 = [KmlTlv TLVWithTag:89 value:v11];
    v15 = [v3 asData];
    [v8 appendData:v15];
  }

  v16 = [KmlDeviceConfigurationData alloc];
  v17 = [*(a1 + 40) deviceConfiguration];
  v18 = [v16 initWithData:v17];

  v19 = sub_10036F9BC();
  if (sub_10036F8F4(v19))
  {
    v20 = [*(a1 + 48) vehicleSupportedFrameworkVersionsTlvAsData];

    if (v20)
    {
      v21 = [*(a1 + 48) vehicleSupportedFrameworkVersionsTlvAsData];
      sub_10036F884(v21);
    }

    v22 = [*(a1 + 48) vehicleSupportedAppletVersionsTlvAsData];

    if (!v22)
    {
      goto LABEL_12;
    }

    v23 = [*(a1 + 48) vehicleSupportedAppletVersionsTlvAsData];
    sub_10036F884(v23);
  }

  else
  {
    v22 = [KmlTlv TLVWithTag:92 unsignedShort:256];
    v24 = [v22 asData];
    sub_10036F8B0(v24);
  }

LABEL_12:
  v25 = [v18 sharingConfigForFriendAsData];
  sub_10036F884(v25);

  if (v6)
  {
    [v8 appendData:v6];
  }

  v26 = [v18 confMailboxSettingAsData];
  v27 = [v26 length];

  if (v27)
  {
    v28 = [v18 confMailboxSettingAsData];
    v29 = [KmlTlv TLVWithTag:74 value:v28];
    v30 = [v29 asData];
    sub_10036F8D8(v30);
  }

  v31 = [v18 privateMailboxSettingAsData];
  v32 = [v31 length];

  if (v32)
  {
    v33 = [v18 privateMailboxSettingAsData];
    v34 = [KmlTlv TLVWithTag:75 value:v33];
    v35 = [v34 asData];
    sub_10036F8D8(v35);
  }

  v36 = [v18 additionalMailboxSettingAsData];
  v37 = [v36 length];

  if (v37)
  {
    v38 = [v18 additionalMailboxSettingAsData];
    sub_10036F884(v38);
  }

  if ([v18 sharingPasswordRequired])
  {
    v39 = [KmlTlv TLVWithTag:215 unsignedChar:1];
    v40 = [v39 asData];
    sub_10036F8B0(v40);

    v41 = sub_10036F9BC();
    if (sub_10036F8F4(v41))
    {
      if ([v18 sharingPasswordLength])
      {
        goto LABEL_23;
      }
    }

    v43 = sub_10036F9BC();
    if ((sub_10036F8F4(v43) & 1) == 0)
    {
      if (sub_1003DAC98(v7))
      {
        if ([v18 sharingPasswordLength])
        {
          v39 = [v18 sharingPasswordLength];
          v37 = sub_1003C75D4(v7);
          v3 = [v37 length];

          if (v3 == v39)
          {
LABEL_23:
            v42 = [v18 sharingPasswordLengthAsData];
            sub_10036F884(v42);
          }
        }
      }
    }
  }

  v44 = sub_10036F9BC();
  if (sub_10036F8F4(v44))
  {
    v45 = [*(a1 + 48) kmlSupportedVersionsTlvForShareInitiator];
    v46 = [v45 asData];
    sub_10036F8B0(v46);
  }

  v47 = sub_1003C75EC(v7);
  v48 = [v47 length];

  v49 = sub_1003C22E0(v7);
  if (v48 && v49)
  {
    v47 = [KmlTlv TLVWithTag:40727 unsignedChar:v49];
    v50 = [v47 asData];
    sub_10036F8D8(v50);

    v51 = [KmlTlv TLVWithTag:40728 unsignedChar:v48];
    v52 = [v51 asData];
    sub_10036F8B0(v52);
  }

  v53 = [v18 oemSpecificContentAsData];

  if (v53)
  {
    v54 = [v18 oemSpecificContentAsData];
    sub_10036F884(v54);
  }

  v55 = [*(a1 + 40) hupData];

  if (v55)
  {
    v56 = [*(a1 + 40) hupData];
    v57 = [KmlTlv TLVWithTag:40736 value:v56];
    v58 = [v57 asData];
    sub_10036F8B0(v58);
  }

  kmlUtilLogLargeData();

LABEL_38:

  return v8;
}

uint64_t sub_1003C042C(id *a1, void *a2)
{
  v4 = a2;
  if (!a1)
  {
    v41 = 0;
    goto LABEL_36;
  }

  v54 = +[NSMutableArray array];
  v51 = v4;
  v5 = [KmlTlv TLVsWithData:v4];
  *v56 = 0u;
  v57 = 0u;
  *v58 = 0u;
  v59 = 0u;
  v6 = [v5 countByEnumeratingWithState:v56 objects:v66 count:16];
  if (!v6)
  {
    goto LABEL_23;
  }

  v8 = v6;
  v9 = *v57;
  *&v7 = 136315394;
  *v55 = v7;
  *&v7 = 136315650;
  *v52 = v7;
  do
  {
    v10 = 0;
    do
    {
      if (*v57 != v9)
      {
        objc_enumerationMutation(v5);
      }

      v2 = *(v56[1] + 8 * v10);
      if ([v2 tag] == 32551)
      {
        v11 = KmlLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = v55[0];
          v61 = "[EndpointConfigForSharing parseEndpointCreationAndDeviceConfigsFromData:]";
          v62 = 1024;
          v63 = 272;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %i : Found endpoint config", buf, 0x12u);
        }

        v12 = a1 + 1;
LABEL_15:
        objc_storeStrong(v12, v2);
        goto LABEL_16;
      }

      if ([v2 tag] == 32556)
      {
        v13 = KmlLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          *buf = v55[0];
          v61 = "[EndpointConfigForSharing parseEndpointCreationAndDeviceConfigsFromData:]";
          v62 = 1024;
          v63 = 275;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : Found endpoint config for SiaC", buf, 0x12u);
        }

        v12 = a1 + 2;
        goto LABEL_15;
      }

      v14 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v2 tag]);
      v15 = [&off_1004DC728 containsObject:v14];

      if (v15)
      {
        v16 = KmlLogger();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          [v2 tag];
          *buf = v52[0];
          sub_10036F910();
          v63 = 278;
          v64 = v17;
          v65 = v18;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "%s : %i : Found device config tag : 0x%x", buf, 0x18u);
        }

        [v54 addObject:v2];
      }

LABEL_16:
      v10 = v10 + 1;
    }

    while (v8 != v10);
    v19 = [v5 countByEnumeratingWithState:v56 objects:v66 count:16];
    v8 = v19;
  }

  while (v19);
LABEL_23:
  v20 = v54;
  if ([v54 count])
  {
    objc_storeStrong(a1 + 3, v54);
  }

  v21 = a1[1];
  if (v21 && (v2 = a1[3], v21, v2))
  {
    v22 = objc_alloc_init(KmlEndpointCreationConfig);
    v23 = a1[4];
    a1[4] = v22;

    v24 = a1[4];
    v25 = a1[1];
    v26 = v24;
    v27 = [sub_10036F8CC() value];
    sub_1003DBE38(v24, v27);

    if (a1[2])
    {
      v28 = KmlLogger();
      if (sub_10036F978(v28))
      {
        *buf = 136315394;
        sub_10036F910();
        v63 = 295;
        sub_10036F99C(&_mh_execute_header, v29, v30, "%s : %i : Apply SiaC overrides", v31, v32, v33, v34, v50, v4, v52[0], v52[1], v53, v54, v55[0], v55[1], v56[0], v56[1], v57, *(&v57 + 1), v58[0], v58[1], v59, *(&v59 + 1), buf[0]);
      }

      v35 = a1[4];
      v36 = a1[2];
      v37 = v35;
      v38 = [sub_10036F8CC() value];
      sub_1003DBED8(v35, v38);
    }

    v39 = a1[3];
    v40 = a1[4];
    sub_1003DC320(v40, v39);

    v41 = sub_1003DCB78(a1[4]);
  }

  else
  {
    v42 = KmlLogger();
    if (sub_10036F978(v42))
    {
      *buf = 136315394;
      sub_10036F910();
      v63 = 288;
      sub_10036F99C(&_mh_execute_header, v43, v44, "%s : %i : Missing endpoint config / device config", v45, v46, v47, v48, v50, v4, v52[0], v52[1], v53, v54, v55[0], v55[1], v56[0], v56[1], v57, *(&v57 + 1), v58[0], v58[1], v59, *(&v59 + 1), buf[0]);
    }

    v41 = 0;
    v4 = v51;
  }

LABEL_36:
  return v41;
}

void sub_1003C11C4(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10037049C;
    v3[3] = &unk_1004C2B00;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

void sub_1003C1240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1)
  {
    if (*(a1 + 8) == 11)
    {

      sub_1003C11C4(a1, 12, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      v9 = KmlLogger();
      if (sub_10036F978(v9))
      {
        sub_10036DB8C();
        v13 = 498;
        sub_10037220C(&_mh_execute_header, v10, v11, "%s : %i : Transaction session is not running. Ignore request to end it", v12);
      }
    }
  }
}

void sub_1003C1324(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v32 = 0;
      v4 = [v3 readAPDU:&v32];
      v5 = v32;
      if (v4)
      {
        v6 = KmlLogger();
        if (sub_10036F124(v6))
        {
          sub_1003722B8();
          v36 = 436;
          v37 = 2112;
          v38 = v4;
          sub_1003722CC(&_mh_execute_header, v7, v8, "%s : %i : error reading APDU from active session: %@", v9, v10, v11, v12, v25, v26, v27, v28, v29, v30, v31, v32, v33);
        }
      }

      v13 = KmlLogger();
      if (sub_10036F124(v13))
      {
        sub_1003722B8();
        v36 = 438;
        v37 = 2112;
        v38 = v5;
        sub_1003722CC(&_mh_execute_header, v14, v15, "%s : %i : Received APDU %@", v16, v17, v18, v19, v25, v26, v27, v28, v29, v30, v31, v32, v33);
      }
    }

    else
    {
      v20 = KmlLogger();
      if (sub_10036F124(v20))
      {
        v33 = 136315394;
        v34 = "[KmlNfcPairingTransport readAPDU_sync]";
        v35 = 1024;
        v36 = 432;
        sub_10036DC0C(&_mh_execute_header, v1, v21, "%s : %i : No active hce session, nothing left to read", &v33);
      }

      v5 = 0;
      v4 = 0;
    }

    v22 = *(a1 + 80);
    v25 = _NSConcreteStackBlock;
    v26 = 3221225472;
    v27 = sub_100370D88;
    v28 = &unk_1004C24A8;
    v29 = a1;
    v30 = v5;
    v31 = v4;
    v23 = v4;
    v24 = v5;
    dispatch_async(v22, &v25);
  }
}

void sub_1003C1530(uint64_t a1)
{
  if (a1)
  {
    v3 = [*(a1 + 40) stopEmulation];
    [*(a1 + 40) endSession];
    [*(a1 + 40) setDelegate:0];
    v4 = *(a1 + 40);
    *(a1 + 40) = 0;

    [*(a1 + 48) stopCardEmulation];
    [*(a1 + 48) endSession];
    [*(a1 + 48) setDelegate:0];
    v5 = *(a1 + 48);
    *(a1 + 48) = 0;

    v6 = *(a1 + 32);
    *(a1 + 32) = 0;

    sub_1003C1FBC(a1);
    sub_1003C2200(a1);
    v7 = KmlLogger();
    if (sub_100057AEC(v7))
    {
      sub_10036DB8C();
      v11 = 422;
      sub_10036DBA0(&_mh_execute_header, v8, v9, "%s : %i : Resetting state to ready", v10);
    }

    *(a1 + 8) = 0;
  }
}

void sub_1003C1648(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    v5 = KmlLogger();
    if (sub_10036DCF8(v5))
    {
      v6 = *(v4 + 8);
      *buf = 136315906;
      v111 = "[KmlNfcPairingTransport setCurrentState_sync:]";
      v112 = 1024;
      v113 = 218;
      v114 = 2048;
      v115 = v6;
      v116 = 2048;
      v117 = a2;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Current state %ld, new state %ld", buf, 0x26u);
    }

    *(v4 + 16) = *(v4 + 8);
    *(v4 + 8) = a2;
    switch(a2)
    {
      case 0uLL:
        v7 = KmlLogger();
        if (!sub_10036F978(v7))
        {
          goto LABEL_26;
        }

        sub_10037218C();
        v113 = 224;
        v10 = "%s : %i : NFC Pairing transport is ready";
        goto LABEL_22;
      case 1uLL:
        v28 = KmlSignpostLogger();
        if (os_signpost_enabled(v28))
        {
          *buf = 0;
          _os_signpost_emit_with_name_impl(&_mh_execute_header, v28, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NfcHceSessionCreate", "", buf, 2u);
        }

        v29 = *(v4 + 24);
        sub_100057A60();
        sub_100057B28();
        v105 = sub_1003705DC;
        v106 = &unk_1004D1BE8;
        v107 = v4;
        v31 = [v30 startSecureElementAndHCESession:&v103];
        v32 = *(v4 + 32);
        *(v4 + 32) = v31;

        v33 = KmlLogger();
        if (!sub_10036F978(v33))
        {
          goto LABEL_26;
        }

        sub_10037218C();
        v113 = 250;
        v10 = "%s : %i : Waiting for session start";
        goto LABEL_22;
      case 2uLL:
        v74 = KmlLogger();
        if (!sub_100057AEC(v74))
        {
          goto LABEL_43;
        }

        sub_10037218C();
        v113 = 255;
        v56 = "%s : %i : Starting Host Card Emulation";
        goto LABEL_42;
      case 3uLL:
        v21 = KmlLogger();
        if (sub_100057AEC(v21))
        {
          sub_10037218C();
          v113 = 260;
          sub_1003721B4(&_mh_execute_header, v22, v23, "%s : %i : Host Card Emulation session started", v24, v25, v26, v27, v102, v103, v104, v105, v106, v107, v108, v109, buf[0]);
        }

        v4 = [v4 delegate];
        [v4 handleSessionStartResult:0];
        goto LABEL_26;
      case 4uLL:
        v20 = KmlLogger();
        if (!sub_10036F978(v20))
        {
          goto LABEL_26;
        }

        sub_10037218C();
        v113 = 265;
        v10 = "%s : %i : We will pause Host Card Emulation session as soon as current session disconnects";
        goto LABEL_22;
      case 5uLL:
        v11 = KmlLogger();
        if (sub_100057AEC(v11))
        {
          sub_10037218C();
          v113 = 269;
          sub_1003721B4(&_mh_execute_header, v12, v13, "%s : %i : Host Card Emulation session paused", v14, v15, v16, v17, v102, v103, v104, v105, v106, v107, v108, v109, buf[0]);
        }

        v18 = [*(v4 + 40) stopEmulation];
        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_100372238();
        [v19 handleSessionPauseResult:?];
        goto LABEL_10;
      case 6uLL:
        v49 = KmlLogger();
        if (!sub_100057AEC(v49))
        {
          goto LABEL_43;
        }

        sub_10037218C();
        v113 = 275;
        v56 = "%s : %i : Resuming Host Card Emulation";
LABEL_42:
        sub_1003721B4(&_mh_execute_header, v50, v51, v56, v52, v53, v54, v55, v102, v103, v104, v105, v106, v107, v108, v109, buf[0]);
LABEL_43:

        sub_1003C1D1C(v4);
        break;
      case 7uLL:
        v35 = KmlLogger();
        if (sub_100057AEC(v35))
        {
          sub_10037218C();
          v113 = 279;
          sub_1003721B4(&_mh_execute_header, v36, v37, "%s : %i : Host Card Emulation session resumed", v38, v39, v40, v41, v102, v103, v104, v105, v106, v107, v108, v109, buf[0]);
        }

        v4 = [v4 delegate];
        [v4 handleSessionResumeResult:0];
        goto LABEL_26;
      case 8uLL:
        v34 = KmlLogger();
        if (!sub_10036F978(v34))
        {
          goto LABEL_26;
        }

        sub_10037218C();
        v113 = 283;
        v10 = "%s : %i : We will stop Host Card Emulation session as soon as current session disconnects";
LABEL_22:
        sub_10037220C(&_mh_execute_header, v8, v9, v10, buf);
LABEL_26:

        break;
      case 9uLL:
        v57 = KmlLogger();
        if (sub_100057AEC(v57))
        {
          sub_10037218C();
          v113 = 287;
          sub_1003721B4(&_mh_execute_header, v58, v59, "%s : %i : Host Card Emulation session stopped", v60, v61, v62, v63, v102, v103, v104, v105, v106, v107, v108, v109, buf[0]);
        }

        sub_1003C1530(v4);
        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_100372238();
        [v64 handleSessionEndResult:?];
        goto LABEL_10;
      case 0xAuLL:
        v42 = KmlLogger();
        if (sub_100057AEC(v42))
        {
          sub_10037218C();
          v113 = 293;
          sub_1003721B4(&_mh_execute_header, v43, v44, "%s : %i : Starting Loyalty and payment session", v45, v46, v47, v48, v102, v103, v104, v105, v106, v107, v108, v109, buf[0]);
        }

        sub_1003C1D68(v4);
        return;
      case 0xBuLL:
        v66 = KmlLogger();
        if (sub_100057AEC(v66))
        {
          sub_10037218C();
          v113 = 298;
          sub_1003721B4(&_mh_execute_header, v67, v68, "%s : %i : Loyalty and payment session started", v69, v70, v71, v72, v102, v103, v104, v105, v106, v107, v108, v109, buf[0]);
        }

        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_100372238();
        [v73 handleTransactionStartResult:?];

        sub_1003C1EA0(v4);
        return;
      case 0xCuLL:
        v75 = KmlLogger();
        if (sub_100057AEC(v75))
        {
          sub_10037218C();
          v113 = 304;
          sub_1003721B4(&_mh_execute_header, v76, v77, "%s : %i : Stopping Host Card Emulation session", v78, v79, v80, v81, v102, v103, v104, v105, v106, v107, v108, v109, buf[0]);
        }

        [*(v4 + 48) stopCardEmulation];
        if (!*(v4 + 64))
        {
          v88 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v108 = NSLocalizedDescriptionKey;
          KmlErrorString();
          v89 = [sub_100372244() stringWithUTF8String:?];
          v109 = v89;
          v90 = [NSDictionary dictionaryWithObjects:&v109 forKeys:&v108 count:1];
          v91 = [NSError errorWithDomain:v88 code:24 userInfo:v90];
          v92 = *(v4 + 64);
          *(v4 + 64) = v91;
        }

        sub_1003C11C4(v4, 13, v82, v83, v84, v85, v86, v87);
        return;
      case 0xDuLL:
        v93 = KmlLogger();
        if (sub_100057AEC(v93))
        {
          sub_10037218C();
          v113 = 313;
          sub_1003721B4(&_mh_execute_header, v94, v95, "%s : %i : Transaction session stopped", v96, v97, v98, v99, v102, v103, v104, v105, v106, v107, v108, v109, buf[0]);
        }

        sub_1003C1530(v4);
        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_100372238();
        [v100 handleTransactionEndResult:?];
        goto LABEL_10;
      case 0xEuLL:
        sub_1003C1530(v4);
        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_100372238();
        [v101 handleSessionStartResult:?];
        goto LABEL_10;
      case 0xFuLL:
        sub_1003C1530(v4);
        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_100372238();
        [v65 handleTransactionStartResult:?];
LABEL_10:

        break;
      default:
        return;
    }
  }
}

void sub_1003C1D1C(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 40) startEmulation];

    sub_1003C209C(a1);
  }
}

void sub_1003C1D68(void *a1)
{
  if (a1)
  {
    v2 = KmlSignpostLogger();
    if (os_signpost_enabled(v2))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&_mh_execute_header, v2, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "NfcLnPtxnSessionCreate", "", buf, 2u);
    }

    v3 = a1[3];
    sub_100057A60();
    sub_100057B28();
    v16 = sub_100370DE4;
    v17 = &unk_1004D1C38;
    v18 = a1;
    v5 = [v4 startLoyaltyAndContactlessPaymentSession:v15];
    v6 = a1[4];
    a1[4] = v5;

    v7 = KmlLogger();
    if (sub_10036F978(v7))
    {
      sub_1003721A0();
      v20 = 489;
      sub_1003721EC(&_mh_execute_header, v8, v9, "%s : %i : Waiting for contactless session start", v10, v11, v12, v13, v14, v15[0], v15[1], v16, v17, v18, buf[0]);
    }
  }
}

void sub_1003C1EA0(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 88))
    {
      v2 = KmlLogger();
      if (sub_10036F978(v2))
      {
        sub_1003721A0();
        v18 = 335;
        v9 = "%s : %i : endTransactionTimer already running. Ignore another start";
LABEL_7:
        sub_1003721EC(&_mh_execute_header, v3, v4, v9, v5, v6, v7, v8, v12, block[0], block[1], v14, v15, v16, v17);
      }
    }

    else
    {
      sub_100057A60();
      sub_100057B28();
      v14 = sub_10037088C;
      v15 = &unk_1004C08D8;
      v16 = v10;
      dispatch_async(&_dispatch_main_q, block);
      v11 = KmlLogger();
      if (sub_10036F978(v11))
      {
        sub_1003721A0();
        v18 = 348;
        v9 = "%s : %i : endTransactionTimer started";
        goto LABEL_7;
      }
    }
  }
}

void sub_1003C1FBC(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 88))
    {
      sub_100057A60();
      sub_100057B28();
      v12 = sub_1003709C0;
      v13 = &unk_1004C08D8;
      v14 = v2;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v3 = KmlLogger();
      if (sub_10036F978(v3))
      {
        sub_1003721A0();
        v16 = 354;
        sub_1003721EC(&_mh_execute_header, v4, v5, "%s : %i : endTransactionTimer is not running.", v6, v7, v8, v9, v10, block[0], block[1], v12, v13, v14, v15);
      }
    }
  }
}

void sub_1003C209C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 104))
    {
      if (*(a1 + 96))
      {
        v2 = KmlLogger();
        if (sub_10036F978(v2))
        {
          sub_1003721A0();
          v19 = 373;
          v9 = "%s : %i : A hceSessionTimer already running. Ignore another start";
LABEL_10:
          sub_1003721EC(&_mh_execute_header, v3, v4, v9, v5, v6, v7, v8, v13, block[0], block[1], v15, v16, v17, v18);
        }
      }

      else
      {
        sub_100057A60();
        sub_100057B28();
        v15 = sub_100370A98;
        v16 = &unk_1004C08D8;
        v17 = v11;
        dispatch_async(&_dispatch_main_q, block);
        v12 = KmlLogger();
        if (sub_10036F978(v12))
        {
          sub_1003721A0();
          v19 = 391;
          v9 = "%s : %i : hceSessionTimer started";
          goto LABEL_10;
        }
      }
    }

    else
    {
      v10 = KmlLogger();
      if (sub_10036F978(v10))
      {
        sub_1003721A0();
        v19 = 368;
        v9 = "%s : %i : A timeout was not requested for this hce session";
        goto LABEL_10;
      }
    }
  }
}

void sub_1003C2200(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 96))
    {
      sub_100057A60();
      sub_100057B28();
      v12 = sub_100370CA8;
      v13 = &unk_1004C08D8;
      v14 = v2;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v3 = KmlLogger();
      if (sub_10036F978(v3))
      {
        sub_1003721A0();
        v16 = 397;
        sub_1003721EC(&_mh_execute_header, v4, v5, "%s : %i : hceSessionTimer is not running.", v6, v7, v8, v9, v10, block[0], block[1], v12, v13, v14, v15);
      }
    }
  }
}

uint64_t sub_1003C22E0(uint64_t result)
{
  if (result)
  {
    return *(result + 192);
  }

  return result;
}

void sub_1003C22EC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 128));
    v4 = *(a1 + 128);
    sub_1000167BC();
    v5[1] = 3221225472;
    v5[2] = sub_100372FA4;
    v5[3] = &unk_1004C22F0;
    v5[4] = a1;
    v6 = v3;
    dispatch_sync(v4, v5);
  }
}

uint64_t sub_1003C2384(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 128));
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v4 = *(a1 + 128);
    sub_100057A60();
    v7 = 3221225472;
    v8 = sub_100373000;
    v9 = &unk_1004D1C80;
    v10 = a1;
    v11 = v3;
    v12 = &v13;
    dispatch_sync(v4, block);
    LOBYTE(a1) = *(v14 + 24);

    _Block_object_dispose(&v13, 8);
  }

  return a1 & 1;
}

void sub_1003C244C(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 128);
    sub_1003673C4();
    v5[1] = 3221225472;
    v5[2] = sub_100373E0C;
    v5[3] = &unk_1004C2B00;
    v5[4] = v2;
    v5[5] = v3;
    dispatch_async(v4, v5);
  }
}

uint64_t sub_1003C24B0(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a5;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 128));
    v21 = 0;
    v22 = &v21;
    v23 = 0x2020000000;
    v24 = 0;
    v12 = *(a1 + 128);
    sub_1000167BC();
    v15[1] = 3221225472;
    v15[2] = sub_1003730FC;
    v15[3] = &unk_1004D1CA8;
    v15[4] = a1;
    v16 = v10;
    v17 = v9;
    v20 = a4;
    v18 = v11;
    v19 = &v21;
    dispatch_sync(v12, v15);
    v13 = *(v22 + 24);

    _Block_object_dispose(&v21, 8);
  }

  else
  {
    v13 = 0;
  }

  return v13 & 1;
}

void sub_1003C25D8(uint64_t a1)
{
  if (a1)
  {
    v3 = 3221225472;
    v4 = sub_100373460;
    v5 = &unk_1004C08D8;
    v6 = sub_100375724(a1);
    dispatch_async(v1, block);
  }
}

void sub_1003C2638(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 128);
    sub_100057A60();
    v9 = 3221225472;
    v10 = sub_100373700;
    v11 = &unk_1004C24A8;
    v12 = v6;
    v13 = a1;
    v14 = v5;
    dispatch_async(v7, block);
  }
}

void sub_1003C26E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 128);
    sub_100057A60();
    v9 = 3221225472;
    v10 = sub_100373C9C;
    v11 = &unk_1004C24A8;
    v12 = a1;
    v13 = v5;
    v14 = v6;
    dispatch_async(v7, block);
  }
}

uint64_t sub_1003C2794(uint64_t a1)
{
  v1 = a1;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 128));
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v2 = *(v1 + 128);
    sub_1003673C4();
    v6[1] = 3221225472;
    v6[2] = sub_100373970;
    v6[3] = &unk_1004C24F8;
    v6[4] = v1;
    v6[5] = v3;
    dispatch_sync(v4, v6);
    LOBYTE(v1) = *(v8 + 24);
    _Block_object_dispose(&v7, 8);
  }

  return v1 & 1;
}

void sub_1003C2834(uint64_t a1)
{
  if (a1)
  {
    v3 = 3221225472;
    v4 = sub_100373AB0;
    v5 = &unk_1004C08D8;
    v6 = sub_100375724(a1);
    dispatch_async(v1, block);
  }
}

void sub_1003C2894(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 200);
      sub_100375748();
      v303 = 395;
      v304 = 2048;
      *v305 = v6;
      *&v305[8] = 2048;
      v306 = a2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : OPManager: Current state %ld, new state %ld", buf, 0x26u);
    }

    *(a1 + 168) = *(a1 + 200);
    *(a1 + 200) = a2;
    switch(a2)
    {
      case 0uLL:
        v7 = KmlLogger();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_52;
        }

        sub_1003756CC();
        v303 = 401;
        v9 = "%s : %i : OPManager: Nothing to do here.";
        goto LABEL_51;
      case 1uLL:
        v67 = KmlLogger();
        if (sub_100057AEC(v67))
        {
          sub_1003756CC();
          v303 = 405;
          sub_100375714();
          _os_log_impl(v68, v69, v70, v71, v72, 0x12u);
        }

        v73 = KmlSignpostLogger();
        if (os_signpost_enabled(v73))
        {
          *buf = 0;
          sub_1003756E0();
          sub_1003757A0(v74, v75, v76, v77, v78, v79, v80);
        }

        sub_1003C4478(*(a1 + 16), *(a1 + 80));
        return;
      case 2uLL:
        v7 = KmlLogger();
        if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          goto LABEL_52;
        }

        sub_1003756CC();
        v303 = 411;
        v9 = "%s : %i : Done with Pre-Warm. Waiting for request to start pairing";
LABEL_51:
        sub_10036DC0C(&_mh_execute_header, v7, v8, v9, buf);
LABEL_52:

        return;
      case 3uLL:
        *(a1 + 160) = sub_100397680(KmlEndpointManager, @"OWNR");
        v109 = objc_opt_new();
        v110 = *(a1 + 80);
        v296 = 0;
        v111 = [v109 isManufacturerSupported:v110 error:&v296];
        v112 = v296;
        v113 = *(a1 + 80);
        if (v111)
        {
          if (v113)
          {
            v295 = 0;
            sub_1003C3C50(a1, v113, 0, 0, &v295);
            v114 = v295;
LABEL_98:
            v201 = v114;
            goto LABEL_100;
          }

          goto LABEL_99;
        }

        if (!v113)
        {
LABEL_99:
          v201 = 0;
          goto LABEL_100;
        }

        v198 = KmlLogger();
        if (os_log_type_enabled(v198, OS_LOG_TYPE_ERROR))
        {
          v199 = *(a1 + 80);
          sub_100375748();
          sub_1003757B8();
          *&v305[8] = v200;
          v306 = v112;
          _os_log_impl(&_mh_execute_header, v198, OS_LOG_TYPE_ERROR, "%s : %i : Pairing is not supported for %@, error : %@", buf, 0x26u);
        }

        if (v112)
        {
          v114 = sesErrorToKmlError();
          goto LABEL_98;
        }

        v206 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v299 = NSLocalizedDescriptionKey;
        v207 = [NSString stringWithUTF8String:KmlErrorString()];
        v300 = v207;
        v208 = [NSDictionary dictionaryWithObjects:&v300 forKeys:&v299 count:1];
        v201 = [NSError errorWithDomain:v206 code:33 userInfo:v208];

LABEL_100:
        WeakRetained = objc_loadWeakRetained((a1 + 184));
        [WeakRetained handleKmlOwnerPairingStartResult:v201];

        v203 = KmlLogger();
        v204 = os_log_type_enabled(v203, OS_LOG_TYPE_INFO);
        if (v201)
        {
          if (v204)
          {
            sub_1003756CC();
            v303 = 451;
            sub_10036DC0C(&_mh_execute_header, v203, v205, "%s : %i : client should call endPairingSession to cancel and clean out", buf);
          }
        }

        else
        {
          if (v204)
          {
            sub_1003756CC();
            v303 = 453;
            sub_10036DC0C(&_mh_execute_header, v203, v275, "%s : %i : pre-conditions satisfied.", buf);
          }

          sub_1003C244C(a1, 11);
        }

        return;
      case 4uLL:
      case 5uLL:
      case 6uLL:
      case 7uLL:
      case 8uLL:
      case 9uLL:
      case 0xAuLL:
      case 0xEuLL:
      case 0xFuLL:
      case 0x10uLL:
      case 0x11uLL:
      case 0x12uLL:
      case 0x13uLL:
      case 0x14uLL:
        return;
      case 0xBuLL:
        v49 = *(a1 + 176);
        v50 = KmlLogger();
        v51 = sub_100057AEC(v50);
        if (v49 == 1)
        {
          if (v51)
          {
            sub_1003756CC();
            v303 = 461;
            sub_100375714();
            _os_log_impl(v52, v53, v54, v55, v56, 0x12u);
          }

          v57 = KmlSignpostLogger();
          if (os_signpost_enabled(v57))
          {
            *buf = 0;
            sub_1003756E0();
            sub_1003757A0(v58, v59, v60, v61, v62, v63, v64);
          }

          sub_1003B78C0(*(a1 + 8));
          v65 = dispatch_time(0, 5000000000);
          v66 = *(a1 + 128);
          block[0] = _NSConcreteStackBlock;
          block[1] = 3221225472;
          block[2] = sub_100373F9C;
          block[3] = &unk_1004C08D8;
          block[4] = a1;
          dispatch_after(v65, v66, block);
        }

        else
        {
          if (v51)
          {
            sub_1003756CC();
            v303 = 478;
            sub_100375714();
            _os_log_impl(v185, v186, v187, v188, v189, 0x12u);
          }

          v190 = KmlSignpostLogger();
          if (os_signpost_enabled(v190))
          {
            *buf = 0;
            sub_1003756E0();
            sub_1003757A0(v191, v192, v193, v194, v195, v196, v197);
          }

          sub_1003B72D4(*(a1 + 8));
        }

        return;
      case 0xCuLL:
        v233 = KmlLogger();
        if (sub_100057AEC(v233))
        {
          sub_1003756CC();
          v303 = 485;
          sub_100375714();
          _os_log_impl(v234, v235, v236, v237, v238, 0x12u);
        }

        v239 = KmlSignpostLogger();
        if (os_signpost_enabled(v239))
        {
          *buf = 0;
          sub_1003756E0();
          sub_1003757A0(v240, v241, v242, v243, v244, v245, v246);
        }

        v247 = sub_10036C414(*(a1 + 8));
        v248 = *(a1 + 24);
        *(a1 + 24) = v247;

        v249 = [KmlDeviceConfigurationData alloc];
        v250 = sub_1003DEBC4(*(a1 + 24));
        v251 = [v249 initWithData:v250];
        v252 = *(a1 + 144);
        *(a1 + 144) = v251;

        v253 = sub_1003B85AC(*(a1 + 24));
        v254 = [v253 manufacturer];

        v255 = sub_1003B85AC(*(a1 + 24));
        v256 = [v255 brand];

        v257 = objc_opt_new();
        v258 = [*(a1 + 144) mfiPPID];
        v291 = v257;
        v259 = sub_10037576C();

        v260 = [*(a1 + 144) mfiPPID];
        v292 = v254;
        v293 = 0;
        v261 = sub_1003C3C50(a1, v254, v256, v260, &v293);
        v262 = v293;
        v263 = v293;

        if ((v259 & 1) == 0)
        {
          [*(a1 + 144) removeUwbSupportLocally];
          if (sub_1003B85B8(*(a1 + 8)) == 2)
          {
            v264 = KmlLogger();
            if (os_log_type_enabled(v264, OS_LOG_TYPE_INFO))
            {
              sub_1003756CC();
              v303 = 515;
              v304 = 2112;
              *v305 = v254;
              *&v305[8] = 2112;
              v306 = v256;
              _os_log_impl(&_mh_execute_header, v264, OS_LOG_TYPE_INFO, "%s : %i : UWB is blocked for (%@,%@). We'll allow pairing over UWB, then make it NFC only key", buf, 0x26u);
            }
          }
        }

        if (v261)
        {
          objc_storeStrong((a1 + 120), v262);
          sub_1003C244C(a1, 41);
          v7 = v254;
        }

        else
        {
          v266 = *(a1 + 16);
          v265 = *(a1 + 24);
          v267 = *(a1 + 56);
          v268 = sub_1003B768C(*(a1 + 8));
          v269 = sub_1003B8594(*(a1 + 8));
          sub_1003B85A0(*(a1 + 8));
          v270 = v256;
          v272 = v271 = v263;
          v273 = sub_1003B85AC(*(a1 + 8));
          v274 = [*(a1 + 144) readerSupportsUwb];
          v290 = *(a1 + 152);
          v7 = v292;
          sub_1003C459C(v266, v265, v292, v267, v268, v269, v272, v273, v274, v290);

          v263 = v271;
          v256 = v270;
        }

        goto LABEL_52;
      case 0xDuLL:
        v95 = KmlLogger();
        if (sub_100057AEC(v95))
        {
          sub_1003756CC();
          v303 = 540;
          sub_100375714();
          _os_log_impl(v96, v97, v98, v99, v100, 0x12u);
        }

        v101 = KmlSignpostLogger();
        if (os_signpost_enabled(v101))
        {
          *buf = 0;
          sub_1003756E0();
          sub_1003757A0(v102, v103, v104, v105, v106, v107, v108);
        }

        sub_1003B73CC(*(a1 + 8), *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56));
        return;
      case 0x15uLL:
        v81 = KmlLogger();
        if (sub_100057AEC(v81))
        {
          sub_1003756CC();
          v303 = 546;
          sub_100375714();
          _os_log_impl(v82, v83, v84, v85, v86, 0x12u);
        }

        v87 = KmlSignpostLogger();
        if (os_signpost_enabled(v87))
        {
          *buf = 0;
          sub_1003756E0();
          sub_1003757A0(v88, v89, v90, v91, v92, v93, v94);
        }

        sub_1003B76C0(*(a1 + 8), *(a1 + 192));
        return;
      case 0x16uLL:
        v115 = KmlLogger();
        if (sub_100057AEC(v115))
        {
          sub_1003756CC();
          v303 = 552;
          sub_100375714();
          _os_log_impl(v116, v117, v118, v119, v120, 0x12u);
        }

        if (sub_1003F6F5C(v121) && (v122 = objc_opt_new(), v123 = [v122 emulateNFCOnlyDevice], v122, v123))
        {
          v124 = KmlLogger();
          if (sub_100057AEC(v124))
          {
            sub_1003756CC();
            v303 = 557;
            sub_100375714();
            _os_log_impl(v125, v126, v127, v128, v129, 0x12u);
          }

          v130 = 0;
        }

        else
        {
          v130 = 1;
        }

        v169 = +[NISession deviceCapabilities];
        v170 = [v169 supportsPreciseDistanceMeasurement];

        if (![*(a1 + 144) readerSupportsUwb] || !v130 || !v170)
        {
          goto LABEL_84;
        }

        v171 = KmlLogger();
        if (sub_100057AEC(v171))
        {
          sub_1003756CC();
          v303 = 569;
          sub_100375714();
          _os_log_impl(v172, v173, v174, v175, v176, 0x12u);
        }

        v177 = sub_1003770D8(*(a1 + 16));
        if (v177)
        {
          v168 = v177;
          v276 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v277 = [v168 userInfo];
          v278 = [NSError errorWithDomain:v276 code:32 userInfo:v277];
          v279 = *(a1 + 120);
          *(a1 + 120) = v278;

          [SESTapToRadar requestTapToRadarKML:@"OP Unable to disable full power NFC express for UWB key" client:@"KMLDisableNFCExpressError"];
          sub_1003C244C(a1, 43);
        }

        else
        {
LABEL_84:
          v178 = KmlLogger();
          if (sub_100057AEC(v178))
          {
            sub_1003756CC();
            v303 = 578;
            sub_100375714();
            _os_log_impl(v179, v180, v181, v182, v183, 0x12u);
          }

          v184 = *(a1 + 16);
          v168 = sub_1003B765C(*(a1 + 8));
          sub_1003C4818(v184, v168, *(a1 + 88));
        }

LABEL_87:

        return;
      case 0x17uLL:
        v131 = KmlLogger();
        if (sub_100057AEC(v131))
        {
          sub_1003756CC();
          v303 = 586;
          sub_100375714();
          _os_log_impl(v132, v133, v134, v135, v136, 0x12u);
        }

        v137 = KmlSignpostLogger();
        if (os_signpost_enabled(v137))
        {
          *buf = 0;
          sub_1003756E0();
          _os_signpost_emit_with_name_impl(v138, v139, OS_SIGNPOST_EVENT, v140, v141, v142, v143, 2u);
        }

        v144 = objc_loadWeakRetained((a1 + 184));
        [v144 handleKmlOwnerPairingCompletionWithResult:*(a1 + 120) keyInformation:*(a1 + 96) keyTrackingRequest:*(a1 + 104)];

        sub_1003740FC(a1);
        return;
      default:
        switch(a2)
        {
          case ')':
            v10 = KmlLogger();
            if (sub_100057AEC(v10))
            {
              sub_1003756CC();
              v303 = 628;
              sub_100375714();
              _os_log_impl(v11, v12, v13, v14, v15, 0x12u);
            }

            sub_1003B7514(*(a1 + 8));
            return;
          case '*':
            v23 = KmlLogger();
            if (sub_100057AEC(v23))
            {
              sub_1003756CC();
              v303 = 633;
              sub_100375714();
              _os_log_impl(v24, v25, v26, v27, v28, 0x12u);
            }

            v29 = KmlSignpostLogger();
            if (os_signpost_enabled(v29))
            {
              v30 = *(a1 + 120);
              *buf = 138412290;
              v302 = v30;
              sub_1003756E0();
              _os_signpost_emit_with_name_impl(v31, v32, OS_SIGNPOST_INTERVAL_END, v33, v34, v35, v36, 0xCu);
            }

            v37 = KmlLogger();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v38 = sub_1003B7AE4(*(a1 + 8));
              sub_100376FF0(*(a1 + 16));
              sub_1003756CC();
              v303 = 637;
              v304 = v39;
              *v305 = v38;
              *&v305[4] = v39;
              *&v305[6] = v40;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEBUG, "%s : %i : Debug states: DXManagerStep - %08x ; SEManagerStep - %08x", buf, 0x1Eu);
            }

            sub_100369DDC();
            v41 = *(a1 + 120);
            *(a1 + 120) = 0;
            goto LABEL_27;
          case '+':
            v215 = KmlLogger();
            if (sub_100057AEC(v215))
            {
              v216 = *(a1 + 120);
              sub_100375748();
              sub_1003757B8();
              sub_100375714();
              _os_log_impl(v217, v218, v219, v220, v221, 0x1Cu);
            }

            sub_1003C47A8(*(a1 + 16));
            if ((*(a1 + 177) & 1) == 0)
            {
              v222 = objc_loadWeakRetained((a1 + 184));
              [v222 handleKmlOwnerPairingCompletionWithResult:*(a1 + 120) keyInformation:0 keyTrackingRequest:0];

              if (sub_1003F6F5C(v223) && (v224 = objc_opt_new(), v225 = [v224 emulateNFCOnlyDevice], v224, v225))
              {
                v226 = KmlLogger();
                if (sub_100057AEC(v226))
                {
                  sub_1003756CC();
                  v303 = 654;
                  sub_100375714();
                  _os_log_impl(v227, v228, v229, v230, v231, 0x12u);
                }

                v232 = 0;
              }

              else
              {
                v232 = 1;
              }

              v280 = +[NISession deviceCapabilities];
              v281 = [v280 supportsPreciseDistanceMeasurement];

              sub_1003B7A28(*(a1 + 8), *(a1 + 120), v232 & [*(a1 + 144) readerSupportsUwb] & v281, *(a1 + 192));
              sub_1003740FC(a1);
            }

            v282 = *(a1 + 168);
            if (v282 == 21)
            {
              v283 = KmlSignpostLogger();
              if (!os_signpost_enabled(v283))
              {
                goto LABEL_148;
              }

              *buf = 0;
              goto LABEL_147;
            }

            if (v282 == 13)
            {
              v283 = KmlSignpostLogger();
              if (!os_signpost_enabled(v283))
              {
                goto LABEL_148;
              }

              *buf = 0;
              goto LABEL_147;
            }

            if (v282 != 11)
            {
              goto LABEL_149;
            }

            v283 = KmlSignpostLogger();
            if (os_signpost_enabled(v283))
            {
              *buf = 0;
LABEL_147:
              sub_1003756E0();
              _os_signpost_emit_with_name_impl(v284, v285, OS_SIGNPOST_INTERVAL_END, v286, v287, v288, v289, 2u);
            }

LABEL_148:

LABEL_149:
            sub_1003C244C(a1, 52);
            break;
          case ',':
          case '-':
          case '.':
          case '/':
          case '0':
          case '1':
          case '2':
            return;
          case '3':
            v209 = KmlLogger();
            if (sub_100057AEC(v209))
            {
              sub_1003756CC();
              v303 = 685;
              sub_100375714();
              _os_log_impl(v210, v211, v212, v213, v214, 0x12u);
            }

            sub_1003C3FCC(a1);
            goto LABEL_149;
          case '4':
            v42 = KmlLogger();
            if (sub_100057AEC(v42))
            {
              sub_1003756CC();
              v303 = 692;
              sub_100375714();
              _os_log_impl(v43, v44, v45, v46, v47, 0x12u);
            }

            sub_1003C75AC(*(a1 + 16), 0);
            v48 = *(a1 + 16);
            *(a1 + 16) = 0;

            sub_1003B8584(*(a1 + 8), 0);
            v41 = *(a1 + 8);
            *(a1 + 8) = 0;
LABEL_27:

            return;
          default:
            if (a2 != 31)
            {
              if (a2 == 32)
              {
                v16 = KmlLogger();
                if (sub_100057AEC(v16))
                {
                  sub_1003756CC();
                  v303 = 615;
                  sub_100375714();
                  _os_log_impl(v17, v18, v19, v20, v21, 0x12u);
                }

                v22 = *(a1 + 8);
                if (v22)
                {
                  sub_1003B74C4(v22);
                }

                else
                {
                  [a1 handleOwnerPairingCancellationWithResult:1];
                }

                sub_1003C4748(*(a1 + 16));
              }

              return;
            }

            v145 = objc_loadWeakRetained((a1 + 184));
            [v145 handleKmlOwnerPairingTrackingReceiptSaveResult:0];

            if (*(a1 + 136) == 1)
            {
              v146 = KmlLogger();
              if (sub_100057AEC(v146))
              {
                sub_1003756CC();
                v303 = 599;
                sub_100375714();
                _os_log_impl(v147, v148, v149, v150, v151, 0x12u);
              }

              v145 = KmlSignpostLogger();
              if (os_signpost_enabled(v145))
              {
                *buf = 0;
                sub_1003756E0();
                sub_1003757A0(v152, v153, v154, v155, v156, v157, v158);
              }

              if (sub_1003B7750(*(a1 + 8), *(a1 + 192)))
              {
                return;
              }
            }

            v159 = KmlLogger();
            if (sub_100057AEC(v159))
            {
              sub_1003756CC();
              v303 = 607;
              sub_100375714();
              _os_log_impl(v160, v161, v162, v163, v164, 0x12u);
            }

            v165 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
            v297 = NSLocalizedDescriptionKey;
            v166 = [NSString stringWithUTF8String:KmlErrorString()];
            v298 = v166;
            v167 = [NSDictionary dictionaryWithObjects:&v298 forKeys:&v297 count:1];
            v168 = [NSError errorWithDomain:v165 code:8 userInfo:v167];

            [a1 handleFirstPostPairingTransactionEndResult:v168];
            goto LABEL_87;
        }

        break;
    }
  }
}

uint64_t sub_1003C3C50(uint64_t result, void *a2, void *a3, void *a4, void *a5)
{
  if (!result)
  {
    return result;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = objc_opt_new();
  v12 = 1;
  v13 = [v11 BOOLValueForSetting:1 manufacturer:v10 brand:v9 uuid:v8 error:0];

  if (sub_1003F6F5C(v14))
  {
    if ([v11 emulateNFCOnlyDevice])
    {
      v15 = KmlLogger();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        sub_10036DCC4();
        v35 = 946;
        sub_10036DC0C(&_mh_execute_header, v15, v16, "%s : %i : Emulating NFC only device", buf);
      }

      v12 = 0;
    }

    else
    {
      v12 = 1;
    }
  }

  v17 = +[NISession deviceCapabilities];
  v18 = [v17 supportsPreciseDistanceMeasurement];

  v19 = 0;
  v20 = 0;
  if (v13 && (v12 & v18 & 1) == 0)
  {
    v21 = +[NRPairedDeviceRegistry sharedInstance];
    v22 = [v21 getActivePairedDevice];

    if (v22)
    {
      v23 = [[NSUUID alloc] initWithUUIDString:@"C4F6386A-780D-40E5-9900-0A26C16273A1"];
      if ([v22 supportsCapability:v23])
      {
        v24 = [[NSUUID alloc] initWithUUIDString:@"81D292E4-16D8-4630-82ED-BDF62B05E334"];
        v25 = [v22 supportsCapability:v24];

        if (v25)
        {
          v26 = KmlLogger();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            sub_10036DCC4();
            v35 = 960;
            sub_10036DC0C(&_mh_execute_header, v26, v27, "%s : %i : Allowing NFC only phone to have owner key since there is a paired UWB-capable watch", buf);
          }

          v20 = 0;
          v19 = 0;
LABEL_22:

          goto LABEL_23;
        }
      }

      else
      {
      }
    }

    v28 = KmlLogger();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      sub_10036DCC4();
      v35 = 962;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "%s : %i : NFC-only devices are blocked for this vehicle", buf, 0x12u);
    }

    v26 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v32 = NSLocalizedDescriptionKey;
    v29 = [NSString stringWithUTF8String:KmlErrorString()];
    v33 = v29;
    v20 = 1;
    v30 = [NSDictionary dictionaryWithObjects:&v33 forKeys:&v32 count:1];
    v19 = [NSError errorWithDomain:v26 code:218 userInfo:v30];

    goto LABEL_22;
  }

LABEL_23:
  if (a5)
  {
    v31 = v19;
    *a5 = v19;
  }

  return v20;
}

void sub_1003C3FCC(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 120);
    if (v2)
    {
      v3 = [v2 code];
    }

    else
    {
      v3 = 0;
    }

    v4 = sub_1003B85AC(*(a1 + 24));

    if (v4)
    {
      v5 = sub_1003B85AC(*(a1 + 24));
      v6 = [v5 manufacturer];
      v7 = [v6 copy];

      v8 = sub_1003B85AC(*(a1 + 24));
      v9 = [v8 brand];
      v10 = [v9 copy];

      v11 = sub_1003B85AC(*(a1 + 24));
      v12 = [v11 regionString];
      v13 = [v12 copy];
    }

    else
    {
      v13 = @"Unknown";
      v10 = @"Unknown";
      v7 = @"Unknown";
    }

    v14 = [*(a1 + 144) readerSupportsNfc];
    if ([*(a1 + 144) readerSupportsUwb])
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    sub_1003DE58C(*(a1 + 24));
    v16 = kmlUtilKeyClassOriginBitmap();
    v17 = sub_100369220(KmlAnalyticsLogger, *(a1 + 192));
    v18 = [NSNumber numberWithUnsignedInt:v3, @"errorCode"];
    v24[0] = v18;
    v24[1] = &off_1004DCD08;
    v23[1] = @"accountRole";
    v23[2] = @"didReceiveProductPlanIdentifier";
    v24[2] = &off_1004DCD20;
    v24[3] = &off_1004DCD20;
    v23[3] = @"didReceiveSlotIdentifier";
    v23[4] = @"didReceiveImmoToken";
    v24[4] = &off_1004DCD20;
    v24[5] = &off_1004DCD20;
    v23[5] = @"didReceiveOnlineBLEKeys";
    v23[6] = @"isOwner";
    v24[6] = &off_1004DCD38;
    v23[7] = @"keyClassOriginBitmap";
    v19 = [NSNumber numberWithUnsignedChar:v16];
    v24[7] = v19;
    v24[8] = v13;
    v23[8] = @"dataCenterCode";
    v23[9] = @"manufacturer";
    v24[9] = v7;
    v24[10] = v10;
    v23[10] = @"brand";
    v23[11] = @"transportSupported";
    v20 = [NSNumber numberWithUnsignedInteger:v15 | v14];
    v24[11] = v20;
    v23[12] = @"trackingRequestDuration";
    v21 = [NSNumber numberWithUnsignedInt:v17];
    v24[12] = v21;
    v22 = [NSDictionary dictionaryWithObjects:v24 forKeys:v23 count:13];

    sub_1003695CC(KmlAnalyticsLogger, v22);
  }
}

id *sub_1003C42B4(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 23, a2);
  }

  return result;
}

uint64_t sub_1003C42C4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 176);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1003C42DC(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 177);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

id *sub_1003C42F4(id *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v14.receiver = a1;
    v14.super_class = KmlSeManager;
    a1 = objc_msgSendSuper2(&v14, "init");
    if (a1)
    {
      v4 = KmlLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        v15 = 136315394;
        v16 = "[KmlSeManager initWithDelegate:]";
        sub_10036F4A8();
        v17 = 76;
        sub_100377C78(&_mh_execute_header, v5, v6, "%s : %i : SEManager: let's init", &v15);
      }

      objc_storeWeak(a1 + 17, v3);
      a1[1] = 0;
      a1[2] = 0;
      *(a1 + 96) = 1;
      v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v8 = dispatch_queue_create("com.apple.sesd.kml.seManager", v7);
      v9 = a1[16];
      a1[16] = v8;

      v10 = KmlLogger();
      if (sub_10036DCF8(v10))
      {
        v15 = 136315394;
        v16 = "[KmlSeManager initWithDelegate:]";
        sub_10036F4A8();
        v17 = 83;
        sub_100377C78(&_mh_execute_header, v11, v12, "%s : %i : SEManager: ready to roll", &v15);
      }
    }
  }

  return a1;
}

void sub_1003C4478(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 128);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003769FC;
    v6[3] = &unk_1004C22F0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1003C4520(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 128);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100377664;
    v3[3] = &unk_1004C2B00;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

void sub_1003C459C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, char a9, void *a10)
{
  v25 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  v23 = a10;
  if (a1)
  {
    v24 = *(a1 + 128);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100377D84;
    block[3] = &unk_1004D1CF8;
    v27 = v17;
    v28 = a1;
    v29 = v25;
    v30 = v18;
    v31 = v19;
    v32 = v20;
    v33 = v21;
    v34 = v22;
    v36 = a9;
    v35 = v23;
    dispatch_async(v24, block);
  }
}

void sub_1003C4748(uint64_t a1)
{
  if (a1)
  {
    v3 = 3221225472;
    v4 = sub_100376AF0;
    v5 = &unk_1004C08D8;
    v6 = sub_100375724(a1);
    dispatch_async(v1, block);
  }
}

void sub_1003C47A8(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 128));
    v2 = *(a1 + 128);
    sub_100057A60();
    sub_100057B28();
    v5 = sub_100376B58;
    v6 = &unk_1004C08D8;
    v7 = a1;
    dispatch_sync(v3, block);
  }
}

void sub_1003C4818(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 128);
    sub_100057A60();
    sub_100057B28();
    v9 = sub_100376D50;
    v10 = &unk_1004C24A8;
    v11 = a1;
    v12 = v5;
    v13 = v6;
    dispatch_async(v7, block);
  }
}

void sub_1003C48C4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = v9;
  if (a1)
  {
    v70 = v9;
    v11 = &v77;
    if ((+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 104) agreedKmlVehicleVersion], 768) & 1) != 0 || !v7)
    {
      v12 = sub_1003C6E04(a1, v8);
      if (!v12)
      {
        v53 = KmlLogger();
        if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
        {
          v77 = 136315394;
          v78 = "[KmlSeManager buildTrackingRequestWithOpaqueAttestation:endpoint:anonymizedDsid:]";
          sub_1003674B0();
          v79 = 514;
          sub_10036F500(&_mh_execute_header, v53, v65, "%s : %i : Opaque attestation missing.", &v77);
        }

        v10 = v70;
        goto LABEL_33;
      }
    }

    else
    {
      v12 = v7;
    }

    v13 = +[NSMutableArray array];
    v14 = [KmlTlv TLVWithTag:32546 value:*(a1 + 160)];
    sub_100377C94(v14);

    v15 = [KmlTlv TLVWithTag:32548 value:*(a1 + 168)];
    sub_100377C94(v15);

    v16 = [KmlDeviceConfigurationData alloc];
    [v8 deviceConfiguration];
    objc_claimAutoreleasedReturnValue();
    v17 = [sub_10036746C() initWithData:&v77];

    v68 = v17;
    v69 = v12;
    if ([v17 isOwnerImmoTokenOrSlotOnline] && objc_msgSend(v17, "isImmoTokenNeeded"))
    {
      v18 = *(a1 + 184);
      v75 = 0;
      v19 = SESEndPointCreateEncryptionKey();
      v20 = 0;
      if (v20)
      {
        v21 = v20;
        v22 = KmlLogger();
        if (sub_100377D18(v22))
        {
          v77 = 136315650;
          sub_100377C2C("[KmlSeManager buildTrackingRequestWithOpaqueAttestation:endpoint:anonymizedDsid:]");
          sub_100377CFC(531);
          *(v23 + 20) = v21;
          sub_100377CF0();
          _os_log_impl(v24, v25, v26, v27, v28, 0x1Cu);
        }

        goto LABEL_31;
      }

      v21 = v19;
      v12 = v69;
    }

    else
    {
      v21 = 0;
    }

    v29 = [KmlTlv TLVWithTag:213 value:v12];
    sub_100377C94(v29);

    [*(a1 + 40) dataUsingEncoding:4];
    objc_claimAutoreleasedReturnValue();
    v30 = [sub_10036746C() TLVWithTag:211 value:&v77];
    sub_100377C94(v30);

    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 104) agreedKmlVehicleVersion], 768))
    {
      v31 = sub_1003DC544(*(a1 + 24));
      v10 = v70;
      v19 = kmlUtilGenerateAccountInfoHash();

      if ([v19 length])
      {
        v33 = KmlLogger();
        if (sub_10036DCF8(v33))
        {
          v77 = 136315394;
          sub_100377C2C("[KmlSeManager buildTrackingRequestWithOpaqueAttestation:endpoint:anonymizedDsid:]");
          *(v34 + 14) = 544;
          sub_100377C78(&_mh_execute_header, v35, v36, "%s : %i : Add account info hash", &v77);
        }

        v37 = [KmlTlv TLVWithTag:94 value:v19];
        sub_100377C94(v37);

        v38 = v70;
        v31 = *(a1 + 112);
        *(a1 + 112) = v38;
      }

      else
      {
        if (!sub_1003F6F5C(v32) || (v31 = objc_opt_new(), v11 = [v31 bypassAccountInfoHash], v31, !v11))
        {
          v58 = KmlLogger();
          if (sub_100377D18(v58))
          {
            v77 = 136315394;
            sub_100377C2C("[KmlSeManager buildTrackingRequestWithOpaqueAttestation:endpoint:anonymizedDsid:]");
            *(v59 + 14) = 552;
            sub_100377CF0();
            _os_log_impl(v60, v61, v62, v63, v64, 0x12u);
          }

          goto LABEL_32;
        }

        v54 = KmlLogger();
        if (sub_10036DCF8(v54))
        {
          v77 = 136315394;
          sub_100377C2C("[KmlSeManager buildTrackingRequestWithOpaqueAttestation:endpoint:anonymizedDsid:]");
          *(v55 + 14) = 550;
          sub_100377C78(&_mh_execute_header, v56, v57, "%s : %i : Ignoring error in generating account info hash", &v77);
        }
      }
    }

    v66 = v8;
    v67 = v7;
    [v8 privacyPublicKey];
    objc_claimAutoreleasedReturnValue();
    v39 = [sub_10036746C() TLVWithTag:24393 value:v11];
    sub_100377C94(v39);

    [@"ECIES_v1" dataUsingEncoding:4];
    objc_claimAutoreleasedReturnValue();
    v40 = [sub_10036746C() TLVWithTag:218 value:v11];
    sub_100377C94(v40);

    v19 = +[NSMutableData data];
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v74 = 0u;
    v41 = v13;
    v42 = [v41 countByEnumeratingWithState:&v71 objects:v76 count:16];
    if (v42)
    {
      v43 = v42;
      v44 = *v72;
      do
      {
        for (i = 0; i != v43; i = i + 1)
        {
          if (*v72 != v44)
          {
            objc_enumerationMutation(v41);
          }

          v46 = *(*(&v71 + 1) + 8 * i);
          if ([v46 tag] == 213 && v21 != 0)
          {
            [v19 appendData:v21];
          }

          v48 = [v46 asData];
          [v19 appendData:v48];
        }

        v43 = [v41 countByEnumeratingWithState:&v71 objects:v76 count:16];
      }

      while (v43);
    }

    v49 = [KmlTlv TLVWithTag:32574 value:v19];
    v50 = [v49 asData];
    v51 = *(a1 + 48);
    *(a1 + 48) = v50;

    v52 = *(a1 + 48);
    kmlUtilLogLargeData();
    v8 = v66;
    v7 = v67;
LABEL_31:
    v10 = v70;
LABEL_32:

    v53 = v69;
LABEL_33:
  }
}

void *sub_1003C4EE0(void *a1, void *a2)
{
  v6 = a2;
  if (a1)
  {
    if (a1[6])
    {
      v7 = a1[23];
      v8 = SESEndPointPrivacyEncryption();
      v9 = 0;
      if (v9)
      {
        v10 = v9;
        v11 = KmlLogger();
        if (sub_10036F5C4(v11))
        {
          v36 = 136315650;
          v37 = "[KmlSeManager encryptTrackingRequestWithEndpoint:]";
          sub_10036F4A8();
          sub_10036F460();
          v39 = v10;
          sub_10036F590(&_mh_execute_header, v4, v12, "%s : %i : SEManager: Failed to encrypt tracking request with - %@", &v36);
        }

        v13 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v14 = [v10 userInfo];
        v15 = [NSError errorWithDomain:v13 code:28 userInfo:v14];
        v16 = a1[15];
        a1[15] = v15;
      }

      else
      {
        v26 = [DAAlishaKeyEncryptedRequest alloc];
        v27 = [sub_10036746C() version];
        v28 = [v8 ephemeralPublicKeydata];
        v29 = [v8 receiverPublicKeyHash];
        v30 = [v8 cipherText];
        v13 = [v3 initWithVersion:v27 ephemeralPublicKey:v28 publicKeyHash:v29 encryptedRequest:v30];

        v10 = sub_1003C737C(a1, v13, v6);
        if (!v10)
        {
          sub_1003C4520(a1, 6);
          v13 = v13;
          a1 = v13;
          goto LABEL_12;
        }

        v31 = KmlLogger();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v36 = 136315650;
          v37 = "[KmlSeManager encryptTrackingRequestWithEndpoint:]";
          sub_10036F4A8();
          sub_10036F460();
          v39 = v10;
          sub_10036F590(&_mh_execute_header, v31, v32, "%s : %i : SEManager: Failed to save tracking request with - %@", &v36);
        }

        v14 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v33 = [v10 userInfo];
        v34 = [NSError errorWithDomain:v14 code:28 userInfo:v33];
        v35 = a1[15];
        a1[15] = v34;
      }
    }

    else
    {
      v17 = KmlLogger();
      if (sub_100377D18(v17))
      {
        v36 = 136315394;
        v37 = "[KmlSeManager encryptTrackingRequestWithEndpoint:]";
        sub_10036F4A8();
        v38 = 595;
        sub_100377CF0();
        _os_log_impl(v18, v19, v20, v21, v22, 0x12u);
      }

      v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v40 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v8 = [sub_100377D30() stringWithUTF8String:?];
      v41 = v8;
      v13 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
      v23 = [NSError errorWithDomain:v10 code:28 userInfo:v13];
      v24 = a1[15];
      a1[15] = v23;
    }

    a1 = 0;
LABEL_12:
  }

  return a1;
}

void sub_1003C52D0(uint64_t a1)
{
  if (a1)
  {
    v3 = 3221225472;
    v4 = sub_10037730C;
    v5 = &unk_1004C08D8;
    v6 = sub_100375724(a1);
    dispatch_async(v1, block);
  }
}

void sub_1003C5330(uint64_t a1, NSObject *a2)
{
  if (a1)
  {
    v5 = KmlLogger();
    if (sub_10036DCF8(v5))
    {
      v6 = *(a1 + 8);
      *buf = 136315906;
      v27 = "[KmlSeManager setCurrentState_sync:]";
      v28 = 1024;
      v29 = 287;
      v30 = 2048;
      v31 = v6;
      v32 = 2048;
      v33 = a2;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : SEManager: Current state %ld, new state %ld", buf, 0x26u);
    }

    v7 = *(a1 + 8);
    *(a1 + 8) = a2;
    *(a1 + 16) = v7;
    switch(a2)
    {
      case 1uLL:
        v8 = *(a1 + 32);
        sub_100057A60();
        sub_100057B28();
        SESEndPointPreWarmForAlisha();
        return;
      case 2uLL:
        WeakRetained = KmlLogger();
        if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        sub_100377C18();
        v29 = 313;
        v11 = "%s : %i : Done with pre-warm. Waiting for next steps.";
        goto LABEL_18;
      case 3uLL:
        WeakRetained = KmlLogger();
        if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        sub_100377C18();
        v29 = 317;
        v11 = "%s : %i : SEManager: No pre-conditions currently";
        goto LABEL_18;
      case 4uLL:
        v14 = sub_1003C56AC(a1);
        v15 = KmlLogger();
        v16 = v15;
        if (v14)
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            sub_100377C18();
            v29 = 323;
            v30 = 2112;
            v31 = v14;
            sub_100377CF0();
            _os_log_impl(v20, v21, v22, v23, v24, 0x1Cu);
          }

          v25 = v14;
          v16 = *(a1 + 120);
          *(a1 + 120) = v25;
          v19 = 7;
        }

        else
        {
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            sub_100377C18();
            v29 = 328;
            sub_100377C78(&_mh_execute_header, v17, v18, "%s : %i : SEManager: Endpoint created successfully. Time to track the key.", buf);
          }

          v19 = 5;
        }

        sub_1003C4520(a1, v19);
        goto LABEL_15;
      case 5uLL:
        v12 = KmlLogger();
        if (sub_100057AEC(v12))
        {
          sub_100377C18();
          v29 = 335;
          sub_10036DC0C(&_mh_execute_header, a2, v13, "%s : %i : SEManager: Ready to create key tracking request.", buf);
        }

        WeakRetained = objc_loadWeakRetained((a1 + 136));
        [WeakRetained handleKeyCreationCompletionResult:0];
        goto LABEL_19;
      case 6uLL:
        WeakRetained = KmlLogger();
        if (!os_log_type_enabled(WeakRetained, OS_LOG_TYPE_INFO))
        {
          goto LABEL_19;
        }

        sub_100377C18();
        v29 = 340;
        v11 = "%s : %i : SEManager: Tracking request created. All Done";
LABEL_18:
        sub_10036DC0C(&_mh_execute_header, WeakRetained, v10, v11, buf);
        goto LABEL_19;
      case 7uLL:
        v14 = objc_loadWeakRetained((a1 + 136));
        [v14 handleKeyCreationCompletionResult:*(a1 + 120)];
LABEL_15:

        return;
      case 8uLL:
        WeakRetained = objc_loadWeakRetained((a1 + 136));
        [WeakRetained handleKeyCreationCancellationResult:1];
LABEL_19:

        break;
      default:
        return;
    }
  }
}

id sub_1003C56AC(void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = sub_1003DE4BC(a1[3]);
    v3 = [OBJC_CLASS___SEEndPointConfiguration configurationWithOpt1:v2 opt2:sub_1003DE58C(*(v1 + 24))];
    if (!v3)
    {
      v10 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v162[0] = NSLocalizedDescriptionKey;
      v15 = OBJC_CLASS___SEEndPointConfiguration[141];
      KmlErrorString();
      v16 = [sub_100377D30() stringWithUTF8String:?];
      v162[1] = NSLocalizedFailureReasonErrorKey;
      v163[0] = v16;
      v163[1] = @"Invalid endpoint configuration option group values (RFU bits set)";
      v17 = [NSDictionary dictionaryWithObjects:v163 forKeys:v162 count:2];
      v18 = v10;
      v19 = 6;
LABEL_24:
      v1 = [NSError errorWithDomain:v18 code:v19 userInfo:v17];
LABEL_76:

      goto LABEL_77;
    }

    sub_1003DE58C(*(v1 + 24));
    if (kmlUtilIsFleetKey())
    {
      if (!sub_1003F6F5C(v4) || (v5 = objc_opt_new(), v6 = [v5 allowFleetOwnerPairing], v5, !v6))
      {
        v20 = KmlLogger();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          sub_100377C04();
          v146 = 364;
          sub_10036F500(&_mh_execute_header, v20, v21, "%s : %i : Owner Pairing attempt with a fleet car blocked", buf);
        }

        v10 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v160[0] = NSLocalizedDescriptionKey;
        v22 = OBJC_CLASS___SEEndPointConfiguration[141];
        KmlErrorString();
        v16 = [sub_100377D30() stringWithUTF8String:?];
        v160[1] = NSLocalizedFailureReasonErrorKey;
        v161[0] = v16;
        v161[1] = @"OwnerPairing with fleet cars blocked";
        v23 = v161;
        v24 = v160;
LABEL_23:
        v17 = [NSDictionary dictionaryWithObjects:v23 forKeys:v24 count:2];
        v18 = v10;
        v19 = 33;
        goto LABEL_24;
      }

      v7 = KmlLogger();
      if (sub_100057AEC(v7))
      {
        sub_100377C04();
        v146 = 362;
        sub_10036DC0C(&_mh_execute_header, v5, v8, "%s : %i : Allow Owner Pairing attempt with a fleet car", buf);
      }
    }

    if (!+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(v1 + 104) agreedKmlVehicleVersion], 768) || (~sub_1003DE4BC(*(v1 + 24)) & 0x30) == 0)
    {
      v9 = sub_1003DC544(*(v1 + 24));
      v10 = sub_1003997A8(KmlEndpointManager, v9, *(v1 + 56), *(v1 + 64), 0);

      if (v10)
      {
        v11 = KmlLogger();
        if (sub_10036DCF8(v11))
        {
          sub_100377C04();
          v146 = 385;
          sub_100377C78(&_mh_execute_header, v12, v13, "%s : %i : Found unrevoked, duplicate endpoint, checking if its valid", buf);
        }

        v14 = [v10 trackingRequest];
        if (v14)
        {

LABEL_26:
          v28 = KmlLogger();
          if (sub_100377D18(v28))
          {
            sub_100377C04();
            v146 = 389;
            sub_100377CF0();
            _os_log_impl(v29, v30, v31, v32, v33, 0x12u);
          }

          v16 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v156[0] = NSLocalizedDescriptionKey;
          v17 = [(__objc2_class *)OBJC_CLASS___KmlSeManager.isa stringWithUTF8String:KmlErrorString()];
          v156[1] = NSLocalizedFailureReasonErrorKey;
          v157[0] = v17;
          v157[1] = @"Valid key already exists for this reader identifier";
          v34 = [NSDictionary dictionaryWithObjects:v157 forKeys:v156 count:2];
          v1 = [NSError errorWithDomain:v16 code:209 userInfo:v34];
          goto LABEL_75;
        }

        v9 = [v10 trackingReceipt];

        if (v9)
        {
          goto LABEL_26;
        }

        v35 = KmlLogger();
        if (sub_10036DCF8(v35))
        {
          sub_100377C04();
          v146 = 393;
          sub_100377C78(&_mh_execute_header, v36, v37, "%s : %i : Found dangling endpoint, cleaning up", buf);
        }

        v38 = *(v1 + 56);
        v39 = *(v1 + 64);
        v40 = [v10 publicKeyIdentifier];
        v41 = kmlUtilHexStringFromData();
        v142[1] = 0;
        _SESEndPointDeleteWithSession();
        v16 = 0;

        if (v16)
        {
          v42 = KmlLogger();
          if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
          {
            sub_100377C04();
            sub_100377CD0();
            *v148 = v16;
            sub_10036F590(&_mh_execute_header, v42, v43, "%s : %i : Unable to delete duplicate endpoint: %@", buf);
          }

          v17 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v154[0] = NSLocalizedDescriptionKey;
          v34 = [(__objc2_class *)OBJC_CLASS___KmlSeManager.isa stringWithUTF8String:KmlErrorString()];
          v154[1] = NSLocalizedFailureReasonErrorKey;
          v155[0] = v34;
          v155[1] = @"Unable to delete duplicate endpoint";
          v44 = [NSDictionary dictionaryWithObjects:v155 forKeys:v154 count:2];
          v1 = [NSError errorWithDomain:v17 code:209 userInfo:v44];

          goto LABEL_75;
        }
      }

      v45 = sub_1003DC464(*(v1 + 24));
      v16 = [v45 copy];

      v46 = sub_1003DDCFC(*(v1 + 24));
      v17 = [v46 copy];

      v47 = sub_1003DDDDC(*(v1 + 24));
      v139 = [v47 copy];

      v48 = sub_1003DC544(*(v1 + 24));
      v136 = [v48 copy];

      v49 = sub_1003DDC1C(*(v1 + 24));
      v138 = [NSArray arrayWithObjects:v49, 0];

      v50 = sub_10039737C(KmlEndpointManager, @"OWNR");
      v51 = *(v1 + 144);
      *(v1 + 144) = v50;

      if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(v1 + 104) agreedKmlVehicleVersion], 768))
      {
        v52 = KmlLogger();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_INFO))
        {
          sub_100377C04();
          v146 = 416;
          sub_10036DC0C(&_mh_execute_header, v52, v53, "%s : %i : getting v3 mailbox data sizes", buf);
        }

        if (sub_1003DE360(*(v1 + 24)))
        {
          v54 = sub_100377D48();
          sub_1003DE360(v54);
          v141 = [sub_100377D3C() numberWithUnsignedInteger:?];
        }

        else
        {
          v141 = 0;
        }

        if (sub_1003DE134(*(v1 + 24)))
        {
          v56 = sub_100377D48();
          sub_1003DE134(v56);
LABEL_48:
          v140 = [sub_100377D3C() numberWithUnsignedInteger:?];
          goto LABEL_50;
        }
      }

      else
      {
        if (sub_1003DE068(*(v1 + 24)))
        {
          v55 = sub_100377D48();
          sub_1003DE068(v55);
          v141 = [sub_100377D3C() numberWithUnsignedInteger:?];
        }

        else
        {
          v141 = 0;
        }

        if (sub_1003DDF9C(*(v1 + 24)))
        {
          v57 = sub_100377D48();
          sub_1003DDF9C(v57);
          goto LABEL_48;
        }
      }

      v140 = 0;
LABEL_50:
      v135 = v10;
      v58 = v3;
      v59 = KmlLogger();
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        v60 = [v140 unsignedIntValue];
        [v141 unsignedIntValue];
        sub_100377C04();
        v146 = 425;
        v147 = v61;
        *v148 = v60;
        *&v148[4] = v61;
        *&v148[6] = v62;
        _os_log_impl(&_mh_execute_header, v59, OS_LOG_TYPE_INFO, "%s : %i : getting mailbox data sizes: private: 0x%04x, confidential: 0x%04x", buf, 0x1Eu);
      }

      v63 = *(v1 + 56);
      v64 = *(v1 + 64);
      v65 = *(v1 + 144);
      v66 = *(v1 + 32);
      v67 = sub_1003DEEC8(*(v1 + 24));
      sub_1003DDEBC(*(v1 + 24));
      v133 = v142[0] = 0;
      v3 = v58;
      v68 = v136;
      v69 = SESEndPointCreateForAlishaWithSession();
      v70 = 0;

      if (v70)
      {
        v71 = KmlLogger();
        v10 = v135;
        if (sub_100377D54(v71))
        {
          *buf = 136315650;
          v144 = "[KmlSeManager createEndPoint]";
          v145 = 1024;
          sub_100377CD0();
          *v148 = v70;
          sub_100377CC0();
          _os_log_impl(v72, v73, v74, v75, v76, 0x1Cu);
        }

        v1 = sesErrorToKmlError();
      }

      else
      {
        v77 = [v69 certificates];
        v78 = [v77 objectAtIndexedSubscript:0];
        v79 = *(v1 + 152);
        *(v1 + 152) = v78;

        v80 = [v69 certificates];
        v81 = [v80 objectAtIndexedSubscript:1];
        v82 = *(v1 + 160);
        *(v1 + 160) = v81;

        v83 = [v69 certificates];
        v84 = [v83 objectAtIndexedSubscript:2];
        v85 = *(v1 + 168);
        *(v1 + 168) = v84;

        v86 = *(v1 + 152);
        if (v86 && [v86 length] && (v87 = *(v1 + 160)) != 0 && objc_msgSend(v87, "length") && (v88 = *(v1 + 168)) != 0 && objc_msgSend(v88, "length"))
        {
          v89 = [v69 publicKeyIdentifier];
          v90 = *(v1 + 176);
          *(v1 + 176) = v89;

          v91 = *(v1 + 176);
          v92 = kmlUtilHexStringFromData();
          v93 = *(v1 + 184);
          *(v1 + 184) = v92;

          if (!+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(v1 + 104) agreedKmlVehicleVersion], 768))
          {
            goto LABEL_80;
          }

          v94 = KmlLogger();
          if (os_log_type_enabled(v94, OS_LOG_TYPE_INFO))
          {
            sub_100377C40();
            v146 = 464;
            sub_10036DC0C(&_mh_execute_header, v94, v95, "%s : %i : Converting endpoint because endpoint is for a V3 car", buf);
          }

          v96 = *(v1 + 56);
          v97 = *(v1 + 64);
          v98 = *(v1 + 184);
          v99 = kmlUtilTimeNow();
          v70 = SESEndpointConvertWithSession();

          v68 = v136;
          if (!v70)
          {
LABEL_80:
            v10 = v135;
            if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(v1 + 104) agreedKmlVehicleVersion], 768))
            {
              v118 = KmlLogger();
              v34 = v139;
              if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
              {
                sub_100377C40();
                v146 = 476;
                sub_10036DC0C(&_mh_execute_header, v118, v119, "%s : %i : getting v3 mailbox data sizes", buf);
              }

              v137 = sub_1003DEA80(*(v1 + 24));
              v134 = sub_1003DE81C(*(v1 + 24));
            }

            else
            {
              v137 = sub_1003DE73C(*(v1 + 24));
              v134 = sub_1003DE65C(*(v1 + 24));
              v34 = v139;
            }

            v120 = KmlLogger();
            if (os_log_type_enabled(v120, OS_LOG_TYPE_INFO))
            {
              sub_100377C40();
              sub_100377CD0();
              *v148 = v137;
              *&v148[8] = v121;
              v149 = v134;
              _os_log_impl(&_mh_execute_header, v120, OS_LOG_TYPE_INFO, "%s : %i : SEManager: EndPoint created, setting MailBoxes configuration %@ %@", buf, 0x26u);
            }

            v122 = *(v1 + 56);
            v123 = *(v1 + 64);
            v124 = *(v1 + 184);
            SESEndPointConfigureMailBoxesWithSession();
            v125 = 0;
            if (v125)
            {
              v126 = v125;
              v127 = KmlLogger();
              if (sub_100377D54(v127))
              {
                sub_100377C40();
                v146 = 493;
                sub_100377CC0();
                _os_log_impl(v128, v129, v130, v131, v132, 0x12u);
              }
            }

            else
            {
              v126 = sub_1003C66C0(v1);
            }

            v70 = v126;

            v1 = v70;
            goto LABEL_74;
          }

          v100 = KmlLogger();
          if (sub_100377D54(v100))
          {
            sub_100377C40();
            sub_100377CD0();
            *v148 = v70;
            sub_100377CC0();
            _os_log_impl(v101, v102, v103, v104, v105, 0x1Cu);
          }

          v106 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v150[0] = NSLocalizedDescriptionKey;
          v107 = [NSString stringWithUTF8String:KmlErrorString()];
          v150[1] = NSLocalizedFailureReasonErrorKey;
          v151[0] = v107;
          v151[1] = @"Error while converting V3 endpoint during endpoint creation";
          v108 = [NSDictionary dictionaryWithObjects:v151 forKeys:v150 count:2];
          v1 = [NSError errorWithDomain:v106 code:6 userInfo:v108];
        }

        else
        {
          v109 = KmlLogger();
          if (sub_100377D54(v109))
          {
            *buf = 136315394;
            v144 = "[KmlSeManager createEndPoint]";
            v145 = 1024;
            v146 = 456;
            sub_100377CC0();
            _os_log_impl(v110, v111, v112, v113, v114, 0x12u);
          }

          v70 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v152[0] = NSLocalizedDescriptionKey;
          v115 = [NSString stringWithUTF8String:KmlErrorString()];
          v152[1] = NSLocalizedFailureReasonErrorKey;
          v153[0] = v115;
          v153[1] = @"Missing attestations";
          v116 = [NSDictionary dictionaryWithObjects:v153 forKeys:v152 count:2];
          v1 = [NSError errorWithDomain:v70 code:6 userInfo:v116];
        }

        v10 = v135;
        v68 = v136;
      }

      v34 = v139;
LABEL_74:

LABEL_75:
      goto LABEL_76;
    }

    v25 = KmlLogger();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      sub_100377C04();
      v146 = 372;
      sub_10036F500(&_mh_execute_header, v25, v26, "%s : %i : Invalid value for options one for V3 pairing (bits 4 and 5 must be set)", buf);
    }

    v10 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v158[0] = NSLocalizedDescriptionKey;
    v27 = OBJC_CLASS___SEEndPointConfiguration[141];
    KmlErrorString();
    v16 = [sub_100377D30() stringWithUTF8String:?];
    v158[1] = NSLocalizedFailureReasonErrorKey;
    v159[0] = v16;
    v159[1] = @"Invalid value for options one for V3 pairing (bits 4 and 5 must be set)";
    v23 = v159;
    v24 = v158;
    goto LABEL_23;
  }

LABEL_77:

  return v1;
}

NSObject *sub_1003C66C0(uint64_t a1)
{
  if (a1)
  {
    v4 = sub_1003DEB94(*(a1 + 24));
    v5 = KmlLogger();
    if (sub_100057AEC(v5))
    {
      v6 = kmlUtilHexStringFromData();
      sub_100377C54();
      sub_100377C68();
      v96 = v7;
      sub_100367454(&_mh_execute_header, v1, v8, "%s : %i : MailboxMappingData: %@", v94);
    }

    v9 = [[KmlMailboxMappingData alloc] initWithData:v4 preferredVersion:{objc_msgSend(*(a1 + 104), "agreedKmlVehicleVersion")}];
    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 104) agreedKmlVehicleVersion], 768))
    {
      v10 = *(a1 + 56);
      v11 = *(a1 + 64);
      v12 = *(a1 + 184);
      [v9 vehicleProprietaryDataOffset];
      v93 = 0;
      v13 = SESEndPointGetPrivateDataWithSession();
      v14 = 0;
      if (v14)
      {
        v15 = v14;
        v16 = KmlLogger();
        if (sub_100377D18(v16))
        {
          sub_100377C54();
          sub_100377C68();
          v96 = v15;
          sub_100377CF0();
          _os_log_impl(v17, v18, v19, v20, v21, 0x1Cu);
        }

        v22 = v15;
        goto LABEL_41;
      }

      v29 = [[NSMutableData alloc] initWithData:v13];
      kmlUtilLogLargeData();
      v92 = 0x80;
      [v29 replaceBytesInRange:0 withBytes:1, &v92];
      v31 = [v9 vehicleProprietaryDataOffset];
      v2 = (v31 - [v9 signerSlotIdListOffset]);
      v32 = [NSMutableData dataWithLength:v2];
      memset([v32 mutableBytes], 255, v2);
      [v9 signerSlotIdListOffset];
      [sub_100377D3C() replaceBytesInRange:? withBytes:?];
      kmlUtilLogLargeData();
      v33 = *(a1 + 56);
      v34 = *(a1 + 64);
      v35 = *(a1 + 184);
      SESEndPointSetPrivateDataWithSession();
      v36 = 0;
      if (v36)
      {
        v37 = v36;
        v38 = KmlLogger();
        if (sub_100377D18(v38))
        {
          sub_100377C54();
          sub_100377C68();
          v96 = v37;
          sub_100377CF0();
          _os_log_impl(v39, v40, v41, v42, v43, 0x1Cu);
        }

        v22 = v37;
LABEL_40:

LABEL_41:
        goto LABEL_42;
      }

      v28 = 0;
    }

    else
    {
      v23 = [v9 slotIdentifierLength];
      if (!v23)
      {
        v28 = 0;
LABEL_19:
        v44 = [KmlDeviceConfigurationData alloc];
        v45 = sub_1003DEBC4(*(a1 + 24));
        v46 = [v44 initWithData:v45];

        if ((*(a1 + 96) & 1) == 0)
        {
          [v46 removeUwbSupportLocally];
        }

        v47 = [v46 asData];
        v48 = KmlLogger();
        if (sub_100377D6C(v48))
        {
          v49 = kmlUtilHexStringFromData();
          sub_100377C54();
          sub_100377C68();
          v96 = v50;
          sub_100377CE0();
          _os_log_impl(v51, v52, v53, v54, v55, 0x1Cu);
        }

        if ([*(a1 + 104) doesAgreedVersionSupportOnlineBleKeys])
        {
          v56 = KmlLogger();
          if (sub_100377D6C(v56))
          {
            *v94 = 136315394;
            sub_100377CB0();
            v95 = 799;
            sub_100377CE0();
            _os_log_impl(v57, v58, v59, v60, v61, 0x12u);
          }

          v62 = [v46 deviceBtIntroKey];
          v63 = [v62 length];

          if (v63)
          {
            v64 = KmlLogger();
            if (sub_100377D6C(v64))
            {
              *v94 = 136315394;
              sub_100377CB0();
              v95 = 801;
              sub_100377CE0();
              _os_log_impl(v65, v66, v67, v68, v69, 0x12u);
            }

            v70 = [v46 deviceBtIntroKey];
            v71 = *(a1 + 72);
            *(a1 + 72) = v70;
          }

          v72 = [v46 onlineBleOOBMasterKeyOverride];
          if (v72)
          {
            v73 = v72;
            v74 = [v46 onlineBleOOBMasterKeyOverride];
            v75 = [v74 length];

            if (v75)
            {
              v76 = KmlLogger();
              if (sub_100377D6C(v76))
              {
                *v94 = 136315394;
                sub_100377CB0();
                v95 = 806;
                sub_100377CE0();
                _os_log_impl(v77, v78, v79, v80, v81, 0x12u);
              }

              v82 = [v46 onlineBleOOBMasterKeyOverride];
              v83 = *(a1 + 80);
              *(a1 + 80) = v82;
            }
          }
        }

        v84 = [*(a1 + 104) getVehicleSupportedVersionsData];
        v85 = *(a1 + 184);
        sub_100057A60();
        sub_100057B28();
        v13 = v46;
        v91 = v4;
        v29 = v47;
        v86 = v84;
        v87 = SESEndPointUpdateWithBlock();

        if (v87)
        {
          v88 = KmlLogger();
          if (sub_10036F5C4(v88))
          {
            *v94 = 136315650;
            sub_100377CB0();
            sub_100377C68();
            v96 = v87;
            sub_10036F590(&_mh_execute_header, v28, v89, "%s : %i : SEManager: Could not update endpoint %@", v94);
          }
        }

        v22 = v87;

        goto LABEL_40;
      }

      v24 = 7 * v23;
      v13 = [NSMutableData dataWithLength:v24];
      memset([v13 mutableBytes], 255, v24);
      [v9 slotIdListOffset];
      v25 = *(a1 + 56);
      v26 = *(a1 + 64);
      v27 = *(a1 + 184);
      SESEndPointSetPrivateDataWithSession();
      v28 = 0;
      v29 = KmlLogger();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        sub_100377C54();
        sub_100377C68();
        v96 = v28;
        sub_100367454(&_mh_execute_header, v29, v30, "%s : %i : Friend SlotId initialization result: %@", v94);
      }
    }

    goto LABEL_19;
  }

  v22 = 0;
LABEL_42:

  return v22;
}

id sub_1003C6E04(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = [NSData alloc];
    v6 = [v4 mailboxMapping];
    v7 = [v5 initWithData:v6];

    v8 = [[KmlMailboxMappingData alloc] initWithData:v7 preferredVersion:{objc_msgSend(*(a1 + 104), "agreedKmlVehicleVersion")}];
    [v8 mailboxEndOffset];
    [v8 signalingBitmapOffset];
    v9 = *(a1 + 184);
    [v8 signalingBitmapOffset];
    v47 = 0;
    v10 = SESEndPointGetPrivateData();
    v11 = 0;
    if (v11)
    {
      v12 = v11;
      v13 = KmlLogger();
      if (sub_10036F5C4(v13))
      {
        *buf = 136315650;
        v50 = "[KmlSeManager getOpaqueFromEndpoint:]";
        sub_1003674B0();
        v52 = 660;
        v53 = 2112;
        *v54 = v12;
        sub_10036F590(&_mh_execute_header, v2, v14, "%s : %i : Error while getting signaling bitmap %@", buf);
      }

      v15 = 0;
    }

    else
    {
      kmlUtilLogLargeData();
      v2 = [[NSMutableData alloc] initWithData:v10];
      v16 = *[v10 bytes];
      if ([v8 isKeyAttestationSetByCarInSignalingBitmap:v16])
      {
        v46 = v16 & [v8 getMaskToIndicateKeyAttestationConsumed];
        [v2 replaceBytesInRange:0 withBytes:1, &v46];
        v17 = [v8 keyAttestationStartOffset];
        v18 = v17 - [v8 signalingBitmapOffset];
        v19 = [v8 attestationPackageLength];
        v20 = KmlLogger();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          *buf = 136315906;
          v50 = "[KmlSeManager getOpaqueFromEndpoint:]";
          v51 = 1024;
          v52 = 681;
          v53 = 1024;
          *v54 = v18;
          *&v54[4] = 1024;
          *&v54[6] = v19;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEBUG, "%s : %i : KeyAttestation offsets: start (%02X), length(%02X)", buf, 0x1Eu);
        }

        v21 = [v10 subdataWithRange:{v18, v19}];
        [v2 resetBytesInRange:v18, v19];
        v22 = *(a1 + 184);
        [v8 signalingBitmapOffset];
        v45 = 0;
        SESEndPointSetPrivateData();
        v12 = 0;
        if (v12)
        {
          v23 = KmlLogger();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            v50 = "[KmlSeManager getOpaqueFromEndpoint:]";
            sub_1003674B0();
            sub_100377CFC(693);
            *(v24 + 20) = v12;
            sub_10036F590(&_mh_execute_header, v23, v25, "%s : %i : Failed to read and reset keyAttestation in private mailbox %@", buf);
          }

          v15 = 0;
        }

        else
        {
          v40 = v4;
          [KmlTlv TLVsWithData:v21];
          v41 = 0u;
          v42 = 0u;
          v43 = 0u;
          v23 = v44 = 0u;
          v27 = [v23 countByEnumeratingWithState:&v41 objects:v48 count:16];
          if (v27)
          {
            v28 = v27;
            v39 = v21;
            v29 = *v42;
            while (2)
            {
              for (i = 0; i != v28; i = i + 1)
              {
                if (*v42 != v29)
                {
                  objc_enumerationMutation(v23);
                }

                v31 = *(*(&v41 + 1) + 8 * i);
                [v31 tag];
                if (isDeviceKeyAttestationTag())
                {
                  v32 = KmlLogger();
                  if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
                  {
                    v33 = [v31 value];
                    v34 = kmlUtilHexStringFromData();
                    *buf = 136315650;
                    sub_100377C2C("[KmlSeManager getOpaqueFromEndpoint:]");
                    sub_100377CFC(701);
                    *(v36 + 20) = v35;
                    sub_100367454(&_mh_execute_header, v32, v37, "%s : %i : Opaque found in key attestation Data : %@", buf);
                  }

                  v15 = [v31 value];
                  goto LABEL_28;
                }
              }

              v28 = [v23 countByEnumeratingWithState:&v41 objects:v48 count:16];
              if (v28)
              {
                continue;
              }

              break;
            }

            v15 = 0;
LABEL_28:
            v21 = v39;
          }

          else
          {
            v15 = 0;
          }

          v4 = v40;
        }
      }

      else
      {
        v21 = KmlLogger();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315650;
          v50 = "[KmlSeManager getOpaqueFromEndpoint:]";
          sub_1003674B0();
          v52 = 669;
          v53 = v26;
          *v54 = v16;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s : %i : As per signaling bitmap (%02X), opaque attestation is not set", buf, 0x18u);
        }

        v12 = 0;
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

id sub_1003C737C(id a1, void *a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v16 = 0;
    v6 = [a2 encodeWithError:&v16];
    v7 = v16;
    if (v7 || !v6)
    {
      v13 = KmlLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315906;
        v18 = "[KmlSeManager saveTrackingRequest:endpoint:]";
        v19 = 1024;
        v20 = 626;
        v21 = 2112;
        v22 = v7;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%s : %i : Encode key tracking request error %@, trackingRequestData=%@", buf, 0x26u);
      }

      a1 = v7;
    }

    else
    {
      v8 = [v5 publicKeyIdentifier];
      v9 = kmlUtilHexStringFromData();

      sub_100057A60();
      sub_100057B28();
      v15 = v6;
      v10 = SESEndPointUpdateWithBlock();
      if (v10)
      {
        v11 = KmlLogger();
        if (sub_10036F5C4(v11))
        {
          *buf = 136315394;
          v18 = "[KmlSeManager saveTrackingRequest:endpoint:]";
          v19 = 1024;
          v20 = 638;
          sub_10036F500(&_mh_execute_header, v8, v12, "%s : %i : SEManager: Could not update endpoint", buf);
        }
      }

      else
      {
        sub_100369040(KmlAnalyticsLogger, v9);
      }

      a1 = v10;
    }
  }

  return a1;
}

id *sub_1003C75AC(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 17, a2);
  }

  return result;
}

uint64_t sub_1003C75BC(uint64_t result)
{
  if (result)
  {
    return *(result + 152);
  }

  return result;
}

uint64_t sub_1003C75C8(uint64_t result)
{
  if (result)
  {
    return *(result + 160);
  }

  return result;
}

uint64_t sub_1003C75D4(uint64_t result)
{
  if (result)
  {
    return *(result + 168);
  }

  return result;
}

uint64_t sub_1003C75E0(uint64_t result)
{
  if (result)
  {
    return *(result + 176);
  }

  return result;
}

uint64_t sub_1003C75EC(uint64_t result)
{
  if (result)
  {
    return *(result + 184);
  }

  return result;
}

void *sub_1003C75F8(void *a1, __int16 a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v28.receiver = a1;
    v28.super_class = KmlApduResponse;
    v6 = objc_msgSendSuper2(&v28, "init");
    a1 = v6;
    if (v6)
    {
      v21 = a2;
      v22 = v6;
      v7 = +[NSMutableData data];
      v24 = 0u;
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v23 = v5;
      v8 = v5;
      v9 = [v8 countByEnumeratingWithState:&v24 objects:v35 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v25;
        do
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v24 + 1) + 8 * i);
            v14 = KmlLogger();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = [v13 asData];
              *buf = 136315650;
              v30 = "[KmlApduResponse initWithStatus:tlvArray:]";
              v31 = 1024;
              v32 = 49;
              v33 = 2112;
              v34 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : TLV: add tlv %@ to response", buf, 0x1Cu);
            }

            v16 = [v13 asData];
            [v7 appendData:v16];
          }

          v10 = [v8 countByEnumeratingWithState:&v24 objects:v35 count:16];
        }

        while (v10);
      }

      v17 = [v7 copy];
      a1 = v22;
      v18 = *(v22 + 2);
      *(v22 + 2) = v17;

      *(v22 + 4) = v21;
      v19 = *(v22 + 4);
      *(v22 + 4) = 0;

      v5 = v23;
    }
  }

  return a1;
}

id sub_1003C7838(id a1, __int16 a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = KmlApduResponse;
    a1 = objc_msgSendSuper2(&v10, "init");
    if (a1)
    {
      v6 = [v5 copy];
      v7 = *(a1 + 2);
      *(a1 + 2) = v6;

      *(a1 + 4) = a2;
      v8 = *(a1 + 4);
      *(a1 + 4) = 0;
    }
  }

  return a1;
}

id sub_1003C78C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = +[NSMutableData data];
    v5 = (a1 + 32);
    if (*(a1 + 32))
    {
      v6 = KmlLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        sub_10036DC30();
        v42 = 100;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : Response was encrypted already. Just send the same one", buf, 0x12u);
      }

      v7 = *v5;
LABEL_30:

      goto LABEL_31;
    }

    v8 = a1 + 8;
    v9 = *(a1 + 8);
    v10 = __rev16(v9);
    if (v3)
    {
      if ([*(a1 + 16) length] || v9 == 144 || (v10 - 25088) > 0xFF00u)
      {
        v11 = sub_1003DA868(v3, *(a1 + 16), *(a1 + 8));
        v12 = 0;
LABEL_15:
        v14 = KmlLogger();
        v15 = &unk_100409000;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
        {
          v16 = *(a1 + 16);
          kmlUtilHexStringFromData();
          v18 = v17 = v10;
          *buf = 136315650;
          sub_10036DC30();
          sub_10036F0E4();
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : ResponseAPDU: PlainText Payload: %@", buf, 0x1Cu);

          v10 = v17;
          v15 = &unk_100409000;
        }

        v19 = KmlLogger();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          sub_10036DC30();
          v42 = 115;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_INFO, "%s : %i : ResponseAPDU: PlainText Payload End ---", buf, 0x12u);
        }

        if (!v11 || v12)
        {
          [v4 appendData:*(a1 + 16)];
        }

        else
        {
          [v4 appendData:v11];
          v20 = KmlLogger();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
          {
            v21 = kmlUtilHexStringFromData();
            *buf = v15[277];
            sub_10036DC30();
            sub_10036F0E4();
            sub_10037827C();
            _os_log_impl(v22, v23, v24, v25, v26, 0x1Cu);
          }

          v27 = KmlLogger();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
          {
            *buf = 136315394;
            sub_10036DC30();
            v42 = 119;
            sub_10037827C();
            _os_log_impl(v28, v29, v30, v31, v32, 0x12u);
          }
        }

        v33 = KmlLogger();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
        {
          *buf = v15[277];
          sub_10036DC30();
          v42 = 124;
          v43 = v34;
          v44 = v10;
          sub_10037827C();
          _os_log_impl(v35, v36, v37, v38, v39, 0x18u);
        }

        [v4 appendBytes:v8 length:2];
        objc_storeStrong(v5, v4);
        v7 = v4;

        goto LABEL_30;
      }

      v13 = KmlLogger();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        sub_10036DC30();
        v42 = 108;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : Response has 0 length payload and error status. No encryption needed.", buf, 0x12u);
      }
    }

    v12 = 0;
    v11 = 0;
    goto LABEL_15;
  }

  v7 = 0;
LABEL_31:

  return v7;
}

uint64_t sub_1003C7D1C(uint64_t result)
{
  if (result)
  {
    return *(result + 80);
  }

  return result;
}

uint64_t sub_1003C7D28(uint64_t result)
{
  if (result)
  {
    return *(result + 112);
  }

  return result;
}

uint64_t sub_1003C7D34(uint64_t result)
{
  if (result)
  {
    return *(result + 96);
  }

  return result;
}

uint64_t sub_1003C7D40(uint64_t result)
{
  if (result)
  {
    return *(result + 104);
  }

  return result;
}

id sub_1003C7D4C(void *a1, uint64_t a2)
{
  if (a1)
  {
    a1 = [NSKeyedArchiver archivedDataWithRootObject:a1 requiringSecureCoding:1 error:a2];
    v2 = vars8;
  }

  return a1;
}

void sub_1003C7D90(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 64), a2);
  }
}

void sub_1003C7DA0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 72), a2);
  }
}

void sub_1003C7DB0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 88), a2);
  }
}

void sub_1003C7DC0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 96), a2);
  }
}

void sub_1003C7DD0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 104), a2);
  }
}

uint64_t sub_1003C7DE0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 112) = a2;
  }

  return result;
}

uint64_t sub_1003C7DEC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 120) = a2;
  }

  return result;
}

uint64_t sub_1003C7DF8(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 128) = a2;
  }

  return result;
}

uint64_t sub_1003C7E04(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 136) = a2;
  }

  return result;
}

uint64_t sub_1003C7E10(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 144) = a2;
  }

  return result;
}

void sub_1003C7E1C(uint64_t a1)
{
  if (a1)
  {
    v23 = 0;
    v2 = SESEndPointGetInvitations();
    v3 = 0;
    if (v3 || !v2)
    {
      v4 = KmlLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        v26 = "[KmlSharingInvitationRecordsUpdater unpackAllSharingInvitationRecords_sync]";
        v27 = 1024;
        v28 = 245;
        v29 = 2112;
        v30 = v3;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : We don't have any sharing invitation records - %@", buf, 0x1Cu);
      }
    }

    else
    {
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v4 = v2;
      v5 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v5)
      {
        v6 = v5;
        v17 = v2;
        v3 = 0;
        v7 = *v20;
        do
        {
          v8 = 0;
          v9 = v3;
          do
          {
            if (*v20 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v10 = *(*(&v19 + 1) + 8 * v8);
            v18 = v9;
            v11 = sub_100378B14(KmlSharingInvitationRecord, v10, &v18);
            v3 = v18;

            v12 = KmlLogger();
            v13 = os_log_type_enabled(v12, OS_LOG_TYPE_INFO);
            if (v3)
            {
              if (v13)
              {
                *buf = 136315394;
                v26 = "[KmlSharingInvitationRecordsUpdater unpackAllSharingInvitationRecords_sync]";
                v27 = 1024;
                v28 = 252;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s : %i : Found a courrupted sharing record. Discarding it", buf, 0x12u);
              }
            }

            else
            {
              if (v13)
              {
                if (v11)
                {
                  v14 = v11[13];
                }

                else
                {
                  v14 = 0;
                }

                *buf = 136315650;
                v26 = "[KmlSharingInvitationRecordsUpdater unpackAllSharingInvitationRecords_sync]";
                v27 = 1024;
                v28 = 256;
                v29 = 2112;
                v30 = v14;
                _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_INFO, "%s : %i : Found sharing invitation record for invitation Id : %@", buf, 0x1Cu);
              }

              if (v11)
              {
                v15 = v11[13];
              }

              else
              {
                v15 = 0;
              }

              [*(a1 + 8) setObject:v11 forKeyedSubscript:v15];
            }

            v8 = v8 + 1;
            v9 = v3;
          }

          while (v6 != v8);
          v16 = [v4 countByEnumeratingWithState:&v19 objects:v24 count:16];
          v6 = v16;
        }

        while (v16);
        v2 = v17;
      }

      else
      {
        v3 = 0;
      }
    }
  }
}

void sub_1003C811C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3 && v3[13])
    {
      v5 = *(a1 + 16);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100378F0C;
      v7[3] = &unk_1004C22F0;
      v8 = v3;
      v9 = a1;
      dispatch_async(v5, v7);
      v6 = v8;
    }

    else
    {
      v6 = KmlLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v11 = "[KmlSharingInvitationRecordsUpdater updateRecord:]";
        v12 = 1024;
        v13 = 183;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : Invalid sharing record. Ignore it", buf, 0x12u);
      }
    }
  }
}

id sub_1003C8268(uint64_t a1)
{
  if (a1)
  {
    v24 = +[NSMutableArray array];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    obj = *(a1 + 8);
    v2 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
    if (v2)
    {
      v3 = v2;
      v4 = 0;
      v5 = *v28;
      do
      {
        v6 = 0;
        do
        {
          if (*v28 != v5)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v27 + 1) + 8 * v6);
          v8 = [*(a1 + 8) objectForKeyedSubscript:v7];
          v9 = v8;
          if (v8 && (*(v8 + 8) & 1) != 0)
          {
            if (*(v8 + 112) == 6)
            {
              v10 = SESEndPointDeleteInvitationWithId();

              v11 = KmlLogger();
              if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
              {
                *buf = 136315906;
                sub_10036F910();
                sub_100378ED4();
                _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_INFO, "%s : %i : Record for invitation Id %@ is ready for clean up. Removal result - %@", v12, 0x26u);
              }

              v4 = v10;
              if (!v10)
              {
                [v24 addObject:v7];
              }
            }

            else
            {
              v15 = KmlLogger();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 136315650;
                sub_10036F910();
                sub_100378EF8();
                _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : For invitation Id %@, replacing old record with new one", v16, 0x1Cu);
              }

              v26 = v4;
              v17 = sub_1003C7D4C(v9, &v26);
              v18 = v26;

              if (v18)
              {
                v19 = KmlLogger();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
                {
                  *buf = 136315906;
                  sub_10036F910();
                  sub_100378ED4();
                  _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%s : %i : Sharing Invitation Record with Invitation Id (%@), could not be serialized : %@", v20, 0x26u);
                }

                [v24 addObject:v7];
              }

              else
              {
                v18 = SESEndPointAddInvitationWithId();
                if (v18)
                {
                  v21 = KmlLogger();
                  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 136315650;
                    sub_10036F910();
                    v32 = 229;
                    v33 = 2112;
                    v34 = v18;
                    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%s : %i : Failed to save sharing records on endPoint : %@", buf, 0x1Cu);
                  }
                }

                else
                {
                  v9[8] = 0;
                }
              }

              v4 = v18;
            }
          }

          else
          {
            v13 = KmlLogger();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              *buf = 136315650;
              sub_10036F910();
              sub_100378EF8();
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : Record for invitation Id %@, did not change", v14, 0x1Cu);
            }
          }

          v6 = v6 + 1;
        }

        while (v3 != v6);
        v22 = [obj countByEnumeratingWithState:&v27 objects:v35 count:16];
        v3 = v22;
      }

      while (v22);
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 8) removeObjectsForKeys:v24];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

id *sub_1003C8664(id *a1)
{
  if (a1)
  {
    a1 = [a1[1] allValues];
    v1 = vars8;
  }

  return a1;
}

void *sub_1003C8698(void *result)
{
  if (result)
  {
    v1 = sub_1003C86DC(result);
    v2 = [v1 bytes];

    return v2;
  }

  return result;
}

void *sub_1003C86DC(void *a1)
{
  if (a1)
  {
    v2 = a1[7];
    if (!v2)
    {
      v2 = a1[6];
    }

    a1 = v2;
    v1 = vars8;
  }

  return a1;
}

id *sub_1003C8714(id *a1, unsigned __int8 *a2, unint64_t a3, void *a4, void *a5)
{
  v10 = a4;
  if (!a1)
  {
    goto LABEL_53;
  }

  v40.receiver = a1;
  v40.super_class = KmlApduRequest;
  v11 = objc_msgSendSuper2(&v40, "init");
  a1 = v11;
  if (!v11)
  {
    goto LABEL_53;
  }

  objc_storeStrong(v11 + 4, a4);
  if (a3 <= 3)
  {
    if (a5)
    {
      [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      objc_claimAutoreleasedReturnValue();
      *a5 = [sub_100379228() errorWithDomain:? code:? userInfo:?];
    }

    v12 = KmlLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    sub_10036F494();
    v44 = 82;
    v13 = "%s : %i : APDU: command length incorrect, return code: 0x6700.";
    goto LABEL_8;
  }

  *(a1 + 8) = *a2;
  *(a1 + 9) = a2[1];
  *(a1 + 41) = a2[2];
  *(a1 + 42) = a2[3];
  *(a1 + 40) = 0;
  v16 = a1[7];
  a1[7] = 0;

  if (a3 == 4)
  {
    goto LABEL_53;
  }

  v17 = a2[4];
  *(a1 + 3) = v17;
  if (v17)
  {
    v18 = a2 + 5;
    v19 = 5;
  }

  else
  {
    if (a3 == 5)
    {
      *(a1 + 5) = 256;
      goto LABEL_53;
    }

    if ((a3 - 5) <= 2)
    {
      if (a5)
      {
        v21 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        *a5 = [NSError errorWithDomain:v21 code:27136 userInfo:0];
      }

      v12 = KmlLogger();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        goto LABEL_10;
      }

      sub_10036F494();
      v44 = 114;
      v13 = "%s : %i : APDU: Invalid APDU format, return code: 0x6A00";
LABEL_8:
      v14 = v12;
      v15 = OS_LOG_TYPE_INFO;
LABEL_9:
      _os_log_impl(&_mh_execute_header, v14, v15, v13, buf, 0x12u);
LABEL_10:

      a1 = 0;
      goto LABEL_53;
    }

    v27 = a2[5];
    *(a1 + 3) = v27 << 8;
    v18 = a2 + 7;
    v17 = a2[6] | (v27 << 8);
    *(a1 + 3) = v17;
    v19 = 7;
  }

  v20 = a3 - v19;
  if (v20 < v17)
  {
    if (a5)
    {
      [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      objc_claimAutoreleasedReturnValue();
      *a5 = [sub_100379228() errorWithDomain:? code:? userInfo:?];
    }

    v12 = KmlLogger();
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      goto LABEL_10;
    }

    sub_10036F494();
    v44 = 127;
    v13 = "%s : %i : APDU: Incorrect length or address range error, return code: 0x6700";
    goto LABEL_8;
  }

  v22 = [NSData dataWithBytes:a2 length:v18 - a2];
  v23 = a1[3];
  a1[3] = v22;

  if (*(a1 + 3))
  {
    v24 = [NSData dataWithBytes:v18 length:?];
    v25 = a1[6];
    a1[6] = v24;

    v26 = *(a1 + 3);
    v18 += v26;
    v20 = a3 - (v26 + v19);
  }

  if (v20 >= 1)
  {
    if (v20 >= 4)
    {
      if (a5)
      {
        [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        objc_claimAutoreleasedReturnValue();
        *a5 = [sub_100379228() errorWithDomain:? code:? userInfo:?];
      }

      v12 = KmlLogger();
      if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_10;
      }

      sub_10036F494();
      v44 = 147;
      v13 = "%s : %i : APDU: Incorrect length, return code: 0x6700";
      v14 = v12;
      v15 = OS_LOG_TYPE_DEBUG;
      goto LABEL_9;
    }

    v28 = v18 + 1;
    v29 = *v18;
    *(a1 + 5) = v29;
    if (v29 || v20 != 3)
    {
      if (v20 != 2)
      {
        if (v29)
        {
          goto LABEL_41;
        }

        v30 = 256;
        goto LABEL_40;
      }
    }

    else
    {
      v28 = v18 + 2;
      v29 = v18[1];
      *(a1 + 5) = v29;
    }

    v30 = *v28 | (v29 << 8);
LABEL_40:
    *(a1 + 5) = v30;
  }

LABEL_41:
  if (a1[6])
  {
    if (a1[4])
    {
      v31 = a1[3];
      v32 = sub_1003DA5EC();
      v33 = 0;
      v34 = a1[7];
      a1[7] = v32;

      if (v33)
      {
        goto LABEL_47;
      }
    }
  }

  v35 = a1[7];
  if (!v35)
  {
    v33 = 0;
LABEL_47:
    v37 = KmlLogger();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v42 = "[KmlApduRequest initWithBytes:length:secureChannel:error:]";
      v43 = 1024;
      v44 = 173;
      v45 = 2112;
      v46 = v33;
      _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%s : %i : APDU: couldn't decrypt payload %@", buf, 0x1Cu);
    }

    v38 = a1[7];
    a1[7] = 0;

    v36 = 0;
    goto LABEL_50;
  }

  *(a1 + 40) = 1;
  v36 = [v35 length];
  v33 = 0;
LABEL_50:
  *(a1 + 4) = v36;
  if (!sub_1003D8EC8(v10))
  {
    *(a1 + 40) = 1;
  }

LABEL_53:
  return a1;
}

uint64_t sub_1003C8C7C(uint64_t result)
{
  if (result)
  {
    if (*(result + 8))
    {
      return sub_100073170();
    }

    else
    {
      return *(result + 9) == 164;
    }
  }

  return result;
}

uint64_t sub_1003C8C9C(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 132)
    {
      return *(result + 9) == 212;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

uint64_t sub_1003C8CC0(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 132)
    {
      return *(result + 9) == 202;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

uint64_t sub_1003C8CE4(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 132)
    {
      return *(result + 9) == 192;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

uint64_t sub_1003C8D08(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 132)
    {
      return *(result + 9) == 60;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

uint64_t sub_1003C8D2C(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 128)
    {
      return *(result + 9) == 60;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

uint64_t sub_1003C8D50(uint64_t result)
{
  if (result)
  {
    return *(result + 41);
  }

  return result;
}

uint64_t sub_1003C8D5C(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 128)
    {
      return *(result + 9) == 48;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

uint64_t sub_1003C8D80(uint64_t result)
{
  if (result)
  {
    if (*(result + 8) == 128)
    {
      return *(result + 9) == 50;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

BOOL sub_1003C8DA4(_BOOL8 result)
{
  if (result)
  {
    return *(result + 8) == 132 && *(result + 9) == 192 || *(result + 56) != 0;
  }

  return result;
}

void *sub_1003C8DD8(void *a1)
{
  v1 = a1;
  if (a1)
  {
    sub_100379240();
    v2 = 16;
    if (v3)
    {
      v2 = 12;
    }

    if (*(v1 + v2) && (sub_1003C86DC(v1), v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
    {
      sub_100379240();
      if (v3)
      {
        v6 = 12;
      }

      else
      {
        v6 = 16;
      }

      v7 = 2 * *(v1 + v6);
      v8 = malloc_type_malloc(v7 | 1, 0x100004077774924uLL);
      v8[v7] = 0;
      sub_1003C8698(v1);
      sub_100379240();
      if (v3)
      {
        v10 = 12;
      }

      else
      {
        v10 = 16;
      }

      if (*(v1 + v10) >= 1)
      {
        v11 = v9;
        v12 = 0;
        v13 = v8;
        do
        {
          sprintf(v13, "%02X", *(v11 + v12++));
          sub_100379240();
          if (v3)
          {
            v14 = 12;
          }

          else
          {
            v14 = 16;
          }

          v13 += 2;
        }

        while (v12 < *(v1 + v14));
      }

      v1 = [[NSString alloc] initWithUTF8String:v8];
      free(v8);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

uint64_t sub_1003C8F2C(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = sub_1003C86DC(a1);

  if (!v2)
  {
    return 0;
  }

  sub_100379240();
  v3 = 16;
  if (v4)
  {
    v3 = 12;
  }

  if (*(a1 + v3) >= 3u)
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = a1[6];
      v13 = 136315650;
      v14 = "[KmlApduRequest payloadAsUnsignedShort]";
      v15 = 1024;
      v16 = 274;
      v17 = 2112;
      v18 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : APDU: Value too large: %@", &v13, 0x1Cu);
    }

    return 0;
  }

  sub_1003C8698(a1);
  sub_100379240();
  v10 = 16;
  if (v4)
  {
    v10 = 12;
  }

  v11 = *(a1 + v10);
  if (v11 < 1)
  {
    return 0;
  }

  v7 = 0;
  do
  {
    v12 = *v9++;
    v7 = v12 | (v7 << 8);
    --v11;
  }

  while (v11);
  return v7;
}

uint64_t sub_1003C9070(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    if (!*(result + 8) || v1 == 132 || v1 == 128)
    {
      return 1;
    }

    else
    {
      return sub_100073170();
    }
  }

  return result;
}

uint64_t sub_1003C9098(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 9);
    if (v1 - 164 <= 0x30 && ((1 << (v1 + 92)) & 0x1004010000001) != 0)
    {
      return 1;
    }

    result = 0;
    if (v1 <= 0x3C && ((1 << v1) & 0x1005000000000000) != 0)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1003C90F0(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1003C9108(uint64_t result)
{
  if (result)
  {
    return *(result + 42);
  }

  return result;
}

id *sub_1003C9114(id *a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a5;
  if (a1)
  {
    v19.receiver = a1;
    v19.super_class = KmlCommandHandler;
    v13 = objc_msgSendSuper2(&v19, "init");
    a1 = v13;
    if (v13)
    {
      objc_storeStrong(v13 + 2, a2);
      objc_storeStrong(a1 + 3, a3);
      a1[6] = a4;
      v14 = objc_alloc_init(KmlEndpointCreationConfig);
      v15 = a1[4];
      a1[4] = v14;

      v16 = a1[11];
      a1[11] = 0;

      objc_storeStrong(a1 + 7, a5);
      *(a1 + 40) = 0;
      a1[9] = 0;
      a1[10] = 0;
      *(a1 + 64) = -1;
      a1[12] = 0xFFFF;
      v17 = a1[1];
      a1[1] = &off_1004DC740;
    }
  }

  return a1;
}

void sub_1003C922C(uint64_t a1)
{
  if (a1)
  {
    *(a1 + 80) = 0;
    *(a1 + 64) = -1;
    v2 = *(a1 + 8);
    *(a1 + 8) = &off_1004DC7D0;

    *(a1 + 72) = 0;
  }
}

void sub_1003C9278(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    switch(a2)
    {
      case 0:
        v11 = *(a1 + 8);
        v12 = &off_1004DC7D0;
        goto LABEL_12;
      case 1:
        v11 = *(a1 + 8);
        v12 = &off_1004DC758;
        goto LABEL_12;
      case 2:
        v11 = *(a1 + 8);
        v12 = &off_1004DC770;
        goto LABEL_12;
      case 3:
        v11 = *(a1 + 8);
        v12 = &off_1004DC788;
        goto LABEL_12;
      case 4:
        v11 = *(a1 + 8);
        v12 = &off_1004DC7A0;
        goto LABEL_12;
      case 5:
      case 6:
        v5 = KmlLogger();
        if (sub_10036DCF8(v5))
        {
          sub_10036DB8C();
          sub_10037BCBC();
          _os_log_impl(v6, v7, v8, v9, v10, 0x12u);
        }

        break;
      case 7:
      case 8:
        v11 = *(a1 + 8);
        v12 = &off_1004DC7B8;
LABEL_12:
        *(a1 + 8) = v12;

        break;
      default:
        break;
    }

    *(a1 + 72) = a2;
  }
}

void *sub_1003C93C0(void *result, uint64_t a2)
{
  if (result)
  {
    v3 = result[1];
    [NSNumber numberWithInteger:a2];
    objc_claimAutoreleasedReturnValue();
    v4 = [sub_10037BD5C() containsObject:?];

    return v4;
  }

  return result;
}

uint64_t sub_1003C9410(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (sub_1003C8C7C(v3))
    {
      a1 = 1;
    }

    else if (sub_1003C8C9C(v4))
    {
      a1 = 4;
    }

    else if (sub_1003C8D5C(v4))
    {
      a1 = 2;
    }

    else if (sub_1003C8D80(v4))
    {
      a1 = 3;
    }

    else if (sub_1003C8D2C(v4))
    {
      a1 = 5;
    }

    else if (sub_1003C8D08(v4))
    {
      a1 = 6;
    }

    else if (sub_1003C8CC0(v4))
    {
      a1 = 7;
    }

    else if (sub_1003C8CE4(v4))
    {
      a1 = 8;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

uint64_t sub_1003C94E4(uint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v7 = a2;
  v8 = v7;
  if (!a1)
  {
    goto LABEL_10;
  }

  if (a3 & 0xFFFFFFFFFFFFFFFBLL) == 1 || (sub_1003C90F0(v7))
  {
    a4 = 1;
    goto LABEL_5;
  }

  v10 = KmlLogger();
  if (sub_10036DCF8(v10))
  {
    sub_10036DB8C();
    sub_10037BCBC();
    _os_log_impl(v11, v12, v13, v14, v15, 0x12u);
  }

  if (a4)
  {
    v16 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    *a4 = [NSError errorWithDomain:v16 code:27013 userInfo:0];

LABEL_10:
    a4 = 0;
  }

LABEL_5:

  return a4;
}

uint64_t sub_1003C9618(NSObject *a1, void *a2, id *a3)
{
  v6 = a2;
  v7 = v6;
  if (!a1)
  {
    goto LABEL_19;
  }

  if ((sub_1003C9070(v6) & 1) == 0)
  {
    v14 = KmlLogger();
    if (sub_10036DCF8(v14))
    {
      sub_10036DB8C();
      v41 = 183;
      sub_10037BCBC();
      _os_log_impl(v15, v16, v17, v18, v19, 0x12u);
    }

    if (a3)
    {
      goto LABEL_11;
    }

LABEL_19:
    v21 = 0;
    goto LABEL_20;
  }

  if (sub_1003C9098(v7))
  {
    v22 = sub_1003C9410(a1, v7);
    if (sub_1003C93C0(a1, v22))
    {
      if (sub_1003C94E4(a1, v7, v22, a3))
      {
        sub_1003C9278(a1, v22);
        a1 = KmlLogger();
        v21 = 1;
        if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
        {
          sub_10036DB8C();
          v41 = 215;
          sub_10037BCBC();
          _os_log_impl(v33, v34, v35, v36, v37, 0x12u);
        }
      }

      else
      {
        v26 = KmlLogger();
        if (sub_10036DCF8(v26))
        {
          v27 = [*a3 code];
          v38 = 136315650;
          v39 = "[KmlCommandHandler isIncomingCommandAndDataValid:error:]";
          v40 = 1024;
          v41 = 208;
          v42 = 2048;
          v43 = v27;
          sub_10037BCBC();
          _os_log_impl(v28, v29, v30, v31, v32, 0x1Cu);
        }

        v21 = 0;
      }

      goto LABEL_13;
    }

    v23 = KmlLogger();
    if (sub_10036DC64(v23))
    {
      isa = a1[9].isa;
      v38 = 136315906;
      v39 = "[KmlCommandHandler isIncomingCommandAndDataValid:error:]";
      v40 = 1024;
      v41 = 200;
      v42 = 2048;
      v43 = v22;
      v44 = 2048;
      v45 = isa;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : KmlCommandHandler: command is not valid - currCommand = %ld, previous command = %ld, return code: 0x6985.", &v38, 0x26u);
    }

    if (a3)
    {
      [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      objc_claimAutoreleasedReturnValue();
      v20 = sub_10037BD4C();
      goto LABEL_12;
    }

    goto LABEL_19;
  }

  v8 = KmlLogger();
  if (sub_10036DCF8(v8))
  {
    sub_10036DB8C();
    v41 = 191;
    sub_10037BCBC();
    _os_log_impl(v9, v10, v11, v12, v13, 0x12u);
  }

  if (!a3)
  {
    goto LABEL_19;
  }

LABEL_11:
  [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
  objc_claimAutoreleasedReturnValue();
  v20 = sub_10037BD4C();
LABEL_12:
  [v20 errorWithDomain:? code:? userInfo:?];
  *a3 = v21 = 0;
LABEL_13:

LABEL_20:
  return v21;
}

void *sub_1003C9978(void *a1, void *a2, id *a3)
{
  v7 = a2;
  if (a1)
  {
    v8 = KmlLogger();
    if (sub_10036F124(v8))
    {
      v47 = 136315394;
      v48 = "[KmlCommandHandler handleIncomingCommand:error:]";
      v49 = 1024;
      v50 = 221;
      sub_10037BD04();
      _os_log_impl(v9, v10, v11, v12, v13, v14);
    }

    v15 = sub_10037BCAC();
    if (sub_1003C9618(v15, v16, v17))
    {
      if (!v19 & v18)
      {
        a1 = 0;
      }

      else
      {
        switch(a1[9])
        {
          case 1:
            v28 = sub_1003C9BF4(a1, v7);
            break;
          case 2:
            v38 = sub_10037BCAC();
            v28 = sub_1003C9E78(v38, v39, v40);
            break;
          case 3:
            v29 = sub_10037BCAC();
            v28 = sub_1003CACA8(v29, v30, v31);
            break;
          case 4:
            v35 = sub_10037BCAC();
            v28 = sub_1003CB158(v35, v36, v37);
            break;
          case 5:
          case 6:
            v25 = sub_10037BCAC();
            v28 = sub_1003CB7C4(v25, v26, v27);
            break;
          case 7:
            v41 = sub_10037BCAC();
            v28 = sub_1003CB5DC(v41, v42, v43);
            break;
          case 8:
            v32 = sub_10037BCAC();
            v28 = sub_1003CB6D0(v32, v33, v34);
            break;
          default:
            JUMPOUT(0);
        }

        a1 = v28;
      }
    }

    else
    {
      if (*a3)
      {
        v20 = bswap32([*a3 code]) >> 16;
      }

      else
      {
        LOWORD(v20) = -32150;
      }

      a1 = sub_10037814C(KmlApduResponse, v20, 0);
      v21 = [sub_10037BDA0() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v45 = NSLocalizedDescriptionKey;
      v22 = *(v4 + 1128);
      KmlErrorString();
      v23 = [sub_10037BD94() stringWithUTF8String:NSLocalizedDescriptionKey];
      v46 = v23;
      v24 = [NSDictionary dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      *a3 = [NSError errorWithDomain:v21 code:206 userInfo:v24];
    }
  }

  return a1;
}

id sub_1003C9BF4(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = sub_1003C8DD8(a2);
    v5 = [v4 isEqualToString:@"A000000809434343444B467631"];
    v6 = KmlLogger();
    v7 = sub_100057AEC(v6);
    if (v5)
    {
      if (v7)
      {
        sub_10037BDC0();
        v32 = 274;
        sub_10037BD04();
        _os_log_impl(v8, v9, v10, v11, v12, v13);
      }

      v14 = [*(a1 + 56) appletSupportedVersionsTlvForPairing];
      v15 = [*(a1 + 56) kmlSupportedVersionsTlvForPairing];
      buf[0] = 2 * (*(a1 + 24) != 0);
      v16 = [NSData dataWithBytes:buf length:1];
      v17 = [KmlTlv TLVWithTag:212 value:v16];
      v18 = [NSArray arrayWithObjects:v15, v14, v17, 0];

      v19 = 144;
    }

    else
    {
      if (v7)
      {
        sub_10037BDC0();
        v32 = 289;
        sub_10037BD04();
        _os_log_impl(v20, v21, v22, v23, v24, v25);
      }

      v18 = 0;
      v17 = 0;
      v14 = 0;
      v15 = 0;
      v19 = 33386;
    }

    v26 = KmlLogger();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v30 = "[KmlCommandHandler handleSelectCommand:error:]";
      v31 = 1024;
      v32 = 292;
      v33 = 1024;
      v34 = __rev16(v19);
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s : %i : KmlCommandHandler: response status = 0x%02x", buf, 0x18u);
    }

    v27 = sub_10037814C(KmlApduResponse, v19, v18);
  }

  else
  {
    v27 = 0;
  }

  return v27;
}

void *sub_1003C9E78(uint64_t a1, void *a2, void *a3)
{
  v112 = a2;
  if (a1)
  {
    v110 = a3;
    v117 = a1;
    v111 = +[NSMutableData data];
    sub_1003C86DC(v112);
    objc_claimAutoreleasedReturnValue();
    v7 = [sub_10037BD5C() TLVsWithData:?];

    v131 = 0u;
    v132 = 0u;
    v129 = 0u;
    v130 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v129 objects:v151 count:16];
    if (v9)
    {
      v7 = v9;
      sub_10037BDAC();
      v10 = *v130;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v130 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v129 + 1) + 8 * i);
          if ([v12 tag] == 32592)
          {
            v13 = [v12 value];

            v3 = v13;
          }

          else if ([v12 tag] == 91)
          {
            v14 = [v12 asData];

            v4 = v14;
          }

          else if ([v12 tag] == 92)
          {
            v15 = [v12 asData];

            v120 = v15;
          }

          else if ([v12 tag] == 214)
          {
            *(v117 + 96) = [v12 valueAsUnsignedLong];
          }

          else if ([v12 tag] == 94)
          {
            v16 = [v12 asData];

            v118 = v16;
          }
        }

        v7 = [v8 countByEnumeratingWithState:&v129 objects:v151 count:16];
      }

      while (v7);
    }

    else
    {
      sub_10037BDAC();
    }

    p_info = &OBJC_METACLASS___KmlManagerInterface.info;
    v18 = &unk_100409000;
    if (!*(v117 + 24))
    {
      v41 = KmlLogger();
      if (sub_10036F978(v41))
      {
        sub_10037BCF0(4.8151e-34);
        v144 = 327;
        sub_10037BCCC();
        _os_log_impl(v42, v43, v44, v45, v46, 0x12u);
      }

      v47 = KmlApduResponse;
      v48 = -31596;
      goto LABEL_99;
    }

    v19 = v120;
    if (v4 && v120)
    {
      v20 = [*(v117 + 56) updateVehicleSupportedFrameworkVersions:v4];
      v21 = [*(v117 + 56) updateVehicleSupportedAppletVersions:v120];
      v22 = [*(v117 + 56) updateVehicleSupportedBluetoothVersions:v118];
      v23 = KmlLogger();
      if (sub_10036F978(v23))
      {
        v24 = *(v117 + 56);
        *buf = 136315650;
        v142 = "[KmlCommandHandler handlePakeRequestCommand:error:]";
        v143 = 1024;
        v144 = 344;
        v145 = 2112;
        *v146 = v24;
        sub_10037BCCC();
        _os_log_impl(v25, v26, v27, v28, v29, 0x1Cu);
      }

      if ([*(v117 + 56) agreedKmlVehicleVersion])
      {
        v19 = v111;
        [v111 appendData:v4];
        [v111 appendData:v120];
        if (v3)
        {
          v30 = KmlLogger();
          if (sub_10036F978(v30))
          {
            sub_10037BCF0(4.8151e-34);
            v144 = 362;
            sub_10037BCCC();
            _os_log_impl(v31, v32, v33, v34, v35, 0x12u);
          }

          v19 = +[NSMutableArray array];
          [KmlTlv TLVsWithData:v3];
          v125 = 0u;
          v126 = 0u;
          v127 = 0u;
          obj = v128 = 0u;
          v36 = [obj countByEnumeratingWithState:&v125 objects:v140 count:16];
          if (v36)
          {
            v18 = v36;
            v119 = 0;
            v37 = *v126;
            sub_10037BD7C();
            do
            {
              for (j = 0; j != v18; j = (j + 1))
              {
                if (*v126 != v37)
                {
                  objc_enumerationMutation(obj);
                }

                v39 = *(*(&v125 + 1) + 8 * j);
                +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v39 tag]);
                objc_claimAutoreleasedReturnValue();
                [sub_10037BD5C() addObject:?];

                if ([v39 tag] == 192)
                {
                  v40 = [v39 value];

                  v119 = v40;
                }

                else if ([v39 tag] == 193)
                {
                  v115 = [v39 valueAsUnsignedLong];
                }

                else if ([v39 tag] == 194)
                {
                  v114 = [v39 valueAsUnsignedShort];
                }

                else if ([v39 tag] == 195)
                {
                  v113 = [v39 valueAsUnsignedShort];
                }
              }

              v18 = [obj countByEnumeratingWithState:&v125 objects:v140 count:16];
            }

            while (v18);
          }

          else
          {
            v119 = 0;
            sub_10037BD7C();
          }

          v123 = 0u;
          v124 = 0u;
          v121 = 0u;
          v122 = 0u;
          v65 = [&off_1004DC7E8 countByEnumeratingWithState:&v121 objects:v139 count:16];
          if (v65)
          {
            v66 = v65;
            v67 = *v122;
            while (2)
            {
              for (k = 0; k != v66; k = k + 1)
              {
                if (*v122 != v67)
                {
                  objc_enumerationMutation(&off_1004DC7E8);
                }

                v18 = *(*(&v121 + 1) + 8 * k);
                if (([v19 containsObject:v18] & 1) == 0)
                {
                  if (v110)
                  {
                    v70 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
                    v137 = NSLocalizedDescriptionKey;
                    v71 = [NSString stringWithUTF8String:KmlErrorString()];
                    v138 = v71;
                    v72 = [NSDictionary dictionaryWithObjects:&v138 forKeys:&v137 count:1];
                    *v110 = [NSError errorWithDomain:v70 code:21 userInfo:v72];
                  }

                  v73 = KmlLogger();
                  if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
                  {
                    [v18 unsignedIntegerValue];
                    *buf = 136315650;
                    v142 = "[KmlCommandHandler handlePakeRequestCommand:error:]";
                    sub_10037BD2C();
                    v144 = 388;
                    v145 = 2048;
                    *v146 = v74;
                    _os_log_impl(&_mh_execute_header, v73, OS_LOG_TYPE_INFO, "%s : %i : KmlCommandHandler: did not receive tag: 0x%02lx", buf, 0x1Cu);
                  }

                  p_info = &OBJC_METACLASS___KmlManagerInterface.info;
                  v18 = sub_10037814C(KmlApduResponse, 34922, 0);
                  v69 = 0;
                  goto LABEL_73;
                }
              }

              v66 = [&off_1004DC7E8 countByEnumeratingWithState:&v121 objects:v139 count:16];
              if (v66)
              {
                continue;
              }

              break;
            }

            v69 = 1;
            p_info = (&OBJC_METACLASS___KmlManagerInterface + 32);
          }

          else
          {
            v69 = 1;
            p_info = &OBJC_METACLASS___KmlManagerInterface.info;
          }

LABEL_73:

          if (!v69)
          {
            goto LABEL_92;
          }

          v18 = &unk_100409000;
          if (v119)
          {
            v75 = KmlSignpostLogger();
            if (os_signpost_enabled(v75))
            {
              *buf = 0;
              sub_10037BDF4(&_mh_execute_header, v75, OS_SIGNPOST_INTERVAL_BEGIN, v76, "OpPakeRequest", "getX", buf);
            }

            v77 = sub_1003D931C(*(v117 + 16), v3, *(v117 + 24), v119, v115, v114, v113, v111);
            v78 = KmlSignpostLogger();
            if (os_signpost_enabled(v78))
            {
              *buf = 0;
              sub_10037BDF4(&_mh_execute_header, v78, OS_SIGNPOST_INTERVAL_END, v79, "OpPakeRequest", "getX", buf);
            }

            v80 = KmlLogger();
            if (sub_100057AEC(v80))
            {
              *buf = 136315650;
              v142 = "[KmlCommandHandler handlePakeRequestCommand:error:]";
              sub_10037BD2C();
              v144 = 405;
              v145 = 2112;
              *v146 = v77;
              _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_INFO, "%s : %i : KmlCommandHandler: CurvePointX = %@", buf, 0x1Cu);
            }

            if (!v77)
            {
              if (v110)
              {
                v78 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
                v133 = NSLocalizedDescriptionKey;
                v81 = p_info;
                v82 = [NSString stringWithUTF8String:KmlErrorString()];
                v134 = v82;
                v83 = [NSDictionary dictionaryWithObjects:&v134 forKeys:&v133 count:1];
                *v110 = [NSError errorWithDomain:v78 code:18 userInfo:v83];

                p_info = v81;
                v77 = 0;
              }

              v84 = KmlLogger();
              if (sub_100057AEC(v84))
              {
                *buf = 136315394;
                v142 = "[KmlCommandHandler handlePakeRequestCommand:error:]";
                sub_10037BD2C();
                v144 = 411;
                sub_10037BD04();
                _os_log_impl(v85, v86, v87, v88, v89, v90);
              }
            }

            v91 = v77;
            v92 = p_info;
            v93 = KmlLogger();
            if (sub_100057AEC(v93))
            {
              *buf = 136315394;
              v142 = "[KmlCommandHandler handlePakeRequestCommand:error:]";
              sub_10037BD2C();
              v144 = 414;
              sub_10037BD04();
              _os_log_impl(v94, v95, v96, v97, v98, v99);
            }

            v100 = +[NSMutableArray array];
            v101 = [KmlTlv TLVWithTag:80 value:v91];
            [v100 addObject:v101];

            v102 = [*(v117 + 56) getAgreedBluetoothVersionsTlv];
            if (v102)
            {
              [v100 addObject:v102];
            }

            v18 = sub_10037814C((v92 + 151), 144, v100);

LABEL_92:
            v103 = v119;
            v104 = v120;
LABEL_100:

            goto LABEL_101;
          }
        }

        if (v110)
        {
          v19 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v135 = NSLocalizedDescriptionKey;
          v105 = [NSString stringWithUTF8String:KmlErrorString()];
          v136 = v105;
          [NSDictionary dictionaryWithObjects:&v136 forKeys:&v135 count:1];
          v107 = v106 = p_info;
          *v110 = [NSError errorWithDomain:v19 code:20 userInfo:v107];

          p_info = v106;
          v18 = &unk_100409000;
        }

        v108 = KmlLogger();
        if (!sub_10036F978(v108))
        {
          goto LABEL_98;
        }

        sub_10037BCF0(COERCE_FLOAT(v18[278]));
        v144 = 398;
        sub_10037BCCC();
        v58 = 18;
      }

      else
      {
        if (v110)
        {
          v19 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v147 = NSLocalizedDescriptionKey;
          v59 = [NSString stringWithUTF8String:KmlErrorString()];
          v148 = v59;
          v60 = [NSDictionary dictionaryWithObjects:&v148 forKeys:&v147 count:1];
          *v110 = [NSError errorWithDomain:v19 code:215 userInfo:v60];

          p_info = &OBJC_METACLASS___KmlManagerInterface.info;
        }

        v61 = KmlLogger();
        if (!sub_10036F978(v61))
        {
          goto LABEL_98;
        }

        [*(v117 + 56) ourPreferredKmlVersion];
        *buf = 136315906;
        v142 = "[KmlCommandHandler handlePakeRequestCommand:error:]";
        sub_10037BD2C();
        *(v62 + 14) = 350;
        v145 = 2112;
        *(v62 + 20) = v4;
        *&v146[8] = v63;
        *(v62 + 30) = v64;
        sub_10037BCCC();
        v58 = 34;
      }
    }

    else
    {
      if (v110)
      {
        v19 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v149 = NSLocalizedDescriptionKey;
        v49 = [NSString stringWithUTF8String:KmlErrorString()];
        v150 = v49;
        v50 = [NSDictionary dictionaryWithObjects:&v150 forKeys:&v149 count:1];
        *v110 = [NSError errorWithDomain:v19 code:215 userInfo:v50];

        p_info = &OBJC_METACLASS___KmlManagerInterface.info;
      }

      v51 = KmlLogger();
      if (!sub_10036F978(v51))
      {
        goto LABEL_98;
      }

      sub_10037BCF0(4.8153e-34);
      v144 = 336;
      v145 = v52;
      *v146 = 91;
      *&v146[4] = v52;
      *&v146[6] = 92;
      sub_10037BCCC();
      v58 = 30;
    }

    _os_log_impl(v53, v54, v55, v56, v57, v58);
LABEL_98:

    v47 = (p_info + 151);
    v48 = -30614;
LABEL_99:
    v18 = sub_10037814C(v47, v48, 0);
    v103 = 0;
    v104 = v120;
    goto LABEL_100;
  }

  v18 = 0;
LABEL_101:

  return v18;
}

id sub_1003CACA8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = v5;
  if (!a1)
  {
    v35 = 0;
    goto LABEL_34;
  }

  v7 = sub_1003C86DC(v5);
  v8 = [KmlTlv TLVsWithData:v7];

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v47 objects:v59 count:16];
  if (!v10)
  {
    v12 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  v11 = v10;
  v12 = 0;
  v13 = 0;
  v14 = *v48;
  do
  {
    for (i = 0; i != v11; i = i + 1)
    {
      if (*v48 != v14)
      {
        objc_enumerationMutation(v9);
      }

      v16 = *(*(&v47 + 1) + 8 * i);
      if ([v16 tag] == 82)
      {
        v17 = [v16 value];
        v18 = v13;
        v13 = v17;
      }

      else
      {
        if ([v16 tag] != 87)
        {
          continue;
        }

        v19 = [v16 value];
        v18 = v12;
        v12 = v19;
      }
    }

    v11 = [v9 countByEnumeratingWithState:&v47 objects:v59 count:16];
  }

  while (v11);
LABEL_16:

  v20 = KmlLogger();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
  {
    sub_10037BD38();
    v54 = 437;
    v55 = 2112;
    v56 = v13;
    v57 = 2112;
    v58 = v12;
    _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "%s : %i : KmlCommandHandler: CurvePointY: %@, remoteEvidence: %@", buf, 0x26u);
  }

  if (!v13 || !v12)
  {
    goto LABEL_28;
  }

  v21 = KmlSignpostLogger();
  if (os_signpost_enabled(v21))
  {
    *buf = 0;
    sub_10037BDF4(&_mh_execute_header, v21, OS_SIGNPOST_INTERVAL_BEGIN, v22, "OpPakeVerify", "evidence", buf);
  }

  v23 = sub_1003D91CC(*(a1 + 16), v13, v12);
  v24 = KmlSignpostLogger();
  if (os_signpost_enabled(v24))
  {
    *buf = 0;
    sub_10037BDF4(&_mh_execute_header, v24, OS_SIGNPOST_INTERVAL_END, v25, "OpPakeVerify", "evidence", buf);
  }

  if (v23)
  {
    v26 = KmlLogger();
    if (sub_10036DC64(v26))
    {
      sub_10037BD38();
      v54 = 453;
      sub_10037BD04();
      _os_log_impl(v27, v28, v29, v30, v31, v32);
    }

    v33 = [KmlTlv TLVWithTag:88 value:v23];
    v34 = [NSArray arrayWithObjects:v33, 0];
    v35 = sub_10037814C(KmlApduResponse, 144, v34);
  }

  else
  {
LABEL_28:
    if (a3)
    {
      v36 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v51 = NSLocalizedDescriptionKey;
      v37 = [NSString stringWithUTF8String:KmlErrorString()];
      v52 = v37;
      v38 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      *a3 = [NSError errorWithDomain:v36 code:5 userInfo:v38];
    }

    v39 = KmlLogger();
    if (sub_10036DC64(v39))
    {
      sub_10037BD38();
      v54 = 449;
      sub_10037BD04();
      _os_log_impl(v40, v41, v42, v43, v44, v45);
    }

    v35 = sub_10037814C(KmlApduResponse, 34922, 0);
  }

LABEL_34:

  return v35;
}

id sub_1003CB158(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  if (!a1)
  {
    v25 = 0;
    goto LABEL_29;
  }

  v8 = KmlLogger();
  if (sub_10036F124(v8))
  {
    sub_10036DC9C();
    v54 = 537;
    sub_10037BD04();
    _os_log_impl(v9, v10, v11, v12, v13, v14);
  }

  if (*(a1 + 40) != 1)
  {
    if (sub_1003C8D50(v7) == 128 && !sub_1003C9108(v7))
    {
      v36 = KmlLogger();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = sub_1003C8D50(v7);
        sub_1003C9108(v7);
        sub_10036DC9C();
        v54 = 552;
        v55 = v38;
        v56 = v37;
        v57 = v38;
        v58 = v39;
        _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_INFO, "%s : %i : Write data end: p1=%02x, p2=%02x", buf, 0x1Eu);
      }

      *(a1 + 40) = 1;
    }

    else if (sub_1003C8D50(v7) || sub_1003C9108(v7))
    {
      v26 = [sub_10037BDA0() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v51 = NSLocalizedDescriptionKey;
      v27 = *(v4 + 1128);
      KmlErrorString();
      v28 = [sub_10037BD94() stringWithUTF8String:NSLocalizedDescriptionKey];
      v52 = v28;
      v29 = [NSDictionary dictionaryWithObjects:&v52 forKeys:&v51 count:1];
      v30 = [NSError errorWithDomain:v26 code:12 userInfo:v29];

      v31 = KmlLogger();
      if (sub_10036DC64(v31))
      {
        v32 = sub_1003C8D50(v7);
        sub_1003C9108(v7);
        sub_10036DC9C();
        v54 = 557;
        v55 = v33;
        v56 = v32;
        v57 = v33;
        v58 = v34;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s : %i : Wrong P1 or P2, return code: 0x6B00. p1=%02x, p2=%02x", buf, 0x1Eu);
      }

      v35 = 107;
      if (v30)
      {
        if (!a3)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

LABEL_23:
      v40 = *(a1 + 32);
      v41 = sub_1003C86DC(v7);
      v30 = sub_1003DB100(v40, v41);

      if (!v30)
      {
        goto LABEL_28;
      }

      v42 = KmlLogger();
      if (sub_10036DCF8(v42))
      {
        sub_10036DC9C();
        v54 = 564;
        sub_10037BD04();
        _os_log_impl(v43, v44, v45, v46, v47, v48);
      }

      v35 = -32662;
      if (!a3)
      {
        goto LABEL_28;
      }

LABEL_27:
      v49 = v30;
      *a3 = v30;
LABEL_28:
      v25 = sub_10037814C(KmlApduResponse, v35, 0);

      goto LABEL_29;
    }

    v35 = 144;
    goto LABEL_23;
  }

  if (a3)
  {
    v15 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v59 = NSLocalizedDescriptionKey;
    v16 = [NSString stringWithUTF8String:KmlErrorString()];
    v60 = v16;
    v17 = [NSDictionary dictionaryWithObjects:&v60 forKeys:&v59 count:1];
    *a3 = [NSError errorWithDomain:v15 code:26 userInfo:v17];
  }

  v18 = KmlLogger();
  if (sub_100057AEC(v18))
  {
    sub_10036DC9C();
    v54 = 545;
    sub_10037BD04();
    _os_log_impl(v19, v20, v21, v22, v23, v24);
  }

  v25 = sub_10037814C(KmlApduResponse, 34153, 0);
LABEL_29:

  return v25;
}

id sub_1003CB5DC(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = a2;
    v7 = KmlLogger();
    if (sub_10036F124(v7))
    {
      sub_10036DB8C();
      sub_10037BD04();
      _os_log_impl(v8, v9, v10, v11, v12, v13);
    }

    v14 = sub_1003B5FE0(*(a1 + 88), v6, a3);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_1003CB6D0(uint64_t a1, void *a2, void *a3)
{
  if (a1)
  {
    v6 = a2;
    v7 = KmlLogger();
    if (sub_10036F124(v7))
    {
      sub_10036DB8C();
      sub_10037BD04();
      _os_log_impl(v8, v9, v10, v11, v12, v13);
    }

    v14 = sub_1003B65D4(*(a1 + 88), v6, a3);
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

id sub_1003CB7C4(uint64_t a1, void *a2, NSObject *a3)
{
  if (!a1)
  {
    v30 = 0;
    goto LABEL_26;
  }

  v5 = a2;
  v6 = sub_1003C8D50(v5);
  v7 = sub_1003C9108(v5);

  v52 = 0;
  v8 = sub_1003CBCE0(a1, v6, v7, &v52);
  v9 = v52;
  v10 = v9;
  if ((v8 & 1) == 0)
  {
    v12 = KmlLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_10037BCDC();
      v62 = 471;
      v63 = v13;
      v64 = v6;
      v65 = v13;
      v66 = v7;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%s : %i : KmlCommandHandler: Invalid flow control: p1:%02x p2:%02x", buf, 0x1Eu);
    }

    if (!v10)
    {
      v14 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v57 = NSLocalizedDescriptionKey;
      v15 = *(v7 + 1128);
      KmlErrorString();
      v16 = [sub_100372244() stringWithUTF8String:?];
      v58 = v16;
      [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      objc_claimAutoreleasedReturnValue();
      v10 = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
    }

    v17 = 107;
    if (!a3)
    {
      goto LABEL_23;
    }

    goto LABEL_21;
  }

  if (v6 == 17)
  {
    v11 = 2;
LABEL_14:
    *(a1 + 80) = v11;
    goto LABEL_20;
  }

  if (v6 == 16)
  {
    if (v7 == 1)
    {
      v32 = sub_1003CC7F8(a1);

      v33 = *(a1 + 40);
      if (v33 != 1 || v32)
      {
        if (v33)
        {
          v34 = KmlLogger();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_10037BCDC();
            v62 = 493;
            sub_10037BDD4(&_mh_execute_header, v35, v36, "%s : %i : KmlCommandHandler: key creation config is invalid", v37, v38, v39, v40, v51, v52, v53, v54, v55, v56, v57, v58, buf[0]);
          }

          v10 = v32;
        }

        else
        {
          v41 = [sub_10037BDA0() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v55 = NSLocalizedDescriptionKey;
          v42 = *(v8 + 1128);
          KmlErrorString();
          v43 = [sub_10037BD94() stringWithUTF8String:?];
          v56 = v43;
          v44 = [NSDictionary dictionaryWithObjects:&v56 forKeys:&v55 count:1];
          v10 = [NSError errorWithDomain:v41 code:12 userInfo:v44];

          v34 = KmlLogger();
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            sub_10037BCDC();
            v62 = 491;
            sub_10037BDD4(&_mh_execute_header, v45, v46, "%s : %i : KmlCommandHandler: missing end P1 P2", v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, buf[0]);
          }
        }

        *(a1 + 80) = 1;
        v17 = 32874;
        if (!a3)
        {
          goto LABEL_23;
        }

        goto LABEL_21;
      }

      v10 = 0;
      *(a1 + 80) = 4;
      *(a1 + 40) = 0;
      v17 = 144;
      goto LABEL_23;
    }

    v11 = 1;
    goto LABEL_14;
  }

  if (!v9)
  {
    v6 = [sub_10037BDA0() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    v53 = NSLocalizedDescriptionKey;
    v18 = *(v8 + 1128);
    KmlErrorString();
    v19 = [sub_10037BD94() stringWithUTF8String:?];
    v54 = v19;
    v20 = [NSDictionary dictionaryWithObjects:&v54 forKeys:&v53 count:1];
    v10 = [NSError errorWithDomain:v6 code:17 userInfo:v20];
  }

  v21 = KmlLogger();
  if (sub_10036DC64(v21))
  {
    sub_10037BCDC();
    v62 = 509;
    sub_10037BD04();
    _os_log_impl(v22, v23, v24, v25, v26, v27);
  }

  *(a1 + 80) = 3;
  *(a1 + 64) = v7;
LABEL_20:
  v17 = 144;
  if (a3)
  {
LABEL_21:
    if (v10)
    {
      v28 = v10;
      a3->isa = v10;
    }
  }

LABEL_23:
  v29 = KmlLogger();
  if (sub_10036F978(v29))
  {
    *buf = 136315650;
    v60 = "[KmlCommandHandler handleOpControlFlowCommand:error:]";
    v61 = 1024;
    v62 = 518;
    v63 = 1024;
    v64 = __rev16(v17);
    _os_log_impl(&_mh_execute_header, a3, OS_LOG_TYPE_INFO, "%s : %i : KmlCommandHandler: response status = 0x%02x", buf, 0x18u);
  }

  v30 = sub_10037814C(KmlApduResponse, v17, 0);

LABEL_26:

  return v30;
}

uint64_t sub_1003CBCE0(uint64_t a1, int a2, uint64_t a3, NSObject *a4)
{
  if (!a1)
  {
    return 0;
  }

  v7 = a3;
  if (a2 == 18)
  {
    v4 = a4;
    switch(a3)
    {
      case 0:
        v48 = KmlLogger();
        if (sub_10037BD10(v48))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v67 = 634;
          goto LABEL_33;
        }

        break;
      case 1:
        if (a4)
        {
          v7 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v64[0] = NSLocalizedDescriptionKey;
          v49 = *(v5 + 1128);
          KmlErrorString();
          v50 = [sub_100372244() stringWithUTF8String:?];
          v64[1] = NSLocalizedFailureReasonErrorKey;
          v65[0] = v50;
          v65[1] = @"No matching PAKE version found";
          [NSDictionary dictionaryWithObjects:v65 forKeys:v64 count:2];
          objc_claimAutoreleasedReturnValue();
          v4->isa = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
        }

        v51 = KmlLogger();
        if (sub_10037BD10(v51))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v67 = 640;
          goto LABEL_33;
        }

        break;
      case 2:
        if (a4)
        {
          v7 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v62[0] = NSLocalizedDescriptionKey;
          v38 = *(v5 + 1128);
          KmlErrorString();
          v39 = [sub_100372244() stringWithUTF8String:?];
          v62[1] = NSLocalizedFailureReasonErrorKey;
          v63[0] = v39;
          v63[1] = @"No matching digital key applet version found";
          [NSDictionary dictionaryWithObjects:v63 forKeys:v62 count:2];
          objc_claimAutoreleasedReturnValue();
          v4->isa = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
        }

        v40 = KmlLogger();
        if (sub_10037BD10(v40))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v67 = 646;
          goto LABEL_33;
        }

        break;
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
        if (a4)
        {
          v7 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v60[0] = NSLocalizedDescriptionKey;
          v13 = *(v5 + 1128);
          KmlErrorString();
          v14 = [sub_100372244() stringWithUTF8String:?];
          v60[1] = NSLocalizedFailureReasonErrorKey;
          v61[0] = v14;
          v61[1] = @"Failed due to timeout";
          [NSDictionary dictionaryWithObjects:v61 forKeys:v60 count:2];
          objc_claimAutoreleasedReturnValue();
          v4->isa = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
        }

        v15 = KmlLogger();
        if (sub_10037BD10(v15))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v67 = 652;
          goto LABEL_33;
        }

        break;
      case 8:
        if (a4)
        {
          v7 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v58[0] = NSLocalizedDescriptionKey;
          v45 = *(v5 + 1128);
          KmlErrorString();
          v46 = [sub_100372244() stringWithUTF8String:?];
          v58[1] = NSLocalizedFailureReasonErrorKey;
          v59[0] = v46;
          v59[1] = @"No key support present in remote reader";
          [NSDictionary dictionaryWithObjects:v59 forKeys:v58 count:2];
          objc_claimAutoreleasedReturnValue();
          v4->isa = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
        }

        v47 = KmlLogger();
        if (sub_10037BD10(v47))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v67 = 659;
          goto LABEL_33;
        }

        break;
      case 9:
        if (a4)
        {
          v7 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v56[0] = NSLocalizedDescriptionKey;
          v32 = *(v5 + 1128);
          KmlErrorString();
          v33 = [sub_100372244() stringWithUTF8String:?];
          v56[1] = NSLocalizedFailureReasonErrorKey;
          v57[0] = v33;
          v57[1] = @"Evidence verification on car side failed";
          [NSDictionary dictionaryWithObjects:v57 forKeys:v56 count:2];
          objc_claimAutoreleasedReturnValue();
          v4->isa = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
        }

        v34 = KmlLogger();
        if (sub_10037BD10(v34))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v67 = 665;
          goto LABEL_33;
        }

        break;
      case 10:
        if (a4)
        {
          v7 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v54[0] = NSLocalizedDescriptionKey;
          v42 = *(v5 + 1128);
          KmlErrorString();
          v43 = [sub_100372244() stringWithUTF8String:?];
          v54[1] = NSLocalizedFailureReasonErrorKey;
          v55[0] = v43;
          v55[1] = @"wrong digital key configuration";
          [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
          objc_claimAutoreleasedReturnValue();
          v4->isa = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
        }

        v44 = KmlLogger();
        if (sub_10037BD10(v44))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v67 = 671;
          goto LABEL_33;
        }

        break;
      case 11:
        if (a4)
        {
          v7 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v52[0] = NSLocalizedDescriptionKey;
          v28 = *(v5 + 1128);
          KmlErrorString();
          v29 = [sub_100372244() stringWithUTF8String:NSLocalizedDescriptionKey];
          v52[1] = NSLocalizedFailureReasonErrorKey;
          v53[0] = v29;
          v53[1] = @"certificate verification failed";
          [NSDictionary dictionaryWithObjects:v53 forKeys:v52 count:2];
          objc_claimAutoreleasedReturnValue();
          v4->isa = [sub_1003674BC() errorWithDomain:? code:? userInfo:?];
        }

        v30 = KmlLogger();
        if (sub_10037BD10(v30))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v67 = 677;
          goto LABEL_33;
        }

        break;
      case 12:
        v31 = KmlLogger();
        if (sub_10037BD10(v31))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v67 = 680;
          goto LABEL_33;
        }

        break;
      case 13:
        v41 = KmlLogger();
        if (sub_10037BD10(v41))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v67 = 683;
          goto LABEL_33;
        }

        break;
      default:
        if (a3 != 127)
        {
          v35 = KmlLogger();
          if (!sub_10036F978(v35))
          {
            goto LABEL_53;
          }

          *buf = 136315650;
          sub_10037BC9C("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]");
          sub_10037BD6C(v36);
          v18 = "%s : %i : KmlCommandHandler: OpControlFlow command - abort, reason - unknown (%d)";
          goto LABEL_52;
        }

        v27 = KmlLogger();
        if (sub_10037BD10(v27))
        {
          sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
          v67 = 686;
          goto LABEL_33;
        }

        break;
    }

    goto LABEL_54;
  }

  if (a2 == 17)
  {
    v11 = KmlLogger();
    v12 = sub_10036F978(v11);
    if (v7 == 17)
    {
      if (v12)
      {
        sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
        v67 = 624;
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    if (v7 == 16)
    {
      if (v12)
      {
        sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
        v67 = 621;
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    if (!v12)
    {
      goto LABEL_53;
    }

    *buf = 136315650;
    sub_10037BC9C("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]");
    sub_10037BD6C(v19);
    v18 = "%s : %i : KmlCommandHandler: OpControlFlow command - end, reason - unknown (%d)";
LABEL_52:
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, v18, buf, 0x18u);
    goto LABEL_53;
  }

  if (a2 != 16)
  {
    v16 = KmlLogger();
    if (!sub_10036F978(v16))
    {
      goto LABEL_53;
    }

    *buf = 136315650;
    sub_10037BC9C("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]");
    v67 = 695;
    v68 = v17;
    v69 = a2;
    v18 = "%s : %i : KmlCommandHandler: unknown OpControlFlow command - %d";
    goto LABEL_52;
  }

  v9 = KmlLogger();
  v10 = sub_10036F978(v9);
  switch(v7)
  {
    case 0xF:
      if (v10)
      {
        sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
        v67 = 611;
LABEL_32:
        v7 = 1;
LABEL_33:
        sub_10037BD04();
        _os_log_impl(v20, v21, v22, v23, v24, v25);
        goto LABEL_54;
      }

      break;
    case 2:
      if (v10)
      {
        sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
        v67 = 605;
        goto LABEL_32;
      }

      break;
    case 3:
      if (v10)
      {
        sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
        v67 = 608;
        goto LABEL_32;
      }

      break;
    case 1:
      if (v10)
      {
        sub_10037BC88("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]", 4.8151e-34);
        v67 = 602;
        goto LABEL_32;
      }

      break;
    default:
      if (v10)
      {
        *buf = 136315650;
        sub_10037BC9C("[KmlCommandHandler validateOpControlFlowWithOperation:reason:error:]");
        sub_10037BD6C(v26);
        v18 = "%s : %i : KmlCommandHandler: OpControlFlow command - continue, reason - unknown (%d)";
        goto LABEL_52;
      }

LABEL_53:
      v7 = 0;
      goto LABEL_54;
  }

LABEL_34:
  v7 = 1;
LABEL_54:

  return v7;
}

id sub_1003CC7F8(uint64_t a1)
{
  if (a1)
  {
    a1 = sub_1003DC624(*(a1 + 32), *(a1 + 48), [*(a1 + 56) agreedKmlVehicleVersion]);
    v1 = vars8;
  }

  return a1;
}

uint64_t *sub_1003CC848(uint64_t *a1)
{
  if (a1)
  {
    a1 = sub_1003DEBF4(a1[4]);
    v1 = vars8;
  }

  return a1;
}

id *sub_1003CC87C(id *a1)
{
  if (a1)
  {
    a1 = a1[4];
    v1 = vars8;
  }

  return a1;
}

uint64_t sub_1003CC8AC(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

id *sub_1003CC8B8(id *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = +[NSMutableDictionary dictionary];
    v3 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v1[3] count]);
    [v2 setObject:v3 forKeyedSubscript:@"numberOfQueuedSessions"];

    if (v1[4])
    {
      v4 = &off_1004DCE88;
    }

    else
    {
      v4 = &off_1004DCEA0;
    }

    [v2 setObject:v4 forKeyedSubscript:@"hasActiveSession"];
    v5 = v1[4];
    if (v5)
    {
      v6 = [v5 clientName];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = &stru_1004D9380;
      }

      [v2 setObject:v8 forKeyedSubscript:@"currentSessionClient"];
      v9 = v1[4];
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      [v2 setObject:v11 forKeyedSubscript:@"currentSessionType"];

      v12 = [v1[4] dumpState];
      if (v12)
      {
        [v2 setObject:v12 forKeyedSubscript:@"currentSessionState"];
      }
    }

    v13 = [NSPropertyListSerialization dataWithPropertyList:v2 format:200 options:0 error:0];
    v14 = [v13 length];
    v1 = malloc_type_calloc(1uLL, v14 + 200, 0x1000040BEF03554uLL);
    *v1 = 1;
    *(v1 + 1) = v14;
    __strlcpy_chk();
    memcpy(v1 + 25, [v13 bytes], v14);
  }

  return v1;
}

void sub_1003CCA88(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = [v3 userInfo];
    v6 = [v5 objectForKeyedSubscript:@"ProxyObjects"];
    v7 = [NSSet setWithSet:v6];

    v8 = [v5 objectForKeyedSubscript:@"ClientName"];
    v9 = KmlLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315906;
      v25 = "[KeyManagementLibrary handleCloseForConnection:]";
      v26 = 1024;
      v27 = 215;
      v28 = 1024;
      *v29 = [v4 processIdentifier];
      *&v29[4] = 2112;
      *&v29[6] = v8;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : KmlXpcService: Goodbye from client pid=%d name=%@", buf, 0x22u);
    }

    v17 = v8;

    v18 = v4;
    sub_10038A89C(*(a1 + 16), v4);
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = v7;
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = KmlLogger();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
          {
            *buf = 136315650;
            v25 = "[KeyManagementLibrary handleCloseForConnection:]";
            v26 = 1024;
            v27 = 222;
            v28 = 2112;
            *v29 = v15;
            _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "%s : %i : Ending session %@", buf, 0x1Cu);
          }

          [v15 endSessionWithCompletion:&stru_1004D1E78];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v4 = v18;
  }
}

void sub_1003CCD48(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10037FB1C;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_1003CCDC4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 40);
    sub_100057A60();
    v9 = 3221225472;
    v10 = sub_10037E2E0;
    v11 = &unk_1004C24A8;
    v12 = a1;
    v13 = v5;
    v14 = v6;
    dispatch_async(v7, block);
  }
}

void sub_1003CCE74(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    if (v6)
    {
      [*(a1 + 24) removeObjectForKey:v6];
      [*(a1 + 24) setObject:v5 forKey:v7];
      v8 = KmlLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12[0] = 136315650;
        sub_1003672C0();
        v13 = 402;
        v14 = 2112;
        v15 = v7;
        v9 = "%s : %i : KSTransport: added delegate for %@.";
        v10 = v8;
        v11 = 28;
LABEL_7:
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, v9, v12, v11);
      }
    }

    else
    {
      v8 = KmlLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12[0] = 136315394;
        sub_1003672C0();
        v13 = 396;
        v9 = "%s : %i : Unable to add delegate for nil sharingId, ignore this request";
        v10 = v8;
        v11 = 18;
        goto LABEL_7;
      }
    }
  }
}

void sub_1003CCFD8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 40);
    sub_1000167BC();
    sub_1003674E4();
    v5 = v3;
    v6 = sub_1003673F8();
    dispatch_async(v6, v7);
  }
}

void sub_1003CD05C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      [*(a1 + 24) removeObjectForKey:v3];
    }

    else
    {
      v5 = KmlLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6[0] = 136315394;
        sub_1003672C0();
        *(&v6[3] + 2) = 408;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : Unable to remove delegate for nil sharingId, ignore this request", v6, 0x12u);
      }
    }
  }
}

void sub_1003CD134(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 40);
    sub_1000167BC();
    sub_1003674E4();
    v5 = v3;
    v6 = sub_1003673F8();
    dispatch_async(v6, v7);
  }
}

void sub_1003CD1B8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 40);
    sub_1000167BC();
    sub_1003674E4();
    v5 = v3;
    v6 = sub_1003673F8();
    dispatch_async(v6, v7);
  }
}

void sub_1003CD23C(uint64_t a1, void *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8, uint64_t a9, uint64_t a10)
{
  v24 = a2;
  v17 = a3;
  v18 = a4;
  v19 = a5;
  v20 = a6;
  v21 = a7;
  v22 = a8;
  if (a1)
  {
    v23 = *(a1 + 40);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10037E618;
    block[3] = &unk_1004D1F10;
    v26 = v19;
    v27 = v24;
    v28 = v21;
    v29 = a1;
    v34 = a9;
    v30 = v17;
    v31 = v18;
    v32 = v20;
    v35 = a10;
    v33 = v22;
    dispatch_async(v23, block);
  }
}

const __CFString *sub_1003CD3CC(const __CFString *result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 1) > 8)
    {
      return @"kmlUnknown";
    }

    else
    {
      return off_1004D1F30[a2 - 1];
    }
  }

  return result;
}

void sub_1003CD3F8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 40);
    sub_1000167BC();
    sub_1003674E4();
    v11[2] = sub_10037E7D0;
    v11[3] = &unk_1004D1B40;
    v12 = v8;
    v13 = v9;
    v14 = a1;
    v15 = v7;
    dispatch_async(v10, v11);
  }
}

void sub_1003CD4C8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 40));
    v4 = *(a1 + 40);
    sub_1000167BC();
    sub_1003674E4();
    v5 = v3;
    v6 = sub_1003673F8();
    dispatch_sync(v6, v7);
  }
}

void sub_1003CD554(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 40));
    v7 = *(a1 + 40);
    sub_100057A60();
    v9 = 3221225472;
    v10 = sub_10037EAC0;
    v11 = &unk_1004C24A8;
    v12 = a1;
    v13 = v5;
    v14 = v6;
    dispatch_sync(v7, block);
  }
}

void sub_1003CD60C(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 40));
    v2 = *(a1 + 40);
    sub_100057A60();
    v5 = 3221225472;
    v6 = sub_10037EBC8;
    v7 = &unk_1004C08D8;
    v8 = a1;
    dispatch_sync(v3, block);
  }
}

uint64_t sub_1003CD680(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 isEqualToString:@"kmlWatch"])
    {
      a1 = 2;
    }

    else if ([v4 isEqualToString:@"kmlPhone"])
    {
      a1 = 1;
    }

    else
    {
      a1 = 255;
    }
  }

  return a1;
}

void sub_1003CD6EC(uint64_t a1)
{
  if (a1)
  {
    sub_1003C42B4(*(a1 + 56), 0);
    v2 = *(a1 + 56);
    *(a1 + 56) = 0;

    v3 = *(a1 + 64);
    *(a1 + 64) = 0;

    v4 = *(a1 + 72);
    *(a1 + 72) = 0;

    v5 = *(a1 + 80);
    *(a1 + 80) = 0;
  }
}

id *sub_1003CD780(id *a1)
{
  if (a1)
  {
    a1 = a1[3];
    v1 = vars8;
  }

  return a1;
}

id sub_1003CD7B0(id result, const char *a2)
{
  if (result)
  {
    return objc_getProperty(result, a2, 48, 1);
  }

  return result;
}

void sub_1003CD7C4(uint64_t a1, double a2)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100382080;
    v3[3] = &unk_1004C2B00;
    v3[4] = a1;
    *&v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

void sub_1003CD844(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 32);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100381FB0;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

void sub_1003CD8C0(uint64_t a1)
{
  if (a1)
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003824B4;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_async(&_dispatch_main_q, block);
  }
}

CFTypeRef sub_1003CD93C(uint64_t a1, const __CFString *a2, SecTaskRef task)
{
  if (!a1)
  {
    return 0;
  }

  error = 0;
  v3 = SecTaskCopyValueForEntitlement(task, a2, &error);
  if (error)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315650;
      v8 = "[KmlEntitlementChecker _copyValueOfEntitlement:secTask:]";
      v9 = 1024;
      v10 = 30;
      v11 = 2112;
      v12 = error;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s : %i : Failed to get entitlements: %@", buf, 0x1Cu);
    }

    CFRelease(error);
  }

  return v3;
}

uint64_t sub_1003CDA3C(uint64_t a1, void *a2, __SecTask *a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = sub_1003CD93C(a1, v5, a3);
    if (v6)
    {
      v7 = v6;
      v8 = CFGetTypeID(v6);
      a1 = v8 == CFBooleanGetTypeID() && CFBooleanGetValue(v7) != 0;
      CFRelease(v7);
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

id sub_1003CDAD0(id a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v10.receiver = a1;
    v10.super_class = KmlEntitlementChecker;
    a1 = objc_msgSendSuper2(&v10, "init");
    if (a1)
    {
      bzero(buffer, 0xFFuLL);
      proc_name([v3 processIdentifier], buffer, 0xFEu);
      v4 = [NSString stringWithUTF8String:buffer];
      v5 = *(a1 + 1);
      *(a1 + 1) = v4;

      if (v3)
      {
        [v3 auditToken];
      }

      else
      {
        memset(&token, 0, sizeof(token));
      }

      v6 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
      if (v6)
      {
        v9 = v6;
        *(a1 + 16) = sub_1003CDA3C(a1, @"com.apple.seserviced.kmlXpcService", v6);
        *(a1 + 17) = sub_1003CDA3C(a1, @"com.apple.seserviced.kmlBackGroundClient", v9);
        CFRelease(v9);
      }

      else
      {
        v7 = KmlLogger();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
        {
          token.val[0] = 136315650;
          *&token.val[1] = "[KmlEntitlementChecker initWithConnection:]";
          LOWORD(token.val[3]) = 1024;
          *(&token.val[3] + 2) = 89;
          HIWORD(token.val[4]) = 2112;
          *&token.val[5] = v3;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%s : %i : Cannot create SecTaskRef with XPC Connection: %@", &token, 0x1Cu);
        }

        a1 = 0;
      }
    }
  }

  return a1;
}

uint64_t sub_1003CDC98(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 17);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

void sub_1003CDCB0(uint64_t a1)
{
  if (a1)
  {
    sub_1003CDDF4(a1);
    sub_1003CDFD8(a1, v3, v4, v5, v6, v7, v8, v9, v24, v26, v27, v28, v29);
    [SESAlarm registerAlarm:@"com.apple.sesd.kml.sharingAuthExpiry" handler:a1];
    v10 = KmlLogger();
    if (sub_100057AEC(v10))
    {
      sub_100389B08();
      sub_100389B80(&_mh_execute_header, v11, v12, "%s : %i : Auth Expiry Alarm registered - %u", v13, v14, v15, v16, v25);
    }

    [SESAlarm registerAlarm:@"com.apple.sesd.kml.sharingOpt2AuthDeletion" handler:a1];
    v17 = KmlLogger();
    if (sub_100057AEC(v17))
    {
      sub_100389B08();
      sub_100389B80(&_mh_execute_header, v18, v19, "%s : %i : Opt2 Auth Deletion Alarm registered - %u", v20, v21, v22, v23, v25);
    }

    sub_1003CE160(a1);
    sub_1003CE3AC(a1);
  }
}

void sub_1003CDDF4(uint64_t a1)
{
  if (a1)
  {
    v3 = sub_1003CE670(a1);
    if (v3)
    {
      v4 = KmlLogger();
      if (sub_10036F5DC(v4))
      {
        v27 = 136315650;
        v28 = "[KmlSharingManager regenerateOwnerSharingObjects]";
        v29 = 1024;
        v30 = 164;
        v31 = 2112;
        v32 = v3;
        sub_100389AA8();
LABEL_5:
        _os_log_impl(v5, v6, v7, v8, v9, v10);
      }
    }

    else
    {
      if ([*(a1 + 8) count])
      {
        v24 = 0u;
        v25 = 0u;
        v22 = 0u;
        v23 = 0u;
        v1 = *(a1 + 8);
        v11 = [v1 countByEnumeratingWithState:&v22 objects:v26 count:16];
        if (v11)
        {
          v18 = v11;
          v19 = *v23;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v23 != v19)
              {
                objc_enumerationMutation(v1);
              }

              sub_1003CE9C0(a1, *(*(&v22 + 1) + 8 * i), v12, v13, v14, v15, v16, v17, v22, *(&v22 + 1), v23, *(&v23 + 1), v24);
            }

            v18 = [v1 countByEnumeratingWithState:&v22 objects:v26 count:16];
          }

          while (v18);
        }

        goto LABEL_17;
      }

      v21 = KmlLogger();
      if (sub_100057AEC(v21))
      {
        v27 = 136315394;
        v28 = "[KmlSharingManager regenerateOwnerSharingObjects]";
        v29 = 1024;
        v30 = 169;
        sub_10037BD04();
        goto LABEL_5;
      }
    }

LABEL_17:
  }
}

void sub_1003CDFD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  sub_100389B48();
  if (v13)
  {
    v14 = v13;
    v15 = sub_100378CC8();
    v16 = *(v14 + 16);
    *(v14 + 16) = v15;

    v17 = sub_1003C8664(*(v14 + 16));
    sub_100389AC8();
    sub_100389B30();
    v19 = [v18 countByEnumeratingWithState:? objects:? count:?];
    if (v19)
    {
      v20 = v19;
      v21 = *a13;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*a13 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = *(a12 + 8 * i);
          v24 = KmlLogger();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v25 = sub_1003C7D40(v23);
            sub_1003672F0();
            sub_100389A90();
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_INFO, "%s : %i : Regenerate friend sharing session with id : %@", v26, 0x1Cu);
          }

          sub_10038CADC(KmlFriendSharingManager, v23);
        }

        sub_100389B30();
        v20 = [v17 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v20);
    }
  }

  sub_100389B64();
}

void sub_1003CE160(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    if (*(a1 + 32) == 1)
    {
      v10 = sub_1003CE670(a1);
      if (v10)
      {
        v1 = v10;
        v11 = KmlLogger();
        if (sub_10036F5DC(v11))
        {
          sub_10036DC30();
          sub_100389A7C();
          sub_100389AA8();
          _os_log_impl(v12, v13, v14, v15, v16, v17);
        }

        goto LABEL_24;
      }
    }

    *(v2 + 32) = 1;
    if (![*(v2 + 8) count])
    {
      v3 = KmlLogger();
      if (sub_10036F978(v3))
      {
        sub_10036DC30();
        sub_10037BD04();
        _os_log_impl(v4, v5, v6, v7, v8, v9);
      }

      goto LABEL_6;
    }

    v18 = sub_100389AF0();
    v2 = sub_1003CF438(v18, v19, v20);
    v1 = v41;
    if ([v2 BOOLValue])
    {
      v29 = sub_100389B1C(v21, v22, v23, v24, v25, v26, v27, v28, *&v41, v42);
      if (v30 && v29 > 2.0)
      {
        [SESAlarm setAlarm:@"com.apple.sesd.kml.sharingAuthExpiry" secondsFromNow:v29 + 1.0];
LABEL_24:

LABEL_6:
        return;
      }
    }

    v32 = [v2 BOOLValue];
    v33 = KmlLogger();
    v34 = v33;
    if (v32)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        sub_10036DC30();
        sub_10037BD04();
LABEL_22:
        _os_log_impl(v35, v36, v37, v38, v39, v40);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10036DC30();
      sub_100389A7C();
      sub_100389AB8();
      goto LABEL_22;
    }

    goto LABEL_24;
  }
}

void sub_1003CE3AC(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    if (*(a1 + 32) == 1)
    {
      v10 = sub_1003CE670(a1);
      if (v10)
      {
        v1 = v10;
        v11 = KmlLogger();
        if (sub_10036F5DC(v11))
        {
          sub_10036DC30();
          sub_100389A7C();
          sub_100389AA8();
          _os_log_impl(v12, v13, v14, v15, v16, v17);
        }

        goto LABEL_24;
      }
    }

    *(v2 + 32) = 1;
    if (![*(v2 + 8) count])
    {
      v3 = KmlLogger();
      if (sub_10036F978(v3))
      {
        sub_10036DC30();
        sub_10037BD04();
        _os_log_impl(v4, v5, v6, v7, v8, v9);
      }

      goto LABEL_6;
    }

    v18 = sub_100389AF0();
    v2 = sub_1003CF060(v18, v19, v20);
    v1 = v41;
    if ([v2 BOOLValue])
    {
      v29 = sub_100389B1C(v21, v22, v23, v24, v25, v26, v27, v28, *&v41, v42);
      if (v30 && v29 > 2.0)
      {
        [SESAlarm setAlarm:@"com.apple.sesd.kml.sharingOpt2AuthDeletion" secondsFromNow:v29 + 1.0];
LABEL_24:

LABEL_6:
        return;
      }
    }

    v32 = [v2 BOOLValue];
    v33 = KmlLogger();
    v34 = v33;
    if (v32)
    {
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        sub_10036DC30();
        sub_10037BD04();
LABEL_22:
        _os_log_impl(v35, v36, v37, v38, v39, v40);
      }
    }

    else if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      sub_10036DC30();
      sub_100389A7C();
      sub_100389AB8();
      goto LABEL_22;
    }

    goto LABEL_24;
  }
}

void sub_1003CE5F8(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    sub_100057A60();
    v5 = 3221225472;
    v6 = sub_100388C34;
    v7 = &unk_1004C2400;
    v8 = v2;
    dispatch_async(v3, block);
  }
}

void sub_1003CE658(uint64_t a1)
{
  if (a1)
  {
    dispatch_async(*(a1 + 24), &stru_1004D20D0);
  }
}

id sub_1003CE670(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    [*(a1 + 8) removeAllObjects];
    v40 = 0;
    v3 = SESEndPointListWithSession();
    v4 = 0;
    if (v4)
    {
      v5 = v4;
      v6 = KmlLogger();
      if (sub_10036F5DC(v6))
      {
        *buf = 136315650;
        v43 = "[KmlSharingManager getFreshListOfValidShareInitiatorEndpoints]";
        v44 = 1024;
        v45 = 186;
        v46 = 2112;
        v47 = v5;
        sub_100389AA8();
        _os_log_impl(v7, v8, v9, v10, v11, v12);
      }

      v13 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v14 = [v5 userInfo];
      v15 = [NSError errorWithDomain:v13 code:210 userInfo:v14];
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v13 = v3;
      v16 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
      if (v16)
      {
        v17 = v16;
        v35 = v3;
        v18 = *v37;
        v19 = &swift_cvw_destroy_ptr;
        p_info = &OBJC_METACLASS___KmlManagerInterface.info;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v37 != v18)
            {
              objc_enumerationMutation(v13);
            }

            v22 = *(*(&v36 + 1) + 8 * i);
            v23 = [objc_alloc(v19[277]) initWithEndpoint:v22];
            if (([v19[277] doesVersion:objc_msgSend(v23 support:{"agreedKmlVehicleVersion"), 768}] & 1) != 0 || sub_100399BE8((p_info + 411), v22))
            {
              v24 = [v22 revocationAttestation];

              if (!v24)
              {
                v25 = KmlLogger();
                if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
                {
                  [v22 publicKeyIdentifier];
                  v26 = v18;
                  v27 = v13;
                  v28 = p_info;
                  v30 = v29 = v2;
                  *buf = 136315650;
                  sub_100389B3C(buf);
                  v44 = v31;
                  *(v32 + 14) = 204;
                  v46 = 2112;
                  *(v32 + 20) = v33;
                  _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_INFO, "%s : %i : Found un-revoked shareInitiator endpoint with id : %@", buf, 0x1Cu);

                  v2 = v29;
                  p_info = v28;
                  v13 = v27;
                  v18 = v26;
                  v19 = &swift_cvw_destroy_ptr;
                }

                [*(v2 + 8) addObject:v22];
              }
            }
          }

          v17 = [v13 countByEnumeratingWithState:&v36 objects:v41 count:16];
        }

        while (v17);
        v15 = 0;
        v3 = v35;
      }

      else
      {
        v15 = 0;
      }
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_1003CE9C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t *a13)
{
  sub_100389B48();
  v14 = v13;
  v16 = v15;
  if (v14)
  {
    v17 = sub_100394824(KmlSharingRecordsUpdater, v16);
    v18 = sub_100395D0C(v17);
    sub_100389AC8();
    sub_100389B30();
    v20 = [v19 countByEnumeratingWithState:? objects:? count:?];
    if (v20)
    {
      v21 = v20;
      v22 = *a13;
      do
      {
        for (i = 0; i != v21; i = i + 1)
        {
          if (*a13 != v22)
          {
            objc_enumerationMutation(v18);
          }

          v24 = *(a12 + 8 * i);
          v25 = sub_1003B8594(v24);
          v26 = KmlLogger();
          v27 = os_log_type_enabled(v26, OS_LOG_TYPE_INFO);
          if (v25 == 4)
          {
            if (v27)
            {
              v28 = sub_1003C75C8(v24);
              sub_1003672F0();
              sub_100389A90();
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s : %i : %@ is record of successful sharing. Leave it alone.", v29, 0x1Cu);
            }
          }

          else
          {
            if (v27)
            {
              v30 = sub_1003C75C8(v24);
              sub_1003672F0();
              sub_100389A90();
              _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s : %i : Regenerate owner sharing session with id : %@", v31, 0x1Cu);
            }

            sub_10039EAA4(KmlOwnerSharingManager, v16, v24, v17);
          }
        }

        sub_100389B30();
        v21 = [v18 countByEnumeratingWithState:? objects:? count:?];
      }

      while (v21);
    }
  }

  sub_100389B64();
}

id sub_1003CEBC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, int a35, int a36, int a37, __int16 a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54)
{
  sub_100389B48();
  a53 = v54;
  a54 = v56;
  v58 = v57;
  if (v57)
  {
    v88 = v55;
    v59 = KmlLogger();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
    {
      a35 = 136315394;
      sub_100389B3C(&a35);
      a38 = v60;
      *(v61 + 14) = 240;
      sub_10037BD04();
      _os_log_impl(v62, v63, v64, v65, v66, v67);
    }

    v68 = sub_100378CC8();
    v69 = *(v58 + 16);
    *(v58 + 16) = v68;

    v70 = sub_1003C8664(*(v58 + 16));
    v71 = +[NSMutableArray array];
    sub_100389AC8();
    v72 = v70;
    v73 = [v72 countByEnumeratingWithState:&a11 objects:&a19 count:16];
    if (v73)
    {
      v74 = v73;
      v75 = *a13;
      do
      {
        for (i = 0; i != v74; i = i + 1)
        {
          if (*a13 != v75)
          {
            objc_enumerationMutation(v72);
          }

          v77 = *(a12 + 8 * i);
          if (sub_1003C7D28(v77) <= 5)
          {
            v78 = [DAKeySharingInvitationData alloc];
            v79 = sub_1003AAA78(v77);
            v80 = sub_1003C7D40(v77);
            v81 = sub_1003C7D34(v77);
            v82 = sub_1003C7D28(v77) - 1;
            if (v82 > 5)
            {
              v83 = 8;
            }

            else
            {
              v83 = qword_1004174C8[v82];
            }

            v84 = [v78 initWithSessionUUID:v79 invitationIdentifier:v80 friendKeyIdentifier:v81 sharingTarget:1 state:v83 vehicleEnteredPasscode:0];

            [v71 addObject:v84];
          }
        }

        v74 = [v72 countByEnumeratingWithState:&a11 objects:&a19 count:16];
      }

      while (v74);
    }

    if (v88)
    {
      *v88 = 0;
    }
  }

  sub_100389B64();

  return v85;
}

uint64_t sub_1003CEE1C(uint64_t a1)
{
  if (a1)
  {
    v3 = KmlLogger();
    if (sub_100057AEC(v3))
    {
      v18 = 136315394;
      v19 = "[KmlSharingManager cancelAllFriendInvitations]";
      v20 = 1024;
      v21 = 269;
      sub_10037BD04();
      _os_log_impl(v4, v5, v6, v7, v8, v9);
    }

    v10 = *(a1 + 24);
    sub_100057A60();
    v14 = 3221225472;
    v15 = sub_10038967C;
    v16 = &unk_1004C08D8;
    v17 = a1;
    dispatch_async(v11, block);
  }

  return 0;
}

uint64_t sub_1003CEF10(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = KmlLogger();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      v10 = "[KmlSharingManager removeSharingInvitationId:]";
      v11 = 1024;
      v12 = 291;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "%s : %i : Sharing invitation id : %@", buf, 0x1Cu);
    }

    if (v3)
    {
      v5 = *(a1 + 24);
      v7[0] = _NSConcreteStackBlock;
      v7[1] = 3221225472;
      v7[2] = sub_100389890;
      v7[3] = &unk_1004C22F0;
      v7[4] = a1;
      v8 = v3;
      dispatch_async(v5, v7);
    }
  }

  return 0;
}

id *sub_1003CF060(id *a1, double *a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    obj = a1[1];
    v33 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
    if (v33)
    {
      v32 = *v40;
      v3 = 1.79769313e308;
      do
      {
        for (i = 0; i != v33; i = i + 1)
        {
          if (*v40 != v32)
          {
            objc_enumerationMutation(obj);
          }

          v5 = sub_100394824(KmlSharingRecordsUpdater, *(*(&v39 + 1) + 8 * i));
          v6 = sub_100395D0C(v5);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          v7 = [v6 countByEnumeratingWithState:&v35 objects:v46 count:16];
          if (v7)
          {
            v8 = v7;
            v34 = i;
            v9 = 0;
            v10 = *v36;
            do
            {
              for (j = 0; j != v8; j = j + 1)
              {
                if (*v36 != v10)
                {
                  objc_enumerationMutation(v6);
                }

                v12 = *(*(&v35 + 1) + 8 * j);
                v13 = sub_1003C7D34(v12);
                if (v13)
                {
                  v14 = v13;
                  v15 = sub_1003C7D40(v12);

                  if (v15)
                  {
                    v16 = KmlLogger();
                    if (sub_10036F978(v16))
                    {
                      v17 = sub_1003C75C8(v12);
                      v43 = 136315650;
                      v44 = "[KmlSharingManager removeExpiredOpt2Auths:outError:]";
                      v45 = 1024;
                      sub_100389AD8(v17, 380);
                      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : v3 sharing session with non-deleted auth with ID : %@", v18, 0x1Cu);
                    }

                    v19 = sub_1003C7D40(v12);
                    [v19 timeIntervalSinceNow];
                    v21 = fabs(v20);

                    v22 = objc_opt_new();
                    [v22 opt2AuthDeletionAlarmDurationSeconds];
                    v24 = v23;

                    if (v21 >= v24)
                    {
                      v25 = KmlLogger();
                      if (sub_10036F978(v25))
                      {
                        v26 = sub_1003AD0FC(v12);
                        v43 = 136315650;
                        v44 = "[KmlSharingManager removeExpiredOpt2Auths:outError:]";
                        v45 = 1024;
                        sub_100389AD8(v26, 388);
                        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s : %i : Auth for sharing session with uuid:%@ is expired.", v27, 0x1Cu);
                      }

                      v28 = sub_1003AD0FC(v12);
                      sub_10039F244(KmlOwnerSharingManager, v28);

                      sub_1003C7DC0(v12, 0);
                      sub_1003C7DD0(v12, 0);
                      sub_1003DAEB8(v5, v12);
                      v9 = 1;
                    }

                    else if (v3 >= v24 - v21)
                    {
                      v3 = v24 - v21;
                    }
                  }
                }
              }

              v8 = [v6 countByEnumeratingWithState:&v35 objects:v46 count:16];
            }

            while (v8);
            if (v9)
            {
              sub_1003DAFF0(v5);
            }

            i = v34;
          }
        }

        v33 = [obj countByEnumeratingWithState:&v39 objects:v47 count:16];
      }

      while (v33);
    }

    else
    {
      v3 = 1.79769313e308;
    }

    *a2 = v3;
    a1 = [NSNumber numberWithBool:1];
  }

  return a1;
}

id sub_1003CF438(uint64_t a1, double *a2, void *a3)
{
  if (a1)
  {
    if (a3)
    {
      *a3 = 0;
    }

    v5 = +[KmlCachedAuthorizationManager sharedManager];
    v72 = 0;
    v56 = [v5 getCachedAuthorizationsWithError:&v72];
    v6 = v72;

    v50 = v6;
    if (v6)
    {
      v7 = KmlLogger();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        v77 = "[KmlSharingManager reconcileInvitationsAndAuths:outError:]";
        v78 = 1024;
        v79 = 452;
        v80 = 2112;
        v81 = v6;
        sub_100389AB8();
        _os_log_impl(v8, v9, v10, v11, v12, v13);
      }

      if (a3)
      {
        *a3 = v6;
      }
    }

    else
    {
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      obj = *(a1 + 8);
      v53 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
      if (v53)
      {
        v52 = *v69;
        v14 = 1.79769313e308;
        do
        {
          v15 = 0;
          do
          {
            if (*v69 != v52)
            {
              objc_enumerationMutation(obj);
            }

            v55 = v15;
            v54 = sub_100394824(KmlSharingRecordsUpdater, *(*(&v68 + 1) + 8 * v15));
            v16 = sub_100395D0C(v54);
            v64 = 0u;
            v65 = 0u;
            v66 = 0u;
            v67 = 0u;
            v59 = v16;
            v17 = [v16 countByEnumeratingWithState:&v64 objects:v74 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v65;
              v57 = *v65;
              do
              {
                v20 = 0;
                v58 = v18;
                do
                {
                  if (*v65 != v19)
                  {
                    objc_enumerationMutation(v59);
                  }

                  v21 = *(*(&v64 + 1) + 8 * v20);
                  if (sub_1003B8594(v21) == 3)
                  {
                    v22 = KmlLogger();
                    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
                    {
                      v23 = sub_1003C75C8(v21);
                      *buf = 136315650;
                      sub_100389B3C(buf);
                      v78 = v24;
                      *(v25 + 14) = 468;
                      v80 = 2112;
                      *(v25 + 20) = v26;
                      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, "%s : %i : Found in-progress sharing session with ID : %@", buf, 0x1Cu);
                    }

                    v62 = 0u;
                    v63 = 0u;
                    v60 = 0u;
                    v61 = 0u;
                    v27 = v56;
                    v28 = [v27 countByEnumeratingWithState:&v60 objects:v73 count:16];
                    if (v28)
                    {
                      v29 = v28;
                      v30 = *v61;
LABEL_24:
                      v31 = 0;
                      while (1)
                      {
                        if (*v61 != v30)
                        {
                          objc_enumerationMutation(v27);
                        }

                        v32 = *(*(&v60 + 1) + 8 * v31);
                        v33 = sub_1003C7D34(v21);
                        v34 = [v32 authorizationID];
                        v35 = [v33 isEqualToData:v34];

                        if (v35)
                        {
                          break;
                        }

                        if (v29 == ++v31)
                        {
                          v29 = [v27 countByEnumeratingWithState:&v60 objects:v73 count:16];
                          if (v29)
                          {
                            goto LABEL_24;
                          }

                          goto LABEL_30;
                        }
                      }

                      v36 = v32;

                      if (!v36)
                      {
                        goto LABEL_38;
                      }

                      v19 = v57;
                      v18 = v58;
                      if ([v36 state] == 1)
                      {
                        v37 = (clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW) / 0x3B9ACA00);
                        v38 = [v36 authExpirationTime];
                        [v38 doubleValue];
                        v40 = v39 - v37;

                        if (v40 < 0.0 || v40 < 2.0)
                        {
                          goto LABEL_39;
                        }
                      }

                      else
                      {
                        v40 = 1.79769313e308;
                      }

                      if (v14 >= v40)
                      {
                        v14 = v40;
                      }
                    }

                    else
                    {
LABEL_30:

                      v36 = 0;
LABEL_38:
                      v19 = v57;
                      v18 = v58;
LABEL_39:
                      v42 = KmlLogger();
                      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
                      {
                        *buf = 136315394;
                        sub_100389B3C(buf);
                        v78 = v43;
                        *(v44 + 14) = 487;
                        _os_log_impl(&_mh_execute_header, v42, OS_LOG_TYPE_INFO, "%s : %i : Auth for this sharing session is expired.", buf, 0x12u);
                      }

                      v45 = sub_1003AD0FC(v21);
                      v46 = sub_1003C75C8(v21);
                      sub_10039F070(KmlOwnerSharingManager, v45, v46);
                    }
                  }

                  v20 = v20 + 1;
                }

                while (v20 != v18);
                v18 = [v59 countByEnumeratingWithState:&v64 objects:v74 count:16];
              }

              while (v18);
            }

            v15 = v55 + 1;
          }

          while ((v55 + 1) != v53);
          v53 = [obj countByEnumeratingWithState:&v68 objects:v75 count:16];
        }

        while (v53);
      }

      else
      {
        v14 = 1.79769313e308;
      }

      *a2 = v14;
    }

    v47 = [NSNumber numberWithBool:v50 == 0];
  }

  else
  {
    v47 = 0;
  }

  return v47;
}

void sub_1003CF9EC(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = KmlLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315650;
      v12 = "[KmlPowerAssertion _holdPowerAssertion:]";
      v13 = 1024;
      v14 = 50;
      v15 = 2112;
      v16 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "%s : %i : holding assertion: %@", buf, 0x1Cu);
    }

    v6 = +[NSProcessInfo processInfo];
    v7 = [v6 processName];
    v8 = [NSString stringWithFormat:@"%@[%@]", v7, v4];

    *(a1 + 8) = 0;
    if (IOPMAssertionCreateWithName(@"PreventUserIdleSystemSleep", 0xFFu, v8, (a1 + 8)))
    {
      *(a1 + 8) = 0;
    }

    v9 = os_transaction_create();
    v10 = *(a1 + 24);
    *(a1 + 24) = v9;

    objc_storeStrong((a1 + 32), a2);
  }
}

void sub_1003CFB74(uint64_t a1)
{
  if (a1)
  {
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
    {
      v3 = *(a1 + 32);
      v7 = 136315650;
      v8 = "[KmlPowerAssertion _releasePowerAssertion]";
      v9 = 1024;
      v10 = 69;
      v11 = 2112;
      v12 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEBUG, "%s : %i : releasing assertion: %@", &v7, 0x1Cu);
    }

    v4 = *(a1 + 8);
    if (v4)
    {
      IOPMAssertionRelease(v4);
      *(a1 + 8) = 0;
    }

    v5 = *(a1 + 24);
    *(a1 + 24) = 0;

    v6 = *(a1 + 32);
    *(a1 + 32) = 0;
  }
}

char *sub_1003CFC6C(char *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v30.receiver = a1;
    v30.super_class = KmlFriendSharingManager;
    a1 = objc_msgSendSuper2(&v30, "init");
    if (a1)
    {
      v8 = KmlLogger();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 44);
        v10 = [v9 UTF8String];

        v31 = 136315650;
        v32 = "[KmlFriendSharingManager initWithInvitationIdentifier:mailboxIdentifier:]";
        sub_10036F4A8();
        sub_100390948();
        v33 = v10;
        sub_100367454(&_mh_execute_header, v8, v11, "%s : %i : %s : FriendSharingManager: let's init", &v31);
      }

      *(a1 + 8) = vdupq_n_s64(2uLL);
      *(a1 + 3) = 2;
      objc_storeStrong(a1 + 44, a2);
      objc_storeStrong(a1 + 46, a3);
      *(a1 + 5) = 0;
      *(a1 + 120) = 0;
      *(a1 + 48) = 255;
      v12 = *(a1 + 44);
      v13 = KmlSignpostLogger();
      v14 = v13;
      v15 = 352;
      if (!v12)
      {
        v15 = 368;
      }

      *(a1 + 33) = os_signpost_id_make_with_pointer(v13, *&a1[v15]);

      v16 = sub_10038CE04();
      v17 = *(a1 + 36);
      *(a1 + 36) = v16;

      v18 = sub_10037E00C();
      v19 = *(a1 + 31);
      *(a1 + 31) = v18;

      v20 = objc_alloc_init(KmlSharingInvitationRecord);
      v21 = *(a1 + 32);
      *(a1 + 32) = v20;

      *(a1 + 5) = 0;
      *(a1 + 38) = 0;
      *(a1 + 39) = 0;
      *(a1 + 37) = 0;
      a1[320] = 0;
      v22 = [[KmlVersions alloc] initWithEndpoint:0];
      v23 = *(a1 + 28);
      *(a1 + 28) = v22;

      v24 = KmlLogger();
      if (sub_10036F124(v24))
      {
        v25 = *(a1 + 44);
        v26 = [v25 UTF8String];

        v31 = 136315650;
        v32 = "[KmlFriendSharingManager initWithInvitationIdentifier:mailboxIdentifier:]";
        sub_10036F4A8();
        sub_100390948();
        v33 = v26;
        sub_100390ABC(&_mh_execute_header, v27, v28, "%s : %i : %s : FriendSharingManager:  ready to roll", &v31);
      }
    }
  }

  return a1;
}

void sub_1003CFEF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_100390D04();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  v30 = v26;
  if (v29)
  {
    a9.receiver = v29;
    a9.super_class = KmlFriendSharingManager;
    v31 = objc_msgSendSuper2(&a9, "init");
    if (v31)
    {
      v32 = KmlLogger();
      if (sub_10036F124(v32))
      {
        v33 = v31[44];
        v34 = [v33 UTF8String];

        LODWORD(a10) = 136315650;
        *(&a10 + 4) = "[KmlFriendSharingManager initWithUUID:]";
        sub_10036F4A8();
        sub_100390948();
        *(&a11 + 4) = v34;
        sub_100390ABC(&_mh_execute_header, v35, v36, "%s : %i : %s : let's init", &a10);
      }

      v31[1] = 0;
      v31[2] = 0;
      v31[3] = 0;
      objc_storeStrong(v31 + 47, v27);
      v37 = [v31[47] UUIDString];
      v38 = v31[44];
      v31[44] = v37;

      *(v31 + 120) = 0;
      v31[48] = 255;
      v39 = KmlSignpostLogger();
      v31[33] = os_signpost_id_make_with_pointer(v39, v31[44]);

      v40 = sub_10038CE04();
      v41 = v31[36];
      v31[36] = v40;

      v42 = objc_alloc_init(KmlSharingInvitationRecord);
      v43 = v31[32];
      v31[32] = v42;

      v44 = sub_10037E00C();
      v45 = v31[31];
      v31[31] = v44;

      v46 = [[KmlVersions alloc] initWithEndpoint:0];
      v47 = v31[28];
      v31[28] = v46;

      v31[5] = 0;
      v48 = KmlLogger();
      if (sub_10036DCF8(v48))
      {
        v49 = v31[44];
        v50 = [v49 UTF8String];

        LODWORD(a10) = 136315650;
        *(&a10 + 4) = "[KmlFriendSharingManager initWithUUID:]";
        sub_10036F4A8();
        sub_100390948();
        *(&a11 + 4) = v50;
        sub_100390B00();
        _os_log_impl(v51, v52, v53, v54, v55, 0x1Cu);
      }
    }
  }

  sub_100390CEC();
}

id sub_1003D0130(id a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v64.receiver = a1;
    v64.super_class = KmlFriendSharingManager;
    a1 = objc_msgSendSuper2(&v64, "init");
    if (a1)
    {
      v6 = KmlLogger();
      if (sub_10036DCF8(v6))
      {
        v7 = *(a1 + 44);
        v8 = [v7 UTF8String];

        sub_10036DCC4();
        v66 = 446;
        v67 = 2080;
        v68 = v8;
        sub_100390B00();
        _os_log_impl(v9, v10, v11, v12, v13, 0x1Cu);
      }

      v14 = [v4 copy];
      v15 = *(a1 + 32);
      *(a1 + 32) = v14;

      v16 = sub_1003C7D40(*(a1 + 32));
      v17 = *(a1 + 44);
      *(a1 + 44) = v16;

      v18 = sub_1003AD0FC(*(a1 + 32));
      v19 = *(a1 + 10);
      *(a1 + 10) = v18;

      v20 = sub_1003ACF68(*(a1 + 32));
      v21 = *(a1 + 46);
      *(a1 + 46) = v20;

      v22 = sub_1003AAA78(*(a1 + 32));
      v23 = *(a1 + 47);
      *(a1 + 47) = v22;

      v24 = sub_1003C7D34(*(a1 + 32));
      v25 = *(a1 + 45);
      *(a1 + 45) = v24;

      v26 = *(a1 + 45);
      v27 = kmlUtilDataForHexString();
      v28 = *(a1 + 13);
      *(a1 + 13) = v27;

      v29 = sub_1003C7D28(*(a1 + 32));
      sub_1003D057C(a1, v29);
      v30 = sub_1003AF3D8(*(a1 + 32));
      v31 = *(a1 + 18);
      *(a1 + 18) = v30;

      if (*(a1 + 18))
      {
        v32 = sub_1003DF2B8([KmlBindingAttestation alloc], *(a1 + 18));
        v33 = sub_1003BA3D0(v32);
        v34 = *(a1 + 29);
        *(a1 + 29) = v33;
      }

      v35 = *(a1 + 19);
      *(a1 + 19) = 0;

      *(a1 + 5) = sub_1003B85B8(*(a1 + 32));
      v36 = sub_1003BA3C4(*(a1 + 32));
      v37 = *(a1 + 7);
      *(a1 + 7) = v36;

      v38 = sub_1003BA3D0(*(a1 + 32));
      v39 = *(a1 + 21);
      *(a1 + 21) = v38;

      v40 = sub_1003BA3DC(*(a1 + 32));
      v41 = *(a1 + 22);
      *(a1 + 22) = v40;

      v42 = sub_1003C7D1C(*(a1 + 32));

      v43 = 0;
      if (v42)
      {
        v44 = sub_1003C7D1C(*(a1 + 32));
        v63 = 0;
        v45 = [DAAlishaKeyEncryptedRequest decodeWithData:v44 error:&v63];
        v43 = v63;
        v46 = *(a1 + 25);
        *(a1 + 25) = v45;
      }

      v47 = sub_1003BA3F8(*(a1 + 32));

      if (v47)
      {
        v48 = sub_1003BA3F8(*(a1 + 32));
        v62 = v43;
        v49 = [DAAlishaKeyEncryptedRequest decodeWithData:v48 error:&v62];
        v50 = v62;

        v51 = *(a1 + 24);
        *(a1 + 24) = v49;

        v43 = v50;
      }

      *(a1 + 38) = sub_1003B8594(*(a1 + 32));
      *(a1 + 39) = sub_1003B85A0(*(a1 + 32));
      *(a1 + 320) = 0;
      v52 = sub_10038CE04();
      v53 = *(a1 + 36);
      *(a1 + 36) = v52;

      v54 = sub_10037E00C();
      v55 = *(a1 + 31);
      *(a1 + 31) = v54;

      *(a1 + 120) = 0;
      *(a1 + 48) = 255;
      v56 = KmlSignpostLogger();
      *(a1 + 33) = os_signpost_id_make_with_pointer(v56, *(a1 + 44));

      sub_1003D05A0(a1);
      v57 = KmlLogger();
      if (sub_10036F124(v57))
      {
        v58 = *(a1 + 44);
        v59 = [v58 UTF8String];

        sub_10036DCC4();
        v66 = 500;
        v67 = 2080;
        v68 = v59;
        sub_100390ABC(&_mh_execute_header, v60, v61, "%s : %i : %s : ready to roll", v65);
      }
    }
  }

  return a1;
}

uint64_t sub_1003D057C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if ((a2 - 1) <= 5)
    {
      *(result + 8) = qword_1004174F8[a2 - 1];
    }
  }

  return result;
}

void sub_1003D05A0(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 288);
    sub_100390854();
    sub_10036DC58();
    sub_10036DBF0(v2, v3, v4, v5, v6, sub_10039103C, &unk_1004C08D8, v7);
  }
}

void sub_1003D05F4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 288);
    sub_100057A60();
    v9 = 3221225472;
    v10 = sub_10038CF18;
    v11 = &unk_1004C24A8;
    v12 = a1;
    v13 = v5;
    v14 = v6;
    dispatch_async(v7, block);
  }
}

void *sub_1003D06A4(void *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (a1[20])
    {
      v6 = KmlLogger();
      if (sub_100057AEC(v6))
      {
        sub_10036BED0();
        v37 = 2159;
LABEL_19:
        sub_100390968();
        _os_log_impl(v21, v22, v23, v24, v25, 0x12u);
      }
    }

    else
    {
      if (a1[21] && a1[22])
      {
        if (v4 && ([v4 encryptedRequest], objc_claimAutoreleasedReturnValue()) && (objc_msgSend(sub_10036F8CC(), "ephemeralPublicKey"), v7 = objc_claimAutoreleasedReturnValue(), v7, v2, v7))
        {
          [[SESKeyPair alloc] initWithPublicKey:a1[21] secretKey:a1[22]];
          v8 = [sub_10036F8CC() encryptedRequest];
          v9 = [v5 ephemeralPublicKey];
          v10 = SESEndPointPrivacyDecryptionWithKeyPair();
          v11 = 0;
          v12 = a1[20];
          a1[20] = v10;

          if (KmlLogIsInternalBuild())
          {
            v13 = KmlLogger();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = a1[20];
              a1 = kmlUtilHexStringFromData();
              *v36 = 136315650;
              sub_10036DC30();
              v37 = 2178;
              v38 = 2112;
              v39 = v15;
              sub_100367454(&_mh_execute_header, v13, v16, "%s : %i : Decrypted PPID : %@", v36);
            }
          }

          v17 = KmlLogger();
          if (sub_10036F124(v17))
          {
            *v36 = 136315650;
            sub_10036DC30();
            v37 = 2179;
            v38 = 2112;
            v39 = v11;
            sub_100390ABC(&_mh_execute_header, v18, v19, "%s : %i : PPID decryption result: %@", v36);
          }

          a1 = sesErrorToKmlError();
        }

        else
        {
          v27 = KmlLogger();
          if (sub_100057AEC(v27))
          {
            sub_10036BED0();
            v37 = 2169;
            sub_100390968();
            _os_log_impl(v28, v29, v30, v31, v32, 0x12u);
          }

          v2 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v40 = NSLocalizedDescriptionKey;
          v33 = a1[141];
          KmlErrorString();
          v34 = [sub_100372244() stringWithUTF8String:?];
          v41 = v34;
          v35 = [NSDictionary dictionaryWithObjects:&v41 forKeys:&v40 count:1];
          a1 = [NSError errorWithDomain:v2 code:219 userInfo:v35];
        }

        goto LABEL_21;
      }

      v20 = KmlLogger();
      if (sub_100057AEC(v20))
      {
        sub_10036BED0();
        v37 = 2164;
        goto LABEL_19;
      }
    }

    a1 = 0;
LABEL_21:
  }

  return a1;
}

void sub_1003D0A54(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 288);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10038FCA8;
    v3[3] = &unk_1004C2B00;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

void sub_1003D0AD0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 288);
    sub_1000167BC();
    sub_1003674E4();
    v5[2] = sub_10038D170;
    v5[3] = &unk_1004C22F0;
    v5[4] = a1;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

void sub_1003D0B5C(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (!v4)
    {
      goto LABEL_6;
    }

    v6 = [v4 genericData];
    [v6 message];
    objc_claimAutoreleasedReturnValue();
    v7 = sub_1003674F0();
    v8 = sub_1003D1AF0(v7, v2);

    if (v8)
    {
      v9 = *(a1 + 48);
      *(a1 + 48) = 0;

      v10 = [v5 genericData];
      v11 = [v10 sharingIdentifier];
      v12 = *(a1 + 352);
      *(a1 + 352) = v11;

      v13 = [v5 genericData];
      v14 = [v13 message];
      sub_1003ADB68(*(a1 + 256), v14);

      sub_1003C7DD0(*(a1 + 256), *(a1 + 352));
      sub_1003ABB00(*(a1 + 256), *(a1 + 368));
      v15 = [v5 additionalData];

      if (v15)
      {
        v23 = [v5 additionalData];
        v24 = [v23 sharingSessionUUID];
        v25 = *(a1 + 376);
        *(a1 + 376) = v24;

        v26 = [v5 additionalData];
        *(a1 + 384) = [v26 targetDeviceType];
      }

      else
      {
        *(a1 + 384) = 255;
      }

      v27 = *(a1 + 376);
      if (!v27)
      {
        v28 = +[NSUUID UUID];
        v29 = *(a1 + 376);
        *(a1 + 376) = v28;

        v27 = *(a1 + 376);
      }

      sub_1003AAB7C(*(a1 + 256), v27);
      v21 = a1;
      v22 = 3;
    }

    else
    {
LABEL_6:
      v16 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v30 = NSLocalizedDescriptionKey;
      v17 = [NSString stringWithUTF8String:KmlErrorString()];
      v31 = v17;
      v18 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v19 = [NSError errorWithDomain:v16 code:109 userInfo:v18];
      v20 = *(a1 + 272);
      *(a1 + 272) = v19;

      v21 = a1;
      if (*(a1 + 241) == 1)
      {
        v22 = 42;
      }

      else
      {
        v22 = 44;
      }
    }

    sub_1003D0A54(v21, v22);
  }
}

void sub_1003D0DF0(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = *(a1 + 288);
    sub_1000167BC();
    sub_1003674E4();
    v11[2] = sub_10038D2CC;
    v11[3] = &unk_1004D1B40;
    v11[4] = a1;
    v12 = v9;
    v13 = v8;
    v14 = v7;
    dispatch_async(v10, v11);
  }
}

void *sub_1003D0EC4(void *a1, uint64_t a2, int a3)
{
  v3 = a1;
  if (a1)
  {
    v4 = a2;
    if (a2 == 2 || a2 == 7)
    {
      v10 = [[DACarKeyGenericCrossPlatformSharingData alloc] initWithSharingIdentifier:a1[44] friendKeyIdentifier:a1[45] sharingMessageType:a2 message:a1[7]];
      v7 = [[DACarKeyAdditionalCrossPlatformSharingData alloc] initWithSharingSessionUUID:v3[47] bindingAttestation:v3[18] targetDeviceType:v3[48] initiatorIdsPseudonym:0];
      v8 = 0;
      if (a3)
      {
        v9 = KmlLogger();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          sub_10036DB8C();
          v20 = 2796;
          _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "%s : %i : Including private data in signing request", v19, 0x12u);
        }

        v8 = [[DACarKeyPrivateCrossPlatformSharingData alloc] initWithVehicleEnteredPasscode:0 pairedEntityIdentifier:v3[42]];
      }

      v3 = [[DACarKeySharingMessage alloc] initWithGenericCrossPlatformSharingData:v10 additionalData:v7 privateData:v8];
    }

    else
    {
      v10 = KmlLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v19[0] = 136315650;
        sub_1003672C0();
        v20 = 2777;
        v21 = v12;
        v22 = v4;
        sub_1003909D4();
        _os_log_impl(v13, v14, v15, v16, v17, 0x18u);
      }

      v3 = 0;
    }
  }

  return v3;
}

void sub_1003D10A4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 288);
    sub_100390854();
    sub_10036DC58();
    sub_10036DBF0(v2, v3, v4, v5, v6, sub_10038D6A0, &unk_1004C08D8, v7);
  }
}

void sub_1003D10F8(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 360);
    SESEndPointDelete();
    v3 = 0;
    v4 = KmlLogger();
    v5 = v4;
    if (v3)
    {
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v6 = *(a1 + 352);
        [v6 UTF8String];
        v7 = *(a1 + 96);
        v8 = *(a1 + 360);

        v19 = 136316418;
        sub_10036DC30();
        sub_100390948();
        sub_100390B84();
        v20 = v9;
        v21 = v3;
        v10 = &_mh_execute_header;
        v11 = "%s : %i : %s : Failed to delete key with name: %@, and idStr: %@, due to %@";
        v12 = &v19;
        v13 = v5;
        v14 = OS_LOG_TYPE_ERROR;
        v15 = 58;
LABEL_7:
        _os_log_impl(v10, v13, v14, v11, v12, v15);
      }
    }

    else if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v16 = *(a1 + 352);
      [v16 UTF8String];
      v17 = *(a1 + 96);
      v18 = *(a1 + 360);

      v19 = 136316162;
      sub_10036DC30();
      sub_100390948();
      sub_100390B84();
      sub_100390968();
      v15 = 48;
      goto LABEL_7;
    }
  }
}

void sub_1003D1284(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 288);
    sub_100390854();
    sub_10036DC58();
    sub_10036DBF0(v2, v3, v4, v5, v6, sub_100390D1C, &unk_1004C08D8, v7);
  }
}

dispatch_queue_t *sub_1003D12D8(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(a1[36]);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10038D98C;
    v17 = sub_10038D99C;
    v18 = 0;
    v4 = a1[36];
    sub_100390854();
    sub_10036DC58();
    v8 = sub_10038D9A4;
    v9 = &unk_1004D21D8;
    v10 = a1;
    v12 = v5;
    v11 = v3;
    dispatch_sync(v4, block);
    a1 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

void *sub_1003D13E4(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    v4 = v3[26];
    if (a2 && !v4)
    {
      *a2 = v3[35];
      v4 = v3[26];
    }

    v5 = v4;
    v6 = sub_10036F8CC();
    objc_sync_exit(v6);
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

void *sub_1003D145C(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    v4 = v3[24];
    if (a2 && !v4)
    {
      *a2 = v3[35];
      v4 = v3[24];
    }

    v5 = v4;
    v6 = sub_10036F8CC();
    objc_sync_exit(v6);
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

void *sub_1003D14D4(void *a1, void *a2)
{
  if (a1)
  {
    v3 = a1;
    objc_sync_enter(v3);
    v4 = v3[25];
    if (a2 && !v4)
    {
      *a2 = v3[35];
      v4 = v3[25];
    }

    v5 = v4;
    v6 = sub_10036F8CC();
    objc_sync_exit(v6);
  }

  else
  {
    a2 = 0;
  }

  return a2;
}

void sub_1003D154C(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 288));
    v4 = *(a1 + 288);
    sub_1000167BC();
    sub_1003674E4();
    v5[2] = sub_10038E778;
    v5[3] = &unk_1004C22F0;
    v6 = v3;
    v7 = a1;
    dispatch_sync(v4, v5);
  }
}

void sub_1003D15DC(uint64_t a1)
{
  if (a1)
  {
    v3 = KmlLogger();
    if (sub_100057AEC(v3))
    {
      v4 = *(a1 + 352);
      [v4 UTF8String];
      v5 = *(a1 + 352);

      sub_10036BED0();
      sub_1003908FC();
      sub_100390BB8();
      *(&v36[4] + 6) = v5;
      sub_100390968();
      _os_log_impl(v6, v7, v8, v9, v10, 0x26u);
    }

    v11 = sub_1003D88CC(a1);
    sub_1003C7DE0(*(a1 + 256), v11);
    sub_1003C7DC0(*(a1 + 256), *(a1 + 360));
    sub_1003C7DEC(*(a1 + 256), *(a1 + 304));
    sub_1003C7DF8(*(a1 + 256), *(a1 + 312));
    sub_1003C7E04(*(a1 + 256), *(a1 + 320));
    sub_1003C7E10(*(a1 + 256), *(a1 + 40));
    if (*(a1 + 8) < 24)
    {
      sub_1003BE4F4(*(a1 + 256), *(a1 + 144));
      sub_1003BAE64(*(a1 + 256), *(a1 + 56));
      sub_1003C7D90(*(a1 + 256), *(a1 + 168));
      sub_1003C7DA0(*(a1 + 256), *(a1 + 176));
      v24 = *(a1 + 200);
      if (v24)
      {
        v36[0] = 0;
        v25 = [v24 encodeWithError:v36];
        v26 = v36[0];
        sub_1003BA3E8(*(a1 + 256), v25);
      }

      else
      {
        v27 = sub_100390B48();
        sub_1003BA3E8(v27, v28);
        v26 = 0;
      }

      v29 = *(a1 + 192);
      if (v29)
      {
        v35 = v26;
        v30 = [v29 encodeWithError:&v35];
        v31 = v35;

        sub_1003C7DB0(*(a1 + 256), v30);
        v26 = v31;
      }

      else
      {
        v32 = sub_100390B48();
        sub_1003C7DB0(v32, v33);
      }
    }

    else
    {
      v12 = sub_100390B48();
      sub_1003BE4F4(v12, v13);
      v14 = sub_100390B48();
      sub_1003BAE64(v14, v15);
      v16 = sub_100390B48();
      sub_1003C7D90(v16, v17);
      v18 = sub_100390B48();
      sub_1003C7DA0(v18, v19);
      v20 = sub_100390B48();
      sub_1003BA3E8(v20, v21);
      v22 = sub_100390B48();
      sub_1003C7DB0(v22, v23);
    }

    v34 = sub_100378CC8();
    sub_1003C811C(v34, *(a1 + 256));
  }
}

dispatch_queue_t *sub_1003D1830(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(a1[36]);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10038D98C;
    v17 = sub_10038D99C;
    v18 = 0;
    v4 = a1[36];
    sub_100390854();
    sub_10036DC58();
    v8 = sub_100390D28;
    v9 = &unk_1004D1EE8;
    v12 = v5;
    v10 = a1;
    v11 = v3;
    dispatch_sync(v4, block);
    a1 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

dispatch_queue_t *sub_1003D193C(dispatch_queue_t *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(a1[36]);
    v13 = 0;
    v14 = &v13;
    v15 = 0x3032000000;
    v16 = sub_10038D98C;
    v17 = sub_10038D99C;
    v18 = 0;
    v4 = a1[36];
    sub_100057A60();
    v7 = 3221225472;
    v8 = sub_10038E7F8;
    v9 = &unk_1004D1C80;
    v10 = a1;
    v11 = v3;
    v12 = &v13;
    dispatch_sync(v4, block);
    a1 = v14[5];

    _Block_object_dispose(&v13, 8);
  }

  return a1;
}

void sub_1003D1A48(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 288);
    sub_100390854();
    sub_10036DC58();
    sub_10036DBF0(v2, v3, v4, v5, v6, sub_100390094, &unk_1004C08D8, v7);
  }
}

void sub_1003D1A9C(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 288);
    sub_100390854();
    sub_10036DC58();
    sub_10036DBF0(v2, v3, v4, v5, v6, sub_100390D78, &unk_1004C08D8, v7);
  }
}

uint64_t sub_1003D1AF0(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = objc_alloc_init(KeySharingInvitation);
    v6 = sub_1003BEDDC(v5, v4);
    if (v6)
    {
      objc_storeStrong((a1 + 32), v5);
      v7 = sub_1003AAA6C(*(a1 + 32));
      v8 = sub_1003ACF68(v7);
      v2 = sub_1003DC544(v8);

      v9 = sub_1003AAA6C(*(a1 + 32));
      v10 = sub_1003ACF68(v9);
      v11 = sub_1003DEEC8(v10);

      v12 = [[KmlRoutingInformation alloc] initWithInformation:v11 readerIdentifier:v2];
      v13 = *(a1 + 112);
      *(a1 + 112) = v12;

      v14 = [*(a1 + 112) getReaderInformation];
      v15 = *(a1 + 336);
      *(a1 + 336) = v14;

      v16 = [*(a1 + 112) manufacturer];
      v17 = *(a1 + 120);
      *(a1 + 120) = v16;

      v18 = KmlLogger();
      if (sub_100377D6C(v18))
      {
        v19 = *(a1 + 352);
        v20 = [v19 UTF8String];
        v21 = *(a1 + 120);

        sub_10036DB8C();
        sub_1003672B0();
        v31 = v20;
        v32 = 2112;
        v33 = v21;
        sub_100390C18(&_mh_execute_header, v22, v23, "%s : %i : %s : Received valid sharing invitation for manufacturer - %@", v30);
      }

      kmlUtilLogLargeData();
    }

    else
    {
      v24 = KmlLogger();
      if (sub_10036F124(v24))
      {
        v25 = *(a1 + 352);
        v26 = [v25 UTF8String];

        *v30 = 136315650;
        sub_1003672C0();
        sub_1003672B0();
        v31 = v26;
        sub_100390ABC(&_mh_execute_header, v27, v28, "%s : %i : %s : Received sharing invitation is invalid", v30);
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id *sub_1003D1D60(id *a1, void *a2)
{
  v5 = a2;
  if (a1)
  {
    v6 = KmlLogger();
    if (sub_10036DCF8(v6))
    {
      v3 = a1[44];
      v7 = [v3 UTF8String];
      v8 = kmlUtilHexStringFromData();
      sub_10036DB78();
      sub_1003672B0();
      v23 = v7;
      v24 = 2112;
      v25 = v9;
      sub_100390B00();
      _os_log_impl(v10, v11, v12, v13, v14, 0x26u);
    }

    v15 = objc_alloc_init(SharingSignedResponse);
    if (sub_1003B99F4(v15, v5))
    {
      a1 = v15;
    }

    else
    {
      v16 = KmlLogger();
      if (sub_10036F124(v16))
      {
        v17 = a1[44];
        v18 = [v17 UTF8String];

        sub_10036DB78();
        sub_1003672B0();
        v23 = v18;
        sub_100390ABC(&_mh_execute_header, v19, v20, "%s : %i : %s : FriendSharingManager: Still waiting for signed response", v22);
      }

      a1 = 0;
    }
  }

  return a1;
}

void sub_1003D1F10(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_100390A64([*(a1 + 224) agreedKmlSharingVersion]);
    if (sub_10037E34C(*(a1 + 248), *(a1 + 80)))
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    v77 = v3;
    v4 = sub_1003AAA6C(*(a1 + 32));
    v5 = sub_1003ACF68(v4);
    v6 = sub_1003DEBC4(v5);

    v83 = v6;
    v7 = [[KmlDeviceConfigurationData alloc] initWithData:v6];
    v8 = [v7 readerSupportsNfc];
    if ([v7 readerSupportsUwb])
    {
      v9 = 2;
    }

    else
    {
      v9 = 0;
    }

    v10 = sub_1003AAA6C(*(a1 + 32));
    v11 = sub_1003ACF68(v10);
    v12 = sub_1003DF01C() != 0;

    v13 = 2 * v12;
    if (v2)
    {
      if (*(a1 + 312))
      {
        v14 = v13 | 4;
      }

      else
      {
        v14 = 2 * v12;
      }

      if (*(a1 + 320) == 1)
      {
        v14 |= 8uLL;
      }
    }

    else if ([v7 sharingPasswordLength])
    {
      v14 = v13 + 1;
    }

    else
    {
      v14 = 2 * v12;
    }

    v79 = v14;
    v15 = sub_1003AAA6C(*(a1 + 32));
    v16 = sub_1003ACF68(v15);
    v17 = sub_1003DF1BC(v16);

    v66 = v17 != 0;
    if (v17)
    {
      v18 = [v17 u16BE:7];
    }

    else
    {
      v18 = 0;
    }

    v81 = v17;
    v82 = v7;
    v19 = *(a1 + 272);
    if (v19)
    {
      v20 = 16;
      if (*(a1 + 240))
      {
        v20 = 24;
      }

      v21 = *(a1 + v20);
      v68 = [v19 code];
    }

    else
    {
      v68 = 0;
      v21 = *(a1 + 8);
    }

    v22 = v8;
    v23 = *(a1 + 112);
    if (v23)
    {
      v24 = [v23 manufacturer];
      v25 = [v24 copy];

      v26 = [*(a1 + 112) brand];
      v27 = [v26 copy];

      v28 = [*(a1 + 112) regionString];
      v29 = [v28 copy];
    }

    else
    {
      v30 = KmlLogger();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v87 = "[KmlFriendSharingManager reportSharingEventToCA]";
        v88 = 1024;
        v89 = 1485;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s : %i : No routing info available", buf, 0x12u);
      }

      v25 = @"Unknown";
      v27 = @"Unknown";
      v29 = @"Unknown";
    }

    if (!*(a1 + 40))
    {
      v31 = 1;
      if (!*(a1 + 312))
      {
        v31 = 2;
      }

      *(a1 + 40) = v31;
    }

    v32 = v9 | v22;
    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 224) agreedKmlVehicleVersion], 768))
    {
      v33 = 0x80;
    }

    else
    {
      v33 = 0;
    }

    v70 = v33;
    v34 = sub_1003AAA6C(*(a1 + 32));
    v35 = sub_1003ACF68(v34);
    sub_1003DE58C(v35);
    v75 = kmlUtilKeyClassOriginBitmap();

    v36 = [*(a1 + 224) ourSupportedFrameworkVersionsAsCAString];
    v37 = *(a1 + 384);
    if (v37 == 255)
    {
      v38 = MGGetSInt32Answer();
      if (v38 == 1)
      {
        v37 = 1;
      }

      else
      {
        v37 = 2 * (v38 == 6);
      }
    }

    v39 = *(a1 + 80);
    if (v39)
    {
      if ([v39 isEqualToString:@"NON_OWNER_INTRA_ACCOUNT_IDS"])
      {
        v61 = 1;
      }

      else
      {
        sub_10037E00C();
        v41 = v40 = v36;
        v61 = sub_10037E34C(v41, *(a1 + 80));

        v36 = v40;
      }
    }

    else
    {
      v61 = 0;
    }

    v58 = v36;
    v84[0] = @"destination";
    v78 = [NSNumber numberWithUnsignedInt:v77];
    v85[0] = v78;
    v85[1] = &off_1004DCEB8;
    v84[1] = @"type";
    v84[2] = @"targetDeviceType";
    v74 = [NSNumber numberWithUnsignedInt:v37];
    v85[2] = v74;
    v84[3] = @"step";
    v72 = [NSNumber numberWithInteger:v21];
    v85[3] = v72;
    v85[4] = v29;
    v76 = v29;
    v84[4] = @"dataCenterCode";
    v84[5] = @"HUPDataSource";
    v67 = [NSNumber numberWithUnsignedInteger:v66];
    v85[5] = v67;
    v84[6] = @"vehicleCapabilities";
    v65 = [NSNumber numberWithUnsignedShort:v18];
    v85[6] = v65;
    v85[7] = v25;
    v73 = v25;
    v84[7] = @"manufacturer";
    v84[8] = @"brand";
    v71 = v27;
    v85[8] = v27;
    v84[9] = @"transportSupported";
    v64 = [NSNumber numberWithUnsignedInteger:v32];
    v85[9] = v64;
    v84[10] = @"totalSharedKeysOnFriendDevice";
    v63 = [NSNumber numberWithInteger:*(a1 + 296)];
    v85[10] = v63;
    v84[11] = @"status";
    v69 = [NSNumber numberWithUnsignedInt:v68];
    v85[11] = v69;
    v84[12] = @"activationOption";
    v80 = [NSNumber numberWithUnsignedInteger:v79];
    v85[12] = v80;
    v84[13] = @"sharingTransport";
    v62 = [NSNumber numberWithInteger:*(a1 + 40)];
    v85[13] = v62;
    v84[14] = @"pinAttempts";
    v60 = [NSNumber numberWithUnsignedInteger:*(a1 + 312) + *(a1 + 304)];
    v85[14] = v60;
    v84[15] = @"appleToApple";
    v59 = [NSNumber numberWithInt:*(a1 + 80) != 0];
    v85[15] = v59;
    v84[16] = @"senderSupportedFrameworkVersions";
    v42 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%04X", [*(a1 + 224) agreedKmlSharingVersion]);
    v57 = v42;
    v43 = &stru_1004D9380;
    if (v36)
    {
      v43 = v36;
    }

    v85[16] = v42;
    v85[17] = v43;
    v84[17] = @"receiverSupportedFrameworkVersions";
    v84[18] = @"attestationChainLength";
    v56 = sub_1003BA3F8(*(a1 + 64));
    v55 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v56 count]);
    v85[18] = v55;
    v84[19] = @"certificateChainLength";
    v54 = sub_1003AD0FC(*(a1 + 32));
    sub_1003BBBD8(v54);
    v44 = [sub_100390A98() numberWithUnsignedChar:?];
    v85[19] = v44;
    v84[20] = @"accountRole";
    v45 = sub_1003AAA78(*(a1 + 32));
    sub_1003B918C(v45);
    v46 = [sub_100390A98() numberWithUnsignedShort:?];
    v85[20] = v46;
    v84[21] = @"isIntraAccountShare";
    v47 = [NSNumber numberWithBool:v61];
    v85[21] = v47;
    v85[22] = &off_1004DCED0;
    v84[22] = @"wasUserAuthRequired";
    v84[23] = @"mailboxVersion";
    v48 = [NSNumber numberWithUnsignedChar:v70];
    v85[23] = v48;
    v84[24] = @"frameworkVersion";
    [*(a1 + 224) agreedKmlSharingVersion];
    v49 = [sub_100390A98() numberWithUnsignedShort:?];
    v85[24] = v49;
    v84[25] = @"accessProfile";
    v50 = sub_1003AAA78(*(a1 + 32));
    v51 = [NSNumber numberWithUnsignedChar:sub_1003B9198(v50)];
    v85[25] = v51;
    v84[26] = @"keyClassOriginBitmap";
    v52 = [NSNumber numberWithUnsignedChar:v75];
    v85[26] = v52;
    v53 = [NSDictionary dictionaryWithObjects:v85 forKeys:v84 count:27];

    sub_100368DC8(KmlAnalyticsLogger, v53);
  }
}

unint64_t sub_1003D2814(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  [KmlTlv TLVsWithData:a2];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = v11 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    while (2)
    {
      for (i = 0; i != v3; i = i + 1)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        if ([v6 tag] == 40727)
        {
          v3 = [v6 valueAsUnsignedShort];
          goto LABEL_12;
        }
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_12:

  return v3;
}

void sub_1003D294C(uint64_t a1, NSObject *a2)
{
  if (a1)
  {
    v5 = KmlLogger();
    if (sub_10036DCF8(v5))
    {
      v6 = *(a1 + 352);
      v7 = [v6 UTF8String];
      v8 = *(a1 + 8);

      sub_100390894();
      sub_100390924();
      *&v294[4] = v7;
      *&v294[12] = 2048;
      *&v294[14] = v8;
      *&v294[22] = 2048;
      v295 = a2;
      sub_100390B00();
      _os_log_impl(v9, v10, v11, v12, v13, 0x30u);
    }

    v21 = *(a1 + 8);
    *(a1 + 8) = a2;
    *(a1 + 16) = v21;
    switch(a2)
    {
      case 0x15uLL:
        v89 = KmlLogger();
        if (sub_100057AEC(v89))
        {
          v90 = *(a1 + 352);
          [v90 UTF8String];

          sub_100390894();
          sub_1003908A8();
          sub_100390958();
          _os_log_impl(v91, v92, v93, v94, v95, 0x1Cu);
        }

        sub_1003CCDC4(*(a1 + 248), a1, *(a1 + 352));
        if (*(a1 + 368))
        {
          v87 = a1;
          if (*(a1 + 240) == 1)
          {
            v88 = 43;
          }

          else
          {
            v88 = 23;
          }

          goto LABEL_100;
        }

        sub_1003D15DC(a1);
        sub_1003CD1B8(*(a1 + 248), *(a1 + 352));
        return;
      case 0x16uLL:
        v22 = KmlLogger();
        if (sub_100057AEC(v22))
        {
          v23 = *(a1 + 352);
          [v23 UTF8String];

          sub_100390894();
          sub_1003908A8();
          sub_100390958();
          _os_log_impl(v24, v25, v26, v27, v28, 0x1Cu);
        }

        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100390910();
        if (!(!v30 & v29) && os_signpost_enabled(a2))
        {
          sub_1003908E8();
          _os_signpost_emit_with_name_impl(v31, v32, v33, v34, v35, v36, v37, 2u);
        }

        sub_1003CD23C(*(a1 + 248), *(a1 + 56), 0, *(a1 + 144), *(a1 + 352), *(a1 + 360), *(a1 + 376), *(a1 + 80), 1, 2);
        return;
      case 0x17uLL:
        v131 = KmlLogger();
        if (sub_100057AEC(v131))
        {
          v132 = *(a1 + 352);
          [v132 UTF8String];

          sub_100390894();
          sub_1003908A8();
          sub_100390958();
          _os_log_impl(v133, v134, v135, v136, v137, 0x1Cu);
        }

        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100390910();
        if (!(!v30 & v29) && os_signpost_enabled(a2))
        {
          sub_1003908E8();
          _os_signpost_emit_with_name_impl(v138, v139, v140, v141, v142, v143, v144, 2u);
        }

LABEL_132:

        goto LABEL_133;
      case 0x18uLL:
      case 0x19uLL:
      case 0x1AuLL:
      case 0x1BuLL:
      case 0x1CuLL:
      case 0x1DuLL:
      case 0x1EuLL:
      case 0x22uLL:
      case 0x23uLL:
      case 0x24uLL:
      case 0x25uLL:
      case 0x26uLL:
      case 0x27uLL:
      case 0x28uLL:
        return;
      case 0x1FuLL:
        v96 = KmlLogger();
        if (sub_100057AEC(v96))
        {
          v97 = *(a1 + 352);
          [v97 UTF8String];

          sub_100390894();
          sub_1003908A8();
          sub_100390958();
          _os_log_impl(v98, v99, v100, v101, v102, 0x1Cu);
        }

        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100390910();
        if (!(!v30 & v29) && os_signpost_enabled(a2))
        {
          sub_1003908E8();
          _os_signpost_emit_with_name_impl(v103, v104, v105, v106, v107, v108, v109, 2u);
        }

        v110 = sub_1003D6944(a1);
        v111 = *(a1 + 272);
        *(a1 + 272) = v110;

        if (!*(a1 + 272))
        {
          v87 = a1;
          v88 = 32;
          goto LABEL_100;
        }

        v221 = KmlLogger();
        if (sub_10036F5DC(v221))
        {
          [*(a1 + 352) UTF8String];
          sub_100390C4C();
          sub_100390894();
          sub_1003908A8();
          sub_100390A04();
          sub_100390A58();
          sub_100390B60(v222, v223, v224, v225, v226);
        }

        v227 = @"Friend failed to prepare mailbox data";
        v228 = @"KMLMailboxPreparationError";
        goto LABEL_98;
      case 0x20uLL:
        v145 = KmlLogger();
        if (sub_100057AEC(v145))
        {
          v146 = *(a1 + 352);
          [v146 UTF8String];

          sub_100390894();
          sub_1003908A8();
          sub_100390958();
          _os_log_impl(v147, v148, v149, v150, v151, 0x1Cu);
        }

        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100390910();
        if (!(!v30 & v29) && os_signpost_enabled(a2))
        {
          sub_1003908E8();
          _os_signpost_emit_with_name_impl(v152, v153, v154, v155, v156, v157, v158, 2u);
        }

        sub_1003D7668(a1);
        v159 = sub_1003D7C98(a1);
        v160 = *(a1 + 272);
        *(a1 + 272) = v159;

        if (*(a1 + 272))
        {
          v229 = KmlLogger();
          if (sub_10036F5DC(v229))
          {
            [*(a1 + 352) UTF8String];
            sub_100390C4C();
            sub_100390894();
            sub_1003908A8();
            sub_100390A04();
            sub_100390A58();
            sub_100390B60(v230, v231, v232, v233, v234);
          }

          v227 = @"Friend failed to create tracking request";
          v228 = @"KMLTrackingRequestCreationError";
LABEL_98:
          [SESTapToRadar requestTapToRadarKML:v227 client:v228];
LABEL_99:
          v87 = a1;
          v88 = 51;
        }

        else
        {
          v87 = a1;
          v88 = 33;
        }

LABEL_100:
        sub_1003D0A54(v87, v88);
        break;
      case 0x21uLL:
        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100390910();
        if (!(!v30 & v29) && os_signpost_enabled(a2))
        {
          sub_1003908E8();
          _os_signpost_emit_with_name_impl(v112, v113, v114, v115, v116, v117, v118, 2u);
        }

        v119 = [[DAKeyInformation alloc] initWithEndpoint:*(a1 + 88)];
        v120 = *(a1 + 344);
        *(a1 + 344) = v119;

        v121 = KmlLogger();
        if (sub_100057AEC(v121))
        {
          v122 = *(a1 + 352);
          [v122 UTF8String];
          v123 = *(a1 + 344);

          sub_100390894();
          sub_1003908A8();
          sub_100390A04();
          sub_100390958();
          _os_log_impl(v124, v125, v126, v127, v128, 0x26u);
        }

        v129 = +[KmlClientReporterFactory getReporter];
        [v129 finishedSharingForKey:*(a1 + 344) result:0];

        a2 = [[DAShareRecipientResult alloc] initCredentialProvisionedResultWithCredentialIdentifier:*(a1 + 360) keyInformation:*(a1 + 344)];
        WeakRetained = objc_loadWeakRetained((a1 + 328));
        [WeakRetained handleRecipientMessageResult:a2];

        goto LABEL_124;
      case 0x29uLL:
        v52 = KmlLogger();
        if (sub_100057AEC(v52))
        {
          [*(a1 + 352) UTF8String];
          sub_100390C4C();
          sub_100390894();
          sub_1003908A8();
          sub_100390A04();
          sub_100390958();
          _os_log_impl(v53, v54, v55, v56, v57, 0x26u);
        }

        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100390910();
        if (!(!v30 & v29) && os_signpost_enabled(a2))
        {
          v58 = *(a1 + 272);
          sub_100390BA0();
          sub_1003908E8();
          _os_signpost_emit_with_name_impl(v59, v60, v61, v62, v63, v64, v65, 0xCu);
        }

        a2 = +[KmlClientReporterFactory getReporter];
        [a2 reportUnusableInvitation:*(a1 + 352) reason:*(a1 + 272)];
LABEL_124:
        sub_1003D1F10(a1);
        v237 = sub_100390C64();
LABEL_125:
        sub_1003D0A54(v237, v236);
LABEL_126:

        return;
      case 0x2AuLL:
        v66 = KmlLogger();
        if (sub_10036F5DC(v66))
        {
          [*(a1 + 352) UTF8String];
          sub_100390C4C();
          sub_100390894();
          sub_1003908A8();
          sub_100390A04();
          sub_100390A58();
          sub_100390B60(v67, v68, v69, v70, v71);
        }

        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100390910();
        if (!(!v30 & v29) && os_signpost_enabled(a2))
        {
          v72 = *(a1 + 272);
          sub_100390BA0();
          sub_1003908E8();
          _os_signpost_emit_with_name_impl(v73, v74, v75, v76, v77, v78, v79, 0xCu);
        }

        [SESTapToRadar requestTapToRadarKML:@"Friend failed to start sharing exchange" client:@"KMLFriendSharingStartError"];
        sub_1003D6794(a1);
        goto LABEL_99;
      case 0x2BuLL:
        KmlSignpostLogger();
        objc_claimAutoreleasedReturnValue();
        sub_100390910();
        if (!(!v30 & v29) && os_signpost_enabled(a2))
        {
          v161 = *(a1 + 272);
          sub_100390BA0();
          sub_1003908E8();
          _os_signpost_emit_with_name_impl(v162, v163, v164, v165, v166, v167, v168, 0xCu);
        }

        sub_1003D15DC(a1);
        sub_1003D1F10(a1);
        sub_1003D8290(a1);
        return;
      case 0x2CuLL:
        v80 = KmlLogger();
        if (sub_10036F5DC(v80))
        {
          [*(a1 + 352) UTF8String];
          sub_100390C4C();
          sub_100390894();
          sub_1003908A8();
          sub_100390A04();
          sub_100390A58();
          sub_100390B60(v81, v82, v83, v84, v85);
        }

        [SESTapToRadar requestTapToRadarKML:@"Friend failed to parse invite" client:@"KMLInvitationParsingError"];
        v86 = objc_loadWeakRetained((a1 + 328));
        [v86 handleCrossPlatformParseInvitationStatus:*(a1 + 272)];

        v87 = sub_100390C64();
        goto LABEL_100;
      default:
        switch(a2)
        {
          case 1uLL:
            KmlSignpostLogger();
            objc_claimAutoreleasedReturnValue();
            sub_100390910();
            if (!(!v30 & v29) && os_signpost_enabled(a2))
            {
              sub_1003908E8();
              _os_signpost_emit_with_name_impl(v199, v200, v201, v202, v203, v204, v205, 2u);
            }

            sub_1003D3AEC(a1);
            return;
          case 2uLL:
            v38 = KmlLogger();
            if (sub_100057AEC(v38))
            {
              v39 = *(a1 + 352);
              [v39 UTF8String];

              sub_100390894();
              sub_100390924();
              sub_100390958();
              _os_log_impl(v40, v41, v42, v43, v44, 0x1Cu);
            }

            goto LABEL_126;
          case 3uLL:
            sub_1003D3C34(a1, v14, v15, v16, v17, v18, v19, v20, v285, v286, v287, v288, v289, v290, v291, v292, v293, *v294, *&v294[8], *&v294[16], v295, v296, v297, v298, v299);
            return;
          case 4uLL:
          case 5uLL:
          case 6uLL:
          case 7uLL:
          case 8uLL:
          case 9uLL:
          case 0xAuLL:
            return;
          case 0xBuLL:
            v206 = *(a1 + 120);
            SESEndPointPreWarmForAlisha();
            sub_1003D4090(a1);
            if (!*(a1 + 368))
            {
              v207 = KmlLogger();
              if (sub_100057AEC(v207))
              {
                v208 = *(a1 + 352);
                [v208 UTF8String];

                sub_100390894();
                sub_1003908A8();
                sub_100390958();
                _os_log_impl(v209, v210, v211, v212, v213, 0x1Cu);
              }

              KmlSignpostLogger();
              objc_claimAutoreleasedReturnValue();
              sub_100390910();
              if (!(!v30 & v29) && os_signpost_enabled(a2))
              {
                sub_1003908E8();
                _os_signpost_emit_with_name_impl(v214, v215, v216, v217, v218, v219, v220, 2u);
              }

              a2 = +[KmlClientReporterFactory getReporter];
              [a2 didReceiveSharingInvitationWithIdentifier:*(a1 + 352) uuid:*(a1 + 376) metadata:*(a1 + 48) ownerIdsId:*(a1 + 80)];
              goto LABEL_132;
            }

            v253 = *(a1 + 241);
            v254 = KmlLogger();
            v255 = sub_100057AEC(v254);
            if (v253 == 1)
            {
              if (v255)
              {
                v256 = *(a1 + 352);
                [v256 UTF8String];

                sub_100390894();
                sub_1003908A8();
                sub_100390958();
                _os_log_impl(v257, v258, v259, v260, v261, 0x1Cu);
              }

              sub_1003D0A54(a1, 12);
              break;
            }

            if (v255)
            {
              v279 = *(a1 + 352);
              [v279 UTF8String];

              sub_100390894();
              sub_1003908A8();
              sub_100390958();
              _os_log_impl(v280, v281, v282, v283, v284, 0x1Cu);
            }

            a2 = objc_loadWeakRetained((a1 + 328));
            [a2 handleCrossPlatformParseInvitationStatus:0];
            goto LABEL_132;
          case 0xCuLL:
            *(a1 + 296) = sub_100397680(KmlEndpointManager, @"FRND");
            v169 = KmlLogger();
            if (sub_100057AEC(v169))
            {
              v170 = *(a1 + 352);
              [v170 UTF8String];

              sub_100390894();
              sub_1003908A8();
              sub_100390958();
              _os_log_impl(v171, v172, v173, v174, v175, 0x1Cu);
            }

            sub_1003D15DC(a1);
            v176 = *(a1 + 272);
            *(a1 + 272) = 0;

            v177 = sub_1003D4594(a1);
            a2 = v177;
            if (v177)
            {
              v235 = v177;
              v178 = *(a1 + 272);
              *(a1 + 272) = v235;
            }

            else
            {
              sub_1003D627C(a1);
              sub_1003D6394();
              sub_1003D6584(a1);
              v178 = [NSString stringWithFormat:@"SigningRequest - %@", *(a1 + 352)];
              v179 = *(a1 + 56);
              kmlUtilLogLargeData();
            }

            if (*(a1 + 272))
            {
              v236 = 42;
            }

            else
            {
              v236 = 13;
            }

            v237 = a1;
            goto LABEL_125;
          case 0xDuLL:
            KmlSignpostLogger();
            objc_claimAutoreleasedReturnValue();
            sub_100390910();
            if (!(!v30 & v29) && os_signpost_enabled(a2))
            {
              sub_1003908E8();
              _os_signpost_emit_with_name_impl(v180, v181, v182, v183, v184, v185, v186, 2u);
            }

            v187 = [[DAKeyInformation alloc] initWithEndpoint:*(a1 + 88)];
            v188 = *(a1 + 344);
            *(a1 + 344) = v187;

            sub_1003D6794(a1);
            v189 = *(a1 + 368);
            v190 = KmlLogger();
            v191 = sub_100057AEC(v190);
            if (v189)
            {
              if (v191)
              {
                v238 = *(a1 + 352);
                [v238 UTF8String];

                sub_100390894();
                sub_1003908A8();
                sub_100390958();
                _os_log_impl(v239, v240, v241, v242, v243, 0x1Cu);
              }

              sub_1003D0A54(a1, 21);
            }

            else
            {
              if (v191)
              {
                v192 = *(a1 + 352);
                [v192 UTF8String];

                sub_100390894();
                sub_1003908A8();
                sub_100390958();
                _os_log_impl(v193, v194, v195, v196, v197, 0x1Cu);
              }

              sub_1003D15DC(a1);
            }

            if (!sub_1003F6F5C(v198))
            {
              return;
            }

            v244 = objc_opt_new();
            v245 = [v244 skipWaitingForBindingAttestation];

            if (!v245)
            {
              return;
            }

            v246 = KmlLogger();
            if (sub_100057AEC(v246))
            {
              v247 = *(a1 + 352);
              [v247 UTF8String];

              sub_100390894();
              sub_1003908A8();
              sub_100390958();
              _os_log_impl(v248, v249, v250, v251, v252, 0x1Cu);
            }

            v87 = a1;
            v88 = 21;
            goto LABEL_100;
          default:
            if (a2 == 51)
            {
              v262 = KmlLogger();
              if (sub_10036F5DC(v262))
              {
                v263 = *(a1 + 352);
                [v263 UTF8String];

                sub_100390894();
                sub_1003908A8();
                sub_100390A58();
                sub_10036F590(v264, v265, v266, v267, v268);
              }

              KmlSignpostLogger();
              objc_claimAutoreleasedReturnValue();
              sub_100390910();
              if (!(!v30 & v29) && os_signpost_enabled(0x33))
              {
                v269 = *(a1 + 272);
                sub_100390BA0();
                sub_1003908E8();
                _os_signpost_emit_with_name_impl(v270, v271, v272, v273, v274, v275, v276, 0xCu);
              }

              v277 = +[KmlClientReporterFactory getReporter];
              [v277 finishedSharingForKey:*(a1 + 344) result:*(a1 + 272)];

              a2 = [[DAShareRecipientResult alloc] initFailureResultWithCredentialIdentifier:*(a1 + 360) error:*(a1 + 272)];
              v278 = objc_loadWeakRetained((a1 + 328));
              [v278 handleRecipientMessageResult:a2];

              sub_1003D10F8(a1);
              goto LABEL_124;
            }

            if (a2 != 52)
            {
              return;
            }

            v45 = KmlLogger();
            if (sub_100057AEC(v45))
            {
              v46 = *(a1 + 352);
              [v46 UTF8String];

              sub_100390894();
              sub_1003908A8();
              sub_100390958();
              _os_log_impl(v47, v48, v49, v50, v51, 0x1Cu);
            }

            sub_1003CCFD8(*(a1 + 248), *(a1 + 352));
            break;
        }

LABEL_133:
        sub_1003D15DC(a1);
        return;
    }
  }
}

void sub_1003D3AEC(uint64_t a1)
{
  if (a1)
  {
    v3 = KmlLogger();
    if (sub_100057AEC(v3))
    {
      v4 = *(a1 + 352);
      [v4 UTF8String];

      sub_10036DC30();
      sub_1003908FC();
      sub_100390968();
      _os_log_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }

    v10 = [NSMutableData dataWithLength:32];
    v11 = *(a1 + 248);
    v12 = *(a1 + 352);
    v13 = *(a1 + 376);
    v14 = *(a1 + 80);
    v15 = MGGetSInt32Answer();
    v16 = 1;
    if (v15 == 6)
    {
      v16 = 2;
    }

    sub_1003CD23C(v11, v10, 0, 0, v12, 0, v13, v14, v16, 8);
  }
}

void sub_1003D3C34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, NSErrorUserInfoKey a9, void *a10, uint64_t a11, uint64_t a12, __int128 a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25)
{
  sub_100390D04();
  a24 = v28;
  a25 = v30;
  if (v29)
  {
    v31 = v29;
    v32 = KmlLogger();
    if (sub_100057AEC(v32))
    {
      v33 = *(v31 + 352);
      v26 = [v33 UTF8String];

      sub_100390978();
      sub_1003908FC();
      sub_100390968();
      _os_log_impl(v34, v35, v36, v37, v38, 0x1Cu);
    }

    v39 = MGGetSInt32Answer();
    if (v39 != 1)
    {
      if (v39 != 6)
      {
        goto LABEL_27;
      }

      v40 = *(v31 + 384);
      if (v40 != 255 && v40 != 2)
      {
        goto LABEL_27;
      }

      *(v31 + 384) = 2;
      v42 = KmlLogger();
      if (sub_100057AEC(v42))
      {
        goto LABEL_17;
      }

      goto LABEL_18;
    }

    v43 = *(v31 + 384);
    if (v43 == 255)
    {
LABEL_16:
      *(v31 + 384) = 1;
      v44 = KmlLogger();
      if (sub_100057AEC(v44))
      {
LABEL_17:
        v45 = *(v31 + 352);
        [v45 UTF8String];

        sub_100390978();
        sub_1003908FC();
        sub_100390968();
        _os_log_impl(v46, v47, v48, v49, v50, 0x1Cu);
      }

LABEL_18:

      v51 = v31;
      v52 = 11;
LABEL_36:
      sub_1003D0A54(v51, v52);
      goto LABEL_37;
    }

    if (v43 != 2)
    {
      if (v43 == 1)
      {
        goto LABEL_16;
      }

LABEL_27:
      v67 = KmlLogger();
      if (sub_100057AEC(v67))
      {
        v68 = *(v31 + 352);
        v26 = [v68 UTF8String];

        sub_100390978();
        sub_1003908FC();
        sub_100390968();
        _os_log_impl(v69, v70, v71, v72, v73, 0x1Cu);
      }

      if (*(v31 + 368))
      {
        v81 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        a9 = NSLocalizedDescriptionKey;
        v82 = v26[141];
        KmlErrorString();
        v83 = [sub_100372244() stringWithUTF8String:?];
        a10 = v83;
        [NSDictionary dictionaryWithObjects:&a10 forKeys:&a9 count:1];
        objc_claimAutoreleasedReturnValue();
        v84 = [sub_100390BAC() errorWithDomain:v81 code:115 userInfo:v27];
        v85 = *(v31 + 272);
        *(v31 + 272) = v84;

        v51 = v31;
        if (*(v31 + 241) == 1)
        {
          v52 = 42;
        }

        else
        {
          v52 = 44;
        }
      }

      else
      {
        v74 = KmlLogger();
        if (sub_100057AEC(v74))
        {
          v75 = *(v31 + 352);
          [v75 UTF8String];

          sub_100390978();
          sub_1003908FC();
          sub_100390968();
          _os_log_impl(v76, v77, v78, v79, v80, 0x1Cu);
        }

        sub_1003CD134(*(v31 + 248), *(v31 + 80));
        v51 = sub_100390C64();
      }

      goto LABEL_36;
    }

    if (*(v31 + 368))
    {
      goto LABEL_27;
    }

    v25 = +[NRPairedDeviceRegistry sharedInstance];
    v53 = [v25 getActivePairedDevice];

    v54 = KmlLogger();
    v55 = sub_100057AEC(v54);
    if (v53)
    {
      if (v55)
      {
        v26 = *(v31 + 352);
        v27 = [v26 UTF8String];

        sub_100390978();
        sub_100390948();
        *(&a13 + 4) = v27;
        sub_100390968();
        _os_log_impl(v62, v63, v64, v65, v66, 0x1Cu);
      }

      goto LABEL_27;
    }

    if (v55)
    {
      v56 = *(v31 + 352);
      [v56 UTF8String];

      sub_100390978();
      sub_1003908FC();
      sub_100390968();
      _os_log_impl(v57, v58, v59, v60, v61, 0x1Cu);
    }

    sub_1003D85F0(v31);
  }

LABEL_37:
  sub_100390CEC();
}

id sub_1003D4594(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = [KmlDeviceConfigurationData alloc];
    v3 = sub_1003AAA6C(*(v1 + 4));
    v4 = sub_1003ACF68(v3);
    v5 = sub_1003DEBC4(v4);
    v6 = [sub_100390B78() initWithData:?];
    v7 = *(v1 + 27);
    *(v1 + 27) = v6;

    [*(v1 + 27) updatePPIDWithServerProvidedData:*(v1 + 20)];
    v8 = objc_opt_new();
    [*(v1 + 14) manufacturer];
    objc_claimAutoreleasedReturnValue();
    v9 = [sub_100390B54() brand];
    v10 = [*(v1 + 27) mfiPPID];
    v334 = 0;
    v11 = [v8 BOOLValueForSetting:8 manufacturer:v2 brand:v9 uuid:v10 error:&v334];
    v12 = v334;

    if ((v11 & 1) == 0)
    {
      v37 = KmlLogger();
      if (sub_10004F844(v37))
      {
        v38 = *(v1 + 44);
        v39 = [v38 UTF8String];

        sub_100390934();
        v338 = 1693;
        v339 = 2080;
        *v340 = v39;
        *&v340[8] = v40;
        *v341 = 1;
        *&v341[4] = 2112;
        *&v341[6] = v12;
        sub_100390AF0();
        _os_log_impl(v41, v42, v43, v44, v45, 0x2Cu);
      }

      if (v12)
      {
        v36 = sesErrorToKmlError();
        v16 = v12;
LABEL_137:

        goto LABEL_138;
      }

      v16 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v354[0] = NSLocalizedDescriptionKey;
      KmlErrorString();
      v34 = [sub_100367538() stringWithUTF8String:?];
      v354[1] = NSLocalizedFailureReasonErrorKey;
      v355[0] = v34;
      v355[1] = @"Sharing is blocked by configuration";
      v35 = [NSDictionary dictionaryWithObjects:v355 forKeys:v354 count:2];
      v36 = [sub_100390B78() errorWithDomain:? code:? userInfo:?];
LABEL_27:

      goto LABEL_137;
    }

    [*(v1 + 14) manufacturer];
    objc_claimAutoreleasedReturnValue();
    v13 = [sub_100390B54() brand];
    v14 = [*(v1 + 27) mfiPPID];
    v333 = v12;
    v15 = [v8 BOOLValueForSetting:2 manufacturer:&qword_10040A000 brand:v13 uuid:v14 error:&v333];
    v16 = v333;

    if (v15)
    {
      [*(v1 + 28) downgradePreferredVersion];
    }

    v17 = *(v1 + 28);
    [*(v1 + 27) vehicleSupportedFrameworkVersionsData];
    objc_claimAutoreleasedReturnValue();
    v18 = [sub_10036F8CC() updateVehicleSupportedFrameworkVersions:v12];

    v19 = *(v1 + 28);
    [*(v1 + 27) initiatorSupportedFrameworkVersionsData];
    objc_claimAutoreleasedReturnValue();
    v20 = [sub_10036F8CC() updateSupportedFrameworkVersionsForSharing:v12];

    v21 = *(v1 + 28);
    v22 = sub_1003AAA6C(*(v1 + 4));
    v23 = sub_1003ACF68(v22);
    v24 = sub_1003DEAB4();
    v25 = [v21 updateVehicleSupportedAppletVersions:v24];

    if (sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]) && objc_msgSend(*(v1 + 27), "maxOfflineAttestationCount") <= 1)
    {
      v26 = KmlLogger();
      if (sub_10036F5DC(v26))
      {
        v27 = *(v1 + 44);
        v28 = [v27 UTF8String];

        *buf = 136315650;
        v336 = "[KmlFriendSharingManager generateFriendEndpoint]";
        sub_100390A4C();
        sub_1003909C4(1718);
        *v340 = v28;
        sub_100390AB0();
        sub_10036F590(v29, v30, v31, v32, v33);
      }

      v34 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v352[0] = NSLocalizedDescriptionKey;
      v35 = [NSString stringWithUTF8String:KmlErrorString()];
      v352[1] = NSLocalizedFailureReasonErrorKey;
      v353[0] = v35;
      v353[1] = @"Max attestation count must be at least 2 for sharing in a chain";
      [NSDictionary dictionaryWithObjects:v353 forKeys:v352 count:2];
      objc_claimAutoreleasedReturnValue();
      v36 = [sub_100390A80() errorWithDomain:? code:? userInfo:?];

      goto LABEL_27;
    }

    v46 = sub_1003AAA6C(*(v1 + 4));
    v47 = sub_1003ACF68(v46);
    v48 = sub_1003DE4BC(v47);

    v49 = sub_1003AAA6C(*(v1 + 4));
    v50 = sub_1003ACF68(v49);
    v51 = sub_1003DE58C(v50);

    if (sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]))
    {
      v52 = sub_1003AAA6C(*(v1 + 4));
      v53 = sub_1003ACF68(v52);
      v48 = sub_1003DF2A0(v53);

      v54 = sub_1003AAA6C(*(v1 + 4));
      v55 = sub_1003ACF68(v54);
      v51 = sub_1003DF2AC(v55);
    }

    v56 = KmlLogger();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
    {
      v57 = *(v1 + 44);
      [v57 UTF8String];
      sub_100390934();
      v338 = 1730;
      v339 = 2080;
      *v340 = v58;
      *&v340[8] = v59;
      *v341 = v48;
      *&v341[4] = v59;
      *&v341[6] = v51;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_INFO, "%s : %i : %s : options_1: %02x; options_2: %02x", buf, 0x28u);
    }

    v60 = [OBJC_CLASS___SEEndPointConfiguration configurationWithOpt1:v48 opt2:v51];
    if (!v60)
    {
      v74 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v350[0] = NSLocalizedDescriptionKey;
      v75 = [NSString stringWithUTF8String:KmlErrorString()];
      v350[1] = NSLocalizedFailureReasonErrorKey;
      v351[0] = v75;
      v351[1] = @"Invalid endpoint configuration option group values (RFU bits set)";
      [NSDictionary dictionaryWithObjects:v351 forKeys:v350 count:2];
      objc_claimAutoreleasedReturnValue();
      v36 = [sub_100390A80() errorWithDomain:? code:? userInfo:?];

LABEL_136:
      goto LABEL_137;
    }

    if (sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]))
    {
      v61 = v60;
      sub_1003AD0FC(*(v1 + 4));
      objc_claimAutoreleasedReturnValue();
      v62 = [sub_100390B54() manufacturer];
      v332 = v16;
      v63 = sub_1003BCA70(KmlVersions, v62, v51, &v332);
      v48 = v332;

      if ((v63 & 1) == 0)
      {
        v115 = KmlLogger();
        v60 = v61;
        if (sub_10004F844(v115))
        {
          v116 = *(v1 + 44);
          v117 = [v116 UTF8String];

          *buf = 136315650;
          v336 = "[KmlFriendSharingManager generateFriendEndpoint]";
          sub_100390A4C();
          sub_1003909C4(1738);
          *v340 = v117;
          sub_100390AF0();
          _os_log_impl(v118, v119, v120, v121, v122, 0x1Cu);
        }

        v16 = v48;
        v36 = v16;
        goto LABEL_136;
      }

      v16 = v48;
      v60 = v61;
    }

    v64 = sub_1003AAA78(*(v1 + 4));
    v65 = sub_1003ACF68(v64);

    v66 = KmlLogger();
    if (sub_100057AEC(v66))
    {
      v64 = *(v1 + 44);
      [v64 UTF8String];
      sub_100390934();
      sub_1003909C4(1743);
      *v340 = v67;
      sub_100390B3C();
      *v341 = v65;
      sub_1003909F4();
      _os_log_impl(v68, v69, v70, v71, v72, 0x26u);
    }

    if (v65)
    {
      v73 = kmlUtilSanitizeFriendlyName();
    }

    else
    {
      v73 = @"MyFriend1";
    }

    v76 = *(v1 + 12);
    *(v1 + 12) = v73;

    if (sub_1003F6F5C(v77) && [v8 emulateNFCOnlyDevice])
    {
      v78 = KmlLogger();
      if (sub_10036F978(v78))
      {
        sub_100390934();
        v338 = 1758;
        sub_100390A14();
        _os_log_impl(v79, v80, v81, v82, v83, 0x12u);
      }

      v84 = 0;
    }

    else
    {
      v84 = 1;
    }

    v85 = +[NISession deviceCapabilities];
    v86 = v84 & [v85 supportsPreciseDistanceMeasurement];

    if (([*(v1 + 27) readerSupportsNfc] & 1) == 0 && (v86 & 1) == 0)
    {
      v87 = KmlLogger();
      if (sub_10036F5DC(v87))
      {
        v88 = *(v1 + 44);
        v89 = [v88 UTF8String];

        *buf = 136315650;
        v336 = "[KmlFriendSharingManager generateFriendEndpoint]";
        sub_100390A4C();
        sub_1003909C4(1769);
        *v340 = v89;
        sub_100390AB0();
        sub_10036F590(v90, v91, v92, v93, v94);
      }

      v95 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v348 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v96 = [sub_100367538() stringWithUTF8String:?];
      v349 = v96;
      v97 = [NSDictionary dictionaryWithObjects:&v349 forKeys:&v348 count:1];
      v36 = [NSError errorWithDomain:v95 code:114 userInfo:v97];

      goto LABEL_135;
    }

    v321 = v65;
    v329 = v60;
    [*(v1 + 14) manufacturer];
    objc_claimAutoreleasedReturnValue();
    v98 = [sub_100390B54() brand];
    v99 = [*(v1 + 27) mfiPPID];
    v101 = sub_100390CCC(v8, v100, 1);

    if (v86 & 1 | ((v101 & 1) == 0))
    {
LABEL_67:
      [*(v1 + 14) manufacturer];
      objc_claimAutoreleasedReturnValue();
      v136 = [sub_100390B54() brand];
      v137 = [*(v1 + 27) mfiPPID];
      v139 = sub_100390CCC(v8, v138, 10);

      if ((v139 & 1) == 0)
      {
        v140 = KmlLogger();
        if (sub_100057AEC(v140))
        {
          v141 = *(v1 + 44);
          [v141 UTF8String];
          v142 = [sub_100390B54() manufacturer];
          v143 = [*(v1 + 14) brand];
          *buf = 136316162;
          v336 = "[KmlFriendSharingManager generateFriendEndpoint]";
          sub_100390A4C();
          sub_1003909C4(1821);
          *v340 = v85;
          sub_100390B3C();
          *v341 = v142;
          *&v341[8] = v144;
          *&v341[10] = v145;
          sub_1003909F4();
          _os_log_impl(v146, v147, v148, v149, v150, 0x30u);
        }

        [*(v1 + 27) removeUwbSupportLocally];
      }

      v320 = [*(v1 + 27) asData];
      v151 = KmlLogger();
      if (sub_100057AEC(v151))
      {
        v152 = *(v1 + 44);
        v153 = [v152 UTF8String];
        v154 = kmlUtilHexStringFromData();
        sub_100390934();
        sub_1003909C4(1826);
        *v340 = v153;
        sub_100390B3C();
        *v341 = v155;
        sub_1003909F4();
        _os_log_impl(v156, v157, v158, v159, v160, 0x26u);
      }

      v328 = sub_10039737C(KmlEndpointManager, @"FRND");
      if (sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]))
      {
        v161 = KmlLogger();
        if (sub_100057AEC(v161))
        {
          v162 = *(v1 + 44);
          v163 = [v162 UTF8String];

          sub_100390934();
          sub_1003909C4(1833);
          *v340 = v163;
          sub_1003909F4();
          _os_log_impl(v164, v165, v166, v167, v168, 0x1Cu);
        }

        v169 = sub_1003AAA6C(*(v1 + 4));
        v170 = sub_1003ACF68(v169);
        v325 = sub_1003DE360(v170);

        v171 = sub_1003AAA6C(*(v1 + 4));
        v172 = sub_1003ACF68(v171);
        v173 = sub_1003DE134(v172);
      }

      else
      {
        v174 = sub_1003AAA6C(*(v1 + 4));
        v175 = sub_1003ACF68(v174);
        v325 = sub_1003DE068(v175);

        v171 = sub_1003AAA6C(*(v1 + 4));
        v172 = sub_1003ACF68(v171);
        v173 = sub_1003DDF9C(v172);
      }

      v318 = v173;
      v317 = v8;

      v176 = KmlLogger();
      if (sub_10036F978(v176))
      {
        sub_100390934();
        v338 = 1841;
        v339 = v177;
        *v340 = v318;
        *&v340[4] = v177;
        *&v340[6] = v325;
        sub_100390A14();
        _os_log_impl(v178, v179, v180, v181, v182, 0x1Eu);
      }

      v183 = sub_1003AAA6C(*(v1 + 4));
      v184 = sub_1003ACF68(v183);
      v185 = sub_1003DDC1C(v184);
      v327 = [NSArray arrayWithObjects:v185, 0];

      v308 = *(v1 + 15);
      v316 = sub_1003AAA6C(*(v1 + 4));
      v315 = sub_1003ACF68(v316);
      v324 = sub_1003DC544(v315);
      v314 = sub_1003AAA6C(*(v1 + 4));
      v313 = sub_1003ACF68(v314);
      v323 = sub_1003DC464(v313);
      v186 = *(v1 + 42);
      v312 = sub_1003AAA6C(*(v1 + 4));
      v311 = sub_1003ACF68(v312);
      v322 = sub_1003DDCFC(v311);
      v310 = sub_1003AAA6C(*(v1 + 4));
      v309 = sub_1003ACF68(v310);
      v187 = sub_1003DDDDC(v309);
      v188 = sub_1003AAA6C(*(v1 + 4));
      v189 = sub_1003ACF68(v188);
      v190 = sub_1003DDEBC(v189);
      if (v325)
      {
        v191 = [NSNumber numberWithUnsignedInteger:v325];
      }

      else
      {
        v191 = 0;
      }

      v192 = v318;
      if (v318)
      {
        v193 = [NSNumber numberWithUnsignedInteger:v318];
      }

      else
      {
        v193 = 0;
      }

      v331 = v16;
      v307 = v193;
      v306 = v186;
      sub_100075DB0();
      v194 = SESEndPointCreateForAlishaWithSession();
      v319 = v16;

      v195 = *(v1 + 11);
      *(v1 + 11) = v194;

      if (v192)
      {
      }

      if (v325)
      {
      }

      v196 = v319;
      if (v319)
      {
        v197 = KmlLogger();
        v8 = v317;
        if (sub_10036F5DC(v197))
        {
          v198 = *(v1 + 44);
          v199 = [v198 UTF8String];

          *buf = 136315906;
          v336 = "[KmlFriendSharingManager generateFriendEndpoint]";
          sub_100390A4C();
          v338 = 1863;
          sub_100390AA4();
          *v340 = v199;
          sub_100390B3C();
          *v341 = v319;
          sub_100390AB0();
          sub_100390B60(v200, v201, v202, v203, v204);
        }

        v36 = sesErrorToKmlError();
LABEL_94:
        v60 = v329;
        v65 = v321;
LABEL_134:
        v95 = v320;

        v16 = v196;
LABEL_135:

        goto LABEL_136;
      }

      v205 = [*(v1 + 11) publicKeyIdentifier];
      v206 = *(v1 + 13);
      *(v1 + 13) = v205;

      v207 = *(v1 + 13);
      v208 = kmlUtilHexStringFromData();
      v209 = *(v1 + 45);
      *(v1 + 45) = v208;

      v8 = v317;
      if (sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]))
      {
        v210 = KmlLogger();
        if (sub_10036F978(v210))
        {
          sub_10039098C();
          v338 = 1871;
          sub_100390A14();
          _os_log_impl(v211, v212, v213, v214, v215, 0x12u);
        }

        v216 = *(v1 + 45);
        v191 = kmlUtilTimeNow();
        sub_100075DB0();
        v196 = SESEndpointConvertWithSession();

        if (v196)
        {
          v217 = KmlLogger();
          if (os_log_type_enabled(v217, OS_LOG_TYPE_ERROR))
          {
            sub_10039098C();
            v338 = 1875;
            v339 = 2112;
            *v340 = v196;
            sub_10036F590(&_mh_execute_header, v217, v218, "%s : %i : Error while converting V3 endpoint during endpoint creation: %@", buf);
          }

          v219 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v344[0] = NSLocalizedDescriptionKey;
          v220 = [NSString stringWithUTF8String:KmlErrorString()];
          v344[1] = NSLocalizedFailureReasonErrorKey;
          v345[0] = v220;
          v345[1] = @"Error while converting V3 endpoint during endpoint creation";
          [NSDictionary dictionaryWithObjects:v345 forKeys:v344 count:2];
          objc_claimAutoreleasedReturnValue();
          v36 = [sub_100390A80() errorWithDomain:? code:? userInfo:?];

          goto LABEL_94;
        }
      }

      if (sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]))
      {
        v221 = KmlLogger();
        if (sub_100057AEC(v221))
        {
          v222 = *(v1 + 44);
          v190 = [v222 UTF8String];

          sub_10039098C();
          v338 = 1883;
          sub_100390AA4();
          *v340 = v190;
          sub_1003909F4();
          _os_log_impl(v223, v224, v225, v226, v227, 0x1Cu);
        }

        v228 = sub_1003AAA6C(*(v1 + 4));
        v229 = sub_1003ACF68(v228);
        v230 = sub_1003DEA80(v229);

        v231 = sub_1003AAA6C(*(v1 + 4));
        v232 = sub_1003ACF68(v231);
        v233 = sub_1003DE81C(v232);
      }

      else
      {
        v234 = sub_1003AAA6C(*(v1 + 4));
        v235 = sub_1003ACF68(v234);
        v230 = sub_1003DE73C(v235);

        v231 = sub_1003AAA6C(*(v1 + 4));
        v232 = sub_1003ACF68(v231);
        v233 = sub_1003DE65C(v232);
      }

      v236 = v233;

      v237 = KmlLogger();
      if (sub_100057AEC(v237))
      {
        v238 = *(v1 + 44);
        [v238 UTF8String];
        sub_10039098C();
        v338 = 1890;
        sub_100390AA4();
        *v340 = v239;
        sub_100390B3C();
        *v341 = v230;
        *&v341[8] = v240;
        *&v341[10] = v236;
        sub_1003909F4();
        _os_log_impl(v241, v242, v243, v244, v245, 0x30u);
      }

      v246 = *(v1 + 45);
      SESEndPointConfigureMailBoxes();
      v247 = 0;
      if (v247)
      {
        v248 = v247;
        v249 = KmlLogger();
        if (sub_10004F844(v249))
        {
          v250 = *(v1 + 44);
          v1 = [v250 UTF8String];

          sub_10039098C();
          v338 = 1898;
          sub_100390AA4();
          *v340 = v1;
          sub_100390B3C();
          *v341 = v248;
          sub_100390AF0();
          _os_log_impl(v251, v252, v253, v254, v255, 0x26u);
        }

        [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        objc_claimAutoreleasedReturnValue();
        [sub_100390C88() userInfo];
        objc_claimAutoreleasedReturnValue();
        v256 = [sub_100390C00() errorWithDomain:? code:? userInfo:?];

        v196 = v256;
        v65 = v321;
        goto LABEL_133;
      }

      v257 = *(v1 + 45);
      v258 = SESEndPointCreateEncryptionKey();
      v259 = 0;
      v260 = *(v1 + 9);
      *(v1 + 9) = v258;

      v261 = KmlLogger();
      if (sub_100057AEC(v261))
      {
        v262 = *(v1 + 44);
        v263 = [v262 UTF8String];
        v264 = *(v1 + 9);
        *buf = 136315906;
        v336 = "[KmlFriendSharingManager generateFriendEndpoint]";
        v337 = 1024;
        v338 = 1904;
        v339 = 2080;
        *v340 = v263;
        *&v340[8] = 2112;
        *v341 = v264;
        sub_1003909F4();
        _os_log_impl(v265, v266, v267, v268, v269, 0x26u);
      }

      if (v259)
      {
        v270 = KmlLogger();
        if (sub_10036F5DC(v270))
        {
          v271 = *(v1 + 44);
          v190 = [v271 UTF8String];

          sub_10039098C();
          v338 = 1907;
          sub_100390AA4();
          *v340 = v190;
          sub_100390B3C();
          *v341 = v259;
          sub_100390AB0();
          sub_100390B60(v272, v273, v274, v275, v276);
        }
      }

      v277 = [*(v1 + 28) getVehicleSupportedVersionsData];
      v278 = KmlLogger();
      if (sub_10036F124(v278))
      {
        v279 = *(v1 + 44);
        v280 = [v279 UTF8String];
        v281 = *(v1 + 12);
        v282 = *(v1 + 42);
        v283 = *(v1 + 44);
        *buf = 136316418;
        v336 = "[KmlFriendSharingManager generateFriendEndpoint]";
        v337 = 1024;
        v338 = 1911;
        v339 = 2080;
        *v340 = v280;
        *&v340[8] = 2112;
        *v341 = v281;
        *&v341[8] = 2112;
        *&v341[10] = v282;
        v342 = 2112;
        v343 = v283;
        _os_log_impl(&_mh_execute_header, v190, OS_LOG_TYPE_INFO, "%s : %i : %s : Saving friendly name (%@), reader info (%@) and invitationId (%@)", buf, 0x3Au);
      }

      v326 = v230;
      if (sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]))
      {
        v284 = sub_1003AD0FC(*(v1 + 4));
        v285 = sub_1003BB820(v284);

        v286 = sub_1003AAA78(*(v1 + 4));
        sub_1003B918C(v286);
        v287 = [sub_100390A98() numberWithUnsignedShort:?];
      }

      else
      {
        v285 = 0;
        v287 = 0;
      }

      v288 = *(v1 + 45);
      v289 = v285;
      v290 = v287;
      v330 = v320;
      v291 = v277;
      v292 = SESEndPointUpdateWithBlock();

      if (v292)
      {
        v8 = v317;
      }

      else
      {
        v8 = v317;
        if (!sub_100390A64([*(v1 + 28) agreedKmlSharingVersion]))
        {
          goto LABEL_131;
        }

        buf[0] = 0x80;
        v303 = [NSData dataWithBytes:buf length:1];
        v304 = *(v1 + 45);
        sub_100075DB0();
        SESEndPointSetPrivateDataWithSession();
        v292 = 0;

        if (!v292)
        {
LABEL_131:
          v302 = 0;
LABEL_132:
          v196 = v302;

          v65 = v321;
          v230 = v326;
LABEL_133:

          v36 = v196;
          v60 = v329;
          goto LABEL_134;
        }
      }

      v293 = KmlLogger();
      if (sub_10004F844(v293))
      {
        v294 = *(v1 + 44);
        v1 = [v294 UTF8String];

        *buf = 136315650;
        v336 = "[KmlFriendSharingManager generateFriendEndpoint]";
        sub_100390A4C();
        *(v295 + 14) = 1972;
        sub_100390AA4();
        *(v296 + 20) = v1;
        sub_100390AF0();
        _os_log_impl(v297, v298, v299, v300, v301, 0x1Cu);
      }

      [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      objc_claimAutoreleasedReturnValue();
      [sub_100390C88() userInfo];
      objc_claimAutoreleasedReturnValue();
      v302 = [sub_100390C00() errorWithDomain:? code:? userInfo:?];

      goto LABEL_132;
    }

    v85 = NSError;
    v102 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v346 = NSLocalizedDescriptionKey;
    v103 = v99[141];
    KmlErrorString();
    v104 = [sub_100372244() stringWithUTF8String:?];
    v347 = v104;
    v105 = [NSDictionary dictionaryWithObjects:&v347 forKeys:&v346 count:1];
    v36 = [NSError errorWithDomain:v102 code:218 userInfo:v105];

    v106 = MGGetSInt32Answer();
    if (v106 == 6)
    {
      v123 = *(v1 + 31);
      if (sub_100073170())
      {
        if (KmlLogIsInternalBuild())
        {
          v124 = KmlLogger();
          if (sub_10036F978(v124))
          {
            sub_100390934();
            v338 = 1803;
            sub_100390A14();
            _os_log_impl(v125, v126, v127, v128, v129, 0x12u);
          }
        }

        goto LABEL_67;
      }

      goto LABEL_63;
    }

    if (v106 != 1)
    {
LABEL_63:
      if (v36)
      {
        v95 = KmlLogger();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          v130 = *(v1 + 44);
          v131 = [v130 UTF8String];
          v132 = *(v1 + 15);
          v133 = [*(v1 + 14) brand];
          *buf = 136316162;
          v336 = "[KmlFriendSharingManager generateFriendEndpoint]";
          sub_100390A4C();
          sub_1003909C4(1809);
          *v340 = v131;
          sub_100390B3C();
          *v341 = v132;
          *&v341[8] = v134;
          *&v341[10] = v135;
          _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_ERROR, "%s : %i : %s : We don't allow CarKey on NFC only device for (%@, %@)", buf, 0x30u);
        }

        v60 = v329;
        v65 = v321;
        goto LABEL_135;
      }

      goto LABEL_67;
    }

    v85 = +[NRPairedDeviceRegistry sharedInstance];
    v107 = [v85 getActivePairedDevice];

    if (v107)
    {
      v85 = [[NSUUID alloc] initWithUUIDString:@"C4F6386A-780D-40E5-9900-0A26C16273A1"];
      if (![v107 supportsCapability:v85])
      {
LABEL_52:

        goto LABEL_53;
      }

      [[NSUUID alloc] initWithUUIDString:@"81D292E4-16D8-4630-82ED-BDF62B05E334"];
      v108 = [sub_1003674F0() supportsCapability:&NSInferMappingModelAutomaticallyOption_ptr];

      if (v108)
      {
        if (KmlLogIsInternalBuild())
        {
          v109 = KmlLogger();
          if (sub_10036F978(v109))
          {
            sub_100390934();
            v338 = 1797;
            sub_100390A14();
            _os_log_impl(v110, v111, v112, v113, v114, 0x12u);
          }
        }

        v85 = v36;
        v36 = 0;
        goto LABEL_52;
      }
    }

LABEL_53:

    goto LABEL_63;
  }

  v36 = 0;
LABEL_138:

  return v36;
}

void sub_1003D627C(uint64_t a1)
{
  if (!a1)
  {
    return;
  }

  v2 = sub_1003AAA6C(*(a1 + 32));
  v3 = sub_1003ACF68(v2);
  if (!sub_1003DF01C())
  {

    goto LABEL_6;
  }

  v4 = sub_1003AAA6C(*(a1 + 32));
  v5 = sub_1003ACF68(v4);
  v6 = sub_1003DF0EC();

  if (!v6)
  {
LABEL_6:
    v7 = 0;
    goto LABEL_7;
  }

  ++*(a1 + 304);
  v7 = 1;
LABEL_7:
  v11 = objc_alloc_init(KeySigningRequest);
  sub_1003BAE64(v11, *(a1 + 224));
  if (v7)
  {
    v8 = *(a1 + 152);
  }

  else
  {
    v8 = 0;
  }

  v9 = sub_1003BA404(v11, *(a1 + 88), *(a1 + 72), v8);
  v10 = *(a1 + 56);
  *(a1 + 56) = v9;
}

void sub_1003D6394()
{
  sub_100390D04();
  if (v0)
  {
    v1 = v0;
    v2 = *(v0 + 280);
    *(v0 + 280) = 0;

    v3 = [*(v1 + 112) manufacturer];
    sub_100075DB0();
    v4 = SESEndpointGetBindingAttestationRequestWithSession();
    v5 = 0;

    if (v5)
    {
      v6 = KmlLogger();
      if (sub_10004F844(v6))
      {
        v7 = *(v1 + 352);
        [v7 UTF8String];

        sub_10036BED0();
        sub_100390948();
        sub_100390BB8();
        sub_100390B30();
        _os_log_impl(v8, v9, v10, v11, v12, 0x26u);
      }

      [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      objc_claimAutoreleasedReturnValue();
      v13 = [sub_10036746C() userInfo];
      v14 = [NSError errorWithDomain:v3 code:112 userInfo:v13];
      v15 = *(v1 + 280);
      *(v1 + 280) = v14;
    }

    else
    {
      v16 = [DAKeyBindingAttestationRequestData alloc];
      v17 = *(v1 + 376);
      [v4 subCAAttestation];
      objc_claimAutoreleasedReturnValue();
      v13 = [sub_1003674F0() casdECDSACertificate];
      v15 = [v4 casdRSACertificate];
      v18 = [v16 initWithSharingSessionIdentifier:v17 subCaAttestation:v3 casd:v13 rsaCertData:v15];
      v19 = *(v1 + 208);
      *(v1 + 208) = v18;
    }
  }

  sub_100390CEC();
}

void sub_1003D6584(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 280);
    *(a1 + 280) = 0;

    v3 = [*(a1 + 112) readerIdentifier];
    v4 = [KmlTlv TLVWithTag:77 value:v3];
    v5 = *(a1 + 360);
    v6 = [v4 asData];
    v7 = SESEndPointPrivacyEncryption();
    v8 = 0;

    if (v8)
    {
      v9 = KmlLogger();
      if (sub_10036F548(v9))
      {
        v10 = *(a1 + 352);
        v11 = [v10 UTF8String];

        sub_10036BED0();
        sub_100390948();
        v21 = v11;
        sub_100390BB8();
        v22 = v8;
        sub_100390B60(&_mh_execute_header, v6, v12, "%s : %i : %s : Failed to encrypt pre-track request with - %@", v20);
      }

      v13 = sesErrorToKmlError();
      v6 = *(a1 + 280);
      *(a1 + 280) = v13;
    }

    else
    {
      v14 = [DAAlishaKeyEncryptedRequest alloc];
      [v7 version];
      objc_claimAutoreleasedReturnValue();
      v15 = [sub_100390AD8() ephemeralPublicKeydata];
      v16 = [v7 receiverPublicKeyHash];
      v17 = [v7 cipherText];
      v18 = [v14 initWithVersion:v6 ephemeralPublicKey:v15 publicKeyHash:v16 encryptedRequest:v17];
      v19 = *(a1 + 192);
      *(a1 + 192) = v18;
    }
  }
}

void sub_1003D6794(id *a1)
{
  if (!a1)
  {
    return;
  }

  v3 = a1[34];
  if (a1[46])
  {
    if (v3)
    {
      v4 = KmlLogger();
      if (sub_10036F5DC(v4))
      {
        v5 = a1[44];
        [v5 UTF8String];

        v11[0] = 136315650;
        sub_10036DC30();
        sub_1003908FC();
        sub_10036F590(&_mh_execute_header, v1, v6, "%s : %i : %s : Error while generating cross-platform signing request, reporting error to client", v11);
      }

      WeakRetained = objc_loadWeakRetained(a1 + 41);
      [WeakRetained handleCrossPlatformSigningRequest:0 status:a1[34] keyInformation:0];

      return;
    }

    v10 = sub_1003D0EC4(a1, 2, 1);
    v9 = objc_loadWeakRetained(a1 + 41);
    [v9 handleCrossPlatformSigningRequest:v10 status:0 keyInformation:a1[43]];
  }

  else
  {
    if (v3)
    {
      v8 = objc_loadWeakRetained(a1 + 41);
      [v8 handleExchangeStartedWithFriendKey:0 status:a1[34]];
    }

    v10 = objc_loadWeakRetained(a1 + 41);
    [v10 handleExchangeStartedWithFriendKey:a1[43] status:0];
  }
}

id sub_1003D6944(uint64_t a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = sub_1003BA3C4(*(a1 + 64));
    v4 = KmlLogger();
    if (sub_10036DCF8(v4))
    {
      v5 = v2[44];
      [v5 UTF8String];
      v6 = kmlUtilHexStringFromData();
      sub_1003908BC();
      sub_1003909A0(2188);
      sub_100390B20(v7);
      sub_100390B00();
      _os_log_impl(v8, v9, v10, v11, v12, 0x26u);
    }

    v13 = KmlLogger();
    if (sub_10036DCF8(v13))
    {
      v14 = v2[44];
      v15 = [v14 UTF8String];
      v16 = sub_1003AAA6C(v2[8]);
      v17 = [v16 asData];
      v18 = kmlUtilHexStringFromData();
      sub_100390BD0();
      sub_1003909B4(2190);
      *(v19 + 212) = v15;
      sub_100390B20(v20);
      sub_100390B00();
      _os_log_impl(v21, v22, v23, v24, v25, 0x26u);
    }

    v158 = +[NSMutableData data];
    v26 = sub_1003AAA6C(v2[8]);
    v27 = [v26 asData];
    v28 = [sub_100390B78() TLVsWithData:?];

    v176 = 0u;
    v177 = 0u;
    v174 = 0u;
    v175 = 0u;
    v29 = v28;
    v30 = [v29 countByEnumeratingWithState:&v174 objects:v187 count:16];
    v31 = &swift_cvw_destroy_ptr;
    v156 = v29;
    if (v30)
    {
      v32 = v30;
      v33 = *v175;
LABEL_8:
      v34 = 0;
      while (1)
      {
        if (*v175 != v33)
        {
          objc_enumerationMutation(v29);
        }

        v35 = *(*(&v174 + 1) + 8 * v34);
        if ([v35 tag] == 32549)
        {
          break;
        }

        if (v32 == ++v34)
        {
          v32 = [v29 countByEnumeratingWithState:&v174 objects:v187 count:16];
          if (v32)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }

      v36 = [v35 value];
      v37 = [v35 value];
      v38 = [KmlTlv TLVsWithData:v37];

      v159 = v38;
      if (!v38)
      {
        goto LABEL_19;
      }

      v39 = v158;
      if (sub_100390A64([v2[28] agreedKmlSharingVersion]))
      {
        v29 = objc_opt_new();
        if (sub_1003F6F5C(v40))
        {
          v41 = objc_opt_new();
          v42 = [v41 ignoreInvalidAttestationPackageSignature];
        }

        else
        {
          v42 = 0;
        }

        v48 = v2;
        v49 = [v2[11] shareInitiatorCertificateChainData];
        v50 = sub_1003BAE74(v29, v49);

        if (!v50 || (sub_1003AF3D8(v2[8]), v51 = objc_claimAutoreleasedReturnValue(), [v51 value], v52 = objc_claimAutoreleasedReturnValue(), v53 = sub_1003BBD64(v29, v36, v52), v52, v51, (v53 & 1) == 0))
        {
          if (!v42)
          {
            v150 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
            v185 = NSLocalizedDescriptionKey;
            KmlErrorString();
            v151 = [sub_100367538() stringWithUTF8String:?];
            v186 = v151;
            v152 = [NSDictionary dictionaryWithObjects:&v186 forKeys:&v185 count:1];
            v148 = [sub_100390B78() errorWithDomain:? code:? userInfo:?];

            goto LABEL_88;
          }

          v54 = KmlLogger();
          if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
          {
            v55 = v48[44];
            v56 = [v55 UTF8String];

            sub_1003908BC();
            sub_1003909B4(2223);
            *(v57 + 212) = v56;
            sub_100390C7C();
            _os_log_impl(v58, v59, OS_LOG_TYPE_DEBUG, v60, v61, 0x1Cu);
          }
        }

        v2 = v48;
        v31 = &swift_cvw_destroy_ptr;
      }

      v172 = 0u;
      v173 = 0u;
      v170 = 0u;
      v171 = 0u;
      v62 = [&off_1004DC800 countByEnumeratingWithState:&v170 objects:v184 count:16];
      v155 = v36;
      if (v62)
      {
        v29 = v62;
        v157 = v2;
        v153 = v3;
        v63 = *v171;
        do
        {
          for (i = 0; i != v29; i = i + 1)
          {
            if (*v171 != v63)
            {
              objc_enumerationMutation(&off_1004DC800);
            }

            v65 = *(*(&v170 + 1) + 8 * i);
            v166 = 0u;
            v167 = 0u;
            v168 = 0u;
            v169 = 0u;
            v66 = v159;
            v67 = [v66 countByEnumeratingWithState:&v166 objects:v183 count:16];
            if (v67)
            {
              v68 = v67;
              v69 = *v167;
              while (2)
              {
                for (j = 0; j != v68; j = j + 1)
                {
                  if (*v167 != v69)
                  {
                    objc_enumerationMutation(v66);
                  }

                  v71 = *(*(&v166 + 1) + 8 * j);
                  v36 = [v71 tag];
                  if (v36 == [v65 unsignedIntValue])
                  {
                    v36 = [v71 asData];
                    [v158 appendData:v36];

                    if ([v71 tag] == 120)
                    {
                      v72 = [v71 value];
                      v36 = [KmlTlv TLVsWithData:v72];

                      v164 = 0u;
                      v165 = 0u;
                      v162 = 0u;
                      v163 = 0u;
                      v73 = v36;
                      v74 = [v73 countByEnumeratingWithState:&v162 objects:v182 count:16];
                      if (v74)
                      {
                        v75 = v74;
                        v36 = *v163;
                        while (2)
                        {
                          for (k = 0; k != v75; k = k + 1)
                          {
                            if (*v163 != v36)
                            {
                              objc_enumerationMutation(v73);
                            }

                            v77 = *(*(&v162 + 1) + 8 * k);
                            if ([v77 tag] == 215)
                            {
                              *(v157 + 320) = [v77 valueAsUnsignedChar];
                              goto LABEL_55;
                            }
                          }

                          v75 = [v73 countByEnumeratingWithState:&v162 objects:v182 count:16];
                          if (v75)
                          {
                            continue;
                          }

                          break;
                        }
                      }

LABEL_55:
                    }

                    goto LABEL_56;
                  }
                }

                v68 = [v66 countByEnumeratingWithState:&v166 objects:v183 count:16];
                if (v68)
                {
                  continue;
                }

                break;
              }
            }

LABEL_56:
          }

          v29 = [&off_1004DC800 countByEnumeratingWithState:&v170 objects:v184 count:16];
        }

        while (v29);
        v159 = v66;
        v3 = v153;
        v2 = v157;
        v39 = v158;
        v31 = &swift_cvw_destroy_ptr;
      }
    }

    else
    {
LABEL_14:

      v36 = 0;
LABEL_19:
      v43 = KmlLogger();
      if (sub_10036F548(v43))
      {
        v44 = v2[44];
        v45 = [v44 UTF8String];

        sub_100390BD0();
        sub_1003909B4(2206);
        *(v46 + 212) = v45;
        sub_10036F590(&_mh_execute_header, "[KmlFriendSharingManager prepareMailboxData]", v47, "%s : %i : %s : Signed request validation needs to catch nil ownerAttestationTLVs, at this point we just continue", buf);
      }

      v155 = v36;

      v159 = 0;
      v39 = v158;
    }

    v78 = sub_1003AF3D8(v2[8]);
    [v78 asData];
    objc_claimAutoreleasedReturnValue();
    [sub_10036746C() appendData:v36];

    v79 = KmlLogger();
    if (sub_100377D6C(v79))
    {
      v80 = v2[44];
      [v80 UTF8String];
      sub_10036746C();
      v81 = kmlUtilHexStringFromData();
      sub_1003908BC();
      sub_1003909A0(2256);
      sub_100390B20(v82);
      sub_100390C18(&_mh_execute_header, v83, v84, "%s : %i : %s : Key attestation Data - %@", buf);
    }

    objc_storeStrong(v2 + 16, v39);
    v85 = KmlLogger();
    if (sub_100377D6C(v85))
    {
      v86 = v2[44];
      [v86 UTF8String];
      v87 = v2[16];
      v88 = kmlUtilHexStringFromData();
      sub_1003908BC();
      sub_1003909A0(2259);
      sub_100390B20(v89);
      sub_100390C18(&_mh_execute_header, v90, v91, "%s : %i : %s : Friend Attestation Package data %@", buf);
    }

    v92 = sub_1003BA3D0(v2[8]);

    if (v92)
    {
      v93 = v2[27];
      v94 = sub_1003BA3D0(v2[8]);
      [v93 updateSupportedRadiosWithData:v94];

      v95 = v31;
      v96 = v31[275];
      v97 = objc_opt_new();
      v98 = [v2[14] manufacturer];
      v99 = [v2[14] brand];
      v100 = v2;
      v101 = [v2[27] mfiPPID];
      v102 = [v97 BOOLValueForSetting:10 manufacturer:v98 brand:v99 uuid:v101 error:0];

      if ((v102 & 1) == 0)
      {
        v103 = KmlLogger();
        if (os_log_type_enabled(v103, OS_LOG_TYPE_INFO))
        {
          v154 = v3;
          v104 = v100[44];
          [v104 UTF8String];
          v105 = [sub_100390B54() manufacturer];
          v106 = [v100[14] brand];
          sub_1003908BC();
          sub_1003909B4(2272);
          *(v107 + 212) = v98;
          v179 = 2112;
          *(v107 + 222) = v105;
          v180 = 2112;
          v181 = v108;
          _os_log_impl(&_mh_execute_header, v103, OS_LOG_TYPE_INFO, "%s : %i : %s : UWB is blocked for %@, %@", buf, 0x30u);

          v3 = v154;
        }

        [v100[27] removeUwbSupportLocally];
      }

      v2 = v100;
      v39 = v158;
      v31 = v95;
    }

    v109 = v2[45];
    v160 = v3;
    v161 = v39;
    v110 = SESEndPointUpdateWithBlock();
    if (sub_1003F6F5C(v111) && (v112 = v31[275], v113 = objc_opt_new(), v114 = [v113 emulateNFCOnlyDevice], v113, v114))
    {
      v115 = KmlLogger();
      if (sub_10036F978(v115))
      {
        sub_1003908BC();
        *(v116 + 206) = 2313;
        sub_100390A14();
        _os_log_impl(v117, v118, v119, v120, v121, 0x12u);
      }

      v122 = 0;
    }

    else
    {
      v122 = 1;
    }

    v123 = +[NISession deviceCapabilities];
    v124 = [v123 supportsPreciseDistanceMeasurement];

    if ([v2[27] readerSupportsUwb] && v122 && v124)
    {
      v125 = KmlLogger();
      if (os_log_type_enabled(v125, OS_LOG_TYPE_INFO))
      {
        v126 = v2[44];
        [v126 UTF8String];

        sub_1003908BC();
        sub_1003909A0(2324);
        sub_100390C7C();
        sub_100367454(v127, v128, v129, v130, v131);
      }

      v132 = v2[45];
      sub_100075DB0();
      SESEndPointConfigureNFCExpressInLPM();
      v133 = v110;

      v110 = v133;
    }

    if (v110)
    {
      v134 = KmlLogger();
      if (os_log_type_enabled(v134, OS_LOG_TYPE_INFO))
      {
        v135 = v2[44];
        [v135 UTF8String];

        sub_1003908BC();
        sub_1003909A0(2329);
        sub_100390C7C();
        sub_100367454(v136, v137, v138, v139, v140);
      }
    }

    v141 = KmlLogger();
    if (os_log_type_enabled(v141, OS_LOG_TYPE_INFO))
    {
      v142 = v2[44];
      [v142 UTF8String];

      sub_1003908BC();
      sub_1003909A0(2333);
      sub_100390C7C();
      sub_100367454(v143, v144, v145, v146, v147);
    }

    v148 = 0;
    v29 = v160;
    v36 = v155;
LABEL_88:
  }

  else
  {
    v148 = 0;
  }

  return v148;
}

id sub_1003D7C98(id *a1)
{
  if (a1)
  {
    v3 = a1;
    if (a1[17])
    {
      v4 = a1[45];
      v50[1] = 0;
      v5 = SESEndPointPrivacyEncryption();
      v6 = 0;
      if (v6)
      {
        v7 = v6;
        v8 = KmlLogger();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v3 = v3[44];
          v2 = [v3 UTF8String];

          sub_100390BA0();
          sub_100390A20();
          sub_100390924();
          v53 = v2;
          v54 = 2112;
          v55 = v7;
          sub_100390B60(&_mh_execute_header, v8, v9, "%s : %i : %s : Failed to encrypt friend tracking request with - %@", buf);
        }

        [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        objc_claimAutoreleasedReturnValue();
        [sub_1003674F0() userInfo];
        objc_claimAutoreleasedReturnValue();
        v10 = [sub_100390BAC() errorWithDomain:v3 code:105 userInfo:v2];

        v11 = v10;
        v12 = v11;
      }

      else
      {
        v13 = [v5 version];
        if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [v3[28] agreedKmlSharingVersion], 768))
        {
          v14 = KmlLogger();
          if (sub_10036DCF8(v14))
          {
            v15 = v3[44];
            v16 = [v15 UTF8String];

            sub_100390BA0();
            sub_100390A20();
            sub_100390924();
            v53 = v16;
            v54 = 2112;
            v55 = v13;
            sub_100390B00();
            _os_log_impl(v17, v18, v19, v20, v21, 0x26u);
          }
        }

        v22 = [DAAlishaKeyEncryptedRequest alloc];
        v23 = [v5 ephemeralPublicKeydata];
        v24 = [v5 receiverPublicKeyHash];
        v25 = [v5 cipherText];
        v26 = [v22 initWithVersion:v13 ephemeralPublicKey:v23 publicKeyHash:v24 encryptedRequest:v25];
        v27 = v3[23];
        v3[23] = v26;

        v28 = v3[23];
        v50[0] = 0;
        v29 = [v28 encodeWithError:v50];
        v30 = v50[0];
        if (v30 || !v29)
        {
          v42 = KmlLogger();
          if (sub_10036F548(v42))
          {
            v43 = v3[44];
            v44 = [v43 UTF8String];

            *buf = 136316162;
            v52 = "[KmlFriendSharingManager encryptAndSaveTrackingRequest]";
            sub_100390A20();
            sub_100390924();
            v53 = v44;
            sub_100390A04();
            v56 = v45;
            v57 = v29;
            _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "%s : %i : %s : Encode key tracking request error %@, trackingRequestData=%@", buf, 0x30u);
          }

          [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          objc_claimAutoreleasedReturnValue();
          v46 = [sub_100390AD8() userInfo];
          v47 = [NSError errorWithDomain:v24 code:105 userInfo:v46];

          v11 = v47;
        }

        else
        {
          v31 = [v3[11] publicKeyIdentifier];
          v32 = kmlUtilHexStringFromData();

          sub_1000167BC();
          sub_1003674E4();
          v49 = v29;
          v33 = SESEndPointUpdateWithBlock();
          if (v33)
          {
            v34 = v33;
            v35 = KmlLogger();
            if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
            {
              v36 = v3[44];
              v37 = [v36 UTF8String];

              *buf = 136315650;
              v52 = "[KmlFriendSharingManager encryptAndSaveTrackingRequest]";
              sub_100390A20();
              sub_100390924();
              v53 = v37;
              sub_10036F590(&_mh_execute_header, v35, v38, "%s : %i : %s : Could not update endpoint", buf);
            }

            v39 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
            v40 = [v34 userInfo];
            v41 = [NSError errorWithDomain:v39 code:105 userInfo:v40];
          }

          else
          {
            sub_100369040(KmlAnalyticsLogger, v32);
            v41 = 0;
          }

          v11 = v41;
        }

        v12 = v11;
      }
    }

    else
    {
      v11 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v58 = NSLocalizedDescriptionKey;
      v5 = [NSString stringWithUTF8String:KmlErrorString()];
      v59 = v5;
      [NSDictionary dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      objc_claimAutoreleasedReturnValue();
      v12 = [sub_100390C88() errorWithDomain:v11 code:104 userInfo:v1];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id sub_1003D84B4(uint64_t a1)
{
  if (a1)
  {
    v2 = SESEndPointCreateKeyPair();
    v3 = 0;
    if (v3)
    {
      v4 = KmlLogger();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        sub_10036BED0();
        v12 = 2146;
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "%s : %i : Failed to create ephemeral key pair", buf, 0x12u);
      }

      v5 = v3;
    }

    else
    {
      v6 = [v2 publicKey];
      v7 = *(a1 + 168);
      *(a1 + 168) = v6;

      v8 = [v2 secretKey];
      v9 = *(a1 + 176);
      *(a1 + 176) = v8;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void sub_1003D85F0(uint64_t a1)
{
  if (a1)
  {
    v2 = +[ACAccountStore defaultStore];
    v30 = ACAccountTypeIdentifierAppleAccount;
    v3 = [NSArray arrayWithObjects:&v30 count:1];
    v23 = 0;
    v4 = [sub_100390B78() accountsWithAccountTypeIdentifiers:? error:?];
    v5 = 0;
    v6 = [v4 firstObject];

    if (!v6 || v5)
    {
      v10 = KmlLogger();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = *(a1 + 352);
        v12 = [v11 UTF8String];

        v25 = 136315906;
        v26 = "[KmlFriendSharingManager checkForWatchOnThisAccount]";
        sub_100390A20();
        sub_100390924();
        v27 = v12;
        v28 = 2112;
        v29 = v5;
        sub_100390B60(&_mh_execute_header, v10, v13, "%s : %i : %s : Failed to lookup account : %@", &v25);
      }

      v14 = KmlLogger();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = *(a1 + 352);
        v16 = [v15 UTF8String];

        v25 = 136315650;
        v26 = "[KmlFriendSharingManager checkForWatchOnThisAccount]";
        sub_100390A20();
        sub_100390924();
        v27 = v16;
        sub_10036F590(&_mh_execute_header, v14, v17, "%s : %i : %s : We are not going to handle this invite. clean up", &v25);
      }

      sub_1003D0A54(a1, 52);
    }

    else
    {
      v7 = objc_alloc_init(AKDeviceListRequestContext);
      [v6 aa_altDSID];
      objc_claimAutoreleasedReturnValue();
      [sub_100390AD8() setAltDSID:v4];

      [v7 setIncludeUntrustedDevices:1];
      v24 = AKServiceNameiCloud;
      [NSArray arrayWithObjects:&v24 count:1];
      objc_claimAutoreleasedReturnValue();
      [sub_100390AD8() setServices:v4];

      [v7 setOperatingSystems:&off_1004DC818];
      v8 = objc_alloc_init(AKAppleIDAuthenticationController);
      sub_100057A60();
      v19 = 3221225472;
      v20 = sub_10039047C;
      v21 = &unk_1004D2250;
      v22 = a1;
      [v9 deviceListWithContext:v7 completion:v18];
    }
  }
}

uint64_t sub_1003D88CC(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 8);
    result = 1;
    switch(v1)
    {
      case 0:
      case 1:
      case 2:
      case 3:
        return result;
      case 11:
        result = 2;
        break;
      case 12:
      case 13:
        result = 3;
        break;
      case 21:
      case 22:
        result = 4;
        break;
      case 23:
        result = 5;
        break;
      default:
        result = 6;
        break;
    }
  }

  return result;
}

id *sub_1003D8E18(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 41, a2);
  }

  return result;
}

uint64_t sub_1003D8E28(uint64_t result)
{
  if (result)
  {
    return *(result + 336);
  }

  return result;
}

uint64_t sub_1003D8E34(uint64_t result)
{
  if (result)
  {
    return *(result + 344);
  }

  return result;
}

char *sub_1003D8E40(void *a1, char a2)
{
  if (!a1)
  {
    return 0;
  }

  v7.receiver = a1;
  v7.super_class = KmlSecureChannel;
  v3 = objc_msgSendSuper2(&v7, "init");
  if (v3)
  {
    v4 = [[NSMutableData alloc] initWithLength:16];
    v5 = *(v3 + 11);
    *(v3 + 11) = v4;

    v3[8] = a2;
    *(v3 + 9) = 256;
  }

  return v3;
}

BOOL sub_1003D8EC8(_BOOL8 result)
{
  if (result)
  {
    return *(result + 48) != 0;
  }

  return result;
}

void sub_1003D8EDC(uint64_t a1)
{
  if (a1)
  {
    v3 = [*(a1 + 104) alishaKey];
    v4 = *(a1 + 32);
    *(a1 + 32) = v3;

    if (KmlLogIsInternalBuild())
    {
      v5 = KmlLogger();
      if (sub_100057AEC(v5))
      {
        v6 = *(a1 + 32);
        sub_10039393C();
        sub_1003757CC();
        sub_100393974(&_mh_execute_header, v7, v8, "%s : %i : SecureChannel: Ksc = %@", v9, v10, v11, v12, v73);
      }
    }

    v13 = [*(a1 + 104) KEnc];
    v14 = *(a1 + 48);
    *(a1 + 48) = v13;

    if (KmlLogIsInternalBuild())
    {
      v15 = KmlLogger();
      if (sub_100057AEC(v15))
      {
        v16 = *(a1 + 48);
        sub_10039393C();
        sub_1003757CC();
        sub_100393974(&_mh_execute_header, v17, v18, "%s : %i : SecureChannel: Kenc = %@", v19, v20, v21, v22, v73);
      }
    }

    v23 = [*(a1 + 104) KMac];
    v24 = *(a1 + 56);
    *(a1 + 56) = v23;

    if (KmlLogIsInternalBuild())
    {
      v25 = KmlLogger();
      if (sub_100057AEC(v25))
      {
        v26 = *(a1 + 56);
        sub_10039393C();
        sub_1003757CC();
        sub_100393974(&_mh_execute_header, v27, v28, "%s : %i : SecureChannel: Kmac = %@", v29, v30, v31, v32, v73);
      }
    }

    v33 = [*(a1 + 104) KRMac];
    v34 = *(a1 + 64);
    *(a1 + 64) = v33;

    if (KmlLogIsInternalBuild())
    {
      v35 = KmlLogger();
      if (sub_100057AEC(v35))
      {
        v36 = *(a1 + 64);
        sub_10039393C();
        sub_1003757CC();
        sub_100393974(&_mh_execute_header, v37, v38, "%s : %i : SecureChannel: Krmac = %@", v39, v40, v41, v42, v73);
      }
    }

    v43 = [*(a1 + 104) SymmetricLTS];
    v44 = *(a1 + 40);
    *(a1 + 40) = v43;

    if (KmlLogIsInternalBuild())
    {
      v45 = KmlLogger();
      if (sub_100057AEC(v45))
      {
        v46 = *(a1 + 40);
        sub_10039393C();
        sub_1003757CC();
        sub_100393974(&_mh_execute_header, v47, v48, "%s : %i : SecureChannel: LTS = %@", v49, v50, v51, v52, v73);
      }
    }

    v53 = [*(a1 + 104) Kble_intro];
    v54 = *(a1 + 72);
    *(a1 + 72) = v53;

    if (KmlLogIsInternalBuild())
    {
      v55 = KmlLogger();
      if (sub_100057AEC(v55))
      {
        v56 = *(a1 + 72);
        sub_10039393C();
        sub_1003757CC();
        sub_100393974(&_mh_execute_header, v57, v58, "%s : %i : SecureChannel: Kble_intro = %@", v59, v60, v61, v62, v73);
      }
    }

    v63 = [*(a1 + 104) Kble_oob_master];
    v64 = *(a1 + 80);
    *(a1 + 80) = v63;

    if (KmlLogIsInternalBuild())
    {
      v65 = KmlLogger();
      if (sub_100057AEC(v65))
      {
        v66 = *(a1 + 80);
        sub_10039393C();
        sub_1003757CC();
        sub_100393974(&_mh_execute_header, v67, v68, "%s : %i : SecureChannel: Kble_oob_master = %@", v69, v70, v71, v72, v73);
      }
    }
  }
}

id *sub_1003D91CC(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = KmlLogger();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [a1[12] debugDescription];
      v14[0] = 136316162;
      sub_1003672C0();
      sub_1003939E8();
      v15 = v5;
      v16 = v9;
      v17 = v6;
      v18 = v9;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "%s : %i : SecureChannel: curvePointY - %@, remoteEvidence - %@, pakeClient - %@", v14, 0x30u);
    }

    v11 = [a1[12] processResponseWithY:v5 M1:v6];
    v12 = a1[13];
    a1[13] = v11;

    a1 = [a1[13] M2];
  }

  return a1;
}

void *sub_1003D931C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, unsigned int a5, uint64_t a6, uint64_t a7, void *a8)
{
  sub_100393A20();
  v14 = v13;
  v15 = v8;
  v16 = a4;
  v17 = a8;
  if (v9)
  {
    v18 = KmlLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v30 = 136316162;
      v31 = "[KmlSecureChannel handlePakeRequestWithScrypt:pairingPassword:salt:cpuCost:blocksize:parallelization:pakeVersion:]";
      sub_1003939BC();
      sub_1003939E8();
      v33 = v15;
      v34 = v19;
      v35 = v16;
      v36 = v19;
      v37 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "%s : %i : SecureChannel: pairingPassword - %@, salt - %@, pakeVersion - %@", &v30, 0x30u);
    }

    v20 = [[_TtC16CryptoKitPrivate18AlishaSPAKE2Prover alloc] initWithPassword:v15 salt:v16 authenticatedData:v17 keyDerivationCost:a5];
    v21 = v9[12];
    v9[12] = v20;

    v22 = v9[12];
    if (v22)
    {
      v9 = [v22 getX];
    }

    else
    {
      v23 = KmlLogger();
      if (sub_10036DC64(v23))
      {
        v30 = 136315394;
        v31 = "[KmlSecureChannel handlePakeRequestWithScrypt:pairingPassword:salt:cpuCost:blocksize:parallelization:pakeVersion:]";
        sub_1003939BC();
        v32 = 123;
        sub_100393964();
        _os_log_impl(v24, v25, v26, v27, v28, 0x12u);
      }

      v9 = 0;
    }
  }

  return v9;
}

BOOL sub_1003D9674(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a1)
  {
    if ([v10 length] == 8)
    {
      v5 = [NSMutableData dataWithLength:16];
      v14 = [*(a1 + 88) mutableCopy];
      if ((*(a1 + 8) & 1) == 0)
      {
        v15 = KmlLogger();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          sub_10036DC30();
          v74 = 220;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_INFO, "%s : %i : SecureChannel: Header included in CommandMac calculation.", buf, 0x12u);
        }

        [v14 appendData:v13];
      }

      [v14 appendData:v12];
      [v11 bytes];
      [v14 bytes];
      v16 = [v14 length];
      [v5 mutableBytes];
      CCAESCmac();
      v17 = timingsafe_bcmp([v10 bytes], objc_msgSend(v5, "bytes"), 8uLL);
      v18 = v17 == 0;
      if (KmlLogIsInternalBuild())
      {
        v19 = KmlLogger();
        if (sub_100367508(v19))
        {
          *buf = 136315650;
          sub_10036DC30();
          sub_10036F460();
          v76 = v11;
          sub_100393994();
          _os_log_impl(v20, v21, v22, v23, v24, v25);
        }
      }

      v26 = KmlLogger();
      if (sub_100367508(v26))
      {
        *buf = 136315650;
        sub_10036DC30();
        sub_10036F460();
        v76 = v14;
        sub_100393994();
        _os_log_impl(v27, v28, v29, v30, v31, v32);
      }

      v33 = KmlLogger();
      if (sub_100367508(v33))
      {
        *buf = 136315650;
        sub_10036DC30();
        sub_10036F460();
        v76 = v10;
        sub_100393994();
        _os_log_impl(v34, v35, v36, v37, v38, v39);
      }

      v40 = KmlLogger();
      if (sub_100367508(v40))
      {
        [v5 subdataWithRange:{0, 8}];
        v41 = v11;
        v42 = v12;
        v44 = v43 = v13;
        *buf = 136315650;
        sub_10036DC30();
        sub_10036F460();
        v76 = v45;
        sub_100393994();
        _os_log_impl(v46, v47, v48, v49, v50, v51);

        v13 = v43;
        v12 = v42;
        v11 = v41;
        v18 = v17 == 0;
      }

      if (!v17)
      {
        v52 = [v5 copy];
        v53 = *(a1 + 88);
        *(a1 + 88) = v52;

        v54 = KmlLogger();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
        {
          v55 = *(a1 + 88);
          *buf = 136315650;
          v72 = "[KmlSecureChannel verifyMac:withKey:forPayload:header:error:]";
          v73 = 1024;
          v74 = 236;
          v75 = 2112;
          v76 = v55;
          sub_100393994();
          _os_log_impl(v56, v57, v58, v59, v60, v61);
        }

        *(a1 + 9) = 0;
      }
    }

    else
    {
      v62 = KmlLogger();
      if (sub_10036DC64(v62))
      {
        [v10 length];
        *buf = 136315650;
        sub_10036DC30();
        v74 = 211;
        v75 = 2048;
        v76 = v63;
        sub_100393994();
        _os_log_impl(v64, v65, v66, v67, v68, v69);
      }

      v18 = 0;
    }
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

id sub_1003D9B34(uint64_t a1)
{
  if (a1)
  {
    v2 = [sub_100393A2C() dataWithLength:?];
    *([v2 mutableBytes] + 15) = *(a1 + 10);
    v3 = [sub_100393A2C() dataWithLength:?];
    v20 = 0;
    v4 = *(a1 + 48);
    v5 = [v4 bytes];
    v6 = [*(a1 + 48) length];
    v7 = [v2 mutableBytes];
    v8 = [v2 length];
    dataOut = [v3 mutableBytes];
    dataOutAvailable = [v3 length];
    v10 = sub_1003939C8();
    v13 = CCCrypt(v10, v11, v12, v5, v6, 0, v7, v8, dataOut, dataOutAvailable, &v20);

    if (v13)
    {
      v14 = KmlLogger();
      if (sub_10036DCF8(v14))
      {
        *v21 = 136315650;
        sub_1003939F8();
        *&v21[7] = 263;
        v21[9] = v15;
        v22 = v13;
        sub_100393A08(&_mh_execute_header, v4, v16, "%s : %i : SecureChannel: generateICV failed with %d", v21);
      }

      v17 = 0;
    }

    else
    {
      v17 = v3;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

id sub_1003D9CF4(uint64_t a1)
{
  if (a1)
  {
    v2 = [sub_100393A2C() dataWithLength:?];
    v3 = [v2 mutableBytes];
    *v3 = 0x80;
    v4 = *(a1 + 10);
    v5 = v4 != 0;
    v6 = v4 - 1;
    if (!v5)
    {
      v6 = 0;
    }

    v3[15] = v6;
    v7 = [sub_100393A2C() dataWithLength:?];
    v32 = 0;
    v8 = *(a1 + 48);
    v9 = [v8 bytes];
    v10 = *(a1 + 48);
    v11 = [v10 length];
    v12 = [v2 mutableBytes];
    v13 = [v2 length];
    dataOut = [v7 mutableBytes];
    dataOutAvailable = [v7 length];

    v16 = sub_1003939C8();
    v19 = CCCrypt(v16, v17, v18, v9, v11, 0, v12, v13, dataOut, dataOutAvailable, &v32);

    v20 = KmlLogger();
    v21 = sub_10036DCF8(v20);
    if (v19)
    {
      if (v21)
      {
        v33[0] = 136315650;
        sub_1003939F8();
        v34 = 285;
        v35 = v22;
        LODWORD(v36) = v19;
        sub_100393A08(&_mh_execute_header, v8, v23, "%s : %i : SecureChannel: generateICV failed with %d", v33);
      }

      v24 = 0;
    }

    else
    {
      if (v21)
      {
        v33[0] = 136315650;
        sub_1003939F8();
        v34 = 281;
        v35 = 2112;
        v36 = v7;
        sub_100393994();
        _os_log_impl(v25, v26, v27, v28, v29, v30);
      }

      v24 = v7;
    }
  }

  else
  {
    v24 = 0;
  }

  return v24;
}

id *sub_1003D9F30()
{
  sub_100393A20();
  v4 = v3;
  v5 = v0;
  if (v2)
  {
    if (v4 && [v4 length])
    {
      v1 = [v4 mutableCopy];
      v32 = 0x80;
      [v1 appendBytes:&v32 length:1];
      v6 = [v1 length] & 0xF;
      if (v6)
      {
        [v1 increaseLengthBy:(16 - v6)];
      }

      v7 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [v1 length]);
      v31 = 0;
      v8 = v2[6];
      v9 = [v8 bytes];
      v10 = [v2[6] length];
      v30 = v5;
      v11 = [v5 bytes];
      v12 = [v1 bytes];
      v13 = [v1 length];
      dataOut = [v7 mutableBytes];
      dataOutAvailable = [v7 length];
      v15 = sub_1003939C8();
      v18 = CCCrypt(v15, v16, v17, v9, v10, v11, v12, v13, dataOut, dataOutAvailable, &v31);

      if (v18)
      {
        v19 = KmlLogger();
        if (sub_10036DC64(v19))
        {
          v33 = 136315650;
          v34 = "[KmlSecureChannel encryptData:withICV:error:]";
          v35 = 1024;
          v36 = 320;
          v37 = 1024;
          v38 = v18;
          sub_100393A08(&_mh_execute_header, v10, v20, "%s : %i : SecureChannel: encrypt returned %d", &v33);
        }

        v2 = 0;
      }

      else
      {
        [v7 setLength:v31];
        v2 = v7;
      }

      v5 = v30;
    }

    else
    {
      v21 = KmlLogger();
      if (sub_10036DCF8(v21))
      {
        v33 = 136315394;
        v34 = "[KmlSecureChannel encryptData:withICV:error:]";
        v35 = 1024;
        v36 = 293;
        sub_1003939AC();
        _os_log_impl(v22, v23, v24, v25, v26, v27);
      }

      v2 = 0;
    }
  }

  return v2;
}

uint64_t sub_1003DA1D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if ([v3 length])
    {
      v5 = [v4 bytes];
      v6 = [v4 length];
      while (v6)
      {
        v7 = v5[--v6];
        if (v7)
        {
          if (v7 == 128)
          {
            [v4 setLength:?];
            goto LABEL_8;
          }

          break;
        }
      }

      a1 = 0;
    }

    else
    {
LABEL_8:
      a1 = 1;
    }
  }

  return a1;
}

void *sub_1003DA260(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_100393A20();
  v8 = v7;
  v9 = v4;
  if (v5)
  {
    if (([v8 length] & 0xF) != 0)
    {
      v10 = KmlLogger();
      if (sub_10036DCF8(v10))
      {
        *buf = 136315394;
        sub_1003939D8();
        v33 = 354;
        sub_1003939AC();
        _os_log_impl(v11, v12, v13, v14, v15, v16);
      }

      v17 = 0;
      goto LABEL_11;
    }

    v28 = a4;
    a4 = +[NSMutableData dataWithLength:](NSMutableData, "dataWithLength:", [v8 length]);
    v29 = 0;
    v18 = v5[6].isa;
    v19 = CCCrypt(1u, 0, 0, -[objc_class bytes](v18, "bytes"), -[objc_class length](v5[6].isa, "length"), [v9 bytes], objc_msgSend(v8, "bytes"), objc_msgSend(v8, "length"), objc_msgSend(a4, "mutableBytes"), objc_msgSend(a4, "length"), &v29);

    if (v19)
    {
      v20 = KmlLogger();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        *buf = 136315650;
        sub_1003939D8();
        v33 = 366;
        v34 = v21;
        v35 = v19;
        sub_100393A08(&_mh_execute_header, v20, v22, "%s : %i : SecureChannel: decrypt returned %d", buf);
      }
    }

    else
    {
      [a4 setLength:v29];
      if (sub_1003DA1D0(v5, a4))
      {
        v17 = a4;
        goto LABEL_11;
      }

      if (KmlLogIsInternalBuild())
      {
        v24 = KmlLogger();
        if (sub_10036DC64(v24))
        {
          *buf = 136315394;
          sub_1003939D8();
          v33 = 373;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : SecureChannel: decryption failed", buf, 0x12u);
        }
      }

      if (v28)
      {
        v25 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        v30 = NSLocalizedDescriptionKey;
        v26 = [NSString stringWithUTF8String:KmlErrorString()];
        v31 = v26;
        v27 = [NSDictionary dictionaryWithObjects:&v31 forKeys:&v30 count:1];
        *v28 = [NSError errorWithDomain:v25 code:202 userInfo:v27];
      }
    }

    v17 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v17 = 0;
LABEL_12:

  return v17;
}

_BYTE *sub_1003DA868(_BYTE *a1, void *a2, int a3)
{
  v5 = a2;
  if (a1)
  {
    if (a1[9] == 1)
    {
      sub_1003DAAD0();
    }

    v6 = sub_1003D9CF4(a1);
    v7 = sub_1003D9F30();

    if (!v7)
    {
      v12 = KmlLogger();
      if (sub_10036DCF8(v12))
      {
        *v38 = 136315394;
        *&v38[4] = "[KmlSecureChannel encryptResponsePayload:statusWord:error:]";
        sub_1003939BC();
        v40 = 419;
        sub_1003939AC();
        _os_log_impl(v13, v14, v15, v16, v17, v18);
      }

      v7 = +[NSMutableData data];
    }

    v19 = sub_1003D94E8(a1, *(a1 + 8), v7, a3, v8, v9, v10, v11, *v38, *&v38[8], v39, v40, BYTE2(v40), v41, *v42, *&v42[4], v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54);
    if (v19)
    {
      v20 = KmlLogger();
      if (sub_10036DC64(v20))
      {
        v21 = *(a1 + 11);
        sub_1003939A0();
        sub_1003757CC();
        sub_100393950();
        _os_log_impl(v22, v23, v24, v25, v26, v27);
      }

      v28 = KmlLogger();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
      {
        v29 = [v19 subdataWithRange:{0, 8}];
        sub_1003939BC();
        sub_1003939E8();
        sub_100393950();
        _os_log_impl(v30, v31, v32, v33, v34, v35);
      }

      v36 = [v19 subdataWithRange:{0, 8}];
      [v7 appendData:v36];

      a1[9] = 1;
      a1 = v7;
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

void sub_1003DAAD0()
{
  sub_100393A38();
  if (v0)
  {
    v1 = v0;
    v2 = *(v0 + 56);
    v3 = [NSMutableData dataWithLength:16];
    v4 = [*(v1 + 88) mutableCopy];
    v5 = [v2 bytes];
    [v4 bytes];
    [v4 length];
    [v3 mutableBytes];
    sub_100393A50();
    v6 = [v3 copy];
    v7 = *(v1 + 88);
    *(v1 + 88) = v6;

    v8 = KmlLogger();
    if (sub_10036DC64(v8))
    {
      v9 = *(v1 + 88);
      sub_1003939A0();
      sub_1003757CC();
      sub_100393950();
      _os_log_impl(v10, v11, v12, v13, v14, v15);
    }

    ++*(v1 + 10);
    v16 = KmlLogger();
    if (sub_10036DC64(v16))
    {
      v17 = *(v1 + 10);
      sub_1003939A0();
      sub_100393964();
      _os_log_impl(v18, v19, v20, v21, v22, 0x18u);
    }

    *(v1 + 9) = 0;
  }

  sub_100393A70();
}

uint64_t sub_1003DAC74(uint64_t result)
{
  if (result)
  {
    return *(result + 18);
  }

  return result;
}

uint64_t sub_1003DAC80(uint64_t result)
{
  if (result)
  {
    return *(result + 9);
  }

  return result;
}

uint64_t sub_1003DAC8C(uint64_t result)
{
  if (result)
  {
    return *(result + 12);
  }

  return result;
}

uint64_t sub_1003DAC98(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 13);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1003DACB0(uint64_t result)
{
  if (result)
  {
    return *(result + 200);
  }

  return result;
}

uint64_t sub_1003DACBC(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 14);
  }

  else
  {
    v1 = 0;
  }

  return v1 & 1;
}

uint64_t sub_1003DACD4(uint64_t result)
{
  if (result)
  {
    return *(result + 15);
  }

  return result;
}

BOOL sub_1003DACE0(_BOOL8 result)
{
  if (result)
  {
    return *(result + 32) && *(result + 40) == 0;
  }

  return result;
}

uint64_t sub_1003DAD04(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 56) = a2;
  }

  return result;
}

uint64_t sub_1003DAD10(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 64) = a2;
  }

  return result;
}

uint64_t sub_1003DAD1C(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 88) = a2;
  }

  return result;
}

uint64_t sub_1003DAD28(uint64_t result, __int16 a2)
{
  if (result)
  {
    *(result + 16) = a2;
  }

  return result;
}

uint64_t sub_1003DAD34(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

uint64_t sub_1003DAD40(uint64_t result, __int16 a2)
{
  if (result)
  {
    *(result + 18) = a2;
  }

  return result;
}

void sub_1003DAD4C(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 128), a2);
  }
}

uint64_t sub_1003DAD5C(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 10) = a2;
  }

  return result;
}

uint64_t sub_1003DAD68(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 11) = a2;
  }

  return result;
}

uint64_t sub_1003DAD74(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 12) = a2;
  }

  return result;
}

void sub_1003DAD80(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 136), a2);
  }
}

void sub_1003DAD90(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 144), a2);
  }
}

void sub_1003DADA0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 152), a2);
  }
}

void sub_1003DADB0(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 160), a2);
  }
}

uint64_t sub_1003DADC0(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 13) = a2;
  }

  return result;
}

void sub_1003DADCC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 168), a2);
  }
}

void sub_1003DADDC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 176), a2);
  }
}

void sub_1003DADEC(uint64_t a1, void *a2)
{
  if (a1)
  {
    objc_storeStrong((a1 + 184), a2);
  }
}

uint64_t sub_1003DADFC(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 192) = a2;
  }

  return result;
}

uint64_t sub_1003DAE08(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(result + 200) = a2;
  }

  return result;
}

uint64_t sub_1003DAE14(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 14) = a2;
  }

  return result;
}

uint64_t sub_1003DAE20(uint64_t result, char a2)
{
  if (result)
  {
    *(result + 15) = a2;
  }

  return result;
}

void sub_1003DAE2C(uint64_t a1)
{
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 24));
    v2 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10039540C;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_sync(v2, block);
  }
}

void sub_1003DAEB8(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (v4 && *(v4 + 20))
    {
      sub_1003963CC();
      v7[1] = 3221225472;
      v7[2] = sub_10039641C;
      v7[3] = &unk_1004C22F0;
      v7[4] = a1;
      v8 = v5;
      dispatch_async(v2, v7);
    }

    else
    {
      v6 = KmlLogger();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v10 = "[KmlSharingRecordsUpdater updateConfig:]";
        v11 = 1024;
        v12 = 263;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : Invalid sharing config. Ignore it", buf, 0x12u);
      }
    }
  }
}

void sub_1003DAFF0(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 24);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100394E0C;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_sync(v1, block);
  }
}

void sub_1003DB06C(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 24));
    sub_1003963CC();
    v5[1] = 3221225472;
    v5[2] = sub_100395E70;
    v5[3] = &unk_1004C22F0;
    v5[4] = a1;
    v6 = v4;
    dispatch_sync(v2, v5);
  }
}

id sub_1003DB100(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (*(a1 + 104))
    {
      [*(a1 + 16) appendData:v3];
      a1 = 0;
    }

    else
    {
      [*(a1 + 8) appendData:v3];
      a1 = sub_1003DB17C(a1);
    }
  }

  return a1;
}

id sub_1003DB17C(uint64_t a1)
{
  if (a1)
  {
    v5 = [KmlTlv TLVsWithData:*(a1 + 8)];
    [*(a1 + 8) setLength:0];
    sub_1003970DC();
    obj = v5;
    v6 = [obj countByEnumeratingWithState:v258 objects:v279 count:16];
    if (!v6)
    {
      v9 = 0;
      goto LABEL_66;
    }

    v8 = v6;
    v9 = 0;
    v257 = *v260;
    *&v7 = 136315650;
    v255 = v7;
    *&v7 = 136315394;
    v254 = v7;
    while (1)
    {
      v10 = 0;
      do
      {
        if (*v260 != v257)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(v259 + 8 * v10);
        if ([v11 tag] == 32586)
        {
          if (*(a1 + 56))
          {
            v2 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
            v275 = NSLocalizedDescriptionKey;
            v12 = [NSString stringWithUTF8String:KmlErrorString()];
            v276 = v12;
            v1 = [NSDictionary dictionaryWithObjects:&v276 forKeys:&v275 count:1];
            v3 = [NSError errorWithDomain:v2 code:3 userInfo:v1];

            v13 = KmlLogger();
            if (sub_1003970EC(v13))
            {
              v14 = [v11 value];
              v15 = kmlUtilHexStringFromData();
              sub_100396F64(v15, v16, v17, v18, v19, v20, v21, v22, v254, *(&v254 + 1), v255);
              sub_100396ED4(v23);
              sub_100396E9C(v24, v25);
              sub_100397078();
              v30 = "%s : %i : KeyCreationConfig: Received Duplicated Endpoint creation Data : %@";
              goto LABEL_15;
            }

            goto LABEL_16;
          }

          v130 = KmlLogger();
          if (sub_100367508(v130))
          {
            v2 = [v11 value];
            v131 = kmlUtilHexStringFromData();
            sub_100396F64(v131, v132, v133, v134, v135, v136, v137, v138, v254, *(&v254 + 1), v255);
            sub_100396ED4(v139);
            sub_100396E9C(v140, v141);
            sub_10036F240();
            _os_log_impl(v142, v143, v144, "%s : %i : KeyCreationConfig: Received Endpoint creation Data : %@", v145, 0x1Cu);
          }

          v146 = [v11 value];
          v147 = *(a1 + 56);
          *(a1 + 56) = v146;

          v148 = [KmlTlv TLVsWithData:*(a1 + 56)];
          v149 = [NSMutableArray arrayWithArray:v148];
          v150 = *(a1 + 72);
          *(a1 + 72) = v149;

          v151 = sub_1003DC464(a1);
          v152 = *(a1 + 96);
          *(a1 + 96) = v151;

          v153 = sub_1003DC544(a1);
          v86 = *(a1 + 112);
          *(a1 + 112) = v153;
LABEL_50:

          goto LABEL_51;
        }

        if ([v11 tag] == 32587)
        {
          if (*(a1 + 144))
          {
            [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
            objc_claimAutoreleasedReturnValue();
            sub_100397084();
            v273 = v31;
            v32 = [NSString stringWithUTF8String:KmlErrorString()];
            v274 = v32;
            [NSDictionary dictionaryWithObjects:&v274 forKeys:&v273 count:1];
            objc_claimAutoreleasedReturnValue();
            v3 = [sub_100396EF8() errorWithDomain:? code:? userInfo:?];

            v33 = KmlLogger();
            if (sub_1003970EC(v33))
            {
              v14 = [v11 value];
              v15 = kmlUtilHexStringFromData();
              sub_100396F64(v15, v34, v35, v36, v37, v38, v39, v40, v254, *(&v254 + 1), v255);
              sub_100396ED4(v41);
              sub_100396E9C(v42, v43);
              sub_100397078();
              v30 = "%s : %i : KeyCreationConfig: Received Duplicated remote public key : %@";
              goto LABEL_15;
            }

            goto LABEL_16;
          }

          v84 = [v11 value];
          kmlUtilLogLargeData();

          v85 = [v11 value];
          v86 = *(a1 + 144);
          *(a1 + 144) = v85;
          goto LABEL_50;
        }

        if ([v11 tag] == 32588)
        {
          if (*(a1 + 24))
          {
            [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
            objc_claimAutoreleasedReturnValue();
            sub_100397084();
            v271 = v44;
            v45 = v11[141];
            KmlErrorString();
            v46 = [sub_10039719C() stringWithUTF8String:?];
            v272 = v46;
            [NSDictionary dictionaryWithObjects:&v272 forKeys:&v271 count:1];
            objc_claimAutoreleasedReturnValue();
            v47 = [sub_100396EF8() errorWithDomain:? code:? userInfo:?];

            v48 = KmlLogger();
            v49 = sub_1003970EC(v48);
            if (v49)
            {
              sub_100396F90(v49, v50, v51, v52, v53, v54, v55, v56, v254);
              sub_100396ED4(v57);
              sub_100397090(v58);
              sub_100397078();
              v63 = "%s : %i : KeyCreationConfig: Received Duplicated chain cert part.";
              goto LABEL_21;
            }

            goto LABEL_26;
          }

          v100 = KmlLogger();
          v101 = sub_100367508(v100);
          if (v101)
          {
            sub_100396F90(v101, v102, v103, v104, v105, v106, v107, v108, v254);
            sub_100396ED4(v109);
            sub_100397090(v110);
            sub_10036F240();
            _os_log_impl(v111, v112, v113, "%s : %i : KeyCreationConfig: Received chain cert part.", v114, 0x12u);
          }

          v115 = [v11 value];
          v86 = *(a1 + 24);
          *(a1 + 24) = v115;
          goto LABEL_50;
        }

        if ([v11 tag] == 32589)
        {
          if (*(a1 + 40))
          {
            [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
            objc_claimAutoreleasedReturnValue();
            sub_100397084();
            v269 = v64;
            v65 = v11[141];
            KmlErrorString();
            v66 = [sub_10039719C() stringWithUTF8String:?];
            v270 = v66;
            [NSDictionary dictionaryWithObjects:&v270 forKeys:&v269 count:1];
            objc_claimAutoreleasedReturnValue();
            v47 = [sub_100396EF8() errorWithDomain:? code:? userInfo:?];

            v67 = KmlLogger();
            if (sub_1003970EC(v67))
            {
              v68 = *(a1 + 40);
              v69 = kmlUtilHexStringFromData();
              sub_100396F64(v69, v70, v71, v72, v73, v74, v75, v76, v254, *(&v254 + 1), v255);
              sub_100396ED4(v77);
              sub_100396E9C(v78, v79);
              sub_100397078();
              _os_log_impl(v80, v81, v82, "%s : %i : KeyCreationConfig: Received Duplicated Mailbox mapping : %@", v83, 0x1Cu);
            }

            goto LABEL_26;
          }

          v154 = [v11 asData];
          v155 = *(a1 + 40);
          *(a1 + 40) = v154;

          v156 = KmlLogger();
          if (os_log_type_enabled(v156, OS_LOG_TYPE_INFO))
          {
            v157 = *(a1 + 40);
            v158 = kmlUtilHexStringFromData();
            sub_100396F64(v158, v159, v160, v161, v162, v163, v164, v165, v254, *(&v254 + 1), v255);
            sub_100396ED4(v166);
            sub_100396E9C(v167, v168);
            _os_log_impl(&_mh_execute_header, v156, OS_LOG_TYPE_INFO, "%s : %i : KeyCreationConfig: Received Mailbox mapping : %@", v169, 0x1Cu);
          }

          goto LABEL_59;
        }

        if ([v11 tag] == 32590)
        {
          if (*(a1 + 48))
          {
            [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
            objc_claimAutoreleasedReturnValue();
            sub_100397084();
            v267 = v87;
            v88 = [NSString stringWithUTF8String:KmlErrorString()];
            v268 = v88;
            [NSDictionary dictionaryWithObjects:&v268 forKeys:&v267 count:1];
            objc_claimAutoreleasedReturnValue();
            v3 = [sub_100396EF8() errorWithDomain:? code:? userInfo:?];

            v89 = KmlLogger();
            if (sub_1003970EC(v89))
            {
              v14 = [v11 value];
              v15 = kmlUtilHexStringFromData();
              sub_100396F64(v15, v90, v91, v92, v93, v94, v95, v96, v254, *(&v254 + 1), v255);
              sub_100396ED4(v97);
              sub_100396E9C(v98, v99);
              sub_100397078();
              v30 = "%s : %i : KeyCreationConfig: Received Duplicated device config : %@";
LABEL_15:
              _os_log_impl(v26, v27, v28, v30, v29, 0x1Cu);
            }

LABEL_16:

            v9 = v3;
            goto LABEL_51;
          }

          v189 = KmlLogger();
          if (sub_100367508(v189))
          {
            v190 = [v11 value];
            v1 = kmlUtilHexStringFromData();
            sub_100396F64(v1, v191, v192, v193, v194, v195, v196, v197, v254, *(&v254 + 1), v255);
            sub_100396ED4(v198);
            sub_100396E9C(v199, v200);
            sub_10036F240();
            _os_log_impl(v201, v202, v203, "%s : %i : KeyCreationConfig: Received device config : %@", v204, 0x1Cu);
          }

          v205 = [v11 value];
          v206 = *(a1 + 48);
          *(a1 + 48) = v205;

          v207 = [KmlTlv TLVsWithData:*(a1 + 48)];
          v86 = *(a1 + 80);
          *(a1 + 80) = v207;
          goto LABEL_50;
        }

        [v11 tag];
        if (!isEndOfKeyConfigTag())
        {
          if ([v11 tag] != 0xFFFF)
          {
            [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
            objc_claimAutoreleasedReturnValue();
            sub_100397084();
            v261 = v170;
            v171 = [NSString stringWithUTF8String:KmlErrorString()];
            v262 = v171;
            [NSDictionary dictionaryWithObjects:&v262 forKeys:&v261 count:1];
            objc_claimAutoreleasedReturnValue();
            v3 = [sub_100397104() errorWithDomain:? code:? userInfo:?];

            v172 = KmlLogger();
            if (sub_1003970EC(v172))
            {
              v173 = [v11 tag];
              sub_100396F64(v173, v174, v175, v176, v177, v178, v179, v180, v254, *(&v254 + 1), v255);
              sub_100396ED4(v181);
              *(v182 + 14) = 290;
              v277 = v183;
              v278 = v184;
              sub_100397078();
              _os_log_impl(v185, v186, v187, "%s : %i : KeyCreationConfig: TLV with un-expected tag (0x%04x)", v188, 0x18u);
            }

            goto LABEL_16;
          }

          v224 = KmlLogger();
          v225 = sub_100367508(v224);
          if (v225)
          {
            sub_100396F90(v225, v226, v227, v228, v229, v230, v231, v232, v254);
            sub_100396ED4(v233);
            sub_100397090(v234);
            sub_10036F240();
            _os_log_impl(v235, v236, v237, "%s : %i : KeyCreationConfig: Received partial data TLV", v238, 0x12u);
          }

          v239 = *(a1 + 8);
          v156 = [v11 value];
          [v239 appendData:v156];
LABEL_59:

          goto LABEL_51;
        }

        if (*(a1 + 128))
        {
          [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          objc_claimAutoreleasedReturnValue();
          sub_100397084();
          v263 = v116;
          v117 = v11[141];
          KmlErrorString();
          v118 = [sub_10039719C() stringWithUTF8String:?];
          v264 = v118;
          [NSDictionary dictionaryWithObjects:&v264 forKeys:&v263 count:1];
          objc_claimAutoreleasedReturnValue();
          v47 = [sub_100396EF8() errorWithDomain:? code:? userInfo:?];

          v119 = KmlLogger();
          v120 = sub_1003970EC(v119);
          if (v120)
          {
            sub_100396F90(v120, v121, v122, v123, v124, v125, v126, v127, v254);
            sub_100396ED4(v128);
            sub_100397090(v129);
            sub_100397078();
            v63 = "%s : %i : KeyCreationConfig: Received Duplicated Data Complete TLV";
            goto LABEL_21;
          }

          goto LABEL_26;
        }

        v208 = [v11 value];
        v209 = [v208 length];

        if (v209)
        {
          [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          objc_claimAutoreleasedReturnValue();
          sub_100397084();
          v265 = v210;
          v211 = v209[141];
          KmlErrorString();
          v212 = [sub_10039719C() stringWithUTF8String:?];
          v266 = v212;
          [NSDictionary dictionaryWithObjects:&v266 forKeys:&v265 count:1];
          objc_claimAutoreleasedReturnValue();
          v47 = [sub_100397104() errorWithDomain:? code:? userInfo:?];

          v213 = KmlLogger();
          v214 = sub_1003970EC(v213);
          if (v214)
          {
            sub_100396F90(v214, v215, v216, v217, v218, v219, v220, v221, v254);
            sub_100396ED4(v222);
            sub_100397090(v223);
            sub_100397078();
            v63 = "%s : %i : KeyCreationConfig: Received Invalid Data after EndOfKeyConfigTag";
LABEL_21:
            _os_log_impl(v59, v60, v61, v63, v62, 0x12u);
          }

LABEL_26:

          v9 = v47;
          goto LABEL_51;
        }

        v240 = KmlLogger();
        v241 = os_log_type_enabled(v240, OS_LOG_TYPE_INFO);
        if (v241)
        {
          sub_100396F90(v241, v242, v243, v244, v245, v246, v247, v248, v254);
          sub_100396ED4(v249);
          sub_100397090(v250);
          _os_log_impl(&_mh_execute_header, v240, OS_LOG_TYPE_INFO, "%s : %i : KeyCreationConfig: Received Data Complete TLV", v251, 0x12u);
        }

        *(a1 + 128) = 1;
LABEL_51:
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v252 = [obj countByEnumeratingWithState:v258 objects:v279 count:16];
      v8 = v252;
      if (!v252)
      {
LABEL_66:

        goto LABEL_67;
      }
    }
  }

  v9 = 0;
LABEL_67:

  return v9;
}

void sub_1003DBE38(uint64_t a1, void *a2)
{
  v7 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 56), a2);
    v4 = [KmlTlv TLVsWithData:*(a1 + 56)];
    v5 = [NSMutableArray arrayWithArray:v4];
    v6 = *(a1 + 72);
    *(a1 + 72) = v5;
  }
}

void sub_1003DBED8(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (![*(a1 + 56) length])
    {
      v24 = KmlLogger();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        *v31 = 136315394;
        sub_100389B3C(v31);
        v32 = v25;
        *(v26 + 14) = 178;
        sub_10036DC0C(&_mh_execute_header, v24, v27, "%s : %i : We don't have endpointCreationData, so first absorb all SiaC data", v31);
      }

      sub_1003DBE38(a1, v3);
    }

    v4 = [KmlTlv TLVsWithData:v3];
    v5 = +[NSMutableData data];
    sub_100396F74();
    v6 = v4;
    sub_1003970A8();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v16 = v8;
      v17 = *v30;
      do
      {
        v18 = 0;
        do
        {
          sub_100396FA0(v8, v9, v10, v11, v12, v13, v14, v15, v28, v29, v30);
          if (v19 != v17)
          {
            objc_enumerationMutation(v6);
          }

          v20 = *(v29 + 8 * v18);
          if ([v20 tag] == 74 || objc_msgSend(v20, "tag") == 75)
          {
            v21 = [v20 asData];
            [v5 appendData:v21];
          }

          else if ([v20 tag] == 70)
          {
            v8 = [v20 valueAsUnsignedChar];
            *(a1 + 129) = v8;
          }

          else
          {
            v8 = [v20 tag];
            if (v8 == 71)
            {
              v8 = [v20 valueAsUnsignedChar];
              *(a1 + 130) = v8;
            }
          }

          v18 = v18 + 1;
        }

        while (v16 != v18);
        sub_1003970A8();
        v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
        v16 = v8;
      }

      while (v8);
    }

    v22 = *(a1 + 72);
    v23 = [KmlTlv TLVWithTag:96 value:v5];
    [v22 addObject:v23];
  }
}

void sub_1003DC12C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    [KmlTlv TLVsWithData:a2];
    objc_claimAutoreleasedReturnValue();
    sub_100396F74();
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v27 objects:v36 count:16];
    if (v5)
    {
      v13 = v5;
      v14 = *v29;
      while (2)
      {
        v15 = 0;
        do
        {
          sub_100396FA0(v5, v6, v7, v8, v9, v10, v11, v12, v27, v28, v29);
          if (v16 != v14)
          {
            objc_enumerationMutation(v4);
          }

          v17 = *(v28 + 8 * v15);
          v5 = [v17 tag];
          if (v5 == 32586)
          {
            v18 = KmlLogger();
            if (sub_10036F124(v18))
            {
              v19 = [v17 value];
              v20 = kmlUtilHexStringFromData();
              v30 = 136315650;
              v31 = "[KmlEndpointCreationConfig setEndpointConfigSiacDataForUpgrade:]";
              v32 = 1024;
              v33 = 204;
              v34 = 2112;
              v35 = v20;
              sub_100367454(&_mh_execute_header, v13, v21, "%s : %i : Received Endpoint creation Data for Upgrade: %@", &v30);
            }

            v22 = [v17 value];
            v23 = *(a1 + 56);
            *(a1 + 56) = v22;

            v24 = [KmlTlv TLVsWithData:*(a1 + 56)];
            v25 = [NSMutableArray arrayWithArray:v24];
            v26 = *(a1 + 72);
            *(a1 + 72) = v25;

            goto LABEL_14;
          }

          v15 = (v15 + 1);
        }

        while (v13 != v15);
        v5 = sub_100397230(v5, v6, &v27, v36);
        v13 = v5;
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }
}

void sub_1003DC320(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    objc_storeStrong((a1 + 80), a2);
    v5 = +[NSMutableData data];
    sub_100396F74();
    v6 = *(a1 + 80);
    sub_100396F84();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v16 = v8;
      v17 = *v24;
      do
      {
        v18 = 0;
        do
        {
          sub_100396FA0(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24);
          if (v19 != v17)
          {
            objc_enumerationMutation(v6);
          }

          v20 = [*(v23 + 8 * v18) asData];
          [v5 appendData:v20];

          v18 = v18 + 1;
        }

        while (v16 != v18);
        sub_100396F84();
        v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
        v16 = v8;
      }

      while (v8);
    }

    v21 = *(a1 + 48);
    *(a1 + 48) = v5;
  }
}

id sub_1003DC624(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    if ((sub_1003DCB78(a1) & 1) == 0)
    {
      v7 = KmlLogger();
      if (sub_1003970B4(v7))
      {
        sub_100396F10("[KmlEndpointCreationConfig isAllDataValidForTransport:kmlVersion:]", 4.8151e-34);
        v51 = 303;
        sub_100396FD4(&_mh_execute_header, v8, v9, "%s : %i : Invalid Endpoint creation Data");
      }

      v10 = [sub_10039709C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v49 = NSLocalizedDescriptionKey;
      v11 = *(a2 + 1128);
      KmlErrorString();
      v12 = [sub_100377D30() stringWithUTF8String:?];
      v50 = v12;
      [NSDictionary dictionaryWithObjects:&v50 forKeys:&v49 count:1];
      objc_claimAutoreleasedReturnValue();
      v13 = sub_100397038();
      goto LABEL_6;
    }

    if ((sub_1003DCDA8(a1) & 1) == 0)
    {
      v16 = KmlLogger();
      if (sub_1003970B4(v16))
      {
        sub_100396F10("[KmlEndpointCreationConfig isAllDataValidForTransport:kmlVersion:]", 4.8151e-34);
        v51 = 308;
        sub_100396FD4(&_mh_execute_header, v17, v18, "%s : %i : Failed to validate Remote Long Term Certificate");
      }

      v10 = [sub_10039709C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v47 = NSLocalizedDescriptionKey;
      v19 = *(a2 + 1128);
      KmlErrorString();
      v12 = [sub_100377D30() stringWithUTF8String:?];
      v48 = v12;
      [NSDictionary dictionaryWithObjects:&v48 forKeys:&v47 count:1];
      objc_claimAutoreleasedReturnValue();
      v13 = sub_100397038();
      goto LABEL_6;
    }

    if ((sub_1003DD42C(a1, a3) & 1) == 0)
    {
      v20 = KmlLogger();
      if (sub_1003970B4(v20))
      {
        sub_100396F10("[KmlEndpointCreationConfig isAllDataValidForTransport:kmlVersion:]", 4.8151e-34);
        v51 = 314;
        sub_100396FD4(&_mh_execute_header, v21, v22, "%s : %i : Invalid Mailbox mapping");
      }

      v10 = [sub_10039709C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v45 = NSLocalizedDescriptionKey;
      v23 = *(a2 + 1128);
      KmlErrorString();
      v12 = [sub_100377D30() stringWithUTF8String:?];
      v46 = v12;
      v24 = &v46;
      v25 = &v45;
LABEL_18:
      [NSDictionary dictionaryWithObjects:v24 forKeys:v25 count:1];
      objc_claimAutoreleasedReturnValue();
      v13 = sub_100397038();
LABEL_6:
      v14 = [v13 errorWithDomain:? code:? userInfo:?];

      goto LABEL_7;
    }

    if ((sub_1003DD524(a1, a2, a3) & 1) == 0)
    {
      v26 = KmlLogger();
      if (sub_1003970B4(v26))
      {
        sub_100396F10("[KmlEndpointCreationConfig isAllDataValidForTransport:kmlVersion:]", 4.8151e-34);
        v51 = 319;
        sub_100396FD4(&_mh_execute_header, v27, v28, "%s : %i : Invalid device config");
      }

      v10 = [sub_10039709C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v43 = NSLocalizedDescriptionKey;
      v29 = *(a2 + 1128);
      KmlErrorString();
      v12 = [sub_100377D30() stringWithUTF8String:?];
      v44 = v12;
      [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
      objc_claimAutoreleasedReturnValue();
      v13 = sub_100397038();
      goto LABEL_6;
    }

    v30 = a1;
    if ((sub_1003DD6E0(a1, a3) & 1) == 0)
    {
      v31 = KmlLogger();
      if (sub_1003970B4(v31))
      {
        sub_100396F10("[KmlEndpointCreationConfig isAllDataValidForTransport:kmlVersion:]", 4.8151e-34);
        v51 = 324;
        sub_100396FD4(&_mh_execute_header, v32, v33, "%s : %i : Mailbox is not sized correctly");
      }

      v10 = [sub_10039709C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v41 = NSLocalizedDescriptionKey;
      v34 = *(v30 + 1128);
      KmlErrorString();
      v12 = [sub_100377D30() stringWithUTF8String:?];
      v42 = v12;
      v24 = &v42;
      v25 = &v41;
      goto LABEL_18;
    }

    if ((*(a1 + 128) & 1) == 0)
    {
      v35 = KmlLogger();
      if (sub_1003970B4(v35))
      {
        sub_100396F10("[KmlEndpointCreationConfig isAllDataValidForTransport:kmlVersion:]", 4.8151e-34);
        v51 = 329;
        sub_100396FD4(&_mh_execute_header, v36, v37, "%s : %i : Missing Completion tag");
      }

      v10 = [sub_10039709C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
      v39 = NSLocalizedDescriptionKey;
      v38 = *(v30 + 1128);
      KmlErrorString();
      v12 = [sub_100377D30() stringWithUTF8String:NSLocalizedDescriptionKey];
      v40 = v12;
      [NSDictionary dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      objc_claimAutoreleasedReturnValue();
      v13 = sub_100397038();
      goto LABEL_6;
    }

    v14 = 0;
    *(a1 + 104) = 1;
  }

  else
  {
    v14 = 0;
  }

LABEL_7:

  return v14;
}

uint64_t sub_1003DCB78(uint64_t a1)
{
  v4 = a1;
  if (a1)
  {
    if (*(a1 + 56))
    {
      v1 = objc_alloc_init(NSMutableSet);
      sub_100396F74();
      v5 = *(v4 + 72);
      sub_1003970A8();
      v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
      if (v7)
      {
        sub_1003970CC(v7, v8, v9, v10, v11, v12, v13, v14, v34, v36, v38);
        while (2)
        {
          v23 = 0;
          do
          {
            sub_100396FA0(v15, v16, v17, v18, v19, v20, v21, v22, v35, v37, v39);
            if (v24 != v3)
            {
              objc_enumerationMutation(v5);
            }

            [*(v37 + 8 * v23) tag];
            v15 = kmlUtilAddUniqueTagToSet();
            if ((v15 & 1) == 0)
            {

              goto LABEL_18;
            }

            ++v23;
          }

          while (v2 != v23);
          sub_1003970A8();
          v15 = [v5 countByEnumeratingWithState:? objects:? count:?];
          v2 = v15;
          if (v15)
          {
            continue;
          }

          break;
        }
      }

      v25 = [*(v4 + 120) isSubsetOfSet:v1];
      v26 = KmlLogger();
      v27 = v26;
      if (v25)
      {
        if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
        {
          sub_100397064("[KmlEndpointCreationConfig isEndpointCreationDataValid]", 4.8151e-34);
          v41 = 483;
          sub_10036DC0C(&_mh_execute_header, v27, v28, "%s : %i : isEndpointCreationDataValid: Received all the required tags.", v40);
        }

        v4 = 1;
        goto LABEL_19;
      }

      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        sub_100397064("[KmlEndpointCreationConfig isEndpointCreationDataValid]", 4.8151e-34);
        v41 = 488;
        sub_10036F500(&_mh_execute_header, v27, v33, "%s : %i : Missing required tags", v40);
      }

      sub_1003DDA5C(v4, *(v4 + 120), v1);
    }

    else
    {
      v29 = KmlLogger();
      if (sub_1003970B4(v29))
      {
        sub_100397064("[KmlEndpointCreationConfig isEndpointCreationDataValid]", 4.8151e-34);
        v41 = 471;
        sub_100397010(&_mh_execute_header, v30, v31, "%s : %i : endpointCreationData is nil", v40);
      }
    }

LABEL_18:
    v4 = 0;
LABEL_19:
  }

  return v4;
}

uint64_t sub_1003DCDA8(uint64_t a1)
{
  v2 = a1;
  if (a1)
  {
    v3 = SecCertificateCreateWithData(0, *(a1 + 144));
    if (!v3)
    {
      goto LABEL_3;
    }

    v5 = sub_1003DD874(v2, v3);
    v6 = KmlLogger();
    if (sub_10036F124(v6))
    {
      *buf = 136315650;
      v85 = "[KmlEndpointCreationConfig isRemoteCertValid]";
      v86 = 1024;
      sub_100396FAC();
      sub_100397054();
      _os_log_impl(v7, v8, v9, v10, v11, 0x1Cu);
    }

    if (!v5)
    {
LABEL_3:
      v2 = 0;
LABEL_4:

      return v2;
    }

    cf = 0;
    SecCertificateCopyCommonName(v3, &cf);
    v12 = cf;
    v13 = KmlLogger();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_100396EE4();
      sub_10036F460();
      v89 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEBUG, "%s : %i : Received raw readerInfo(CommonName): %@", buf, 0x1Cu);
    }

    v14 = [[KmlRoutingInformation alloc] initWithReaderInformation:v12];
    v15 = *(v2 + 136);
    *(v2 + 136) = v14;

    v16 = [*(v2 + 136) getReaderInformation];
    v17 = *(v2 + 88);
    *(v2 + 88) = v16;

    v18 = KmlLogger();
    if (sub_10036F124(v18))
    {
      v19 = *(v2 + 88);
      sub_100396FC0();
      sub_100396FAC();
      sub_100397054();
      _os_log_impl(v20, v21, v22, v23, v24, 0x1Cu);
    }

    if (!*(v2 + 112) || ([*(v2 + 136) readerIdentifier], v25 = objc_claimAutoreleasedReturnValue(), v26 = objc_msgSend(v25, "isEqualToData:", *(v2 + 112)), v25, (v26 & 1) == 0))
    {
      v47 = KmlLogger();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        sub_100396EE4();
        v87 = 368;
        sub_10036F500(&_mh_execute_header, v47, v48, "%s : %i : Reader Id mismatch.", buf);
      }

      v49 = KmlLogger();
      if (sub_10036F124(v49))
      {
        v50 = [*(v2 + 136) readerIdentifier];
        v51 = *(v2 + 112);
        sub_100396FC0();
        v87 = 369;
        v88 = 2112;
        v89 = v52;
        v90 = 2112;
        v91 = v53;
        sub_100397054();
        _os_log_impl(v54, v55, v56, v57, v58, 0x26u);
      }

      v2 = 0;
      goto LABEL_54;
    }

    v27 = SecCertificateGetAuthorityKeyID();
    v28 = KmlLogger();
    if (sub_10036F124(v28))
    {
      v29 = kmlUtilHexStringFromData();
      sub_100396EE4();
      sub_10036F460();
      v89 = v30;
      sub_100397054();
      _os_log_impl(v31, v32, v33, v34, v35, 0x1Cu);
    }

    if (!v27)
    {
      HIBYTE(v83) = 0;
LABEL_53:
      v2 = HIBYTE(v83);
LABEL_54:

      goto LABEL_4;
    }

    v36 = objc_opt_new();
    [v36 addObject:v3];
    v37 = *(v2 + 24);
    if (v37)
    {
      v38 = SecCertificateCreateWithData(0, v37);
      if (!v38)
      {
        HIBYTE(v83) = 0;
        v42 = v27;
LABEL_52:

        goto LABEL_53;
      }

      v39 = v38;
      cf = 0;
      SecCertificateCopyCommonName(v38, &cf);
      v40 = KmlLogger();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
      {
        sub_100396FC0();
        sub_100396FAC();
        sub_100367454(&_mh_execute_header, v40, v41, "%s : %i : Intermediate certificate CommonName: %@", buf);
      }

      if (cf)
      {
        CFRelease(cf);
      }

      [v36 addObject:v39];
      v42 = SecCertificateGetAuthorityKeyID();

      v43 = KmlLogger();
      if (sub_100377D6C(v43))
      {
        v44 = kmlUtilHexStringFromData();
        sub_100396EE4();
        sub_10036F460();
        v89 = v45;
        sub_100367454(&_mh_execute_header, v27, v46, "%s : %i : Intermediate certificateAuthorityKeyID=%@", buf);
      }
    }

    else
    {
      v39 = 0;
      v42 = v27;
    }

    v59 = objc_opt_new();
    v60 = [*(v2 + 136) manufacturer];
    v61 = [v59 getRootCertificateFor:v60 keyId:v42];
    v62 = *(v2 + 32);
    *(v2 + 32) = v61;

    v63 = *(v2 + 32);
    if (v63)
    {
      v64 = SecCertificateCreateWithData(0, v63);
      v65 = v64;
      if (v64)
      {
        cf = 0;
        SecCertificateCopyCommonName(v64, &cf);
        v66 = KmlLogger();
        if (sub_100377D6C(v66))
        {
          sub_100396FC0();
          sub_100396FAC();
          sub_100367454(&_mh_execute_header, v59, v67, "%s : %i : Root certificate CommonName: %@", buf);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        v59 = SecCertificateCopyIssuerSummary();
        v68 = KmlLogger();
        if (os_log_type_enabled(v68, OS_LOG_TYPE_INFO))
        {
          sub_100396EE4();
          sub_10036F460();
          v89 = v59;
          sub_100367454(&_mh_execute_header, v68, v69, "%s : %i : rootCert certificateIssuer=%@", buf);
        }

        v70 = sub_100396990(KmlEndpointCreationConfig, v65, v36);
      }

      else
      {
        v80 = KmlLogger();
        if (sub_100377D6C(v80))
        {
          sub_100396EE4();
          v87 = 433;
          sub_10036DC0C(&_mh_execute_header, v59, v81, "%s : %i : Root certificate is nil", buf);
        }

        v70 = 0;
      }

      HIBYTE(v83) = v70;
    }

    else
    {
      v71 = KmlLogger();
      if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
      {
        v72 = kmlUtilHexStringFromData();
        sub_100396EE4();
        sub_10036F460();
        v89 = v73;
        sub_1003971C0(&_mh_execute_header, v74, v75, "%s : %i : Got nil certificate for issuer %@", v76, v77, v78, v79, cf, v83, buf[0]);
      }

      HIBYTE(v83) = 0;
    }

    goto LABEL_52;
  }

  return v2;
}

id sub_1003DD42C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    if (*(a1 + 40))
    {
      v3 = [[KmlMailboxMappingData alloc] initWithData:*(a1 + 40) preferredVersion:a2];
      v4 = [v3 isValid];

      return v4;
    }

    v6 = KmlLogger();
    if (sub_1003970B4(v6))
    {
      sub_10036DB8C();
      v10 = 496;
      sub_100397010(&_mh_execute_header, v7, v8, "%s : %i : mailboxMappingData is nil", v9);
    }
  }

  return 0;
}

id sub_1003DD524(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 0;
  }

  if (*(a1 + 48))
  {
    v3 = objc_alloc_init(NSMutableSet);
    sub_100396F74();
    v7 = *(a1 + 80);
    sub_1003970A8();
    v9 = [v8 countByEnumeratingWithState:? objects:? count:?];
    if (v9)
    {
      v17 = v9;
      v18 = *v30;
      while (2)
      {
        v19 = 0;
        do
        {
          sub_100396FA0(v9, v10, v11, v12, v13, v14, v15, v16, v28, v29, v30);
          if (v20 != v18)
          {
            objc_enumerationMutation(v7);
          }

          [*(v29 + 8 * v19) tag];
          v9 = kmlUtilAddUniqueTagToSet();
          if (!v9)
          {
            v21 = 0;
            goto LABEL_13;
          }

          v19 = v19 + 1;
        }

        while (v17 != v19);
        sub_1003970A8();
        v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
        v17 = v9;
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v7 = [[KmlDeviceConfigurationData alloc] initWithData:*(a1 + 48)];
    v21 = [v7 isValidForKmlVersion:a3 transport:a2];
LABEL_13:
  }

  else
  {
    v22 = KmlLogger();
    if (sub_1003970B4(v22))
    {
      *v31 = 136315394;
      sub_100389B3C(v31);
      v32 = v23;
      *(v24 + 14) = 509;
      sub_100397010(&_mh_execute_header, v25, v26, "%s : %i : deviceConfigData is nil", v31);
    }

    v21 = 0;
  }

  return v21;
}

uint64_t sub_1003DD6E0(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    if (*(a1 + 48) && *(a1 + 40))
    {
      v2 = [[KmlDeviceConfigurationData alloc] initWithData:*(a1 + 48)];
      v5 = [[KmlMailboxMappingData alloc] initWithData:*(v3 + 40) preferredVersion:a2];
      v6 = [v2 maxOfflineAttestationCount];
      v7 = ([v5 attestationPackageLength] * v6);
      v8 = [v5 mailboxEndOffset];
      v9 = [v5 keyAttestationStartOffset];
      v10 = v7 > (v8 - v9);
      v3 = v7 <= (v8 - v9);
      if (v10)
      {
        v11 = KmlLogger();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10036DB8C();
          v18 = 541;
          sub_10036F500(&_mh_execute_header, v11, v12, "%s : %i : There isn't enough space in the mailbox for the requested number of attestations", v17);
        }
      }
    }

    else
    {
      v13 = KmlLogger();
      if (sub_1003970B4(v13))
      {
        sub_10036DB8C();
        v18 = 530;
        sub_100397010(&_mh_execute_header, v14, v15, "%s : %i : Missing deviceConfig or mailboxMappingData", v17);
      }

      v3 = 0;
    }
  }

  return v3;
}

id *sub_1003DD874(id *a1, __SecCertificate *a2)
{
  v2 = a1;
  if (a1)
  {
    v3 = a2;
    if (a2 && (v4 = a1[12]) != 0 && [v4 length])
    {
      if (*[v2[12] bytes] != 4)
      {
        return 0;
      }

      v5 = SecCertificateCopyKey(v3);
      v3 = v5;
      if (v5)
      {
        error = 0;
        v6 = SecKeyCopyExternalRepresentation(v5, &error);
        v7 = v6;
        if (v6)
        {
          v2 = [(__CFData *)v6 isEqualToData:v2[12]];
        }

        else
        {
          v14 = error;
          v15 = KmlLogger();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315650;
            sub_10036DC30();
            sub_10036F460();
            v26 = v14;
            sub_1003971C0(&_mh_execute_header, v16, v17, "%s : %i : SecKeyCopyExternalRepresentation() failed. error: %@", v18, v19, v20, v21, v22, error, buf[0]);
          }

          v2 = 0;
        }

        goto LABEL_12;
      }

      v12 = KmlLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        sub_10036DC30();
        v25 = 453;
        sub_10036F500(&_mh_execute_header, v12, v13, "%s : %i : SecCertificateCopyPublicKey() failed.", buf);
      }
    }

    else
    {
      v8 = KmlLogger();
      if (sub_1003970B4(v8))
      {
        *buf = 136315394;
        sub_10036DC30();
        v25 = 442;
        sub_100397010(&_mh_execute_header, v9, v10, "%s : %i : leafCert or/and readerPK is nil", buf);
      }
    }

    v2 = 0;
LABEL_12:
  }

  return v2;
}

void sub_1003DDA5C(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v26 = v6;
    v8 = [[NSMutableSet alloc] initWithSet:v6];
    v25 = v7;
    [v8 minusSet:v7];
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v9 = v8;
    v10 = [v9 countByEnumeratingWithState:&v28 objects:v38 count:16];
    if (v10)
    {
      v12 = v10;
      v13 = *v29;
      *&v11 = 136315650;
      v27 = v11;
      do
      {
        v14 = 0;
        do
        {
          if (*v29 != v13)
          {
            objc_enumerationMutation(v9);
          }

          v15 = *(*(&v28 + 1) + 8 * v14);
          v16 = KmlLogger();
          if (sub_100377D6C(v16))
          {
            v17 = [v15 unsignedIntegerValue];
            *buf = v27;
            v33 = "[KmlEndpointCreationConfig logMissingRequiredTags:receivedTagsSet:]";
            v34 = 1024;
            v35 = 936;
            v36 = 2048;
            v37 = v17;
            _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : KmlEndpointCreationConfig: Missing required tag: 0x%lx", buf, 0x1Cu);
          }

          v14 = v14 + 1;
        }

        while (v12 != v14);
        v12 = sub_100397128(v18, v19, &v28, v20, v21, v22, v23, v24, v25, v26, v27, *(&v27 + 1), v28, *(&v28 + 1), v29, *(&v29 + 1), v30, *(&v30 + 1), v31);
      }

      while (v12);
    }

    v7 = v25;
    v6 = v26;
  }
}

id sub_1003DE134(id result)
{
  if (result)
  {
    return sub_1003DE144(result, 75);
  }

  return result;
}

id sub_1003DE144(uint64_t a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  sub_1003970DC();
  v6 = *(v5 + 72);
  sub_1003971A8();
  v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
  if (v8)
  {
    v9 = *v49;
    while (2)
    {
      v3 = 0;
      do
      {
        if (*v49 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v2 = *v48;
        if ([*v48 tag] == 96)
        {
          v8 = [v2 value];
          goto LABEL_13;
        }

        sub_10039711C();
      }

      while (!v10);
      sub_1003971A8();
      v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  if ([v8 length])
  {
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *v50 = 136315650;
      sub_100389B3C(v50);
      v51 = v12;
      sub_100397188(v13);
      sub_100367454(&_mh_execute_header, v11, v14, "%s : %i : found override %@", v50);
    }

    [KmlTlv TLVsWithData:v8];
    objc_claimAutoreleasedReturnValue();
    sub_100396F74();
    v16 = v15;
    v18 = sub_1003971E0(v16, v17);
    if (v18)
    {
      sub_1003970CC(v18, v19, v20, v21, v22, v23, v24, v25, v39, v40, v41);
      while (2)
      {
        v34 = 0;
        do
        {
          sub_100396FA0(v26, v27, v28, v29, v30, v31, v32, v33, v39, v40, v41);
          if (v35 != v3)
          {
            objc_enumerationMutation(v11);
          }

          v36 = *(v40 + 8 * v34);
          v26 = [v36 tag];
          if (v26 == a2)
          {
            v37 = [v36 valueAsUnsignedShort];
            goto LABEL_26;
          }

          v34 = v34 + 1;
        }

        while (v2 != v34);
        v26 = sub_100397128(v26, v27, &v39, v29, v30, v31, v32, v33, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
        v2 = v26;
        if (v26)
        {
          continue;
        }

        break;
      }
    }

    v37 = 0;
LABEL_26:
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

id sub_1003DE360(id result)
{
  if (result)
  {
    return sub_1003DE144(result, 74);
  }

  return result;
}

id sub_1003DE81C(void *a1)
{
  if (a1)
  {
    a1 = sub_1003DE850(a1, 74);
    v1 = vars8;
  }

  return a1;
}

id sub_1003DE850(uint64_t a1, int a2)
{
  if (a1)
  {
    sub_1003970DC();
    v6 = *(v5 + 80);
    sub_1003971A8();
    v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
    if (v8)
    {
      v9 = *v49;
      while (2)
      {
        v3 = 0;
        do
        {
          if (*v49 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v2 = *v48;
          if ([*v48 tag] == 96)
          {
            v8 = [v2 value];
            goto LABEL_13;
          }

          sub_10039711C();
        }

        while (!v10);
        sub_1003971A8();
        v8 = [v6 countByEnumeratingWithState:? objects:? count:?];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    if ([v8 length])
    {
      v11 = KmlLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        *v50 = 136315650;
        sub_100389B3C(v50);
        v51 = v12;
        sub_100397188(v13);
        sub_100367454(&_mh_execute_header, v11, v14, "%s : %i : found override %@", v50);
      }

      [KmlTlv TLVsWithData:v8];
      objc_claimAutoreleasedReturnValue();
      sub_100396F74();
      v16 = v15;
      v18 = sub_1003971E0(v16, v17);
      if (v18)
      {
        sub_1003970CC(v18, v19, v20, v21, v22, v23, v24, v25, v39, v40, v41);
        while (2)
        {
          v34 = 0;
          do
          {
            sub_100396FA0(v26, v27, v28, v29, v30, v31, v32, v33, v39, v40, v41);
            if (v35 != v3)
            {
              objc_enumerationMutation(v11);
            }

            v36 = *(v40 + 8 * v34);
            v26 = [v36 tag];
            if (v26 == a2)
            {
              v37 = [v36 value];
              goto LABEL_26;
            }

            v34 = v34 + 1;
          }

          while (v2 != v34);
          v26 = sub_100397128(v26, v27, &v39, v29, v30, v31, v32, v33, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49);
          v2 = v26;
          if (v26)
          {
            continue;
          }

          break;
        }
      }

      v37 = 0;
LABEL_26:
    }

    else
    {
      v37 = 0;
    }
  }

  else
  {
    v37 = 0;
  }

  return v37;
}

id sub_1003DEA80(void *a1)
{
  if (a1)
  {
    a1 = sub_1003DE850(a1, 75);
    v1 = vars8;
  }

  return a1;
}

id *sub_1003DEB94(id *a1)
{
  if (a1)
  {
    a1 = [a1[5] copy];
    v1 = vars8;
  }

  return a1;
}

id *sub_1003DEBC4(id *a1)
{
  if (a1)
  {
    a1 = [a1[6] copy];
    v1 = vars8;
  }

  return a1;
}

id sub_1003DEBF4(uint64_t a1)
{
  if (a1)
  {
    [KmlTlv TLVsWithData:*(a1 + 16)];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v1 = v23 = 0u;
    v2 = [v1 countByEnumeratingWithState:&v20 objects:v30 count:16];
    if (v2)
    {
      v4 = v2;
      v5 = *v21;
      *&v3 = 136315650;
      v19 = v3;
      while (2)
      {
        for (i = 0; i != v4; i = i + 1)
        {
          if (*v21 != v5)
          {
            objc_enumerationMutation(v1);
          }

          v7 = *(*(&v20 + 1) + 8 * i);
          [v7 tag];
          if (isDeviceKeyAttestationTag())
          {
            v14 = KmlLogger();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = [v7 value];
              v16 = kmlUtilHexStringFromData();
              *buf = v19;
              v25 = "[KmlEndpointCreationConfig getKeyAttestation]";
              v26 = 1024;
              v27 = 863;
              v28 = 2112;
              v29 = v16;
              sub_100367454(&_mh_execute_header, v14, v17, "%s : %i : KeyCreationConfig: Received key attestation Data : %@", buf);
            }

            v13 = [v7 value];
            goto LABEL_21;
          }

          [v7 tag];
          v8 = isEndOfKeyConfigTag();
          v9 = KmlLogger();
          v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
          if (v8)
          {
            if (v10)
            {
              *buf = 136315394;
              v25 = "[KmlEndpointCreationConfig getKeyAttestation]";
              v26 = 1024;
              v27 = 866;
              sub_10036DC0C(&_mh_execute_header, v9, v11, "%s : %i : KeyCreationConfig: Received Data Complete TLV", buf);
            }

            goto LABEL_20;
          }

          if (v10)
          {
            v12 = [v7 tag];
            *buf = v19;
            v25 = "[KmlEndpointCreationConfig getKeyAttestation]";
            v26 = 1024;
            v27 = 869;
            v28 = 1024;
            LODWORD(v29) = v12;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : KeyCreationConfig: TLV with un-expected tag (%d)", buf, 0x18u);
          }
        }

        v4 = [v1 countByEnumeratingWithState:&v20 objects:v30 count:16];
        v13 = 0;
        if (v4)
        {
          continue;
        }

        break;
      }
    }

    else
    {
LABEL_20:
      v13 = 0;
    }

LABEL_21:
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

void *sub_1003DEEC8(void *a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = a1[11];
    if (!v2)
    {
      sub_100396EB4();
      v3 = v1[10];
      sub_100396F84();
      v5 = [v4 countByEnumeratingWithState:? objects:? count:?];
      if (v5)
      {
        v13 = v5;
        v14 = *v29;
        do
        {
          v15 = 0;
          do
          {
            sub_100396FA0(v5, v6, v7, v8, v9, v10, v11, v12, v27, v28, v29);
            if (v16 != v14)
            {
              objc_enumerationMutation(v3);
            }

            v17 = *(v28 + 8 * v15);
            v5 = [v17 tag];
            if (v5 == 89)
            {
              v18 = [NSString alloc];
              v19 = [v17 value];
              v20 = [v18 initWithData:v19 encoding:4];
              v21 = v1[11];
              v1[11] = v20;
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          sub_100396F84();
          v5 = sub_100397230(v22, v23, v24, v25);
          v13 = v5;
        }

        while (v5);
      }

      v2 = v1[11];
    }

    a1 = [v2 copy];
  }

  return a1;
}

uint64_t sub_1003DF2A0(uint64_t result)
{
  if (result)
  {
    return *(result + 129);
  }

  return result;
}

uint64_t sub_1003DF2AC(uint64_t result)
{
  if (result)
  {
    return *(result + 130);
  }

  return result;
}

void *sub_1003DF2B8(void *a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v15.receiver = a1;
    v15.super_class = KmlBindingAttestation;
    v4 = objc_msgSendSuper2(&v15, "init");
    a1 = v4;
    if (v4)
    {
      v5 = v4[1];
      v4[1] = 0;

      v6 = a1[2];
      a1[2] = 0;

      v7 = a1[3];
      a1[3] = 0;

      if ([v3 length])
      {
        v8 = [KmlTlv TLVsWithData:v3];
        if ([v8 count])
        {
          v10 = [sub_100397300() objectAtIndexedSubscript:?];
          v11 = [v10 tag];

          if (v11 == 48)
          {
            v12 = [sub_100397300() objectAtIndexedSubscript:?];
            v13 = [v12 value];
            v14 = a1[1];
            a1[1] = v13;
          }
        }

        sub_1003DF474(a1);
        sub_1003DF6E4(a1);
        sub_1003DF9C4(a1);
      }

      else
      {
        v8 = KmlLogger();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v17 = "[KmlBindingAttestation initWithData:]";
          v18 = 1024;
          v19 = 37;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : %i : Null data provided", buf, 0x12u);
        }
      }
    }
  }

  return a1;
}

void sub_1003DF474(uint64_t a1)
{
  if (a1)
  {
    if ([*(a1 + 8) length])
    {
      v2 = [KmlTlv TLVsWithData:*(a1 + 8)];
      if ([v2 count]> 3)
      {
        v10 = [sub_1003963F0() objectAtIndexedSubscript:?];
        v11 = [v10 tag];

        if (v11 == 48)
        {
          v12 = [sub_1003963F0() objectAtIndexedSubscript:?];
          v13 = [v12 value];
          v14 = *(a1 + 16);
          *(a1 + 16) = v13;
        }

        v15 = [sub_100397330() objectAtIndexedSubscript:?];
        v16 = [v15 tag];

        if (v16 == 48)
        {
          v17 = [sub_100397330() objectAtIndexedSubscript:?];
          v18 = [v17 value];
          v19 = *(a1 + 56);
          *(a1 + 56) = v18;
        }

        v20 = [sub_100397318() objectAtIndexedSubscript:?];
        v21 = [v20 tag];

        if (v21 == 48)
        {
          v22 = [sub_100397318() objectAtIndexedSubscript:?];
          v23 = [v22 value];
          v24 = *(a1 + 48);
          *(a1 + 48) = v23;
        }

        v25 = [sub_100397324() objectAtIndexedSubscript:?];
        v26 = [v25 tag];

        if (v26 == 4)
        {
          v27 = [sub_100397324() objectAtIndexedSubscript:?];
          v28 = [v27 value];
          v29 = *(a1 + 40);
          *(a1 + 40) = v28;
        }
      }

      else
      {
        v3 = KmlLogger();
        if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
        {
          sub_10036DB8C();
          v31 = 66;
          _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_ERROR, "%s : %i : Not enough elements in the BindingAttestation Sequence", v30, 0x12u);
        }
      }
    }

    else
    {
      v2 = KmlLogger();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
      {
        sub_10036DB8C();
        v31 = 58;
        sub_1003972E0(&_mh_execute_header, v4, v5, "%s : %i : Missing Binding Attestation sequence", v6, v7, v8, v9, v30[0]);
      }
    }
  }
}

void sub_1003DF6E4(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 16) length];
    v3 = KmlLogger();
    v4 = v3;
    if (!v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10036DB8C();
        sub_1003972E0(&_mh_execute_header, v19, v20, "%s : %i : Missing Attestation Data Sequence", v21, v22, v23, v24, v44);
      }

      goto LABEL_19;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 16);
      sub_10039730C();
      sub_1003757CC();
      sub_10039733C(&_mh_execute_header, v6, v7, "%s : %i : attestationDataSequence : %@", v8, v9, v10, v11, v44);
    }

    v4 = [KmlTlv TLVsWithData:*(a1 + 16)];
    if ([v4 count] > 4)
    {
      v25 = [sub_1003963F0() objectAtIndexedSubscript:?];
      v26 = [v25 tag];

      if (v26 == 4)
      {
        v27 = [sub_1003963F0() objectAtIndexedSubscript:?];
        v28 = [v27 value];
        v29 = *(a1 + 64);
        *(a1 + 64) = v28;
      }

      v30 = [sub_100397324() objectAtIndexedSubscript:?];
      v31 = [v30 tag];

      if (v31 == 4)
      {
        v32 = [sub_100397324() objectAtIndexedSubscript:?];
        v33 = [v32 value];
        v34 = *(a1 + 72);
        *(a1 + 72) = v33;
      }

      v35 = [v4 objectAtIndexedSubscript:4];
      v36 = [v35 tag];

      if (v36 != 4)
      {
        goto LABEL_19;
      }

      v37 = [v4 objectAtIndexedSubscript:4];
      v38 = [v37 value];
      v12 = [KmlTlv TLVsWithData:v38];

      if ([v12 count])
      {
        v39 = [sub_100397300() objectAtIndexedSubscript:?];
        v40 = [v39 tag];

        if (v40 == 48)
        {
          v41 = [sub_100397300() objectAtIndexedSubscript:?];
          v42 = [v41 value];
          v43 = *(a1 + 24);
          *(a1 + 24) = v42;
        }
      }
    }

    else
    {
      v12 = KmlLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10039730C();
        sub_10039735C(&_mh_execute_header, v13, v14, "%s : %i : Not enough elements in the AttestationData Sequence", v15, v16, v17, v18, v44);
      }
    }

LABEL_19:
  }
}

void sub_1003DF9C4(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 24) length];
    v3 = KmlLogger();
    v4 = v3;
    if (!v2)
    {
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        sub_10036DB8C();
        sub_1003972E0(&_mh_execute_header, v19, v20, "%s : %i : Missing Extensions Sequence Data", v21, v22, v23, v24, v32);
      }

      goto LABEL_15;
    }

    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      v5 = *(a1 + 24);
      sub_10039730C();
      sub_1003757CC();
      sub_10039733C(&_mh_execute_header, v6, v7, "%s : %i : extensionSequence : %@", v8, v9, v10, v11, v32);
    }

    v4 = [KmlTlv TLVsWithData:*(a1 + 24)];
    if ([v4 count] > 2)
    {
      v25 = [sub_100397330() objectAtIndexedSubscript:?];
      v26 = [v25 tag];

      if (v26 == 4)
      {
        v27 = [sub_100397330() objectAtIndexedSubscript:?];
        v28 = [v27 value];
        v29 = *(a1 + 80);
        *(a1 + 80) = v28;
      }

      v30 = [sub_100397318() objectAtIndexedSubscript:?];
      v31 = [v30 tag];

      if (v31 != 1)
      {
        goto LABEL_15;
      }

      v12 = [sub_100397318() objectAtIndexedSubscript:?];
      *(a1 + 32) = [v12 valueAsUnsignedChar]!= 0;
    }

    else
    {
      v12 = KmlLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        sub_10039730C();
        sub_10039735C(&_mh_execute_header, v13, v14, "%s : %i : Not enough elements in the Extensions Sequence", v15, v16, v17, v18, v32);
      }
    }

LABEL_15:
  }
}

id *sub_1003DFBD4(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v26.receiver = a1;
    v26.super_class = KmlEndpointManager;
    a1 = objc_msgSendSuper2(&v26, "init");
    if (a1)
    {
      v7 = [v5 uppercaseString];
      v8 = a1[1];
      a1[1] = v7;

      v9 = a1[1];
      v10 = kmlUtilDataForHexString();
      v11 = a1[2];
      a1[2] = v10;

      v12 = a1[3];
      a1[3] = 0;

      v13 = a1[5];
      a1[5] = 0;

      v14 = a1[4];
      a1[4] = 0;

      v15 = a1[6];
      a1[6] = 0;

      v16 = a1[7];
      a1[7] = 0;

      v17 = a1[8];
      a1[8] = 0;

      v18 = a1[9];
      a1[9] = 0;

      v19 = a1[10];
      a1[10] = 0;

      v20 = a1[11];
      a1[11] = 0;

      v21 = a1[12];
      a1[12] = 0;

      v22 = a1[13];
      a1[13] = 0;

      v23 = a1[14];
      a1[14] = 0;

      objc_storeStrong(a1 + 17, a3);
      *(a1 + 121) = 0;
      v24 = a1[16];
      a1[16] = 0;

      objc_storeWeak(a1 + 19, 0);
    }
  }

  return a1;
}

id sub_1003DFD34(uint64_t a1, NSObject **a2)
{
  if (a1)
  {
    v5 = a1;
    v6 = sub_1003E01E8(a1);
    v7 = KmlLogger();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315650;
        sub_1003939F8();
        sub_10036F484();
        v39 = v6;
        sub_10039A698(&_mh_execute_header, v9, v10, "%s : %i : Error getting endpoint - %@", buf);
      }

      if (a2)
      {
        v11 = v6;
        v12 = 0;
        *a2 = v6;
      }

      else
      {
        v12 = 0;
      }

LABEL_30:

      goto LABEL_31;
    }

    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v6 = [(objc_class *)v5[3].isa publicKeyIdentifier];
      [(objc_class *)v5[3].isa endPointType];
      *buf = 136315906;
      sub_1003939F8();
      v37 = 563;
      v38 = 2112;
      v39 = v6;
      v40 = v13;
      v41 = v14;
      sub_100390B00();
      _os_log_impl(v15, v16, v17, v18, v19, 0x22u);
    }

    v20 = [(objc_class *)v5[3].isa endPointType];
    if (v20 <= 5)
    {
      if (((1 << v20) & 0x26) != 0)
      {
        v2 = [NSMutableData dataWithLength:16];
        isa = v5[1].isa;
        v12 = SESEndPointRevoke();
        v6 = 0;
        v22 = KmlLogger();
        if (sub_1003674CC(v22))
        {
          *buf = 136315394;
          sub_1003939F8();
          v37 = 577;
          sub_10036DC0C(&_mh_execute_header, v3, v23, "%s : %i : Asking seld to initiate delete with TSM", buf);
        }

        v24 = +[NFRemoteAdminManager sharedRemoteAdminManager];
        [v24 queueServerConnection:0];

        v25 = sub_100372C58(KmlOwnerPairingManager, v5[1].isa);
        v3 = v25;
        if (v25)
        {
          sub_1003C2834(v25);
        }

        else
        {
          v5 = sub_10038C140(KmlFriendSharingManager, v5[1].isa);
          sub_1003D1A9C(v5);
        }

        goto LABEL_25;
      }

      if (((1 << v20) & 0x18) != 0)
      {
        v26 = v5[1].isa;
        SESEndPointDelete();
        v6 = 0;
        v12 = 0;
LABEL_25:
        v32 = KmlLogger();
        if (sub_10036F124(v32))
        {
          v2 = [v6 userInfo];
          *buf = 136315650;
          sub_1003939F8();
          sub_10036F484();
          v39 = v33;
          sub_100367454(&_mh_execute_header, v5, v34, "%s : %i : revokeOrDeleteKey error %@", buf);
        }

        if (a2 && v6)
        {
          [NSString stringWithUTF8String:"com.apple.sesd.kml"];
          objc_claimAutoreleasedReturnValue();
          [sub_10039A750() userInfo];
          objc_claimAutoreleasedReturnValue();
          *a2 = [sub_10039A744() errorWithDomain:v2 code:211 userInfo:v3];
        }

        goto LABEL_30;
      }
    }

    v27 = KmlLogger();
    if (sub_10036F5DC(v27))
    {
      [(objc_class *)v5[3].isa endPointType];
      *buf = 136315650;
      sub_1003939F8();
      v37 = 598;
      v38 = v28;
      LODWORD(v39) = v29;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%s : %i : Unknown endpoint of type %d could not be deleted", buf, 0x18u);
    }

    if (a2)
    {
      v30 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      KmlErrorString();
      v5 = [sub_100372244() stringWithUTF8String:?];
      sub_10039A814();
      [v31 dictionaryWithObjects:? forKeys:? count:?];
      objc_claimAutoreleasedReturnValue();
      *a2 = [sub_10039A880() errorWithDomain:? code:? userInfo:?];
    }

    v12 = 0;
    v6 = 0;
    goto LABEL_25;
  }

  v12 = 0;
LABEL_31:

  return v12;
}

id sub_1003E01E8(uint64_t a1)
{
  if (a1)
  {
    v4 = *(a1 + 16);
    v25[0] = 0;
    v5 = sub_1003993B8(KmlEndpointManager, v4, v25);
    v6 = v25[0];
    v7 = *(a1 + 24);
    *(a1 + 24) = v5;

    v8 = [*(a1 + 24) revocationAttestation];

    if (v8)
    {
      v9 = KmlLogger();
      if (sub_10036DCF8(v9))
      {
        v26 = 136315394;
        sub_1003939F8();
        v27 = 1821;
        sub_100390B00();
        _os_log_impl(v10, v11, v12, v13, v14, 0x12u);
      }

      v15 = [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml"];
      v25[1] = NSLocalizedDescriptionKey;
      v16 = *(v1 + 1128);
      KmlErrorString();
      v17 = [sub_10039719C() stringWithUTF8String:?];
      v25[2] = v17;
      sub_10039A814();
      [v18 dictionaryWithObjects:? forKeys:? count:?];
      objc_claimAutoreleasedReturnValue();
      v19 = [sub_10039A744() errorWithDomain:v15 code:211 userInfo:v2];

      v6 = v19;
    }

    if (!v6 && !*(a1 + 136))
    {
      v20 = [[KmlVersions alloc] initWithEndpoint:*(a1 + 24)];
      v21 = *(a1 + 136);
      *(a1 + 136) = v20;
    }

    v22 = [*(a1 + 24) deviceConfiguration];
    v23 = *(a1 + 64);
    *(a1 + 64) = v22;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

id sub_1003E03E8(void *a1)
{
  if (a1)
  {
    v2 = a1[2];
    v14 = 0;
    v3 = sub_1003993B8(KmlEndpointManager, v2, &v14);
    v4 = v14;
    v5 = a1[3];
    a1[3] = v3;

    v6 = KmlLogger();
    v7 = v6;
    if (v4)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v15 = 136315650;
        v16 = "[KmlEndpointManager localDeleteKey]";
        v17 = 1024;
        sub_10039A96C();
        sub_10036F590(&_mh_execute_header, v7, v8, "%s : %i : Error getting endpoint - %@", &v15);
      }
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v10 = a1[1];
        v15 = 136315650;
        v16 = "[KmlEndpointManager localDeleteKey]";
        v17 = 1024;
        v18 = 627;
        v19 = 2112;
        v20 = v10;
        sub_100367454(&_mh_execute_header, v7, v9, "%s : %i : Found Key with id %@, deleting it", &v15);
      }

      v11 = a1[1];
      SESEndPointDelete();
      v4 = 0;
    }

    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

id *sub_1003E0590(id *a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = sub_1003E01E8(a1);
    if (v8)
    {
      v17 = v8;
      v18 = KmlLogger();
      if (sub_10036F5C4(v18))
      {
        *buf = 136315650;
        v275 = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
        sub_10039A630();
        sub_10039A5EC(639);
        v279 = v17;
        sub_10039A6C0();
        _os_log_impl(v19, v20, v21, v22, v23, 0x1Cu);
      }

      sub_1003E1C94(a1, v17);
      a1 = v17;
      goto LABEL_132;
    }

    v9 = v6;
    if ((sub_1003E20F4(a1) & 1) == 0)
    {
      v24 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v284 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v25 = [sub_10037BD94() stringWithUTF8String:?];
      v285 = v25;
      v26 = [NSDictionary dictionaryWithObjects:&v285 forKeys:&v284 count:1];
      v27 = [NSError errorWithDomain:v24 code:214 userInfo:v26];

      sub_1003E1C94(a1, v27);
      a1 = v27;
LABEL_132:

      goto LABEL_133;
    }

    v10 = +[NSMutableDictionary dictionary];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"additionalData"];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"confidentialMailboxData"];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"deviceType"];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"ephemeralPublicKey"];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"groupIdentifier"];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"kBleIntroKey"];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"kBleOobKey"];
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"ktsSignature"];
    v258 = v10;
    [v10 setObject:objc_opt_class() forKeyedSubscript:@"slotIdentifier"];
    v11 = KmlLogger();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      sub_10039A954(4.8152e-34);
      sub_10039A630();
      sub_10039A5EC(667);
      v279 = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEBUG, "%s : %i : otherJsonData : %@", buf, 0x1Cu);
    }

    +[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [a1[17] agreedKmlVehicleVersion], 768);
    v265[2] = 0;
    v254 = v7;
    v12 = kmlUtilDecodeJson();
    v256 = 0;
    v13 = KmlVersions;
    v6 = v9;
    if (!+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [a1[17] agreedKmlVehicleVersion], 768))
    {
LABEL_21:
      v41 = [v12 objectForKey:@"kBleIntroKey"];
      v42 = a1[10];
      a1[10] = v41;

      v43 = [v12 objectForKey:@"kBleOobKey"];
      v44 = a1[11];
      a1[11] = v43;

      v45 = KmlLogger();
      if (sub_1003674CC(v45))
      {
        v46 = a1[11];
        a1[10];
        sub_10039A954(4.8153e-34);
        v276 = 1024;
        v277 = 693;
        v278 = 2112;
        v279 = v47;
        v280 = 2112;
        v281 = v48;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "%s : %i : Received: BleIntroKey - %@; BleOOBKey - %@;", buf, 0x26u);
      }

      v49 = [v12 objectForKey:@"slotIdentifier"];
      v50 = a1[12];
      a1[12] = v49;

      v51 = a1[12];
      kmlUtilLogLargeData();
      v52 = [v12 objectForKey:@"confidentialMailboxData"];
      kmlUtilLogLargeData();
      obj = [v12 objectForKey:@"ephemeralPublicKey"];
      kmlUtilLogLargeData();
      v53 = [v12 objectForKey:@"additionalData"];
      kmlUtilLogLargeData();
      if (!v6)
      {
        v6 = [v12 objectForKey:@"ktsSignature"];
      }

      if (v52)
      {
        *(a1 + 121) = 1;
      }

      v54 = KmlLogger();
      if (sub_100377D6C(v54))
      {
        if (v6)
        {
          v55 = @"Yes";
        }

        else
        {
          v55 = @"No";
        }

        if (a1[12])
        {
          v56 = @"Yes";
        }

        else
        {
          v56 = @"No";
        }

        if (*(a1 + 121))
        {
          v57 = @"Yes";
        }

        else
        {
          v57 = @"No";
        }

        *buf = 136316162;
        v275 = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
        v276 = 1024;
        v277 = 712;
        v278 = 2112;
        v279 = v55;
        v280 = 2112;
        v281 = v56;
        v282 = 2112;
        v283 = v57;
        sub_10039A5DC();
        _os_log_impl(v58, v59, v60, v61, v62, 0x30u);
      }

      v63 = KmlLogger();
      if (sub_100377D6C(v63))
      {
        v64 = [v53 asHexString];
        *buf = 136315650;
        sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
        sub_10039A5EC(714);
        v279 = v65;
        sub_10039A5DC();
        _os_log_impl(v66, v67, v68, v69, v70, 0x1Cu);
      }

      objc_storeStrong(a1 + 4, v6);
      if (!a1[4])
      {
        sub_10039A734();
        v53 = v52;
        v71 = KmlLogger();
        if (sub_100377D54(v71))
        {
          sub_10039A948(4.8151e-34);
          *(v72 + 4) = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
          sub_10039A630();
          *(v73 + 14) = 720;
          sub_10039A654();
          sub_10039A68C();
          _os_log_impl(v74, v75, v76, v77, v78, v79);
        }

        v80 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
        v272 = NSLocalizedDescriptionKey;
        KmlErrorString();
        v81 = [sub_10037BD94() stringWithUTF8String:?];
        v273 = v81;
        v82 = [NSDictionary dictionaryWithObjects:&v273 forKeys:&v272 count:1];
        sub_10039A824();
        v84 = [v83 errorWithDomain:? code:? userInfo:?];

        sub_1003E1C94(a1, v84);
        a1 = v84;
        v7 = v254;
        v52 = v53;
        sub_10039A770();
        goto LABEL_131;
      }

      v85 = [[KmlDeviceConfigurationData alloc] initWithData:a1[8]];
      [v85 updatePPIDWithServerProvidedData:v53];
      v86 = [v85 asData];
      v87 = a1[8];
      a1[8] = v86;

      if (v53)
      {
        v88 = [v85 mfiPPID];
        v89 = a1[9];
        a1[9] = v88;

        objc_storeStrong(a1 + 18, v53);
      }

      v251 = [a1[3] readerInfo];
      v90 = [[KmlRoutingInformation alloc] initWithReaderInformation:v251];
      v252 = v90;
      v253 = v85;
      if (sub_1003E225C(a1))
      {
        if ([v85 isImmoTokenNeeded]&& [v85 isFriendImmoTokenOrSlotOnline])
        {
          v91 = KmlLogger();
          if (sub_100377D6C(v91))
          {
            *buf = 136315394;
            sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
            v277 = 743;
            sub_10039A5DC();
            _os_log_impl(v92, v93, v94, v95, v96, 0x12u);
          }

          objc_storeStrong(a1 + 7, obj);
          v97 = v52;
        }

        else
        {
          v117 = KmlLogger();
          if (sub_100377D6C(v117))
          {
            *buf = 136315394;
            sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
            v277 = 747;
            sub_10039A5DC();
            _os_log_impl(v118, v119, v120, v121, v122, 0x12u);
          }

          v123 = [a1[3] ownerEphemeralKey];
          v124 = a1[7];
          a1[7] = v123;

          v97 = [a1[3] sharingEncryptedData];
        }

        v125 = a1[6];
        a1[6] = v97;

        if ([a1[12] length])
        {
          v126 = KmlLogger();
          if (sub_100377D6C(v126))
          {
            *buf = 136315394;
            sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
            v277 = 752;
            sub_10039A5DC();
            _os_log_impl(v127, v128, v129, v130, v131, 0x12u);
          }

          v132 = a1[1];
          v133 = a1[12];
          v265[1] = v256;
          SESEndPointConfigureKeySlot();
          v134 = v256;

          if (v134)
          {
            sub_10039A734();
            v146 = sesErrorToKmlError();

            v147 = KmlLogger();
            if (sub_10039A8D4(v147))
            {
              sub_10039A948(4.8152e-34);
              *(v148 + 4) = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
              sub_10039A630();
              sub_10039A70C(756);
              v278 = v149;
              *(v150 + 20) = v146;
              sub_10036F590(&_mh_execute_header, v53, v151, "%s : %i : Failed to save friend slotId - %@", buf);
            }

            sub_1003E1C94(a1, v146);
            a1 = v146;
            sub_10039A770();
            goto LABEL_129;
          }

          v250 = v52;
          v256 = 0;
          v85 = v253;
        }

        else
        {
          v250 = v52;
        }

        v135 = a1[17];
        v136 = [v85 initiatorSupportedFrameworkVersionsData];
        v137 = [sub_10039A874() updateSupportedFrameworkVersionsForSharing:?];

        v138 = sub_1003E22E4(a1);

        if (v138)
        {
          sub_10039A734();
          v141 = KmlLogger();
          v52 = v250;
          if (sub_10039A8D4(v141))
          {
            sub_10039A948(4.8152e-34);
            *(v142 + 4) = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
            sub_10039A630();
            sub_10039A70C(768);
            v278 = v143;
            *(v144 + 20) = v138;
            sub_10036F590(&_mh_execute_header, v53, v145, "%s : %i : Failed to create attestation package - %@", buf);
          }

          sub_1003E1C94(a1, v138);
          a1 = v138;
          sub_10039A770();
          goto LABEL_130;
        }

        v139 = [a1[3] additionalAttestationsDict];
        v140 = a1[16];
        a1[16] = v139;
LABEL_105:

        v200 = sub_1003E2674(a1);
        if (!v200)
        {
          sub_10039A734();
          v202 = [a1[3] publicKeyIdentifier];
          v53 = SESEndpointNotifyTracked();

          v203 = KmlLogger();
          if (sub_1003970EC(v203))
          {
            sub_10039A948(4.8152e-34);
            *(v204 + 4) = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
            sub_10039A630();
            sub_10039A70C(864);
            v278 = v205;
            *(v206 + 20) = v53;
            sub_100367454(&_mh_execute_header, v85, v207, "%s : %i : SES notified about new tracked endpoint with error %@", buf);
          }

          sub_10039A770();
        }

        if (sub_1003F6F5C(v201))
        {
          v208 = objc_opt_new();
          v209 = [v208 emulateNFCOnlyDevice];

          if (v209)
          {
            v210 = KmlLogger();
            if (sub_1003970EC(v210))
            {
              *buf = 136315394;
              sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
              v277 = 873;
              sub_10039A718(&_mh_execute_header, v211, v212, "%s : %i : Emulating NFC only device", buf);
            }

            v213 = 0;
          }

          else
          {
            v213 = 1;
          }

          v7 = v254;
        }

        else
        {
          v213 = 1;
        }

        v217 = +[NISession deviceCapabilities];
        v218 = [v217 supportsPreciseDistanceMeasurement];

        if (!v200 && sub_1003E225C(a1) && [v253 readerSupportsUwb]&& (v213 & v218) != 0)
        {
          v219 = dispatch_get_global_queue(21, 0);
          sub_10039A6EC();
          v260 = 3221225472;
          v261 = sub_100399CD4;
          v262 = &unk_1004C08D8;
          v263 = a1;
          dispatch_async(v220, block);
        }

        sub_1003E1C94(a1, v200);
        a1 = v200;
        v52 = v250;
LABEL_129:
        v85 = v253;
        goto LABEL_130;
      }

      v247 = v12;
      v250 = v52;
      v98 = objc_opt_new();
      v99 = [v90 manufacturer];
      v100 = [v90 brand];
      v101 = [v85 mfiPPID];
      v265[0] = v256;
      v248 = v98;
      v102 = [v98 BOOLValueForSetting:8 manufacturer:v99 brand:v100 uuid:v101 error:v265];
      v103 = v265[0];

      v104 = v103;
      v249 = v53;
      if (v103)
      {
        goto LABEL_116;
      }

      v105 = [v252 manufacturer];
      v106 = [v252 brand];
      v107 = [v253 mfiPPID];
      v108 = 1;
      v109 = [v248 BOOLValueForSetting:1 manufacturer:v105 brand:v106 uuid:v107 error:0];

      if (sub_1003F6F5C(v110))
      {
        if ([v248 emulateNFCOnlyDevice])
        {
          v111 = KmlLogger();
          if (sub_100377D6C(v111))
          {
            *buf = 136315394;
            sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
            v277 = 799;
            sub_10039A5DC();
            _os_log_impl(v112, v113, v114, v115, v116, 0x12u);
          }

          v108 = 0;
        }

        else
        {
          v108 = 1;
        }
      }

      v152 = +[NISession deviceCapabilities];
      v153 = [v152 supportsPreciseDistanceMeasurement];

      v104 = 0;
      v154 = 0;
      if (v109)
      {
        v155 = v108 & v153;
        v53 = v249;
        v85 = v253;
        if ((v155 & 1) == 0)
        {
          v156 = +[NRPairedDeviceRegistry sharedInstance];
          v157 = [v156 getActivePairedDevice];

          if (v157)
          {
            [[NSUUID alloc] initWithUUIDString:@"C4F6386A-780D-40E5-9900-0A26C16273A1"];
            if ([sub_10039A898() supportsCapability:0])
            {
              v158 = [[NSUUID alloc] initWithUUIDString:@"81D292E4-16D8-4630-82ED-BDF62B05E334"];
              v159 = [sub_10039A7A4() supportsCapability:?];

              if (v159)
              {
                v160 = KmlLogger();
                if (sub_10039A8BC(v160))
                {
                  *buf = 136315394;
                  sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
                  v277 = 813;
                  sub_10036DC0C(&_mh_execute_header, v159, v161, "%s : %i : Allowing NFC only phone to have owner key since there is a paired UWB-capable watch", buf);
                }

                v154 = 0;
                v104 = 0;
LABEL_89:

                goto LABEL_90;
              }
            }

            else
            {
            }
          }

          v257 = v102;
          v162 = KmlLogger();
          if (sub_100377D54(v162))
          {
            *buf = 136315394;
            sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
            v277 = 815;
            sub_10039A654();
            sub_10039A68C();
            _os_log_impl(v163, v164, v165, v166, v167, v168);
          }

          v169 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v270 = NSLocalizedDescriptionKey;
          KmlErrorString();
          v170 = [sub_10039A910() stringWithUTF8String:?];
          v271 = v170;
          v154 = 1;
          v171 = [NSDictionary dictionaryWithObjects:&v271 forKeys:&v270 count:1];
          v104 = [NSError errorWithDomain:v169 code:218 userInfo:v171];

          v159 = v169;
          v53 = v249;
          v85 = v253;
          v102 = v257;
          goto LABEL_89;
        }
      }

      else
      {
        v53 = v249;
        v85 = v253;
      }

LABEL_90:
      if ((v154 & 1) == 0 && !v104 && v102 == 1)
      {
        v7 = v254;
        v52 = v250;
        v12 = v247;
        if ([v85 isImmoTokenNeeded]&& [v85 isOwnerImmoTokenOrSlotOnline])
        {
          v172 = KmlLogger();
          if (sub_100377D6C(v172))
          {
            *buf = 136315394;
            sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
            v277 = 840;
            sub_10039A5DC();
            _os_log_impl(v173, v174, v175, v176, v177, 0x12u);
          }

          objc_storeStrong(a1 + 7, obj);
          objc_storeStrong(a1 + 6, v250);
        }

        if (!a1[12])
        {
          goto LABEL_102;
        }

        v178 = KmlLogger();
        if (sub_100377D6C(v178))
        {
          v179 = a1[12];
          *buf = 136315650;
          v275 = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
          v276 = 1024;
          sub_10039A928(v179);
          sub_10039A5DC();
          _os_log_impl(v180, v181, v182, v183, v184, 0x1Cu);
        }

        v185 = a1[1];
        v186 = a1[12];
        v264 = 0;
        SESEndPointConfigureKeySlot();
        v187 = 0;
        if (!v187)
        {
LABEL_102:
          v188 = [KmlTlv TLVWithTag:69 value:a1[4]];
          v189 = [v188 asData];
          v190 = a1[5];
          a1[5] = v189;

          v191 = KmlLogger();
          if (sub_100377D6C(v191))
          {
            v192 = a1[5];
            v193 = kmlUtilHexStringFromData();
            *buf = 136315650;
            sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
            sub_10039A5EC(857);
            v279 = v194;
            sub_10039A5DC();
            _os_log_impl(v195, v196, v197, v198, v199, 0x1Cu);
          }

          v140 = v248;
          goto LABEL_105;
        }

        v104 = v187;
        v216 = sesErrorToKmlError();

        v234 = KmlLogger();
        if (sub_100377D54(v234))
        {
          *buf = 136315650;
          sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
          sub_10039A5EC(849);
          v279 = v216;
          sub_10039A654();
          sub_10036F590(v235, v236, v237, v238, v239);
        }

LABEL_120:

        sub_1003E1C94(a1, v216);
        a1 = v216;

        v53 = v249;
LABEL_130:

LABEL_131:
        goto LABEL_132;
      }

      if (!v104)
      {
        v222 = KmlLogger();
        v223 = sub_100377D54(v222);
        if (v154)
        {
          v12 = v247;
          if (v223)
          {
            v224 = [v252 manufacturer];
            *buf = 136315650;
            v275 = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
            sub_10039A630();
            sub_10039A5EC(828);
            v279 = v225;
            sub_10039A654();
            sub_10036F590(v226, v227, v228, v229, v230);
          }

          v104 = [sub_10039A91C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v268[0] = NSLocalizedDescriptionKey;
          v231 = [STACK[0x568] stringWithUTF8String:KmlErrorString()];
          v268[1] = NSLocalizedFailureReasonErrorKey;
          v269[0] = v231;
          v269[1] = @"NFC only pairing blocked by configuration";
          v232 = [NSDictionary dictionaryWithObjects:v269 forKeys:v268 count:2];
          v233 = sub_10039A874();
        }

        else
        {
          v12 = v247;
          if (v223)
          {
            v240 = [v252 manufacturer];
            *buf = 136315650;
            v275 = "[KmlEndpointManager saveTrackingReceipt:otherJSONData:]";
            sub_10039A630();
            sub_10039A5EC(831);
            v279 = v241;
            sub_10039A654();
            sub_10036F590(v242, v243, v244, v245, v246);
          }

          v104 = [sub_10039A91C() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
          v266[0] = NSLocalizedDescriptionKey;
          v231 = [STACK[0x568] stringWithUTF8String:KmlErrorString()];
          v266[1] = NSLocalizedFailureReasonErrorKey;
          v267[0] = v231;
          v267[1] = @"Pairing is blocked by configuration";
          v232 = [NSDictionary dictionaryWithObjects:v267 forKeys:v266 count:2];
          v233 = sub_10039A874();
        }

        v216 = [v233 errorWithDomain:? code:? userInfo:?];

        goto LABEL_119;
      }

LABEL_116:
      v214 = KmlLogger();
      v12 = v247;
      if (sub_10039A8D4(v214))
      {
        *buf = 136315650;
        sub_10039A5CC("[KmlEndpointManager saveTrackingReceipt:otherJSONData:]");
        sub_10039A5EC(825);
        v279 = v104;
        sub_10036F590(&_mh_execute_header, v53, v215, "%s : %i : Pairing is blocked due to error reading SLG settings: %@", buf);
      }

      v216 = sesErrorToKmlError();
LABEL_119:
      v85 = v253;
      v7 = v254;
      v52 = v250;
      goto LABEL_120;
    }

    v14 = [v12 objectForKey:@"groupIdentifier"];
    v15 = a1[13];
    a1[13] = v14;

    v13 = [v12 objectForKey:@"deviceType"];
    *(a1 + 120) = -1;
    if (([v13 isEqualToString:@"PHONE"]& 1) != 0)
    {
      v16 = 1;
    }

    else
    {
      if (![v13 isEqualToString:@"WATCH"])
      {
LABEL_16:
        v28 = KmlLogger();
        if (sub_100377D6C(v28))
        {
          a1[13];
          sub_10039A954(4.8152e-34);
          v276 = 1024;
          sub_10039A928(v29);
          sub_10039A5DC();
          _os_log_impl(v30, v31, v32, v33, v34, 0x1Cu);
        }

        v35 = KmlLogger();
        if (sub_100377D6C(v35))
        {
          sub_10039A954(4.8152e-34);
          sub_10039A630();
          sub_10039A5EC(687);
          v279 = v13;
          sub_10039A5DC();
          _os_log_impl(v36, v37, v38, v39, v40, 0x1Cu);
        }

        goto LABEL_21;
      }

      v16 = 2;
    }

    *(a1 + 120) = v16;
    goto LABEL_16;
  }

LABEL_133:

  return a1;
}

void sub_1003E1C94(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v43 = v4;
    if (v4)
    {
      v36 = [v4 code];
    }

    else
    {
      v36 = 0;
    }

    if (*(a1 + 88))
    {
      v38 = *(a1 + 80) != 0;
    }

    else
    {
      v38 = 0;
    }

    v5 = *(a1 + 72);
    v6 = *(a1 + 96);
    v7 = sub_100399BE8(KmlEndpointManager, *(a1 + 24));
    v8 = [*(a1 + 24) configuration];
    [v8 opt2];

    v42 = [*(a1 + 24) readerInfo];
    v9 = [[KmlRoutingInformation alloc] initWithReaderInformation:v42];
    v41 = v9;
    if (v9)
    {
      v10 = v9;
      v11 = [v9 manufacturer];
      v40 = [v11 copy];

      v12 = [v10 brand];
      v39 = [v12 copy];

      v13 = [v10 regionString];
      v14 = [v13 copy];
    }

    else
    {
      v14 = @"Unknown";
      v39 = @"Unknown";
      v40 = @"Unknown";
    }

    v15 = [[KmlDeviceConfigurationData alloc] initWithData:*(a1 + 64)];
    v35 = [v15 readerSupportsNfc];
    v16 = [v15 readerSupportsUwb];
    v17 = 2;
    if (!v16)
    {
      v17 = 0;
    }

    v33 = v17;
    v18 = [*(a1 + 24) keyRole];
    if (!v18)
    {
      v19 = &off_1004DD038;
      if (v7)
      {
        v19 = &off_1004DD020;
      }

      v18 = v19;
    }

    v20 = v18;
    v34 = v18;
    v21 = [*(a1 + 24) publicKeyIdentifier];
    kmlUtilHexStringFromData();
    objc_claimAutoreleasedReturnValue();
    v22 = sub_10039A744();
    v31 = sub_100369220(v22, v2);

    v44[0] = @"errorCode";
    v37 = [NSNumber numberWithUnsignedInt:v36];
    v45[0] = v37;
    v45[1] = v20;
    v44[1] = @"accountRole";
    v44[2] = @"didReceiveProductPlanIdentifier";
    v32 = [NSNumber numberWithBool:v5 != 0];
    v45[2] = v32;
    v44[3] = @"didReceiveSlotIdentifier";
    v23 = [NSNumber numberWithBool:v6 != 0];
    v45[3] = v23;
    v44[4] = @"didReceiveImmoToken";
    v24 = [NSNumber numberWithBool:*(a1 + 121)];
    v45[4] = v24;
    v44[5] = @"didReceiveOnlineBLEKeys";
    v25 = [NSNumber numberWithBool:v38];
    v45[5] = v25;
    v44[6] = @"isOwner";
    v26 = [NSNumber numberWithBool:v7];
    v45[6] = v26;
    v44[7] = @"keyClassOriginBitmap";
    v27 = [NSNumber numberWithUnsignedChar:kmlUtilKeyClassOriginBitmap()];
    v45[7] = v27;
    v45[8] = v14;
    v44[8] = @"dataCenterCode";
    v44[9] = @"manufacturer";
    v45[9] = v40;
    v45[10] = v39;
    v44[10] = @"brand";
    v44[11] = @"transportSupported";
    v28 = [NSNumber numberWithUnsignedInteger:v33 | v35];
    v45[11] = v28;
    v44[12] = @"trackingRequestDuration";
    v29 = [NSNumber numberWithUnsignedInt:v31];
    v45[12] = v29;
    v30 = [NSDictionary dictionaryWithObjects:v45 forKeys:v44 count:13];

    sub_1003695CC(KmlAnalyticsLogger, v30);
    v4 = v43;
  }
}

uint64_t sub_1003E20F4(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 24);
    if (v2)
    {
      v3 = [v2 trackingRequest];

      if (v3)
      {
        v1 = [v1[3] trackingReceipt];

        if (!v1)
        {
          return 1;
        }

        v4 = KmlLogger();
        if (!sub_1003970B4(v4))
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v6 = KmlLogger();
      if (sub_1003970B4(v6))
      {
LABEL_10:
        sub_10036DB8C();
        sub_10039A68C();
        _os_log_impl(v7, v8, v9, v10, v11, v12);
      }
    }

    else
    {
      v5 = KmlLogger();
      if (sub_1003970B4(v5))
      {
        goto LABEL_10;
      }
    }

LABEL_11:

    return 0;
  }

  return result;
}

id sub_1003E225C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 24);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 subjectIdentifier];
  v3 = sub_1003975A8(KmlEndpointManager, v2);
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isEqualToString:@"FRND"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

unsigned __int8 *sub_1003E22E4(id *a1)
{
  v4 = a1;
  if (a1)
  {
    v5 = [a1[3] sharingAttestationData];
    if (v5)
    {
      v6 = [NSMutableData dataWithData:v5];
      if (*(v4 + 12))
      {
        v7 = [KmlTlv TLVWithTag:78 value:?];
        [v7 asData];
        objc_claimAutoreleasedReturnValue();
        [sub_10039A670() appendData:?];
      }

      v8 = KmlVersions;
      if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(v4 + 17) agreedKmlSharingVersion], 768))
      {
        if (*(v4 + 13))
        {
          v8 = [KmlTlv TLVWithTag:79 value:?];
          [v8 asData];
          objc_claimAutoreleasedReturnValue();
          [sub_10039A670() appendData:?];
        }

        if (v4[120] != 255)
        {
          v9 = KmlLogger();
          if (sub_10036F124(v9))
          {
            v10 = v4[120];
            v30 = 136315650;
            v31 = "[KmlEndpointManager generateFriendAttestationPackage]";
            v32 = 1024;
            v33 = 1913;
            v34 = 1024;
            LODWORD(v35) = v10;
            _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_INFO, "%s : %i : Using device type from tracking receipt: %u", &v30, 0x18u);
          }

          v11 = [KmlTlv TLVWithTag:72 unsignedChar:v4[120]];
          [v11 asData];
          objc_claimAutoreleasedReturnValue();
          [sub_10039A670() appendData:?];
        }
      }

      v12 = [KmlTlv TLVWithTag:69 value:*(v4 + 4)];
      [v12 asData];
      objc_claimAutoreleasedReturnValue();
      [sub_10039A670() appendData:?];

      v13 = [KmlTlv TLVWithTag:32565 value:v6];
      v14 = [v13 asData];
      v15 = *(v4 + 5);
      *(v4 + 5) = v14;

      v16 = KmlLogger();
      if (sub_10036F124(v16))
      {
        v17 = *(v4 + 5);
        v18 = kmlUtilHexStringFromData();
        v30 = 136315650;
        v31 = "[KmlEndpointManager generateFriendAttestationPackage]";
        sub_1003939BC();
        v33 = 1921;
        v34 = 2112;
        v35 = v19;
        sub_100367454(&_mh_execute_header, v13, v20, "%s : %i : Friend Attestation Package %@", &v30);
      }

      v4 = 0;
    }

    else
    {
      v21 = KmlLogger();
      if (sub_10036F5DC(v21))
      {
        sub_10036DB8C();
        v33 = 1886;
        sub_10039A68C();
        _os_log_impl(v22, v23, v24, v25, v26, v27);
      }

      v6 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
      v36 = NSLocalizedDescriptionKey;
      v28 = *(v2 + 1128);
      KmlErrorString();
      v13 = [sub_100372244() stringWithUTF8String:?];
      v37 = v13;
      [NSDictionary dictionaryWithObjects:&v37 forKeys:&v36 count:1];
      objc_claimAutoreleasedReturnValue();
      v4 = [sub_10039A880() errorWithDomain:? code:? userInfo:?];
    }
  }

  return v4;
}

id sub_1003E2674(uint64_t a1)
{
  if (!a1)
  {
    v30 = 0;
    goto LABEL_65;
  }

  v2 = a1;
  if ((sub_1003E225C(a1) & 1) == 0 && (sub_100399BE8(KmlEndpointManager, *(v2 + 3)) & 1) == 0)
  {
    v2 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
    v165 = NSLocalizedDescriptionKey;
    v8 = [NSString stringWithUTF8String:KmlErrorString()];
    v166 = v8;
    v5 = [NSDictionary dictionaryWithObjects:&v166 forKeys:&v165 count:1];
    v9 = v2;
    v10 = 210;
    v11 = v5;
LABEL_17:
    v30 = [NSError errorWithDomain:v9 code:v10 userInfo:v11];
    goto LABEL_64;
  }

  if (*(v2 + 6))
  {
    if (*(v2 + 7))
    {
      v3 = *(v2 + 1);
      v154 = 0;
      SESEndPointSetConfidentialDataWithOffset();
      v4 = 0;
      if (v4)
      {
        v5 = v4;
        v6 = KmlLogger();
        if (sub_1003970B4(v6))
        {
          v159 = 136315650;
          v160 = "[KmlEndpointManager updateEndpointWithTrackingData]";
          sub_10039A648();
          v162 = 1941;
          sub_10039A7E8();
          v164 = v5;
          sub_10036F590(&_mh_execute_header, v1, v7, "%s : %i : Failed to set confidential mailbox - %@", &v159);
        }

        [NSString stringWithUTF8String:"com.apple.sesd.kml"];
        objc_claimAutoreleasedReturnValue();
        v8 = [sub_10039A750() userInfo];
        v9 = v2;
        v10 = 207;
        v11 = v8;
        goto LABEL_17;
      }
    }
  }

  v12 = [NSData alloc];
  v13 = [*(v2 + 3) mailboxMapping];
  v8 = [v12 initWithData:v13];

  v14 = KmlLogger();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = kmlUtilHexStringFromData();
    v159 = 136315650;
    v160 = "[KmlEndpointManager updateEndpointWithTrackingData]";
    sub_10039A648();
    v162 = 1948;
    sub_10039A7E8();
    v164 = v16;
    sub_100367454(&_mh_execute_header, v14, v17, "%s : %i : MailboxMappingData:%@", &v159);
  }

  v5 = [[KmlMailboxMappingData alloc] initWithData:v8 preferredVersion:{objc_msgSend(*(v2 + 17), "agreedKmlVehicleVersion")}];
  [v5 mailboxEndOffset];
  [v5 signalingBitmapOffset];
  v18 = *(v2 + 1);
  [v5 signalingBitmapOffset];
  v153 = 0;
  v19 = SESEndPointGetPrivateData();
  v20 = 0;
  if (v20)
  {
    v21 = v20;
    v22 = KmlLogger();
    if (sub_10036F5C4(v22))
    {
      v159 = 136315650;
      v160 = "[KmlEndpointManager updateEndpointWithTrackingData]";
      sub_10039A648();
      v162 = 1960;
      sub_10039A7E8();
      v164 = v21;
      sub_10039A6C0();
      _os_log_impl(v23, v24, v25, v26, v27, 0x1Cu);
    }

    [NSString stringWithUTF8String:"com.apple.sesd.kml"];
    objc_claimAutoreleasedReturnValue();
    v28 = [sub_10039A744() userInfo];
    v29 = [sub_10039A7A4() errorWithDomain:? code:? userInfo:?];

    v2 = v29;
    goto LABEL_63;
  }

  v31 = &NSInferMappingModelAutomaticallyOption_ptr;
  v32 = [[NSMutableData alloc] initWithData:v19];
  kmlUtilLogLargeData();
  v33 = *[v19 bytes];
  v34 = [v5 getMaskToIndicateKeyAttestationSaved];
  v35 = (v33 | v34);
  v152 = v33 | v34;
  v36 = &unk_100409000;
  if (*(v2 + 6) && *(v2 + 7) && [v5 mailboxVersion] != 128)
  {
    v37 = KmlLogger();
    if (sub_1003674CC(v37))
    {
      v159 = 136315394;
      v160 = "[KmlEndpointManager updateEndpointWithTrackingData]";
      sub_10039A648();
      v162 = 1974;
      sub_10036DC0C(&_mh_execute_header, "[KmlEndpointManager updateEndpointWithTrackingData]", v38, "%s : %i : Updating immo token bitmap", &v159);
    }

    LOBYTE(v159) = 1;
    [v32 replaceBytesInRange:1 withBytes:1, &v159];
  }

  v39 = [v5 keyAttestationStartOffset];
  v151 = v39 - [v5 signalingBitmapOffset];
  v40 = [v5 attestationPackageLength];
  if ([v5 mailboxVersion] != 128)
  {
    LOBYTE(v41) = 0;
LABEL_26:
    v42 = KmlLogger();
    if (sub_100377D6C(v42))
    {
      v159 = v36[278];
      sub_10039A63C("[KmlEndpointManager updateEndpointWithTrackingData]");
      v161 = v43;
      *(v44 + 14) = 2061;
      sub_10039A680();
      _os_log_impl(v45, v46, v47, v48, v49, 0x12u);
    }

    v50 = v36;

    v51 = [*(v2 + 5) length];
    v52 = v51;
    if (v51 <= v40)
    {
      -[NSObject replaceBytesInRange:withBytes:](v32, "replaceBytesInRange:withBytes:", (v151 + v40 * v41), v51, [*(v2 + 5) bytes]);
      [v32 replaceBytesInRange:0 withBytes:1, &v152];
      kmlUtilLogLargeData();
      v65 = *(v2 + 1);
      [v5 signalingBitmapOffset];
      SESEndPointSetPrivateData();
      v66 = 0;
      if (v66)
      {
        v67 = v66;
        v68 = v32;
        v69 = KmlLogger();
        if (sub_10036F5C4(v69))
        {
          v159 = 136315650;
          sub_10039A63C("[KmlEndpointManager updateEndpointWithTrackingData]");
          v161 = v70;
          sub_10039A70C(2086);
          v163 = v71;
          *(v72 + 20) = v67;
          sub_10039A6C0();
          _os_log_impl(v73, v74, v75, v76, v77, 0x1Cu);
        }

        v78 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
        v79 = [v67 userInfo];
        sub_10039A824();
        v81 = [v80 errorWithDomain:? code:? userInfo:?];

        v2 = v81;
        v32 = v68;
      }

      else
      {
        v82 = *(v2 + 1);
        sub_10039A6CC();
        v83 = SESEndPointUpdateWithBlock();
        if (v83)
        {
          v84 = v83;
          v85 = v32;
          v86 = KmlLogger();
          if (sub_1003674CC(v86))
          {
            v159 = v50[278];
            v160 = "[KmlEndpointManager updateEndpointWithTrackingData]";
            sub_10039A648();
            v162 = 2130;
            sub_10036DC0C(&_mh_execute_header, v65, v87, "%s : %i : Could not update endpoint", &v159);
          }

          [NSString stringWithUTF8String:"com.apple.sesd.kml"];
          objc_claimAutoreleasedReturnValue();
          v88 = [sub_10039A898() userInfo];
          sub_10039A824();
          v90 = [v89 errorWithDomain:? code:? userInfo:?];

          v32 = v85;
        }

        else
        {
          v90 = 0;
        }

        v2 = v90;
      }
    }

    else
    {
      v53 = KmlLogger();
      if (sub_10036F5C4(v53))
      {
        v159 = 136315906;
        v160 = "[KmlEndpointManager updateEndpointWithTrackingData]";
        sub_10039A648();
        *(v54 + 14) = 2066;
        v163 = v55;
        LODWORD(v164) = v52;
        WORD2(v164) = v55;
        *(v54 + 26) = v40;
        sub_10039A6C0();
        _os_log_impl(v56, v57, v58, v59, v60, 0x1Eu);
      }

      v61 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
      v155[0] = NSLocalizedDescriptionKey;
      v62 = *(v52 + 1128);
      KmlErrorString();
      v63 = [sub_10039A910() stringWithUTF8String:?];
      v155[1] = NSLocalizedFailureReasonErrorKey;
      v156[0] = v63;
      v156[1] = @"Max attestation length not enough";
      [NSDictionary dictionaryWithObjects:v156 forKeys:v155 count:2];
      objc_claimAutoreleasedReturnValue();
      v64 = [sub_10039A8A4() errorWithDomain:? code:? userInfo:?];

      v2 = v64;
    }

    goto LABEL_62;
  }

  v149 = v35;
  v91 = [v5 signerSlotIdListOffset];
  v146 = v91 - [v5 signalingBitmapOffset];
  v145 = [v5 slotIdentifierLength];
  v142 = v40;
  if (!sub_1003E225C(v2) || !+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(v2 + 17) agreedKmlSharingVersion], 768))
  {
    v35 = 0;
LABEL_71:
    v130 = sub_1003E8E30(v2, *(v2 + 5));
    v41 = v35;
    if (![v130 length])
    {
      if ([*(v2 + 12) length])
      {
        v131 = *(v2 + 12);
      }

      else
      {
        v131 = 0;
      }

      v132 = v131;

      v130 = v132;
      v35 = v41;
    }

    if ([v130 length])
    {
      v133 = KmlLogger();
      if (sub_1003970EC(v133))
      {
        v159 = 136315650;
        sub_10039A63C("[KmlEndpointManager updateEndpointWithTrackingData]");
        v161 = v134;
        sub_10039A70C(2053);
        v163 = v135;
        *(v136 + 20) = v130;
        sub_100367454(&_mh_execute_header, v31, v137, "%s : %i : Set ourSlotId (%@)", &v159);
      }

      v138 = v146 + v35 * v145;
      v35 = v145;
      -[NSObject replaceBytesInRange:withBytes:](v32, "replaceBytesInRange:withBytes:", v138, v145, [v130 bytes]);
      v152 |= [v5 getMaskToIndicateSlotIdListSaved];
      v40 = v142;
    }

    v36 = &unk_100409000;
    goto LABEL_26;
  }

  v144 = v32;
  v92 = KmlLogger();
  if (sub_10039A8BC(v92))
  {
    v159 = 136315394;
    v160 = "[KmlEndpointManager updateEndpointWithTrackingData]";
    sub_10039A648();
    v162 = 1993;
    sub_10036DC0C(&_mh_execute_header, v32, v93, "%s : %i : Initialize slotIDs to all FF bytes", &v159);
  }

  v94 = [v5 vehicleProprietaryDataOffset];
  v95 = v94 - [v5 signerSlotIdListOffset];
  v141 = [NSMutableData dataWithLength:v95];
  v96 = [v141 mutableBytes];
  memset(v96, 255, v95);
  [v144 replaceBytesInRange:v146 withBytes:v95, v96];
  v97 = KmlLogger();
  if (sub_10039A8BC(v97))
  {
    v159 = 136315394;
    v160 = "[KmlEndpointManager updateEndpointWithTrackingData]";
    sub_10039A648();
    v162 = 2002;
    sub_10036DC0C(&_mh_execute_header, v96, v98, "%s : %i : Look for additional attestations", &v159);
  }

  v140 = [[KmlDeviceConfigurationData alloc] initWithData:*(v2 + 8)];
  v99 = ([v140 maxOfflineAttestationCount] + 46);
  v101 = v149;
  v102 = 0;
  if (v99 < 0x30)
  {
    v32 = v144;
    v40 = v142;
LABEL_70:

    v35 = v102;
    goto LABEL_71;
  }

  *&v100 = 136315650;
  v139 = v100;
  v32 = v144;
  v40 = v142;
  v143 = v19;
  while (1)
  {
    v150 = v101;
    v103 = *(v2 + 16);
    v147 = v99;
    v104 = [NSNumber numberWithUnsignedChar:v99, v139];
    v105 = [v103 objectForKeyedSubscript:v104];

    v31 = v105;
    v106 = sub_1003E8E30(v2, v105);
    if (![v31 length] || !objc_msgSend(v106, "length"))
    {
      v110 = KmlLogger();
      if (sub_100377D6C(v110))
      {
        v159 = v139;
        sub_10039A63C("[KmlEndpointManager updateEndpointWithTrackingData]");
        v161 = v111;
        *(v112 + 14) = 2037;
        v163 = v111;
        LODWORD(v164) = v147;
        sub_10039A680();
        _os_log_impl(v113, v114, v115, "%s : %i : No additional attestations found with tag : %02x", v116, 0x18u);
      }

      v101 = v150;
      goto LABEL_54;
    }

    v148 = v106;
    -[NSObject replaceBytesInRange:withBytes:](v144, "replaceBytesInRange:withBytes:", (v146 + v102 * v145), v145, [v148 bytes]);
    v107 = [v31 length];
    v108 = v107;
    if (v107 > v142)
    {
      break;
    }

    -[NSObject replaceBytesInRange:withBytes:](v144, "replaceBytesInRange:withBytes:", (v151 + v142 * v102), v107, [v31 bytes]);
    v109 = [v5 getMaskToIndicateSlotIdListSaved];
    v101 = v150 | v109;
    v152 = v150 | v109;
    v102 = (v102 + 1);
    v19 = v143;
    v106 = v148;
LABEL_54:

    v99 = v147 - 1;
    if ((v147 - 1) <= 0x2Fu)
    {
      goto LABEL_70;
    }
  }

  v117 = KmlLogger();
  if (sub_10036F5C4(v117))
  {
    v159 = 136315906;
    v160 = "[KmlEndpointManager updateEndpointWithTrackingData]";
    sub_10039A648();
    *(v118 + 14) = 2029;
    v163 = v119;
    LODWORD(v164) = v108;
    WORD2(v164) = v119;
    *(v118 + 26) = v142;
    sub_10039A6C0();
    _os_log_impl(v120, v121, v122, v123, v124, 0x1Eu);
  }

  v125 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
  v157[0] = NSLocalizedDescriptionKey;
  isa = v144[141].isa;
  KmlErrorString();
  v127 = [sub_10039A910() stringWithUTF8String:?];
  v157[1] = NSLocalizedFailureReasonErrorKey;
  v158[0] = v127;
  v158[1] = @"Max attestation length not enough";
  [NSDictionary dictionaryWithObjects:v158 forKeys:v157 count:2];
  objc_claimAutoreleasedReturnValue();
  v128 = [sub_10039A8A4() errorWithDomain:? code:? userInfo:?];

  v2 = v128;
  v19 = v143;
  v32 = v144;
LABEL_62:

LABEL_63:
  v30 = v2;
LABEL_64:

LABEL_65:

  return v30;
}

id sub_1003E3530(uint64_t a1, void *a2, void *a3, NSObject *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  if (!a1)
  {
    v18 = 0;
    goto LABEL_77;
  }

  v12 = sub_1003E01E8(a1);
  if (v12)
  {
    v13 = v12;
    v14 = KmlLogger();
    if (sub_1003970B4(v14))
    {
      sub_10039A6B4(4.8152e-34);
      sub_10039A60C("[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]");
      sub_100377CFC(904);
      *(v15 + 20) = v13;
      sub_10036F590(&_mh_execute_header, a4, v16, "%s : %i : Error getting endpoint - %@", buf);
    }

    if (a5)
    {
      v17 = v13;
      v18 = 0;
      *a5 = v13;
    }

    else
    {
      v18 = 0;
    }

    goto LABEL_76;
  }

  v151 = a5;
  v155 = v11;
  v156 = v10;
  v160 = [[KmlDeviceConfigurationData alloc] initWithData:*(a1 + 64)];
  v19 = &NSInferMappingModelAutomaticallyOption_ptr;
  v20 = +[NSMutableData data];
  v150 = [KmlTlv TLVWithTag:24353 value:*(a1 + 16)];
  v21 = [v150 asData];
  v153 = v20;
  [v20 appendData:v21];

  v161 = a1;
  v154 = v9;
  if (![v9 count])
  {
    v51 = +[NSMutableData data];
    v171 = 0u;
    v172 = 0u;
    v173 = 0u;
    v174 = 0u;
    v164 = v156;
    v52 = [v164 countByEnumeratingWithState:&v171 objects:v182 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v172;
      do
      {
        for (i = 0; i != v53; i = i + 1)
        {
          if (*v172 != v54)
          {
            objc_enumerationMutation(v164);
          }

          v56 = *(*(&v171 + 1) + 8 * i);
          kmlUtilDataForHexString();
          objc_claimAutoreleasedReturnValue();
          v57 = [sub_10036746C() TLVWithTag:79 value:v19];

          v58 = [NSMutableData alloc];
          [sub_10036746C() asData];
          objc_claimAutoreleasedReturnValue();
          v59 = [sub_10039A744() initWithData:a5];

          v19 = [KmlTlv TLVWithTag:71 unsignedChar:0];
          v60 = [v19 asData];
          [sub_10039A7A4() appendData:?];

          a5 = [KmlTlv TLVWithTag:97 value:v59];
          v61 = [a5 asData];
          [v51 appendData:v61];
        }

        v53 = [v164 countByEnumeratingWithState:&v171 objects:v182 count:16];
      }

      while (v53);
    }

    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    v165 = v155;
    v62 = [v165 countByEnumeratingWithState:&v167 objects:v181 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v168;
      do
      {
        for (j = 0; j != v63; j = j + 1)
        {
          if (*v168 != v64)
          {
            objc_enumerationMutation(v165);
          }

          v66 = *(*(&v167 + 1) + 8 * j);
          kmlUtilDataForHexString();
          objc_claimAutoreleasedReturnValue();
          v67 = [sub_10036746C() TLVWithTag:79 value:v19];

          v68 = [NSMutableData alloc];
          [sub_10036746C() asData];
          objc_claimAutoreleasedReturnValue();
          v69 = [sub_10039A744() initWithData:a5];

          v19 = [KmlTlv TLVWithTag:71 unsignedChar:1];
          v70 = [v19 asData];
          [sub_10039A7A4() appendData:?];

          a5 = [KmlTlv TLVWithTag:97 value:v69];
          v71 = [a5 asData];
          [v51 appendData:v71];
        }

        v63 = [v165 countByEnumeratingWithState:&v167 objects:v181 count:16];
      }

      while (v63);
    }

    v23 = v51;
    v47 = [KmlTlv TLVWithTag:32559 value:v51];
    v48 = [v47 asData];
    v50 = v153;
    [v153 appendData:v48];
    a1 = v161;
LABEL_45:

    v72 = kmlUtilSHA256();
    v73 = *(a1 + 8);
    v74 = SESEndPointSignDataWithAuth();
    v75 = [NSMutableData dataWithData:v50];
    [v74 signedData];
    objc_claimAutoreleasedReturnValue();
    [sub_10039A864() appendData:?];

    v76 = [v74 signature];
    v77 = [KmlTlv TLVWithTag:158 value:v76];

    [v77 asData];
    objc_claimAutoreleasedReturnValue();
    [sub_10039A864() appendData:?];

    v146 = v75;
    v78 = [KmlTlv TLVWithTag:32576 value:v75];
    v79 = KmlLogger();
    if (sub_10036F978(v79))
    {
      v80 = [v78 asData];
      v81 = kmlUtilHexStringFromData();
      sub_10039A6B4(4.8152e-34);
      sub_10039A60C("[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]");
      sub_100377CFC(1003);
      *(v83 + 20) = v82;
      sub_10036F920();
      _os_log_impl(v84, v85, v86, v87, v88, 0x1Cu);
    }

    v89 = *(a1 + 8);
    v90 = [v78 asData];
    v91 = SESEndPointPrivacyEncryption();
    v13 = 0;

    v147 = v72;
    if (v13)
    {
      v92 = KmlLogger();
      v93 = v155;
      if (sub_10036F978(v92))
      {
        sub_10039A6B4(4.8152e-34);
        sub_10039A60C("[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]");
        sub_100377CFC(1008);
        *(v94 + 20) = v13;
        sub_10036F920();
        _os_log_impl(v95, v96, v97, v98, v99, 0x1Cu);
      }

      if (v151)
      {
        v100 = v13;
        *v151 = v13;
      }

      v149 = 0;
    }

    else
    {
      v149 = v91;
      v93 = v155;
    }

    v145 = [*(a1 + 24) readerInfo];
    v101 = [[KmlRoutingInformation alloc] initWithReaderInformation:v145];
    v102 = v160;
    v103 = [v160 readerSupportsNfc];
    if ([v160 readerSupportsUwb])
    {
      v104 = 2;
    }

    else
    {
      v104 = 0;
    }

    v105 = KmlLogger();
    v106 = sub_10036F978(v105);
    v152 = v101;
    v166 = v74;
    v148 = v77;
    if (v101)
    {
      if (v106)
      {
        sub_10039A6B4(4.8152e-34);
        sub_10039A60C("[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]");
        sub_100377CFC(1027);
        *(v107 + 20) = v101;
        sub_10036F920();
        _os_log_impl(v108, v109, v110, v111, v112, 0x1Cu);
      }

      v113 = [v101 manufacturer];
      v162 = [v113 copy];

      v114 = [v101 brand];
      obja = [v114 copy];

      v102 = [v101 regionString];
      v157 = [v102 copy];
    }

    else
    {
      if (v106)
      {
        sub_10039A6B4(4.8151e-34);
        sub_10039A60C("[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]");
        *(v115 + 14) = 1032;
        sub_10036F920();
        _os_log_impl(v116, v117, v118, v119, v120, 0x12u);
      }

      obja = @"Unknown";
      v162 = @"Unknown";
      v157 = @"Unknown";
    }

    v121 = v93;

    v122 = [*(a1 + 24) keyRole];
    if (!v122)
    {
      v123 = sub_100399BE8(KmlEndpointManager, *(a1 + 24));
      v124 = &off_1004DD038;
      if (v123)
      {
        v124 = &off_1004DD020;
      }

      v122 = v124;
    }

    v179[0] = @"numFriendKeys";
    v125 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v154 count]);
    v180[0] = v125;
    v180[1] = v157;
    v179[1] = @"dataCenterCode";
    v179[2] = @"manufacturer";
    v180[2] = v162;
    v180[3] = obja;
    v179[3] = @"brand";
    v179[4] = @"transportSupported";
    v126 = [NSNumber numberWithUnsignedInteger:v104 | v103];
    v180[4] = v126;
    v179[5] = @"status";
    if (v13)
    {
      v144 = sesErrorToKmlError();
      v127 = [v144 code];
    }

    else
    {
      v127 = 0;
    }

    v128 = [NSNumber numberWithInteger:v127];
    v180[5] = v128;
    v179[6] = @"numGroupIDs";
    v129 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v156 count]);
    v180[6] = v129;
    v179[7] = @"numSubTrees";
    [v121 count];
    v130 = [sub_100372244() numberWithUnsignedInteger:?];
    v180[7] = v130;
    v180[8] = v122;
    v179[8] = @"accountRole";
    v179[9] = @"keyVersion";
    v131 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(a1 + 136) agreedKmlVehicleVersion]);
    v180[9] = v131;
    v132 = [NSDictionary dictionaryWithObjects:v180 forKeys:v179 count:10];

    if (v13)
    {
    }

    sub_100369844(KmlAnalyticsLogger, v132);
    v9 = v154;
    v11 = v155;
    v10 = v156;
    v133 = v153;
    v134 = v146;
    v23 = v147;
    v47 = v166;
    v135 = v78;
LABEL_74:

    v18 = v149;
    goto LABEL_75;
  }

  k = &v175;
  v23 = sub_100394824(KmlSharingRecordsUpdater, *(a1 + 24));
  v163 = +[NSMutableData data];
  v175 = 0u;
  v176 = 0u;
  v177 = 0u;
  v178 = 0u;
  obj = v9;
  v24 = [obj countByEnumeratingWithState:&v175 objects:v185 count:16];
  if (!v24)
  {
    goto LABEL_27;
  }

  v20 = v24;
  v25 = *v176;
  do
  {
    for (k = 0; k != v20; k = (k + 1))
    {
      if (*v176 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v26 = *(*(&v175 + 1) + 8 * k);
      v27 = sub_100394C28(v23, v26);
      if (v27 && ([v160 isFriendImmoTokenOrSlotOnline] & 1) == 0)
      {
        v36 = &swift_cvw_destroy_ptr;
        v35 = sub_1003B85A0(v27);
        v30 = [KmlTlv TLVWithTag:87 value:v35];
      }

      else
      {
        v28 = [v26 isEqualToString:*(a1 + 8)];
        v29 = KmlLogger();
        v30 = v29;
        if (v28)
        {
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 136315394;
            v187 = "[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]";
            v188 = 1024;
            v189 = 931;
            sub_10039A6C0();
            _os_log_impl(v31, v32, v33, "%s : %i : We don't allow creating RTR for our own key.", v34, 0x12u);
          }

          goto LABEL_25;
        }

        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          *buf = 136315394;
          v187 = "[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]";
          v188 = 1024;
          v189 = 934;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_INFO, "%s : %i : This is either owner swap or friend with online tokens.", buf, 0x12u);
        }

        v35 = v30;
        v30 = 0;
        v36 = &swift_cvw_destroy_ptr;
      }

      v37 = v23;

      v38 = v36[276];
      v39 = kmlUtilDataForHexString();
      v40 = [v38 TLVWithTag:80 value:v39];

      v41 = [NSMutableData alloc];
      v42 = [v40 asData];
      v43 = [v41 initWithData:v42];

      if (v30)
      {
        v44 = [v30 asData];
        [v43 appendData:v44];
      }

      v45 = [v36[276] TLVWithTag:97 value:v43];
      v46 = [v45 asData];
      [v163 appendData:v46];

      v23 = v37;
      a1 = v161;
LABEL_25:
    }

    v20 = [obj countByEnumeratingWithState:&v175 objects:v185 count:16];
  }

  while (v20);
LABEL_27:

  v47 = v163;
  if ([v163 length])
  {
    v48 = [KmlTlv TLVWithTag:32547 value:v163];
    v49 = [v48 asData];
    v50 = v153;
    [v153 appendData:v49];

    goto LABEL_45;
  }

  v137 = KmlLogger();
  v133 = v153;
  if (sub_10036F978(v137))
  {
    sub_10039A6B4(4.8151e-34);
    sub_10039A60C("[KmlEndpointManager generateRemoteTerminationRequestForKeys:nodes:trees:withError:]");
    *(v138 + 14) = 952;
    sub_10036F920();
    _os_log_impl(v139, v140, v141, v142, v143, 0x12u);
  }

  v9 = v154;
  v11 = v155;
  v10 = v156;
  if (v151)
  {
    v134 = [sub_10039A91C() stringWithUTF8String:"com.apple.sesd.kml"];
    v183 = NSLocalizedDescriptionKey;
    v148 = [v20[141] stringWithUTF8String:KmlErrorString()];
    v184 = v148;
    v135 = [NSDictionary dictionaryWithObjects:&v184 forKeys:&v183 count:1];
    [NSError errorWithDomain:v134 code:206 userInfo:v135];
    v13 = 0;
    *v151 = v149 = 0;
    goto LABEL_74;
  }

  v13 = 0;
  v18 = 0;
LABEL_75:

LABEL_76:
LABEL_77:

  return v18;
}

void **sub_1003E442C(uint64_t a1, void *a2)
{
  v2 = a1;
  if (a1)
  {
    v4 = sub_1003E01E8(a1);
    if (v4)
    {
      v5 = KmlLogger();
      if (sub_100377D18(v5))
      {
        v11 = 136315650;
        v12 = "[KmlEndpointManager listSharingInvitationsWithError:]";
        sub_1003939BC();
        v13 = 1063;
        v14 = 2112;
        v15 = v4;
        sub_10039A698(&_mh_execute_header, v6, v7, "%s : %i : Error getting endpoint - %@", &v11);
      }

      if (a2)
      {
        v8 = v4;
        v2 = 0;
        *a2 = v4;
      }

      else
      {
        v2 = 0;
      }
    }

    else
    {
      v9 = sub_100394824(KmlSharingRecordsUpdater, v2[3]);
      v2 = sub_100395728(v9);
    }
  }

  return v2;
}

id sub_1003E4560(void **a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = sub_1003E01E8(a1);
    if (v4)
    {
      v5 = KmlLogger();
      if (sub_100377D18(v5))
      {
        *v26 = 136315650;
        sub_10039A804("[KmlEndpointManager removeSharedKeysWithIdentifiers:]");
        sub_10039A7F4(1078);
        v27 = v4;
        sub_10039A698(&_mh_execute_header, v6, v7, "%s : %i : Error getting endpoint - %@", v26);
      }

      v8 = v4;
    }

    else
    {
      v9 = sub_100394824(KmlSharingRecordsUpdater, a1[3]);
      sub_100396F74();
      v10 = v3;
      v11 = [v10 countByEnumeratingWithState:v23 objects:v25 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          for (i = 0; i != v12; i = i + 1)
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = [*(v23[1] + 8 * i) uppercaseString];
            [0 addObject:v15];
          }

          v12 = [v10 countByEnumeratingWithState:v23 objects:v25 count:16];
        }

        while (v12);
      }

      sub_100396024(v9, 0);
      objc_claimAutoreleasedReturnValue();
      v16 = sub_10036746C();
      sub_1003DB06C(v16, 0);
      sub_1003DAFF0(v9);
      v17 = [v10 count];
      v18 = KmlLogger();
      v19 = os_log_type_enabled(v18, OS_LOG_TYPE_INFO);
      if (v17)
      {
        if (v19)
        {
          *v26 = 136315650;
          sub_10039A804("[KmlEndpointManager removeSharedKeysWithIdentifiers:]");
          sub_10039A7F4(1091);
          v27 = v10;
          sub_100367454(&_mh_execute_header, v18, v20, "%s : %i : cancelling pending invitations for uuid set: %@", v26);
        }

        sub_10039F400(KmlOwnerSharingManager, v10);
      }

      else
      {
        if (v19)
        {
          *v26 = 136315650;
          sub_10039A804("[KmlEndpointManager removeSharedKeysWithIdentifiers:]");
          sub_10039A7F4(1094);
          v27 = 0;
          sub_100367454(&_mh_execute_header, v18, v21, "%s : %i : Nothing to cancel - %@", v26);
        }
      }
    }
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_1003E4818(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a1)
  {
    v6 = a1;
    *a3 = 0;
    *a2 = 0;
    v7 = sub_1003E01E8(a1);
    if (v7)
    {
      v8 = v7;
      v9 = KmlLogger();
      if (sub_1003970B4(v9))
      {
        *buf = 136315650;
        sub_100367390();
        sub_10039A844();
        *v77 = v8;
        sub_10036F590(&_mh_execute_header, v3, v10, "%s : %i : Error getting endpoint - %@", buf);
      }

      goto LABEL_38;
    }

    v3 = [*(v6 + 24) mailboxMapping];
    v11 = [[KmlMailboxMappingData alloc] initWithData:v3 preferredVersion:{objc_msgSend(*(v6 + 136), "agreedKmlVehicleVersion")}];
    v12 = [v11 vehicleProprietaryDataOffset];
    if (v12 < [v11 signalingBitmapOffset])
    {
      v13 = KmlLogger();
      if (sub_100377D18(v13))
      {
        v14 = [v11 asData];
        v15 = [v14 asHexString];
        *buf = 136315650;
        sub_100367390();
        sub_10039A844();
        *v77 = v16;
        sub_10039A698(&_mh_execute_header, v17, v18, "%s : %i : Underflow detected in mailbox offsets %@", buf);
      }

      v8 = 0;
      goto LABEL_37;
    }

    v19 = *(v6 + 8);
    [v11 signalingBitmapOffset];
    v20 = [v11 vehicleProprietaryDataOffset];
    [v11 signalingBitmapOffset];
    v12 = SESEndPointGetPrivateData();
    v8 = 0;
    if (v8)
    {
      v21 = KmlLogger();
      if (sub_10036F5C4(v21))
      {
        *buf = 136315650;
        sub_100367390();
        sub_10039A844();
        *v77 = v8;
        sub_10039A6C0();
        _os_log_impl(v22, v23, v24, v25, v26, 0x1Cu);
      }

      goto LABEL_36;
    }

    v27 = *[v12 bytes];
    v28 = [KmlDeviceConfigurationData alloc];
    v29 = v28;
    if (*(v6 + 64))
    {
      v20 = [v28 initWithData:?];
    }

    else
    {
      v30 = [*(v6 + 24) deviceConfiguration];
      v20 = [v29 initWithData:v30];
    }

    if ([v11 mailboxVersion] == 128 && +[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", objc_msgSend(*(v6 + 136), "agreedKmlVehicleVersion"), 768))
    {
      if (![v20 isFriendImmoTokenOrSlotOnline] || objc_msgSend(v20, "maxOfflineAttestationCount") <= 1)
      {
        v6 = KmlLogger();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          sub_100367390();
          v75 = 1136;
          goto LABEL_30;
        }

LABEL_35:

LABEL_36:
LABEL_37:

LABEL_38:
        return;
      }

      v69 = [v11 signerSlotIdListOffset];
      v68 = [v11 signalingBitmapOffset];
      v31 = [v11 slotIdentifierLength];
      v32 = [v12 length];
      v73 = v31;
      if (v32 < [v20 maxOfflineAttestationCount] * v31)
      {
        v6 = KmlLogger();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          sub_100367390();
          v75 = 1145;
LABEL_30:
          sub_10039A68C();
          goto LABEL_34;
        }

        goto LABEL_35;
      }

      v53 = [v11 isKeyAttestationSetByDeviceInSignalingBitmap:v27];
      v54 = KmlLogger();
      v55 = sub_1003970EC(v54);
      if (v53)
      {
        if (v55)
        {
          *buf = 136315394;
          sub_100367390();
          v75 = 1151;
          sub_10039A718(&_mh_execute_header, v56, v57, "%s : %i : Attestation(s) set. Let's count them", buf);
        }

        v72 = [NSMutableData dataWithLength:v31];
        v71 = [NSMutableData dataWithLength:v31];
        memset([v71 mutableBytes], 255, v31);
        if ([v20 maxOfflineAttestationCount])
        {
          v58 = 0;
          LODWORD(v6) = 0;
          v70 = v69 - v68;
          while (1)
          {
            v59 = [v12 subdataWithRange:{(v70 + v58), v73}];
            if (([v59 isEqualToData:v72] & 1) != 0 || objc_msgSend(v59, "isEqualToData:", v71))
            {
              break;
            }

            LODWORD(v6) = v6 + 1;

            v58 = v58 + v73;
            if (v6 >= [v20 maxOfflineAttestationCount])
            {
              goto LABEL_56;
            }
          }

          v62 = KmlLogger();
          if (sub_1003970EC(v62))
          {
            *buf = 136315394;
            sub_100367390();
            v75 = 1160;
            sub_10039A718(&_mh_execute_header, v63, v64, "%s : %i : Found an empty slot", buf);
          }
        }

        else
        {
          LOBYTE(v6) = 0;
        }

LABEL_56:

        v6 = v6;
      }

      else
      {
        if (v55)
        {
          *buf = 136315394;
          sub_100367390();
          v75 = 1167;
          sub_10039A718(&_mh_execute_header, v60, v61, "%s : %i : No attestations set in the mailbox", buf);
        }

        v6 = 0;
      }

      *a3 = [v20 maxOfflineAttestationCount] - v6;
      *a2 = 7;
      v65 = KmlLogger();
      if (!sub_10039A8BC(v65))
      {
        goto LABEL_35;
      }

      v66 = *a2;
      v67 = *a3;
      *buf = 136315906;
      sub_10039A834();
      sub_10039A7B0();
      v36 = &_mh_execute_header;
      v37 = "%s : %i : SharingInAChain capable endpoint. Tokens toShare = %lu, remainingDepth = %lu";
    }

    else
    {
      *a3 = 1;
      if (![v20 isFriendImmoTokenOrSlotOnline])
      {
        v42 = *([v12 bytes] + 1);
        v43 = [*(v6 + 24) sharingTokenAvailabilityBitmap];

        if (v43)
        {
          v6 = [*(v6 + 24) sharingTokenAvailabilityBitmap];
          v45 = [v6 unsignedCharValue];
        }

        else
        {
          v45 = 254;
        }

        v44.i32[0] = v42 & v45 & 0xFE;
        v46 = vcnt_s8(v44);
        v46.i16[0] = vaddlv_u8(v46);
        *a2 = v46.u32[0];
        v47 = KmlLogger();
        if (!sub_10039A8BC(v47))
        {
          goto LABEL_35;
        }

        v48 = *a2;
        v49 = *a3;
        *buf = 136316418;
        sub_10039A834();
        v75 = 1206;
        v76 = v50;
        *v77 = v42;
        *&v77[4] = v50;
        *&v77[6] = v45;
        v78 = 2048;
        v79 = v51;
        v80 = 2048;
        v81 = v52;
        v36 = &_mh_execute_header;
        v37 = "%s : %i : BitmapInMailbox: %02X; BitmapOfOpenInvitations: %02X; toShare = %lu, remainingDepth = %lu";
        v38 = buf;
        v39 = v6;
        v40 = OS_LOG_TYPE_INFO;
        v41 = 50;
        goto LABEL_34;
      }

      *a2 = 7;
      v33 = KmlLogger();
      if (!sub_10039A8BC(v33))
      {
        goto LABEL_35;
      }

      v34 = *a2;
      v35 = *a3;
      *buf = 136315906;
      sub_10039A834();
      sub_10039A7B0();
      v36 = &_mh_execute_header;
      v37 = "%s : %i : Tokens are online, report all available for simplicity. Tokens toShare = %lu, remainingDepth = %lu";
    }

    v38 = buf;
    v39 = v6;
    v40 = OS_LOG_TYPE_INFO;
    v41 = 38;
LABEL_34:
    _os_log_impl(v36, v39, v40, v37, v38, v41);
    goto LABEL_35;
  }
}

uint64_t sub_1003E4FD8(uint64_t a1)
{
  if (a1 && *(a1 + 24))
  {
    v3 = [KmlMailboxMappingData alloc];
    v4 = [*(a1 + 24) mailboxMapping];
    v5 = [v3 initWithData:v4 preferredVersion:{objc_msgSend(*(a1 + 136), "agreedKmlSharingVersion")}];

    v6 = [*(a1 + 24) publicKeyIdentifier];
    v7 = kmlUtilHexStringFromData();

    [v5 signalingBitmapOffset];
    v8 = SESEndPointGetPrivateData();
    v9 = 0;
    if (v9)
    {
      v10 = KmlLogger();
      if (sub_10036F5C4(v10))
      {
        sub_10039A96C();
        sub_10039A6C0();
        _os_log_impl(v11, v12, v13, v14, v15, 0x1Cu);
      }
    }

    else
    {
      v17 = *[v8 bytes];
      if (([v5 isKeyAttestationSetByDeviceInSignalingBitmap:v17] & 1) == 0)
      {
        v16 = [v5 isKeyAttestationSetByCarInSignalingBitmap:v17] ^ 1;
        goto LABEL_10;
      }
    }

    v16 = 0;
LABEL_10:

    return v16;
  }

  return 0;
}

void sub_1003E5194(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v9 = a4;
  if (!a1)
  {
    goto LABEL_6;
  }

  v10 = sub_1003E01E8(a1);
  if (v10)
  {
    v11 = v10;
    v12 = KmlLogger();
    if (sub_100377D18(v12))
    {
      LODWORD(v66[0]) = 136315650;
      sub_10039A5FC();
      sub_100377CD0();
      *(&v66[1] + 4) = v11;
      sub_10039A698(&_mh_execute_header, v13, v14, "%s : %i : Error getting endpoint - %@", v66);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 152));
    [WeakRetained handleUpgradeCompletionWithStatus:v11];

    goto LABEL_6;
  }

  if (sub_1003E4FD8(a1))
  {
    memset(v66, 0, sizeof(v66));
    v16 = *(a1 + 136);
    v17 = [NSNumber numberWithUnsignedInteger:a3];
    v65 = v17;
    v18 = [NSArray arrayWithObjects:&v65 count:1];
    v19 = sub_100399BE8(KmlEndpointManager, *(a1 + 24));
    if (v16)
    {
      [v16 hasUpgradeForVersionType:a2 versions:v18 isOwnerPairedKey:v19];
    }

    else
    {
      memset(v66, 0, sizeof(v66));
    }

    if ((BYTE8(v66[0]) & 1) == 0)
    {
      v39 = KmlLogger();
      if (sub_100377D18(v39))
      {
        v59 = 136315650;
        v60 = "[KmlEndpointManager upgradeVersionType:version:upgradeInformation:]";
        v61 = 1024;
        v62 = 1271;
        v63 = 2048;
        v64 = *&v66[1];
        sub_10039A698(&_mh_execute_header, v40, v41, "%s : %i : There is no upgrade available from current version: 0x%04lx", &v59);
      }

      v38 = objc_loadWeakRetained((a1 + 152));
      v42 = [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml"];
      v57 = NSLocalizedDescriptionKey;
      v43 = a4[141];
      KmlErrorString();
      v44 = [sub_10039719C() stringWithUTF8String:?];
      v58 = v44;
      [NSDictionary dictionaryWithObjects:&v58 forKeys:&v57 count:1];
      objc_claimAutoreleasedReturnValue();
      [sub_10039A744() errorWithDomain:v42 code:220 userInfo:v16];
      objc_claimAutoreleasedReturnValue();
      [sub_10036746C() handleUpgradeCompletionWithStatus:NSError];

      goto LABEL_29;
    }

    if (a2)
    {
      v32 = KmlLogger();
      if (sub_10036DCF8(v32))
      {
        v59 = 136315394;
        v60 = "[KmlEndpointManager upgradeVersionType:version:upgradeInformation:]";
        v61 = 1024;
        v62 = 1277;
        sub_100390B00();
        _os_log_impl(v33, v34, v35, v36, v37, 0x12u);
      }

      v38 = objc_loadWeakRetained((a1 + 152));
      [v38 handleUpgradeCompletionWithStatus:0];
      goto LABEL_29;
    }

    v45 = +[NSMutableDictionary dictionary];
    [v45 setObject:objc_opt_class() forKeyedSubscript:@"endpointCreationData"];
    [v45 setObject:objc_opt_class() forKeyedSubscript:@"mailboxMapping"];
    [v45 setObject:objc_opt_class() forKeyedSubscript:@"deviceConfiguration"];
    [v45 setObject:objc_opt_class() forKeyedSubscript:@"sharingConfiguration"];
    v46 = kmlUtilDecodeJson();
    v38 = 0;
    v56 = [sub_10039A874() objectForKey:?];
    kmlUtilLogLargeData();
    v47 = [v46 objectForKey:@"mailboxMapping"];
    kmlUtilLogLargeData();
    v48 = [v46 objectForKey:@"deviceConfiguration"];
    kmlUtilLogLargeData();
    v49 = [v46 objectForKey:@"sharingConfiguration"];
    kmlUtilLogLargeData();
    if ([v48 length])
    {
      v55 = [[KmlDeviceConfigurationData alloc] initWithData:v48 outerTag:1];
    }

    else
    {
      v55 = 0;
    }

    v54 = v47;
    if (!v38 && [v56 length] && objc_msgSend(v47, "length") && (objc_msgSend(v48, "length") || objc_msgSend(v49, "length")) && (!v55 || (objc_msgSend(v55, "didParseDataSuccessfully") & 1) != 0))
    {
      objc_storeStrong((a1 + 112), a4);
      v50 = [*(a1 + 24) readerInfo];
      v51 = [[KmlRoutingInformation alloc] initWithReaderInformation:v50];
      if (sub_100399BE8(KmlEndpointManager, *(a1 + 24)))
      {
        sub_1003E58F8(a1);
        goto LABEL_28;
      }

      v52 = [v51 manufacturer];
      SESEndPointPreWarmForAlisha();
    }

    else
    {
      v50 = objc_loadWeakRetained((a1 + 152));
      v51 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v52 = [v38 userInfo];
      v53 = [NSError errorWithDomain:v51 code:221 userInfo:v52];
      [v50 handleUpgradeCompletionWithStatus:v53];
    }

LABEL_28:
LABEL_29:

    goto LABEL_6;
  }

  v20 = KmlLogger();
  if (sub_100377D18(v20))
  {
    LODWORD(v66[0]) = 136315394;
    sub_10039A5FC();
    *(v66 + 14) = 1263;
    sub_10039A68C();
    _os_log_impl(v21, v22, v23, v24, v25, v26);
  }

  v27 = objc_loadWeakRetained((a1 + 152));
  v28 = [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml"];
  v67 = NSLocalizedDescriptionKey;
  v29 = a4[141];
  KmlErrorString();
  v30 = [sub_10039719C() stringWithUTF8String:?];
  v68 = v30;
  [NSDictionary dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  objc_claimAutoreleasedReturnValue();
  v31 = [sub_10039A744() errorWithDomain:v28 code:220 userInfo:v4];
  [v27 handleUpgradeCompletionWithStatus:v31];

LABEL_6:
}

void sub_1003E58F8(id *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = a1[1];
    v4 = kmlUtilTimeNow();
    v5 = SESEndpointConvertWithSession();

    v6 = KmlLogger();
    if (sub_10036DCF8(v6))
    {
      sub_1003722B8();
      sub_10039A75C();
      sub_100390B00();
      _os_log_impl(v7, v8, v9, v10, v11, 0x1Cu);
    }

    if (v5)
    {
      WeakRetained = objc_loadWeakRetained(v2 + 19);
      sesErrorToKmlError();
      objc_claimAutoreleasedReturnValue();
      [sub_10039A864() handleUpgradeCompletionWithStatus:?];
    }

    else
    {
      v13 = sub_1003E01E8(v2);
      if (v13)
      {
        v5 = v13;
        WeakRetained = 0;
      }

      else
      {
        v18 = 0;
        WeakRetained = sub_1003E5B40(v2, &v18);
        v5 = v18;
        v15 = KmlLogger();
        if (sub_10036F124(v15))
        {
          sub_1003722B8();
          sub_10039A75C();
          sub_100367454(&_mh_execute_header, v1, v16, "%s : %i : Tracking request creation result: %@", v19);
        }

        if (!v5)
        {
          v17 = v2[1];
          WeakRetained = WeakRetained;
          v5 = SESEndPointUpdateWithBlock();
        }
      }

      v2 = objc_loadWeakRetained(v2 + 19);
      v14 = sesErrorToKmlError();
      [v2 handleUpgradeCompletionWithStatus:v14];
    }
  }
}

id sub_1003E5B40(uint64_t a1, void *a2)
{
  if (a1)
  {
    v6 = +[NSMutableArray array];
    v7 = objc_opt_new();
    v8 = [v7 useOldKeyTrackingTag];

    if (v8)
    {
      v9 = 32574;
    }

    else
    {
      v9 = 32581;
    }

    v10 = [*(a1 + 24) certificates];
    if ([v10 count] <= 2)
    {
      v11 = KmlLogger();
      if (sub_100377D18(v11))
      {
        v96[0] = 136315394;
        sub_10039A5FC();
        v97 = 2184;
        sub_10039A68C();
        _os_log_impl(v12, v13, v14, v15, v16, v17);
      }

      if (!a2)
      {
        v21 = 0;
LABEL_60:

        goto LABEL_61;
      }

      v18 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v106 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v19 = [sub_10037BD94() stringWithUTF8String:?];
      v107 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v107 forKeys:&v106 count:1];
      [NSError errorWithDomain:v18 code:222 userInfo:v20];
      *a2 = v21 = 0;
      goto LABEL_58;
    }

    v18 = [v10 objectAtIndexedSubscript:2];
    if (![v18 length])
    {
      v52 = KmlLogger();
      if (sub_10036F5C4(v52))
      {
        v96[0] = 136315394;
        sub_10039A5FC();
        v97 = 2193;
        sub_10039A68C();
        _os_log_impl(v53, v54, v55, v56, v57, v58);
      }

      if (!a2)
      {
        v21 = 0;
LABEL_59:

        goto LABEL_60;
      }

      v19 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v104 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v20 = [sub_10037BD94() stringWithUTF8String:?];
      v105 = v20;
      [NSDictionary dictionaryWithObjects:&v105 forKeys:&v104 count:1];
      objc_claimAutoreleasedReturnValue();
      [sub_10039A898() errorWithDomain:v19 code:222 userInfo:v3];
      *a2 = v21 = 0;
      goto LABEL_57;
    }

    v22 = [KmlTlv TLVWithTag:32548 value:v18];
    [v6 addObject:v22];

    v90 = [*(a1 + 24) readerInfo];
    v20 = [[KmlRoutingInformation alloc] initWithReaderInformation:v90];
    if ((sub_100399BE8(KmlEndpointManager, *(a1 + 24)) & 1) == 0)
    {
      v3 = [v10 objectAtIndexedSubscript:1];
      if (![v3 length])
      {
        v66 = KmlLogger();
        if (sub_10036F5C4(v66))
        {
          v96[0] = 136315394;
          sub_10039A5FC();
          v97 = 2214;
          sub_10039A68C();
          _os_log_impl(v67, v68, v69, v70, v71, v72);
        }

        v19 = v90;
        if (!a2)
        {
          v21 = 0;
LABEL_57:

LABEL_58:
          goto LABEL_59;
        }

        v73 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
        v102 = NSLocalizedDescriptionKey;
        KmlErrorString();
        v51 = v73;
        v74 = [sub_10037BD94() stringWithUTF8String:?];
        v103 = v74;
        v89 = [NSDictionary dictionaryWithObjects:&v103 forKeys:&v102 count:1];
        [NSError errorWithDomain:v73 code:222 userInfo:?];
        *a2 = v21 = 0;
LABEL_56:

        goto LABEL_57;
      }

      if (v8)
      {
        v9 = 32568;
      }

      else
      {
        v9 = 32584;
      }

      v23 = [KmlTlv TLVWithTag:32546 value:v3];
      sub_10039A7CC(v23);
    }

    v24 = [*(a1 + 24) anonymizedDsid];
    v85 = [v20 readerIdentifier];
    v25 = kmlUtilGenerateAccountInfoHash();
    if ([v25 length])
    {
      v26 = KmlLogger();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v96[0] = 136315394;
        sub_10039A5FC();
        v97 = 2229;
        sub_10036DC0C(&_mh_execute_header, v26, v27, "%s : %i : Add account info hash", v96);
      }

      v28 = [KmlTlv TLVWithTag:94 value:v25];
      sub_10039A7CC(v28);
    }

    v88 = v18;
    v89 = v25;
    v86 = v24;
    v87 = v20;
    v84 = a2;
    v29 = [*(a1 + 24) privacyPublicKey];
    v30 = [KmlTlv TLVWithTag:24393 value:v29];
    sub_10039A7CC(v30);

    v31 = [@"ECIES_v1" dataUsingEncoding:4];
    v32 = [KmlTlv TLVWithTag:218 value:v31];
    sub_10039A7CC(v32);

    v33 = +[NSMutableData data];
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v34 = v6;
    v35 = [v34 countByEnumeratingWithState:&v92 objects:v101 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v93;
      do
      {
        for (i = 0; i != v36; i = i + 1)
        {
          if (*v93 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = [*(*(&v92 + 1) + 8 * i) asData];
          [v33 appendData:v39];
        }

        v36 = [v34 countByEnumeratingWithState:&v92 objects:v101 count:16];
      }

      while (v36);
    }

    v40 = [KmlTlv TLVWithTag:v9 value:v33];
    v41 = [v40 asData];

    kmlUtilLogLargeData();
    v42 = *(a1 + 8);
    v91[1] = 0;
    v43 = SESEndPointPrivacyEncryption();
    v44 = 0;
    if (v44)
    {
      v3 = v44;
      v45 = KmlLogger();
      if (sub_10036F5C4(v45))
      {
        v96[0] = 136315650;
        sub_10039A5FC();
        sub_100377CD0();
        v98 = v3;
        sub_10039A6C0();
        _os_log_impl(v46, v47, v48, v49, v50, 0x1Cu);
      }

      v51 = v86;
      if (v84)
      {
        sesErrorToKmlError();
        *v84 = v21 = 0;
      }

      else
      {
        v21 = 0;
      }

      v20 = v87;
      v18 = v88;
    }

    else
    {
      v59 = [DAAlishaKeyEncryptedRequest alloc];
      v60 = [v43 version];
      v61 = [v43 ephemeralPublicKeydata];
      v62 = [v43 receiverPublicKeyHash];
      v63 = [v43 cipherText];
      v64 = [sub_10039A7A4() initWithVersion:? ephemeralPublicKey:? publicKeyHash:? encryptedRequest:?];

      v91[0] = 0;
      v83 = v64;
      v65 = [v64 encodeWithError:v91];
      v3 = v91[0];
      if (v3 || !v65)
      {
        v75 = KmlLogger();
        if (sub_10036F5C4(v75))
        {
          v96[0] = 136315906;
          sub_10039A5FC();
          sub_100377CD0();
          v98 = v3;
          v99 = v76;
          v100 = v65;
          sub_10039A6C0();
          _os_log_impl(v77, v78, v79, v80, v81, 0x26u);
        }

        v18 = v88;
        if (v84)
        {
          sesErrorToKmlError();
          *v84 = v21 = 0;
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = v65;
        v18 = v88;
      }

      v20 = v87;

      v51 = v86;
    }

    v19 = v90;
    v74 = v85;
    goto LABEL_56;
  }

  v21 = 0;
LABEL_61:

  return v21;
}

NSObject *sub_1003E6488(NSObject *a1, uint64_t a2, void *a3, int a4)
{
  if (a1)
  {
    v8 = a1;
    v9 = KmlLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = @"Upgrade";
      *buf = 136316162;
      *&buf[12] = 1024;
      *&buf[4] = "[KmlEndpointManager finalizeVersionType:version:revert:]";
      if (a4)
      {
        v10 = @"Revert";
      }

      *&buf[14] = 1378;
      *&buf[18] = 2112;
      *&buf[20] = v10;
      *&buf[28] = 2048;
      *&buf[30] = a2;
      v246 = 2048;
      v247 = a3;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "%s : %i : Requested %@ for type:0x%04lx, version: 0x%04lx", buf, 0x30u);
    }

    v11 = sub_1003E01E8(v8);
    if (v11)
    {
      v12 = v11;
      v13 = KmlLogger();
      if (sub_1003970B4(v13))
      {
        *buf = 136315650;
        *&buf[4] = "[KmlEndpointManager finalizeVersionType:version:revert:]";
        sub_10039A648();
        *&buf[14] = 1381;
        sub_10039A7E8();
        *&buf[20] = v12;
        sub_10036F590(&_mh_execute_header, v8, v14, "%s : %i : Error getting endpoint - %@", buf);
      }

      v15 = v12;
      goto LABEL_19;
    }

    v4 = &unk_100409000;
    if (a4)
    {
      v16 = KmlLogger();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
      if (a2)
      {
        if (v17)
        {
          *buf = 136315394;
          *&buf[4] = "[KmlEndpointManager finalizeVersionType:version:revert:]";
          sub_10039A648();
          *&buf[14] = 1393;
          sub_10036DC0C(&_mh_execute_header, v16, v18, "%s : %i : Revert is a no-op for VehicleServer upgrade", buf);
        }

        v19 = 0;
      }

      else
      {
        if (v17)
        {
          *buf = 136315394;
          *&buf[4] = "[KmlEndpointManager finalizeVersionType:version:revert:]";
          sub_10039A648();
          *&buf[14] = 1387;
          sub_10036DC0C(&_mh_execute_header, v16, v20, "%s : %i : Throw away saved info for framework upgrade", buf);
        }

        isa = v8[1].isa;
        v219 = _NSConcreteStackBlock;
        v220 = 3221225472;
        v221 = sub_10039A1C0;
        v222 = &unk_1004D1D20;
        v223 = v8;
        v19 = SESEndPointUpdateWithBlock();
      }

      v22 = v19;
      goto LABEL_19;
    }

    memset(buf, 0, 32);
    v24 = v8[17].isa;
    v25 = [NSNumber numberWithUnsignedInteger:a3];
    v244 = v25;
    v26 = [NSArray arrayWithObjects:&v244 count:1];
    v27 = sub_100399BE8(KmlEndpointManager, v8[3].isa);
    if (v24)
    {
      [(objc_class *)v24 hasUpgradeForVersionType:a2 versions:v26 isOwnerPairedKey:v27];
    }

    else
    {
      memset(buf, 0, 32);
    }

    if (sub_1003E4FD8(v8))
    {
      if (buf[8])
      {
        [(objc_class *)v8[17].isa upgradeForVersionType:a2 version:a3];
        v28 = [(objc_class *)v8[17].isa getVehicleSupportedVersionsData];
        v29 = v28;
        if (a2 == 2)
        {
          v93 = v8[1].isa;
          v213 = _NSConcreteStackBlock;
          v214 = 3221225472;
          v215 = sub_10039A20C;
          v216 = &unk_1004D1D70;
          v217 = v28;
          v218 = v8;
          v94 = SESEndPointUpdateWithBlock();
          v95 = sesErrorToKmlError();

          v96 = sub_10039A5A0();
          sub_1003E7780(v96, v95, v97);
          v8 = v95;
          v33 = v217;
          v4 = v8;
          goto LABEL_53;
        }

        v30 = [(objc_class *)v8[3].isa upgradeEndpointJSONData];
        if (![v30 length])
        {
          v98 = v30;
          v99 = KmlLogger();
          if (sub_10036F5DC(v99))
          {
            sub_10039A55C(4.8151e-34);
            v239 = 1435;
            sub_10039A798();
            sub_10039A68C();
            _os_log_impl(v100, v101, v102, v103, v104, v105);
          }

          v106 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
          v232 = NSLocalizedDescriptionKey;
          v107 = v30[141];
          KmlErrorString();
          v108 = [sub_100372244() stringWithUTF8String:?];
          v233 = v108;
          [NSDictionary dictionaryWithObjects:&v233 forKeys:&v232 count:1];
          objc_claimAutoreleasedReturnValue();
          v109 = [sub_10039A750() errorWithDomain:v106 code:221 userInfo:v24];

          v110 = sub_10039A5A0();
          sub_1003E7780(v110, v109, v111);
          v112 = v109;
          sub_10039A780();
          v33 = v98;
          goto LABEL_53;
        }

        v203 = v29;
        v31 = +[NSMutableDictionary dictionary];
        [v31 setObject:objc_opt_class() forKeyedSubscript:@"endpointCreationData"];
        [v31 setObject:objc_opt_class() forKeyedSubscript:@"mailboxMapping"];
        [v31 setObject:objc_opt_class() forKeyedSubscript:@"deviceConfiguration"];
        [v31 setObject:objc_opt_class() forKeyedSubscript:@"sharingConfiguration"];
        v212 = 0;
        v200 = v30;
        v198 = v31;
        v32 = kmlUtilDecodeJson();
        v33 = 0;
        v204 = [v32 objectForKey:@"endpointCreationData"];
        kmlUtilLogLargeData();
        v34 = [sub_10039A7A4() objectForKey:?];
        kmlUtilLogLargeData();
        v35 = [v32 objectForKey:@"deviceConfiguration"];
        kmlUtilLogLargeData();
        v202 = [v32 objectForKey:@"sharingConfiguration"];
        kmlUtilLogLargeData();
        v199 = v34;
        if (v33 || ![v204 length] || !objc_msgSend(v34, "length") || !objc_msgSend(v35, "length") && !objc_msgSend(v202, "length"))
        {
          v65 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
          v66 = [v33 userInfo];
          v62 = [sub_10039A78C() errorWithDomain:? code:? userInfo:?];

          v67 = sub_10039A5A0();
          sub_1003E7780(v67, v62, v68);
          v69 = v62;
          sub_10039A780();
          v29 = v203;
          sub_10039A960();
          goto LABEL_52;
        }

        v36 = objc_alloc_init(KmlEndpointCreationConfig);
        sub_1003DC12C(v36, v204);
        v197 = v36;
        if ((sub_1003DCB78(v36) & 1) == 0)
        {
          v113 = KmlLogger();
          v29 = v203;
          if (sub_10036F5DC(v113))
          {
            sub_10039A55C(4.8151e-34);
            v239 = 1476;
            sub_10039A798();
            sub_10039A68C();
            _os_log_impl(v114, v115, v116, v117, v118, v119);
          }

          v120 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
          v230 = NSLocalizedDescriptionKey;
          KmlErrorString();
          v121 = [sub_10039A904() stringWithUTF8String:?];
          v231 = v121;
          v4 = [NSDictionary dictionaryWithObjects:&v231 forKeys:&v230 count:1];
          v62 = [sub_10039A78C() errorWithDomain:? code:? userInfo:?];

          v122 = sub_10039A5A0();
          sub_1003E7780(v122, v62, v123);
          v124 = v62;
          sub_10039A780();
          sub_10039A960();
          goto LABEL_51;
        }

        v195 = [[KmlMailboxMappingData alloc] initWithData:v34 preferredVersion:a3];
        v29 = v203;
        if (([v195 isValid] & 1) == 0)
        {
          v125 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
          v228 = NSLocalizedDescriptionKey;
          KmlErrorString();
          v126 = [sub_10039A904() stringWithUTF8String:?];
          v229 = v126;
          v4 = [NSDictionary dictionaryWithObjects:&v229 forKeys:&v228 count:1];
          v62 = [sub_10039A78C() errorWithDomain:? code:? userInfo:?];

          v127 = sub_10039A5A0();
          sub_1003E7780(v127, v62, v128);
          v129 = v62;
          sub_10039A780();
          sub_10039A960();
          v63 = v195;
          goto LABEL_50;
        }

        v196 = [[KmlDeviceConfigurationData alloc] initWithData:v8[8].isa];
        v37 = [v35 length];
        v38 = KmlLogger();
        v39 = os_log_type_enabled(v38, OS_LOG_TYPE_INFO);
        if (v37)
        {
          if (v39)
          {
            sub_10039A55C(4.8151e-34);
            v239 = 1497;
            sub_10039A798();
            sub_10036DC0C(v40, v41, v42, v43, v44);
          }

          v45 = [[KmlDeviceConfigurationData alloc] initWithData:v35 outerTag:1];
        }

        else
        {
          if (v39)
          {
            sub_10039A55C(4.8151e-34);
            v239 = 1500;
            sub_10039A798();
            sub_10036DC0C(v46, v47, v48, v49, v50);
          }

          v45 = [[KmlDeviceConfigurationData alloc] initWithData:v8[8].isa];
          [v45 updateSharingConfigWithData:v202];
        }

        v33 = v200;
        v194 = v45;
        if (([v45 didParseDataSuccessfully] & 1) == 0)
        {
          v51 = KmlLogger();
          if (sub_1003970B4(v51))
          {
            sub_10039A55C(4.8151e-34);
            v239 = 1506;
            sub_10039A68C();
            _os_log_impl(v52, v53, v54, v55, v56, v57);
          }

          v58 = [sub_10039A91C() stringWithUTF8String:"com.apple.sesd.kml"];
          v226 = NSLocalizedDescriptionKey;
          v59 = v38[141].isa;
          KmlErrorString();
          v60 = [sub_10039A904() stringWithUTF8String:?];
          v227 = v60;
          v61 = [NSDictionary dictionaryWithObjects:&v227 forKeys:&v226 count:1];
          v4 = [NSError errorWithDomain:v58 code:221 userInfo:v61];

          v8 = 0;
          v62 = v198;
          v63 = v195;
          v64 = v196;
          v29 = v203;
          goto LABEL_49;
        }

        v130 = [v196 oemSpecificContentAsData];
        [v45 updatePPIDWithServerProvidedData:v130];

        if ([v196 uwbDisabledLocally])
        {
          [v45 removeUwbSupportLocally];
        }

        v131 = v196;
        v132 = [v196 readerSupportsUwb];
        if (v132 != [v45 readerSupportsUwb])
        {
          v133 = KmlLogger();
          if (sub_100377D18(v133))
          {
            v134 = [v196 readerSupportsUwb];
            [v45 readerSupportsUwb];
            sub_10039A55C(4.8153e-34);
            v239 = 1516;
            v240 = v135;
            *v241 = v134;
            *&v241[4] = v135;
            *&v241[6] = v136;
            _os_log_impl(&_mh_execute_header, v196, OS_LOG_TYPE_ERROR, "%s : %i : Mismatch in BT/UWB support, Current (%d), New (%d)", v236, 0x1Eu);
          }

          v29 = v203;
          if (!sub_1003F6F5C(v137) || (v138 = objc_opt_new(), v139 = [v138 allowRadioMismatchForTest], v138, !v139))
          {
            v168 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
            v224 = NSLocalizedDescriptionKey;
            v169 = v200[141];
            KmlErrorString();
            v170 = [sub_10039A904() stringWithUTF8String:?];
            v225 = v170;
            v4 = [NSDictionary dictionaryWithObjects:&v225 forKeys:&v224 count:1];
            v171 = [sub_10039A78C() errorWithDomain:? code:? userInfo:?];

            v172 = sub_10039A5A0();
            sub_1003E7780(v172, v171, v173);
            v174 = v171;
            sub_10039A780();
            v33 = v200;
            goto LABEL_99;
          }

          v140 = KmlLogger();
          if (sub_10036DCF8(v140))
          {
            sub_10039A55C(4.8151e-34);
            v239 = 1519;
            sub_100390B00();
            _os_log_impl(v141, v142, v143, v144, v145, 0x12u);
          }

          v33 = v200;
          v131 = v196;
          v45 = v194;
        }

        v146 = [v45 asData];
        v147 = v8[8].isa;
        v8[8].isa = v146;

        if (([v131 isFriendImmoTokenOrSlotOnline]& 1) == 0)
        {
          sub_1003E7A34(v8);
        }

        v148 = v8[1].isa;
        v149 = [v194 v3PrivateMailboxSettingAsData];
        v150 = [v194 v3ConfMailboxSettingAsData];
        v211 = 0;
        SESEndPointConfigureMailBoxes();
        v4 = 0;

        v29 = v203;
        if (v4)
        {
          v175 = KmlLogger();
          v32 = v193;
          if (sub_100377D18(v175))
          {
            sub_10039A55C(4.8152e-34);
            sub_10039A660(1543);
            *v241 = v4;
            sub_10039A698(&_mh_execute_header, v176, v177, "%s : %i : Upgrade commit failed with : %@", v236);
          }

          v178 = sesErrorToKmlError();

          v179 = sub_10039A5A0();
          sub_1003E7780(v179, v178, v180);
          v181 = v178;
          sub_10039A780();
        }

        else
        {
          if ([KmlVersions doesVersion:[(objc_class *)v8[17].isa agreedKmlVehicleVersion] support:768])
          {
            v4 = [NSMutableData dataWithLength:2];
            v210 = 0x80;
            [v4 replaceBytesInRange:0 withBytes:1, &v210];
            v151 = KmlLogger();
            if (sub_10036DCF8(v151))
            {
              sub_10039A55C(4.8152e-34);
              sub_10039A660(1558);
              *v241 = v4;
              sub_100390B00();
              _os_log_impl(v152, v153, v154, v155, v156, 0x1Cu);
            }

            v157 = v8[1].isa;
            v209[1] = 0;
            SESEndPointSetPrivateDataWithSession();
            v158 = 0;

            if (v158)
            {
              v188 = KmlLogger();
              if (sub_10039A8D4(v188))
              {
                sub_10039A55C(4.8152e-34);
                sub_10039A660(1569);
                *v241 = v158;
                sub_10036F590(&_mh_execute_header, v4, v189, "%s : %i : Upgrade commit failed with : %@", v236);
              }

              v62 = sesErrorToKmlError();

              v190 = sub_10039A5A0();
              sub_1003E7780(v190, v62, v191);
              v192 = v62;
              sub_10039A780();
              v29 = v203;
              sub_10039A960();
              v32 = v193;
              goto LABEL_100;
            }
          }

          v209[0] = 0;
          v159 = sub_1003E5B40(v8, v209);
          v160 = v209[0];
          v201 = v159;
          if (v160)
          {
            v182 = v160;
            v183 = KmlLogger();
            if (sub_10039A8D4(v183))
            {
              sub_10039A55C(4.8152e-34);
              sub_10039A660(1577);
              *v241 = v182;
              sub_10036F590(&_mh_execute_header, v4, v184, "%s : %i : Failed to create tracking request : %@", v236);
            }

            v185 = sesErrorToKmlError();

            v186 = sub_10039A5A0();
            sub_1003E7780(v186, v185, v187);
            v8 = v185;
          }

          else
          {
            v161 = v8[1].isa;
            sub_10039A6EC();
            v205 = v199;
            v206 = v203;
            v207 = v159;
            v208 = v197;
            v162 = SESEndPointUpdateWithBlock();
            v163 = KmlLogger();
            if (os_log_type_enabled(v163, OS_LOG_TYPE_INFO))
            {
              sub_10039A55C(4.8152e-34);
              sub_10039A660(1593);
              *v241 = v162;
              sub_100367454(&_mh_execute_header, v163, v164, "%s : %i : Upgrade commit result : %@", v236);
            }

            v165 = sesErrorToKmlError();

            v166 = sub_10039A5A0();
            sub_1003E7780(v166, v165, v167);
            v8 = v165;
          }

          v32 = v193;

          v4 = v8;
        }

LABEL_99:
        v62 = v198;
LABEL_100:
        v63 = v195;
        v64 = v196;
LABEL_49:

LABEL_50:
LABEL_51:

LABEL_52:
LABEL_53:

        goto LABEL_20;
      }

      v82 = KmlLogger();
      if (sub_10036F5DC(v82))
      {
        *v236 = 136315650;
        v237 = "[KmlEndpointManager finalizeVersionType:version:revert:]";
        v238 = 1024;
        v239 = 1410;
        v240 = 2048;
        *v241 = *&buf[16];
        sub_10039A798();
        sub_10036F590(v83, v84, v85, v86, v87);
      }

      v77 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
      v234 = NSLocalizedDescriptionKey;
      v88 = v25[141];
      KmlErrorString();
      v79 = [sub_100372244() stringWithUTF8String:?];
      v235 = v79;
      v80 = &v235;
      v81 = &v234;
    }

    else
    {
      v70 = KmlLogger();
      if (sub_10036F5DC(v70))
      {
        sub_10039A55C(4.8151e-34);
        v239 = 1403;
        sub_10039A798();
        sub_10039A68C();
        _os_log_impl(v71, v72, v73, v74, v75, v76);
      }

      v77 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml"];
      v242 = NSLocalizedDescriptionKey;
      v78 = v25[141];
      KmlErrorString();
      v79 = [sub_100372244() stringWithUTF8String:?];
      v243 = v79;
      v80 = &v243;
      v81 = &v242;
    }

    [NSDictionary dictionaryWithObjects:v80 forKeys:v81 count:1];
    objc_claimAutoreleasedReturnValue();
    v89 = [sub_10039A750() errorWithDomain:v77 code:220 userInfo:v24];

    v90 = sub_10039A5A0();
    sub_1003E7780(v90, v89, v91);
    v92 = v89;
LABEL_19:
    sub_10039A780();
LABEL_20:

    goto LABEL_21;
  }

  v4 = 0;
LABEL_21:

  return v4;
}

void sub_1003E7780(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  if (a1)
  {
    v27 = v5;
    if (v5)
    {
      v6 = [v5 code];
    }

    else
    {
      v6 = 0;
    }

    v26 = [*(a1 + 24) readerInfo];
    v7 = [[KmlRoutingInformation alloc] initWithReaderInformation:v26];
    v23 = v7;
    if (v7)
    {
      v8 = v7;
      v9 = [v7 manufacturer];
      v25 = [v9 copy];

      v10 = [v8 brand];
      v24 = [v10 copy];

      v11 = [v8 regionString];
      v12 = [v11 copy];
    }

    else
    {
      v12 = @"Unknown";
      v24 = @"Unknown";
      v25 = @"Unknown";
    }

    v13 = [[KmlDeviceConfigurationData alloc] initWithData:*(a1 + 64)];
    v14 = [v13 readerSupportsNfc];
    if ([v13 readerSupportsUwb])
    {
      v15 = 2;
    }

    else
    {
      v15 = 0;
    }

    v28[0] = @"status";
    v16 = [NSNumber numberWithUnsignedInt:v6, v12];
    v29[0] = v16;
    v28[1] = @"versionType";
    v17 = [NSNumber numberWithUnsignedInteger:*a3];
    v29[1] = v17;
    v28[2] = @"toVersion";
    v18 = [NSNumber numberWithUnsignedInteger:a3[3]];
    v29[2] = v18;
    v28[3] = @"fromVersion";
    v19 = [NSNumber numberWithUnsignedInteger:a3[2]];
    v29[3] = v19;
    v29[4] = v12;
    v28[4] = @"dataCenterCode";
    v28[5] = @"manufacturer";
    v29[5] = v25;
    v29[6] = v24;
    v28[6] = @"brand";
    v28[7] = @"transportSupported";
    v20 = [NSNumber numberWithUnsignedInteger:v15 | v14];
    v29[7] = v20;
    v21 = [NSDictionary dictionaryWithObjects:v29 forKeys:v28 count:8];

    sub_100369708(KmlAnalyticsLogger, v21);
    v5 = v27;
  }
}

void sub_1003E7A34(uint64_t a1)
{
  if (a1)
  {
    v3 = sub_100394824(KmlSharingRecordsUpdater, *(a1 + 24));
    v4 = sub_100395728(v3);
    v5 = +[NSMutableSet set];
    sub_100396F74();
    v6 = v4;
    v7 = [v6 countByEnumeratingWithState:v15 objects:v19 count:16];
    if (v7)
    {
      v1 = v7;
      v8 = *v16;
      do
      {
        v9 = 0;
        do
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v6);
          }

          [*(v15[1] + 8 * v9) sharingSessionIdentifier];
          objc_claimAutoreleasedReturnValue();
          [sub_10039A670() addObject:?];

          v9 = (v9 + 1);
        }

        while (v1 != v9);
        v1 = [v6 countByEnumeratingWithState:v15 objects:v19 count:16];
      }

      while (v1);
    }

    v10 = [v5 count];
    v11 = KmlLogger();
    v12 = sub_10036F124(v11);
    if (v10)
    {
      if (v12)
      {
        *v17 = 136315394;
        sub_1003939D8();
        v18 = 2286;
        sub_10036DC0C(&_mh_execute_header, v1, v13, "%s : %i : canceling pending invitations", v17);
      }

      sub_10039F400(KmlOwnerSharingManager, v5);
    }

    else
    {
      if (v12)
      {
        *v17 = 136315394;
        sub_1003939D8();
        v18 = 2289;
        sub_10036DC0C(&_mh_execute_header, v1, v14, "%s : %i : No Pending invitations to cancel", v17);
      }
    }
  }
}

id sub_1003E7C30(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  if (a1)
  {
    v8 = sub_1003E01E8(a1);
    v9 = &unk_100409000;
    if (v8)
    {
      v10 = v8;
      v11 = KmlLogger();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        sub_10039A61C(4.8152e-34);
        sub_10039A854(1606);
        *v200 = v10;
        sub_10036F590(&_mh_execute_header, v11, v12, "%s : %i : Error getting endpoint - %@", buf);
      }

      v13 = v10;
      a1 = v13;
      goto LABEL_37;
    }

    *(&v186 + 3) = 0;
    LODWORD(v186) = 0;
    v14 = [*(a1 + 136) agreedKmlVehicleVersion];
    v173 = [*(a1 + 136) agreedKmlVehicleVersion];
    v15 = &off_100407000;
    if (v7)
    {
      v16 = [*(a1 + 24) keyRole];
      if (!v16)
      {
        goto LABEL_9;
      }

      v9 = v16;
      [v7 keyRole];
      v18 = v17 = v14;
      v19 = [*(a1 + 24) keyRole];
      v3 = [v18 isEqualToNumber:v19];

      v14 = v17;
      if ((v3 & 1) == 0)
      {
LABEL_9:
        v20 = v14;
        v21 = KmlLogger();
        if (sub_1003674CC(v21))
        {
          sub_10039A61C(4.8152e-34);
          sub_10039A854(1613);
          *v200 = v7;
          sub_100367454(&_mh_execute_header, v9, v22, "%s : %i : Received additional configuration data with updated information: %@", buf);
        }

        v23 = *(a1 + 8);
        sub_10039A6CC();
        v181 = 3221225472;
        v182 = sub_10039A2F4;
        v183 = &unk_1004D1D70;
        v184 = v7;
        v185 = a1;
        v24 = SESEndPointUpdateWithBlock();
        v25 = sesErrorToKmlError();

        if (v25)
        {
          v26 = KmlLogger();
          if (sub_100377D18(v26))
          {
            sub_10039A61C(4.8152e-34);
            sub_10039A854(1624);
            *v200 = v25;
            sub_10039A698(&_mh_execute_header, v27, v28, "%s : %i : Unable to update endpoint with additional configuration data. Error: %@", buf);
          }

          v13 = v25;
          v15 = v184;
          a1 = v13;
          goto LABEL_36;
        }

        v14 = v20;
      }
    }

    if (!v6)
    {
      v41 = KmlLogger();
      if (sub_10036DCF8(v41))
      {
        sub_10039A61C(4.8151e-34);
        v198 = 1630;
        sub_100390B00();
        _os_log_impl(v42, v43, v44, v45, v46, 0x12u);
      }

      v13 = 0;
      a1 = 0;
      goto LABEL_36;
    }

    v169 = v14;
    v170 = v173;
    v29 = +[NSMutableDictionary dictionary];
    [v29 setObject:objc_opt_class() forKeyedSubscript:@"deviceConfiguration"];
    [v29 setObject:objc_opt_class() forKeyedSubscript:@"sharingConfiguration"];
    v15 = kmlUtilDecodeJson();
    v30 = 0;
    v31 = [v15 objectForKey:@"deviceConfiguration"];
    kmlUtilLogLargeData();
    v32 = [v15 objectForKey:@"sharingConfiguration"];
    kmlUtilLogLargeData();
    v174 = v32;
    if (v30 || ![v31 length] && !objc_msgSend(v32, "length"))
    {
      v62 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v63 = [v30 userInfo];
      v64 = [NSError errorWithDomain:v62 code:226 userInfo:v63];

      v73 = sub_10039A570(v65, v66, v67, v68, v69, v70, v71, v72, v159, v162, obj, v169, v170, v171, v174, v175, v176, v177, v178, v179, 0, v180, v181, v182, v183, v184, v185, v186);
      sub_1003E7780(v73, v64, v74);
      v13 = v64;
      a1 = v13;
      goto LABEL_35;
    }

    v33 = (a1 + 64);
    v172 = [[KmlDeviceConfigurationData alloc] initWithData:*(a1 + 64)];
    v34 = [v31 length];
    v35 = KmlLogger();
    v36 = sub_1003970EC(v35);
    if (v34)
    {
      if (v36)
      {
        sub_10039A6B4(4.8151e-34);
        sub_10039A60C("[KmlEndpointManager updateConfiguration:additionalConfigurationData:]");
        *(v37 + 14) = 1662;
        sub_10039A718(&_mh_execute_header, v38, v39, "%s : %i : Full device config was received. So that will be used.", buf);
      }

      v40 = [[KmlDeviceConfigurationData alloc] initWithData:v31 outerTag:1];
    }

    else
    {
      if (v36)
      {
        sub_10039A6B4(4.8151e-34);
        sub_10039A60C("[KmlEndpointManager updateConfiguration:additionalConfigurationData:]");
        *(v47 + 14) = 1665;
        sub_10039A718(&_mh_execute_header, v48, v49, "%s : %i : Only sharing config provided. Rest remains same", buf);
      }

      v40 = [[KmlDeviceConfigurationData alloc] initWithData:*v33];
      [v40 updateSharingConfigWithData:v174];
    }

    if (([v40 didParseDataSuccessfully] & 1) == 0)
    {
      v50 = KmlLogger();
      if (sub_10036F5C4(v50))
      {
        sub_10039A6B4(4.8151e-34);
        *(v51 + 4) = "[KmlEndpointManager updateConfiguration:additionalConfigurationData:]";
        v197 = 1024;
        *(v51 + 14) = 1671;
        sub_10039A68C();
        _os_log_impl(v52, v53, v54, v55, v56, v57);
      }

      v58 = [sub_10039A8EC() stringWithUTF8String:"com.apple.sesd.kml"];
      v193 = NSLocalizedDescriptionKey;
      KmlErrorString();
      v59 = [sub_10039A910() stringWithUTF8String:?];
      v194 = v59;
      v60 = [NSDictionary dictionaryWithObjects:&v194 forKeys:&v193 count:1];
      a1 = [NSError errorWithDomain:v58 code:221 userInfo:v60];

      v13 = 0;
      goto LABEL_34;
    }

    v75 = [v172 oemSpecificContentAsData];
    [v40 updatePPIDWithServerProvidedData:v75];

    if ([v172 uwbDisabledLocally])
    {
      [v40 removeUwbSupportLocally];
    }

    v76 = [v172 readerSupportsUwb];
    if (v76 != [v40 readerSupportsUwb])
    {
      v77 = KmlLogger();
      if (os_log_type_enabled(v77, OS_LOG_TYPE_ERROR))
      {
        v76 = [v172 readerSupportsUwb];
        v78 = [v40 readerSupportsUwb];
        *buf = 136315906;
        v196 = "[KmlEndpointManager updateConfiguration:additionalConfigurationData:]";
        v197 = 1024;
        v198 = 1681;
        v199 = 1024;
        *v200 = v76;
        *&v200[4] = 1024;
        *&v200[6] = v78;
        _os_log_impl(&_mh_execute_header, v77, OS_LOG_TYPE_ERROR, "%s : %i : Mismatch in BT/UWB support, Current (%d), New (%d)", buf, 0x1Eu);
      }

      if (!sub_1003F6F5C(v79) || (v76 = objc_opt_new(), v80 = [v76 allowRadioMismatchForTest], v76, !v80))
      {
        v163 = [sub_10039A8EC() stringWithUTF8String:"com.apple.sesd.kml"];
        v191 = NSLocalizedDescriptionKey;
        v97 = v76[141];
        KmlErrorString();
        v98 = [sub_10039A8F8() stringWithUTF8String:?];
        v192 = v98;
        v99 = [NSDictionary dictionaryWithObjects:&v192 forKeys:&v191 count:1];
        v100 = [NSError errorWithDomain:v163 code:226 userInfo:v99];

        v109 = sub_10039A570(v101, v102, v103, v104, v105, v106, v107, v108, v159, v163, NSError, v169, v170, v172, v174, v175, v176, v177, v178, v179, 0, v180, v181, v182, v183, v184, v185, v186);
        sub_1003E7780(v109, v100, v110);
        v13 = v100;
        a1 = v13;
LABEL_34:

LABEL_35:
LABEL_36:

LABEL_37:
        goto LABEL_38;
      }

      v81 = KmlLogger();
      if (sub_100377D6C(v81))
      {
        sub_10039A5B4(4.8151e-34);
        *(v82 + 14) = 1684;
        sub_10039A680();
        _os_log_impl(v83, v84, v85, v86, v87, 0x12u);
      }
    }

    v88 = [v40 asData];
    obja = v88;
    if ([v88 isEqualToData:*v33])
    {
      v89 = KmlLogger();
      if (os_log_type_enabled(v89, OS_LOG_TYPE_INFO))
      {
        sub_10039A5B4(4.8151e-34);
        *(v90 + 14) = 1695;
        sub_10036DC0C(&_mh_execute_header, v89, v91, "%s : %i : New device config is identical to existing device config. Ignoring the update.", buf);
      }

      v92 = [sub_10039A8EC() stringWithUTF8String:"com.apple.sesd.kml"];
      v160 = v92;
      v189 = NSLocalizedDescriptionKey;
      v93 = v88[141];
      KmlErrorString();
      v94 = [sub_10039A8F8() stringWithUTF8String:?];
      v190 = v94;
      v95 = &v190;
      v96 = &v189;
    }

    else
    {
      v111 = [v40 isValidForKmlVersion:objc_msgSend(*(a1 + 136) transport:{"agreedKmlVehicleVersion"), 0}];
      v112 = KmlLogger();
      if (v111)
      {
        if (sub_100377D6C(v112))
        {
          sub_10039A5B4(4.8151e-34);
          *(v113 + 14) = 1708;
          sub_10039A680();
          _os_log_impl(v114, v115, v116, v117, v118, 0x12u);
        }

        v119 = obja;
        objc_storeStrong((a1 + 64), obja);
        v120 = [v40 deviceBtOOBKey];
        v121 = *(a1 + 88);
        *(a1 + 88) = v120;

        v122 = [v40 deviceBtIntroKey];
        v123 = *(a1 + 80);
        *(a1 + 80) = v122;

        v124 = *(a1 + 8);
        v125 = SESEndPointUpdateWithBlock();
        if (([v172 isFriendImmoTokenOrSlotOnline] & 1) == 0 && objc_msgSend(v40, "isFriendImmoTokenOrSlotOnline"))
        {
          sub_1003E7A34(a1);
        }

        v164 = sesErrorToKmlError();

        v126 = KmlLogger();
        if (os_log_type_enabled(v126, OS_LOG_TYPE_INFO))
        {
          sub_10039A5B4(4.8152e-34);
          sub_100377CFC(1729);
          *(v127 + 20) = v164;
          sub_100367454(&_mh_execute_header, v126, v128, "%s : %i : Update endpoint result : %@", buf);
        }

        v137 = sub_10039A570(v129, v130, v131, v132, v133, v134, v135, v136, v159, v164, obja, v169, v170, v172, v174, _NSConcreteStackBlock, 3221225472, sub_10039A360, &unk_1004D1D20, a1, 0, v180, v181, v182, v183, v184, v185, v186);
        sub_1003E7780(v137, v165, v138);
        v13 = v165;
        goto LABEL_70;
      }

      if (sub_100377D54(v112))
      {
        sub_10039A5B4(4.8151e-34);
        *(v139 + 14) = 1702;
        sub_10039A68C();
        _os_log_impl(v140, v141, v142, v143, v144, v145);
      }

      v92 = [sub_10039A8EC() stringWithUTF8String:"com.apple.sesd.kml"];
      v160 = v92;
      v187 = NSLocalizedDescriptionKey;
      v146 = v111[141];
      KmlErrorString();
      v94 = [sub_10039A8F8() stringWithUTF8String:?];
      v188 = v94;
      v95 = &v188;
      v96 = &v187;
    }

    v147 = [NSDictionary dictionaryWithObjects:v95 forKeys:v96 count:1, v160];
    v148 = [NSError errorWithDomain:v92 code:226 userInfo:v147];

    v157 = sub_10039A570(v149, v150, v151, v152, v153, v154, v155, v156, v161, NSError, obja, v169, v170, v172, v174, v175, v176, v177, v178, v179, 0, v180, v181, v182, v183, v184, v185, v186);
    sub_1003E7780(v157, v148, v158);
    v13 = v148;
    v119 = objb;
LABEL_70:

    a1 = v13;
    goto LABEL_34;
  }

LABEL_38:

  return a1;
}

id sub_1003E8884(id *a1, void *a2)
{
  if (a1)
  {
    v5 = sub_1003E01E8(a1);
    if (v5)
    {
      v6 = v5;
      v7 = KmlLogger();
      if (sub_100377D18(v7))
      {
        *v28 = 136315650;
        sub_1003939F8();
        sub_10036F484();
        v29 = v6;
        sub_10039A698(&_mh_execute_header, v8, v9, "%s : %i : Error getting endpoint - %@", v28);
      }

      if (a2)
      {
        v10 = v6;
        v11 = 0;
        *a2 = v6;
      }

      else
      {
        v11 = 0;
      }

      goto LABEL_20;
    }

    v12 = [a1[3] readerInfo];
    v13 = [[KmlRoutingInformation alloc] initWithReaderInformation:v12];
    v14 = [v13 manufacturer];
    v15 = SESEndpointGetBindingAttestationRequestWithSession();
    v6 = 0;

    if (v6)
    {
      v16 = KmlLogger();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *v28 = 136315650;
        sub_1003939F8();
        sub_10036F484();
        v29 = v6;
        sub_10036F590(&_mh_execute_header, v16, v17, "%s : %i : Failed to get binding attestation data with error : %@", v28);
      }

      if (!a2)
      {
        v11 = 0;
        goto LABEL_19;
      }

      v18 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      v19 = [v6 userInfo];
      [NSError errorWithDomain:v18 code:112 userInfo:v19];
      *a2 = v11 = 0;
    }

    else
    {
      v18 = +[NSUUID UUID];
      v20 = [DAKeyBindingAttestationRequestData alloc];
      v21 = [sub_10039A898() subCAAttestation];
      v22 = [v15 casdECDSACertificate];
      v23 = [v15 casdRSACertificate];
      v11 = [v2 initWithSharingSessionIdentifier:v18 subCaAttestation:v21 casd:v22 rsaCertData:v23];

      if (!a2 || v11)
      {
        goto LABEL_17;
      }

      v19 = [NSString stringWithUTF8String:"com.apple.sesd.kml"];
      KmlErrorString();
      v27 = [sub_10039A8F8() stringWithUTF8String:?];
      sub_10039A814();
      v25 = [v24 dictionaryWithObjects:? forKeys:? count:?];
      *a2 = [NSError errorWithDomain:v19 code:112 userInfo:v25];
    }

LABEL_17:
LABEL_19:

LABEL_20:
    goto LABEL_21;
  }

  v11 = 0;
LABEL_21:

  return v11;
}

void *sub_1003E8BF8(void *a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    v5 = sub_1003E01E8(a1);
    if (v5)
    {
      v6 = v5;
      v7 = KmlLogger();
      if (sub_100377D18(v7))
      {
        v21[0] = 136315650;
        sub_1003939D8();
        sub_10039A75C();
        sub_10039A698(&_mh_execute_header, v8, v9, "%s : %i : Error getting endpoint - %@", v21);
      }

      a1 = v6;
    }

    else
    {
      v10 = sub_1003DF2B8([KmlBindingAttestation alloc], v4);
      v11 = sub_1003BA3D0(v10);
      v12 = [v11 length];

      if (v12)
      {
        v13 = a1[1];
        v18 = v10;
        v14 = SESEndPointUpdateWithBlock();
        v15 = v18;
      }

      else
      {
        v15 = [sub_1003971B4() stringWithUTF8String:"com.apple.sesd.kml"];
        v19 = NSLocalizedDescriptionKey;
        KmlErrorString();
        v16 = [sub_10039719C() stringWithUTF8String:?];
        v20 = v16;
        [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        objc_claimAutoreleasedReturnValue();
        v14 = [sub_10039A744() errorWithDomain:v15 code:112 userInfo:v2];
      }

      a1 = v14;
    }
  }

  return a1;
}

id sub_1003E8E30(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1 && [v4 length])
  {
    [KmlTlv TLVsWithData:v5];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v6 = v23 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v7)
    {
      v8 = *v21;
      while (2)
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v21 != v8)
          {
            objc_enumerationMutation(v6);
          }

          v2 = *(*(&v20 + 1) + 8 * i);
          if ([v2 tag]== 32565)
          {
            v7 = [v2 value];
            goto LABEL_13;
          }
        }

        v7 = [v6 countByEnumeratingWithState:&v20 objects:v29 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:

    if ([v7 length])
    {
      [KmlTlv TLVsWithData:v7];
      objc_claimAutoreleasedReturnValue();
      sub_100396F74();
      v2 = v10;
      v11 = [v2 countByEnumeratingWithState:v18 objects:v24 count:16];
      if (v11)
      {
        v12 = *v19;
        while (2)
        {
          for (j = 0; j != v11; j = j + 1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v2);
            }

            v14 = *(v18[1] + 8 * j);
            if ([v14 tag] == 78)
            {
              v11 = [v14 value];
              goto LABEL_25;
            }
          }

          v11 = [v2 countByEnumeratingWithState:v18 objects:v24 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_25:
    }

    else
    {
      v15 = KmlLogger();
      if (sub_10036F124(v15))
      {
        v25 = 136315394;
        v26 = "[KmlEndpointManager getSlotIdFromAttestationPackage:]";
        v27 = 1024;
        v28 = 2156;
        sub_10036DC0C(&_mh_execute_header, v2, v16, "%s : %i : Could not find friend attestation package in the data", &v25);
      }

      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

id *sub_1003E90C4(id *result, void *a2)
{
  if (result)
  {
    return objc_storeWeak(result + 19, a2);
  }

  return result;
}

void sub_1003E90D4(uint64_t a1)
{
  if (!a1)
  {
LABEL_6:
    sub_1003722A4();
    return;
  }

  sub_100372298(a1);
  if (v5)
  {
    v6 = KmlLogger();
    if (sub_100057AEC(v6))
    {
      sub_10036BED0();
      v17 = 441;
      sub_10036DBA0(&_mh_execute_header, v7, v8, "%s : %i : Transport not ready to create session", v16);
    }

    v9 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    sub_10037225C();
    [sub_100372244() stringWithUTF8String:?];
    objc_claimAutoreleasedReturnValue();
    sub_100372278();
    sub_100372228();
    [v10 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    v11 = [sub_1003721D4() errorWithDomain:? code:? userInfo:?];

    v12 = [v1 delegate];
    [v12 handleSessionStartResult:v11];

    goto LABEL_6;
  }

  sub_1003722A4();

  sub_1003E97B8(v13, v14);
}

void sub_1003E9258(uint64_t a1)
{
  if (a1)
  {
    sub_100372298(a1);
    switch(v2)
    {
      case 2:
      case 6:
        v10 = [NSString stringWithUTF8String:"com.apple.sesd.kml.pairing"];
        if (*(v1 + 80))
        {
          v11 = 23;
        }

        else
        {
          v11 = 24;
        }

        v18 = NSLocalizedDescriptionKey;
        v12 = [NSString stringWithUTF8String:KmlErrorString()];
        v19 = v12;
        v13 = [NSDictionary dictionaryWithObjects:&v19 forKeys:&v18 count:1];
        v14 = [NSError errorWithDomain:v10 code:v11 userInfo:v13];
        v15 = *(v1 + 48);
        *(v1 + 48) = v14;

        sub_1003E97B8(v1, 9);
        goto LABEL_6;
      case 3:
      case 7:
        sub_1003722A4();

        (sub_1003E97B8)();
        break;
      default:
        v3 = KmlLogger();
        if (sub_10036F978(v3))
        {
          sub_10036DB8C();
          sub_10039D698(&_mh_execute_header, v4, v5, "%s : %i : session is not running. Ignore request to end it", v6, v7, v8, v9, v17);
        }

        goto LABEL_6;
    }
  }

  else
  {
LABEL_6:
    sub_1003722A4();
  }
}

void sub_1003E9438(uint64_t a1)
{
  if (!a1)
  {
LABEL_10:
    sub_1003722A4();
    return;
  }

  sub_100372298(a1);
  if (v5 == 5)
  {
    v13 = KmlLogger();
    if (sub_100057AEC(v13))
    {
      sub_10036BED0();
      v21 = 476;
      sub_10036DBA0(&_mh_execute_header, v14, v15, "%s : %i : Session already paused.", v20);
    }

    v16 = [v1 delegate];
    [v16 handleSessionPauseResult:0];

    goto LABEL_10;
  }

  if (v5 != 3)
  {
    v6 = KmlLogger();
    if (sub_100057AEC(v6))
    {
      sub_10036BED0();
      v21 = 480;
      sub_10036DBA0(&_mh_execute_header, v7, v8, "%s : %i : Transport not running to pause", v20);
    }

    v9 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    sub_10037225C();
    [sub_100372244() stringWithUTF8String:?];
    objc_claimAutoreleasedReturnValue();
    sub_100372278();
    sub_100372228();
    [v10 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    v11 = [sub_1003721D4() errorWithDomain:? code:? userInfo:?];

    v12 = [v1 delegate];
    [v12 handleSessionPauseResult:v11];

    goto LABEL_10;
  }

  sub_1003722A4();

  sub_1003E97B8(v17, v18);
}

void sub_1003E9630(uint64_t a1)
{
  if (!a1)
  {
LABEL_6:
    sub_1003722A4();
    return;
  }

  sub_100372298(a1);
  if (v5 != 5)
  {
    v6 = KmlLogger();
    if (sub_100057AEC(v6))
    {
      sub_10036BED0();
      v17 = 465;
      sub_10036DBA0(&_mh_execute_header, v7, v8, "%s : %i : Transport not ready to resume session", v16);
    }

    v9 = [sub_100372250() stringWithUTF8String:"com.apple.sesd.kml.pairing"];
    sub_10037225C();
    [sub_100372244() stringWithUTF8String:?];
    objc_claimAutoreleasedReturnValue();
    sub_100372278();
    sub_100372228();
    [v10 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    v11 = [sub_1003721D4() errorWithDomain:? code:? userInfo:?];

    v12 = [v1 delegate];
    [v12 handleSessionResumeResult:v11];

    goto LABEL_6;
  }

  sub_1003722A4();

  sub_1003E97B8(v13, v14);
}

void sub_1003E97B8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = *(a1 + 56);
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_10039B82C;
    v3[3] = &unk_1004C2B00;
    v3[4] = a1;
    v3[5] = a2;
    dispatch_async(v2, v3);
  }
}

void sub_1003E9834(uint64_t a1)
{
  if (a1)
  {
    if ((*(a1 + 8) & 0xFFFFFFFFFFFFFFFELL) == 0xA)
    {

      sub_1003E97B8();
    }

    else
    {
      v2 = KmlLogger();
      if (sub_10036F978(v2))
      {
        sub_10036DB8C();
        sub_10039D698(&_mh_execute_header, v3, v4, "%s : %i : Transaction session is not running. Ignore request to end it", v5, v6, v7, v8, v9);
      }
    }
  }
}

void sub_1003E9918(uint64_t a1)
{
  if (a1)
  {
    [*(a1 + 40) endSession];
    [*(a1 + 40) setDelegate:0];
    v3 = *(a1 + 40);
    *(a1 + 40) = 0;

    [*(a1 + 24) stopHceEmulation];
    [*(a1 + 24) stopTransactionEmulation];
    [*(a1 + 24) endSession];
    v4 = *(a1 + 24);
    *(a1 + 24) = 0;

    v5 = *(a1 + 32);
    *(a1 + 32) = 0;

    sub_1003EA12C(a1);
    sub_1003EA370(a1);
    v6 = KmlLogger();
    if (sub_100057AEC(v6))
    {
      sub_10036DB8C();
      v10 = 423;
      sub_10036DBA0(&_mh_execute_header, v7, v8, "%s : %i : Resetting state to ready", v9);
    }

    *(a1 + 8) = 0;
  }
}

void sub_1003E9A1C(uint64_t a1, void *a2)
{
  if (a1)
  {
    v4 = a1;
    v5 = KmlLogger();
    if (sub_10036DCF8(v5))
    {
      v6 = *(v4 + 8);
      *buf = 136315906;
      v114 = "[KmlBluetoothPairingTransport setCurrentState_sync:]";
      v115 = 1024;
      v116 = 221;
      v117 = 2048;
      v118 = v6;
      v119 = 2048;
      v120 = a2;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "%s : %i : Current state %ld, new state %ld", buf, 0x26u);
    }

    *(v4 + 16) = *(v4 + 8);
    *(v4 + 8) = a2;
    switch(a2)
    {
      case 0uLL:
        v7 = KmlLogger();
        if (!sub_10036F978(v7))
        {
          goto LABEL_28;
        }

        sub_100377C18();
        v116 = 227;
        v14 = "%s : %i : BT Pairing transport is ready";
        goto LABEL_27;
      case 1uLL:
        v60 = +[NFHardwareManager sharedHardwareManager];
        sub_100057A60();
        sub_100057B28();
        v110 = sub_10039B96C;
        v111 = &unk_1004C2E80;
        v112 = v4;
        v62 = [v61 startSecureElementManagerSession:&v108];
        v63 = *(v4 + 32);
        *(v4 + 32) = v62;

        v64 = [[BluetoothHCEAndTransactionSession alloc] initWithDelegate:v4];
        v65 = *(v4 + 24);
        *(v4 + 24) = v64;

        v66 = KmlLogger();
        if (sub_10036F978(v66))
        {
          sub_100377C18();
          v116 = 253;
          v14 = "%s : %i : Waiting to get SEM session";
LABEL_27:
          sub_1003721EC(&_mh_execute_header, v8, v9, v14, v10, v11, v12, v13, v107, v108, v109, v110, v111, v112, buf[0]);
        }

        goto LABEL_28;
      case 2uLL:
        v89 = KmlLogger();
        if (!sub_100057AEC(v89))
        {
          goto LABEL_49;
        }

        sub_100377C18();
        v116 = 258;
        v96 = "%s : %i : Starting BT Host Card Emulation";
        goto LABEL_48;
      case 3uLL:
        v67 = KmlLogger();
        if (sub_100057AEC(v67))
        {
          sub_100377C18();
          v116 = 263;
          sub_10039D624(&_mh_execute_header, v68, v69, "%s : %i : BT Host Card Emulation session started", v70, v71, v72, v73, v107, v108, v109, v110, v111, v112, buf[0]);
        }

        goto LABEL_32;
      case 4uLL:
        v45 = KmlLogger();
        if (sub_100057AEC(v45))
        {
          sub_100377C18();
          v116 = 268;
          sub_10039D624(&_mh_execute_header, v46, v47, "%s : %i : Pause Hce session", v48, v49, v50, v51, v107, v108, v109, v110, v111, v112, buf[0]);
        }

        goto LABEL_37;
      case 5uLL:
        v22 = KmlLogger();
        if (sub_100057AEC(v22))
        {
          sub_100377C18();
          v116 = 273;
          sub_10039D624(&_mh_execute_header, v23, v24, "%s : %i : BT Host Card Emulation session paused", v25, v26, v27, v28, v107, v108, v109, v110, v111, v112, buf[0]);
        }

        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_10039D680();
        [v29 handleSessionPauseResult:?];
        goto LABEL_33;
      case 6uLL:
        v98 = KmlLogger();
        if (!sub_100057AEC(v98))
        {
          goto LABEL_49;
        }

        sub_100377C18();
        v116 = 278;
        v96 = "%s : %i : Resuming Host Card Emulation";
LABEL_48:
        sub_10039D624(&_mh_execute_header, v90, v91, v96, v92, v93, v94, v95, v107, v108, v109, v110, v111, v112, buf[0]);
LABEL_49:

        [*(v4 + 24) startHceEmulation];
        sub_1003EA20C(v4);
        return;
      case 7uLL:
        v15 = KmlLogger();
        if (sub_100057AEC(v15))
        {
          sub_100377C18();
          v116 = 283;
          sub_10039D624(&_mh_execute_header, v16, v17, "%s : %i : BT Host Card Emulation session resumed", v18, v19, v20, v21, v107, v108, v109, v110, v111, v112, buf[0]);
        }

        v4 = [v4 delegate];
        [v4 handleSessionResumeResult:0];
LABEL_28:

        return;
      case 8uLL:
        v75 = KmlLogger();
        if (sub_100057AEC(v75))
        {
          sub_100377C18();
          v116 = 288;
          sub_10039D624(&_mh_execute_header, v76, v77, "%s : %i : Stopping BT Host Card Emulation session", v78, v79, v80, v81, v107, v108, v109, v110, v111, v112, buf[0]);
        }

        [*(v4 + 40) endSession];
LABEL_37:
        [*(v4 + 24) stopHceEmulation];
        return;
      case 9uLL:
        v52 = KmlLogger();
        if (sub_100057AEC(v52))
        {
          sub_100377C18();
          v116 = 294;
          sub_10039D624(&_mh_execute_header, v53, v54, "%s : %i : BT Host Card Emulation session stopped", v55, v56, v57, v58, v107, v108, v109, v110, v111, v112, buf[0]);
        }

        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_10039D680();
        [v59 handleSessionEndResult:?];
        goto LABEL_33;
      case 0xAuLL:
        v30 = KmlLogger();
        if (sub_100057AEC(v30))
        {
          sub_100377C18();
          v116 = 299;
          sub_10039D624(&_mh_execute_header, v31, v32, "%s : %i : Starting BT transaction session", v33, v34, v35, v36, v107, v108, v109, v110, v111, v112, buf[0]);
        }

        [*(v4 + 24) startTransactionEmulationForKeyWithIdentifier:*(v4 + 88)];
        return;
      case 0xBuLL:
        v99 = KmlLogger();
        if (sub_100057AEC(v99))
        {
          sub_100377C18();
          v116 = 304;
          sub_10039D624(&_mh_execute_header, v100, v101, "%s : %i : BT transaction session started", v102, v103, v104, v105, v107, v108, v109, v110, v111, v112, buf[0]);
        }

        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_10039D680();
        [v106 handleTransactionStartResult:?];

        sub_1003EA010(v4);
        return;
      case 0xCuLL:
        v82 = KmlLogger();
        if (sub_100057AEC(v82))
        {
          sub_100377C18();
          v116 = 310;
          sub_10039D624(&_mh_execute_header, v83, v84, "%s : %i : BT transaction session stop requested", v85, v86, v87, v88, v107, v108, v109, v110, v111, v112, buf[0]);
        }

        [*(v4 + 24) stopTransactionEmulation];
        sub_1003E97B8(v4, 13);
        return;
      case 0xDuLL:
        v37 = KmlLogger();
        if (sub_100057AEC(v37))
        {
          sub_100377C18();
          v116 = 316;
          sub_10039D624(&_mh_execute_header, v38, v39, "%s : %i : BT Transaction session stopped", v40, v41, v42, v43, v107, v108, v109, v110, v111, v112, buf[0]);
        }

        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_10039D680();
        [v44 handleTransactionEndResult:?];
        goto LABEL_33;
      case 0xEuLL:
        sub_1003E9918(v4);
LABEL_32:
        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_10039D680();
        [v74 handleSessionStartResult:?];
        goto LABEL_33;
      case 0xFuLL:
        sub_1003E9918(v4);
        [v4 delegate];
        objc_claimAutoreleasedReturnValue();
        sub_10039D680();
        [v97 handleTransactionStartResult:?];
LABEL_33:

        break;
      default:
        return;
    }
  }
}

void sub_1003EA010(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 64))
    {
      v2 = KmlLogger();
      if (sub_10036F978(v2))
      {
        sub_1003721A0();
        v18 = 337;
        v9 = "%s : %i : endTransactionTimer already running. Ignore another start";
LABEL_7:
        sub_1003721EC(&_mh_execute_header, v3, v4, v9, v5, v6, v7, v8, v12, block[0], block[1], v14, v15, v16, v17);
      }
    }

    else
    {
      sub_100057A60();
      sub_100057B28();
      v14 = sub_10039BBB8;
      v15 = &unk_1004C08D8;
      v16 = v10;
      dispatch_async(&_dispatch_main_q, block);
      v11 = KmlLogger();
      if (sub_10036F978(v11))
      {
        sub_1003721A0();
        v18 = 350;
        v9 = "%s : %i : endTransactionTimer started";
        goto LABEL_7;
      }
    }
  }
}

void sub_1003EA12C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 64))
    {
      sub_100057A60();
      sub_100057B28();
      v12 = sub_10039BCEC;
      v13 = &unk_1004C08D8;
      v14 = v2;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v3 = KmlLogger();
      if (sub_10036F978(v3))
      {
        sub_1003721A0();
        v16 = 356;
        sub_1003721EC(&_mh_execute_header, v4, v5, "%s : %i : endTransactionTimer is not running.", v6, v7, v8, v9, v10, block[0], block[1], v12, v13, v14, v15);
      }
    }
  }
}

void sub_1003EA20C(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 80))
    {
      if (*(a1 + 72))
      {
        v2 = KmlLogger();
        if (sub_10036F978(v2))
        {
          sub_1003721A0();
          v19 = 375;
          v9 = "%s : %i : A hceSessionTimer already running. Ignore another start";
LABEL_10:
          sub_1003721EC(&_mh_execute_header, v3, v4, v9, v5, v6, v7, v8, v13, block[0], block[1], v15, v16, v17, v18);
        }
      }

      else
      {
        sub_100057A60();
        sub_100057B28();
        v15 = sub_10039BDC4;
        v16 = &unk_1004C08D8;
        v17 = v11;
        dispatch_async(&_dispatch_main_q, block);
        v12 = KmlLogger();
        if (sub_10036F978(v12))
        {
          sub_1003721A0();
          v19 = 393;
          v9 = "%s : %i : hceSessionTimer started";
          goto LABEL_10;
        }
      }
    }

    else
    {
      v10 = KmlLogger();
      if (sub_10036F978(v10))
      {
        sub_1003721A0();
        v19 = 370;
        v9 = "%s : %i : A timeout was not requested for this hce session";
        goto LABEL_10;
      }
    }
  }
}

void sub_1003EA370(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 72))
    {
      sub_100057A60();
      sub_100057B28();
      v12 = sub_10039BFD4;
      v13 = &unk_1004C08D8;
      v14 = v2;
      dispatch_async(&_dispatch_main_q, block);
    }

    else
    {
      v3 = KmlLogger();
      if (sub_10036F978(v3))
      {
        sub_1003721A0();
        v16 = 399;
        sub_1003721EC(&_mh_execute_header, v4, v5, "%s : %i : hceSessionTimer is not running.", v6, v7, v8, v9, v10, block[0], block[1], v12, v13, v14, v15);
      }
    }
  }
}

void sub_1003EA450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, int a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1003A1BAC();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v32;
  v38 = v30;
  if (!v34)
  {
    goto LABEL_12;
  }

  a9.receiver = v34;
  a9.super_class = KmlOwnerSharingManager;
  v39 = objc_msgSendSuper2(&a9, "init");
  if (!v39)
  {
    goto LABEL_12;
  }

  v40 = KmlLogger();
  if (sub_100377D6C(v40))
  {
    v41 = v39[25];
    v42 = [v41 UUIDString];
    v43 = [v42 UTF8String];

    a10 = 136315650;
    sub_10036DC30();
    sub_100390948();
    *(&a12 + 4) = v43;
    sub_100393994();
    _os_log_impl(v44, v45, v46, v47, v48, v49);
  }

  v39[1] = 0;
  v50 = [v36 uppercaseString];
  v51 = v39[26];
  v39[26] = v50;

  v52 = +[NSMutableArray array];
  v53 = v39[29];
  v39[29] = v52;

  v54 = +[NSUUID UUID];
  v55 = v39[25];
  v39[25] = v54;

  objc_storeStrong(v39 + 27, v32);
  objc_storeStrong(v39 + 28, v30);
  if (v39[27])
  {
    v56 = +[NSMutableArray array];
    v57 = v39[14];
    v39[14] = v56;

    v58 = v39[15];
    v39[15] = 0;
  }

  else
  {
    v59 = v39[14];
    v39[14] = 0;

    v60 = +[NSMutableArray array];
    v61 = v39[15];
    v39[15] = v60;

    if (v39[28])
    {
      goto LABEL_9;
    }

    v75 = [v39[25] UUIDString];
    v58 = v39[28];
    v39[28] = v75;
  }

LABEL_9:
  v62 = KmlSignpostLogger();
  v39[20] = os_signpost_id_make_with_pointer(v62, v39[25]);

  v39[21] = 0;
  *(v39 + 176) = 0;
  v39[12] = 1;
  *(v39 + 128) = -2;
  *(v39 + 88) = 0;
  v63 = sub_10039F59C();
  v64 = v39[10];
  v39[10] = v63;

  v65 = KmlLogger();
  if (sub_10036DC64(v65))
  {
    v66 = v39[25];
    v67 = [v66 UUIDString];
    v68 = [v67 UTF8String];

    a10 = 136315650;
    sub_10036DC30();
    sub_100390948();
    *(&a12 + 4) = v68;
    sub_100393994();
    _os_log_impl(v69, v70, v71, v72, v73, v74);
  }

LABEL_12:
  sub_1003A1B90();
}

void sub_1003EA740(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1003A1BAC();
  a25 = v26;
  a26 = v27;
  v29 = v28;
  v31 = v30;
  v32 = v28;
  if (v31)
  {
    a9.receiver = v31;
    a9.super_class = KmlOwnerSharingManager;
    v33 = objc_msgSendSuper2(&a9, "init");
    if (v33)
    {
      v34 = KmlLogger();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        v35 = v33[25];
        v36 = [v35 UUIDString];
        v37 = [v36 UTF8String];

        sub_10036DC9C();
        sub_100390948();
        *(&a12 + 4) = v37;
        sub_100393994();
        _os_log_impl(v38, v39, v40, v41, v42, v43);
      }

      v33[1] = 0;
      v44 = +[NSMutableArray array];
      v45 = v33[29];
      v33[29] = v44;

      v46 = +[NSMutableArray array];
      v47 = v33[14];
      v33[14] = v46;

      v48 = v33[15];
      v33[15] = 0;

      objc_storeStrong(v33 + 25, v29);
      v49 = KmlSignpostLogger();
      v33[20] = os_signpost_id_make_with_pointer(v49, v33[25]);

      v33[21] = 0;
      *(v33 + 176) = 1;
      v33[12] = 2;
      *(v33 + 128) = -2;
      *(v33 + 88) = 0;
      v50 = sub_10039F59C();
      v51 = v33[10];
      v33[10] = v50;

      v52 = KmlLogger();
      if (sub_10036DCF8(v52))
      {
        v53 = v33[25];
        v54 = [v53 UUIDString];
        v55 = [v54 UTF8String];

        sub_10036DC9C();
        sub_100390948();
        *(&a12 + 4) = v55;
        sub_100393994();
        _os_log_impl(v56, v57, v58, v59, v60, v61);
      }
    }
  }

  sub_1003A1B90();
}

void sub_1003EA97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, objc_super a9, int a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  sub_1003A1BAC();
  a25 = v27;
  a26 = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v37 = v33;
  v38 = v32;
  v39 = v30;
  if (v36)
  {
    a9.receiver = v36;
    a9.super_class = KmlOwnerSharingManager;
    v40 = objc_msgSendSuper2(&a9, "init");
    if (v40)
    {
      v41 = KmlLogger();
      if (sub_100377D6C(v41))
      {
        v42 = v40[25];
        v43 = [v42 UUIDString];
        v44 = [v43 UTF8String];

        a10 = 136315650;
        sub_10036DC30();
        sub_100390948();
        *(&a12 + 4) = v44;
        sub_100393994();
        _os_log_impl(v45, v46, v47, v48, v49, v50);
      }

      if (sub_1003B8594(v38) == 3)
      {
        v40[1] = 8;
      }

      objc_storeStrong(v40 + 2, v34);
      v51 = [[KmlVersions alloc] initWithEndpoint:v40[2]];
      v52 = v40[19];
      v40[19] = v51;

      v53 = [v40[2] publicKeyIdentifier];
      v54 = v40[3];
      v40[3] = v53;

      v55 = v40[3];
      v56 = kmlUtilHexStringFromData();
      v57 = v40[26];
      v40[26] = v56;

      v58 = sub_1003ACF68(v38);
      v59 = v40[27];
      v40[27] = v58;

      v60 = sub_1003BFE98(v38);
      v61 = v40[28];
      v40[28] = v60;

      v62 = sub_1003C7D34(v38);
      v63 = v40[5];
      v40[5] = v62;

      v64 = sub_1003C75E0(v38);
      v65 = v40[7];
      v40[7] = v64;

      v66 = sub_1003C75D4(v38);
      v67 = v40[8];
      v40[8] = v66;

      *(v40 + 88) = 0;
      v68 = +[NSMutableArray array];
      v69 = v40[29];
      v40[29] = v68;

      if (v40[28])
      {
        v70 = v40[14];
        v40[14] = 0;

        v71 = +[NSMutableArray array];
      }

      else
      {
        v72 = +[NSMutableArray array];
        v73 = v40[14];
        v40[14] = v72;

        v71 = 0;
      }

      v74 = v40[15];
      v40[15] = v71;

      v75 = sub_1003AD0FC(v38);
      v76 = v40[25];
      v40[25] = v75;

      objc_storeStrong(v40 + 17, v30);
      v77 = [KmlDeviceConfigurationData alloc];
      v78 = [v40[2] deviceConfiguration];
      v79 = [v77 initWithData:v78];
      v80 = v40[18];
      v40[18] = v79;

      v81 = KmlSignpostLogger();
      v40[20] = os_signpost_id_make_with_pointer(v81, v40[25]);

      v40[21] = sub_1003BA3F8(v38);
      *(v40 + 88) = 0;
      v40[12] = 2;
      *(v40 + 128) = -2;
      v82 = [v40[2] sharingTokenAvailabilityBitmap];

      if (v82)
      {
        v82 = [v40[2] sharingTokenAvailabilityBitmap];
        *(v40 + 128) = [v82 unsignedCharValue];
      }

      v83 = sub_10039F59C();
      v84 = v40[10];
      v40[10] = v83;

      v85 = KmlLogger();
      if (sub_10036DC64(v85))
      {
        v86 = v40[25];
        v87 = [v86 UUIDString];
        v88 = [v87 UTF8String];

        a10 = 136315650;
        sub_10036DC30();
        sub_100390948();
        *(&a12 + 4) = v88;
        sub_100393994();
        _os_log_impl(v89, v90, v91, v92, v93, v94);
      }
    }
  }

  sub_1003A1B90();
}

void sub_1003EAD80(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 80);
    sub_1000167BC();
    v5[1] = 3221225472;
    v5[2] = sub_10039F6A4;
    v5[3] = &unk_1004C22F0;
    v6 = v3;
    v7 = a1;
    dispatch_async(v4, v5);
  }
}

id *sub_1003EAE0C(id *a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      sub_100396EB4();
      v6 = a1[29];
      sub_1003A1CC4();
      v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
      if (v8)
      {
        v16 = v8;
        v17 = *v45;
        while (2)
        {
          v18 = 0;
          do
          {
            sub_100396FA0(v8, v9, v10, v11, v12, v13, v14, v15, v43, v44, v45);
            if (v19 != v17)
            {
              objc_enumerationMutation(v2);
            }

            v20 = *(v44 + 8 * v18);
            v21 = sub_1003B18DC(v20);
            v22 = [v21 isEqualToString:v5];

            if (v22)
            {
              v23 = KmlLogger();
              if (sub_10036DC64(v23))
              {
                v24 = a1[25];
                v25 = [v24 UUIDString];
                v26 = [v25 UTF8String];

                v47 = 136315650;
                v48 = "[KmlOwnerSharingManager getSessionForInvitationIdentifier:]";
                sub_1003674B0();
                v49 = 572;
                sub_100367520();
                v50 = v26;
                sub_100393994();
                _os_log_impl(v27, v28, v29, v30, v31, v32);
              }

              a1 = v20;
              goto LABEL_18;
            }

            v18 = v18 + 1;
          }

          while (v16 != v18);
          v8 = sub_100397230(v8, v9, &v43, v46);
          v16 = v8;
          if (v8)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v33 = KmlLogger();
      if (sub_100057AEC(v33))
      {
        v34 = a1[25];
        v35 = [v34 UUIDString];
        v36 = [v35 UTF8String];

        v47 = 136315650;
        v48 = "[KmlOwnerSharingManager getSessionForInvitationIdentifier:]";
        sub_1003674B0();
        v49 = 566;
        sub_100367520();
        v50 = v36;
        sub_1003A1AB8();
        _os_log_impl(v37, v38, v39, v40, v41, 0x1Cu);
      }
    }

    a1 = 0;
LABEL_18:
  }

  return a1;
}

void sub_1003EB064(uint64_t a1, void *a2)
{
  v4 = a2;
  v5 = v4;
  if (a1)
  {
    if (v4)
    {
      v6 = *(a1 + 80);
      sub_1000167BC();
      v17[1] = 3221225472;
      v17[2] = sub_1003A0C70;
      v17[3] = &unk_1004C22F0;
      v17[4] = a1;
      v18 = v5;
      dispatch_async(v6, v17);
    }

    else
    {
      v7 = KmlLogger();
      if (sub_100057AEC(v7))
      {
        v8 = *(a1 + 200);
        v9 = [v8 UUIDString];
        v10 = [v9 UTF8String];

        v19 = 136315650;
        v20 = "[KmlOwnerSharingManager handleAuthExpiryForInvitation:]";
        v21 = 1024;
        v22 = 1098;
        v23 = 2080;
        v24 = v10;
        sub_100393994();
        _os_log_impl(v11, v12, v13, v14, v15, v16);
      }
    }
  }
}

void sub_1003EB1C4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 80);
    sub_1003673C4();
    v5[1] = 3221225472;
    v5[2] = sub_1003A0C2C;
    v5[3] = &unk_1004C2B00;
    v5[4] = v2;
    v5[5] = v3;
    dispatch_async(v4, v5);
  }
}

void sub_1003EB228(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 80);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003A25E8;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

uint64_t sub_1003EB2A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 80));
    v19 = 0;
    v20 = &v19;
    v21 = 0x2020000000;
    v22 = 1;
    v10 = *(a1 + 80);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10039F7F8;
    block[3] = &unk_1004C24F8;
    block[4] = a1;
    block[5] = &v19;
    dispatch_sync(v10, block);
    v11 = *(v20 + 24);
    if (*(v20 + 24))
    {
      v12 = *(a1 + 80);
      sub_1000167BC();
      v14[1] = 3221225472;
      v14[2] = sub_1003A1D3C;
      v14[3] = &unk_1004D1B40;
      v14[4] = a1;
      v15 = v7;
      v16 = v8;
      v17 = v9;
      dispatch_async(v12, v14);
    }

    _Block_object_dispose(&v19, 8);
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

uint64_t sub_1003EB418(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 80));
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 1;
    v4 = *(a1 + 80);
    sub_10036DBBC();
    v13 = 3221225472;
    v14 = sub_10039F86C;
    v15 = &unk_1004C24F8;
    v16 = a1;
    v17 = v5;
    dispatch_sync(v6, block);
    v7 = *(v19 + 24);
    if (*(v19 + 24))
    {
      v8 = *(a1 + 80);
      sub_1000167BC();
      v10[1] = 3221225472;
      v10[2] = sub_1003A1F30;
      v10[3] = &unk_1004C22F0;
      v10[4] = a1;
      v11 = v3;
      dispatch_async(v8, v10);
    }

    _Block_object_dispose(&v18, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t sub_1003EB52C(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  dispatch_assert_queue_not_V2(*(a1 + 80));
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 1;
  v2 = *(a1 + 80);
  sub_10036DBBC();
  v15 = 3221225472;
  v16 = sub_10039F8E8;
  v17 = &unk_1004C24F8;
  v18 = a1;
  v19 = v3;
  dispatch_sync(v4, block);
  v5 = *(v21 + 24);
  if (*(v21 + 24))
  {
    v6 = *(a1 + 80);
    sub_100057A60();
    v10 = 3221225472;
    v11 = sub_1003A1FC8;
    v12 = &unk_1004C08D8;
    v13 = a1;
    dispatch_async(v7, v9);
  }

  _Block_object_dispose(&v20, 8);
  return v5;
}

void sub_1003EB618(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    v4 = *(a1 + 80);
    sub_1000167BC();
    v5[1] = 3221225472;
    v5[2] = sub_10039F964;
    v5[3] = &unk_1004C22F0;
    v5[4] = a1;
    v6 = v3;
    dispatch_async(v4, v5);
  }
}

dispatch_queue_t *sub_1003EB6A8(dispatch_queue_t *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_not_V2(a1[10]);
    v14 = 0;
    v15 = &v14;
    v16 = 0x3032000000;
    v17 = sub_10039FCC8;
    v18 = sub_10039FCD8;
    v19 = 0;
    v7 = a1[10];
    sub_1003673C4();
    v10[1] = 3221225472;
    v10[2] = sub_1003A2048;
    v10[3] = &unk_1004D23F0;
    v10[4] = a1;
    v13 = v8;
    v11 = v6;
    v12 = v5;
    dispatch_sync(v7, v10);
    a1 = v15[5];

    _Block_object_dispose(&v14, 8);
  }

  return a1;
}

void sub_1003EB7D8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a1)
  {
    v6 = *(a1 + 80);
    sub_100057A60();
    v8 = 3221225472;
    v9 = sub_1003A239C;
    v10 = &unk_1004D2418;
    v11 = a1;
    v12 = v5;
    v13 = a2;
    dispatch_async(v6, block);
  }
}

void sub_1003EB870(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    dispatch_assert_queue_not_V2(*(a1 + 80));
    v7 = *(a1 + 80);
    sub_100057A60();
    v9 = 3221225472;
    v10 = sub_1003A0A58;
    v11 = &unk_1004C24A8;
    v12 = v6;
    v13 = v5;
    v14 = a1;
    dispatch_sync(v7, block);
  }
}

void sub_1003EC534()
{
  sub_1003A1BAC();
  if (v1)
  {
    v2 = v1;
    v3 = *(v1 + 200);
    v4 = SESEndPointGetEndpointIdWithUuid();
    v5 = 0;
    v6 = v5;
    if (!v4 || v5)
    {
      v12 = KmlLogger();
      if (sub_10036F124(v12))
      {
        v13 = *(v2 + 200);
        v14 = [v13 UUIDString];
        [v14 UTF8String];
        v15 = *(v2 + 200);

        sub_10036DC9C();
        sub_100390948();
        sub_1003A1AF0();
        _os_log_impl(v16, v17, v18, v19, v20, v21);
      }

      sub_1003A1BE4();
      if (v22)
      {
        v23 = sesErrorToKmlError();
        v0 = *(v2 + 72);
        *(v2 + 72) = v23;
        v11 = 7;
      }

      else
      {
        v24 = KmlLogger();
        if (sub_10036F124(v24))
        {
          v26 = *(v2 + 200);
          v27 = [v26 UUIDString];
          [v27 UTF8String];

          sub_10036DC9C();
          sub_100390948();
          sub_100393994();
          _os_log_impl(v28, v29, v30, v31, v32, v33);
        }

        v11 = 13;
      }
    }

    else
    {
      v7 = [v4 uppercaseString];
      v8 = *(v2 + 208);
      *(v2 + 208) = v7;

      v9 = *(v2 + 208);
      v10 = kmlUtilDataForHexString();
      v0 = *(v2 + 24);
      *(v2 + 24) = v10;
      v11 = 2;
    }

    sub_1003EB1C4(v2, v11);
  }

  sub_1003A1B90();
}

void sub_1003EC73C(uint64_t a1)
{
  if (a1)
  {
    v2 = sub_1003EF848(a1);
    v13 = v2;
    if (v2)
    {
      objc_storeStrong((a1 + 72), v2);
      v12 = 4;
    }

    else
    {
      v3 = [KmlDeviceConfigurationData alloc];
      v4 = [*(a1 + 16) deviceConfiguration];
      v5 = [v3 initWithData:v4];
      v6 = *(a1 + 144);
      *(a1 + 144) = v5;

      v7 = sub_100394824(KmlSharingRecordsUpdater, *(a1 + 16));
      v8 = *(a1 + 136);
      *(a1 + 136) = v7;

      v9 = [*(a1 + 16) sharingTokenAvailabilityBitmap];

      if (v9)
      {
        v10 = [*(a1 + 16) sharingTokenAvailabilityBitmap];
        *(a1 + 128) = [v10 unsignedCharValue];
      }

      v11 = sub_1003EFFE8(a1);
      sub_1003A1C8C(v11);
      if (*(a1 + 72))
      {
        v12 = 4;
      }

      else
      {
        v12 = 3;
      }
    }

    sub_1003EB1C4(a1, v12);
  }
}

uint64_t sub_1003ECE9C(uint64_t location)
{
  if (location)
  {
    v4 = location;
    if (!*(location + 104))
    {
      v6 = (location + 72);
      v5 = *(location + 72);
      if (v5)
      {
        objc_storeStrong((location + 72), v5);
      }

      else
      {
        v7 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
        v78 = NSLocalizedDescriptionKey;
        v8 = *(v1 + 1128);
        KmlErrorString();
        v9 = [sub_10039719C() stringWithUTF8String:?];
        v79 = v9;
        [NSDictionary dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        objc_claimAutoreleasedReturnValue();
        v10 = [sub_1003A1B50() errorWithDomain:? code:? userInfo:?];
        v11 = *v6;
        *v6 = v10;
      }
    }

    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v12 = *(v4 + 104);
    v13 = [v12 countByEnumeratingWithState:&v65 objects:v77 count:16];
    if (v13)
    {
      v14 = v13;
      v1 = *v66;
      while (2)
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v66 != v1)
          {
            objc_enumerationMutation(v12);
          }

          v2 = *(*(&v65 + 1) + 8 * i);
          v16 = KmlLogger();
          if (sub_100377D6C(v16))
          {
            v17 = v4;
            v18 = *(v4 + 200);
            v19 = [v18 UUIDString];
            v20 = [v19 UTF8String];

            v4 = v17;
            *buf = 136315906;
            sub_10036F910();
            sub_1003A1B40();
            v74 = v20;
            v75 = 2112;
            v76 = v2;
            _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_INFO, "%s : %i : %s : Config : %@", buf, 0x26u);
          }

          v21 = [v2 enableVehicleEnteredPasscode];
          if (v21)
          {
            v21 = [*(v4 + 144) sharingPasswordRequired];
            if ((v21 & 1) == 0)
            {
              v23 = *(v4 + 72);
              if (v23)
              {
                v29 = v23;
                v24 = *(v4 + 72);
                *(v4 + 72) = v29;
              }

              else
              {
                v24 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
                v71 = NSLocalizedDescriptionKey;
                v25 = *(v1 + 1128);
                KmlErrorString();
                v26 = [sub_10039719C() stringWithUTF8String:?];
                v72 = v26;
                [NSDictionary dictionaryWithObjects:&v72 forKeys:&v71 count:1];
                objc_claimAutoreleasedReturnValue();
                v27 = [sub_1003A1B50() errorWithDomain:? code:? userInfo:?];
                v28 = *(v4 + 72);
                *(v4 + 72) = v27;
              }

              goto LABEL_22;
            }
          }
        }

        v14 = sub_100397230(v21, v22, &v65, v77);
        if (v14)
        {
          continue;
        }

        break;
      }
    }

LABEL_22:

    v30 = KmlVersions;
    if (+[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(v4 + 152) agreedKmlVehicleVersion], 768))
    {
      v30 = sub_1003DFBD4([KmlEndpointManager alloc], *(v4 + 208), *(v4 + 152));
      v63 = 0;
      v64 = 0;
      sub_1003E4818(v30, &v64, &v63);
      if (!v63)
      {
        v31 = KmlLogger();
        if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
        {
          v32 = *(v4 + 200);
          v33 = [v32 UUIDString];
          v2 = [v33 UTF8String];

          *buf = 136315650;
          sub_10036F910();
          sub_1003A1B40();
          v74 = v2;
          _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s : %i : %s : Max attestation depth reached, unable to share until an attestation is consumed", buf, 0x1Cu);
        }

        v34 = *(v4 + 72);
        if (v34)
        {
          v40 = v34;
          v35 = *(v4 + 72);
          *(v4 + 72) = v40;
        }

        else
        {
          v35 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v69 = NSLocalizedDescriptionKey;
          v36 = *(v1 + 1128);
          KmlErrorString();
          v37 = [sub_10039719C() stringWithUTF8String:?];
          v70 = v37;
          [NSDictionary dictionaryWithObjects:&v70 forKeys:&v69 count:1];
          objc_claimAutoreleasedReturnValue();
          v38 = [sub_1003A1B50() errorWithDomain:? code:? userInfo:?];
          v39 = *(v4 + 72);
          *(v4 + 72) = v38;
        }
      }
    }

    v41 = *(v4 + 72);
    v42 = KmlLogger();
    v43 = sub_100057AEC(v42);
    if (v41)
    {
      if (v43)
      {
        v54 = *(v4 + 200);
        v55 = [v54 UUIDString];
        v56 = [v55 UTF8String];
        v57 = *(v4 + 72);

        *buf = 136315906;
        sub_10036F910();
        sub_1003A1B40();
        v74 = v56;
        v75 = 2112;
        v76 = v57;
        sub_100367358();
        _os_log_impl(v58, v59, v60, v61, v62, 0x26u);
      }

      v53 = 7;
    }

    else
    {
      if (v43)
      {
        v44 = *(v4 + 200);
        v45 = [v44 UUIDString];
        v46 = [v45 UTF8String];

        *buf = 136315650;
        sub_10036F910();
        sub_1003A1B40();
        v74 = v46;
        sub_100393994();
        _os_log_impl(v47, v48, v49, v50, v51, v52);
      }

      v53 = 5;
    }

    return sub_1003EB1C4(v4, v53);
  }

  return location;
}

void sub_1003EE84C(uint64_t a1)
{
  if (a1)
  {
    sub_100396EB4();
    v4 = *(v3 + 232);
    sub_1003A1CC4();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v14 = v6;
      v15 = *v39;
      while (2)
      {
        v16 = 0;
        do
        {
          sub_100396FA0(v6, v7, v8, v9, v10, v11, v12, v13, v37, v38, v39);
          if (v17 != v15)
          {
            objc_enumerationMutation(v1);
          }

          v18 = *(v38 + 8 * v16);
          v19 = sub_1003B194C(v18);
          if (v19)
          {
            v30 = v19;
            v31 = KmlLogger();
            if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
            {
              v32 = *(a1 + 200);
              v33 = [v32 UUIDString];
              v34 = [v33 UTF8String];

              *buf = 136315906;
              v41 = "[KmlOwnerSharingManager createAndReportInvitations]";
              v42 = 1024;
              v43 = 1542;
              v44 = 2080;
              v45 = v34;
              v46 = 2112;
              v47 = v30;
              _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_ERROR, "%s : %i : %s : Failed to create invitation : %@", buf, 0x26u);
            }

            v35 = *(a1 + 72);
            *(a1 + 72) = v30;
            v36 = v30;

            sub_1003EB1C4(a1, 7);
            return;
          }

          if (*(a1 + 216))
          {
            v20 = [DAKeySharingInvitationData alloc];
            v21 = *(a1 + 200);
            v22 = sub_1003B18DC(v18);
            v23 = [v20 initWithSessionUUID:v21 invitationIdentifier:v22 friendKeyIdentifier:0 sharingTarget:sub_1003667FC(v18) state:1 vehicleEnteredPasscode:*(a1 + 64)];

            [*(a1 + 112) addObject:v23];
          }

          else
          {
            v24 = [DACarKeyGenericCrossPlatformSharingData alloc];
            v25 = sub_1003B18DC(v18);
            v26 = sub_1003B5EBC(v18);
            v23 = [v24 initWithSharingIdentifier:v25 friendKeyIdentifier:0 sharingMessageType:1 message:v26];

            v27 = [[DACarKeyAdditionalCrossPlatformSharingData alloc] initWithSharingSessionUUID:*(a1 + 200) bindingAttestation:0 targetDeviceType:sub_1003667FC(v18) initiatorIdsPseudonym:0];
            v28 = [[DACarKeyPrivateCrossPlatformSharingData alloc] initWithVehicleEnteredPasscode:*(a1 + 64) pairedEntityIdentifier:0];
            v29 = [[DACarKeySharingMessage alloc] initWithGenericCrossPlatformSharingData:v23 additionalData:v27 privateData:v28];
            [*(a1 + 120) addObject:v29];
          }

          v16 = v16 + 1;
        }

        while (v14 != v16);
        v6 = sub_100397230(v6, v7, &v37, v48);
        v14 = v6;
        if (v6)
        {
          continue;
        }

        break;
      }
    }

    sub_1003EB1C4(a1, 8);
  }
}

void sub_1003EEB80(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 216))
    {
      v2 = sub_10037E00C();
      v3 = sub_10037E34C(v2, *(a1 + 216));

      if (v3)
      {
        v4 = 1;
      }

      else
      {
        v4 = 2;
      }
    }

    else
    {
      v4 = 2;
    }

    v5 = [*(a1 + 16) readerInfo];
    v39 = v5;
    v6 = [[KmlRoutingInformation alloc] initWithReaderInformation:v5];
    v7 = [*(a1 + 144) readerSupportsNfc];
    if ([*(a1 + 144) readerSupportsUwb])
    {
      v8 = 2;
    }

    else
    {
      v8 = 0;
    }

    if (v6)
    {
      v9 = [v6 manufacturer];
      v10 = [v9 copy];

      v11 = [v6 brand];
      v12 = [v11 copy];

      v13 = [v6 regionString];
      v14 = [v13 copy];
    }

    else
    {
      v15 = KmlLogger();
      if (sub_10036F978(v15))
      {
        *buf = 136315394;
        v43 = "[KmlOwnerSharingManager postStatistics]";
        v44 = 1024;
        v45 = 1770;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : No routing info available", buf, 0x12u);
      }

      v14 = @"Unknown";
      v12 = @"Unknown";
      v10 = @"Unknown";
    }

    v38 = v6;
    if (!*(a1 + 168))
    {
      v16 = 1;
      if (*(a1 + 224))
      {
        v16 = 2;
      }

      *(a1 + 168) = v16;
    }

    v34 = +[KmlVersions doesVersion:support:](KmlVersions, "doesVersion:support:", [*(a1 + 152) agreedKmlVehicleVersion], 768);
    v17 = [*(a1 + 16) configuration];
    [v17 opt2];
    v36 = kmlUtilKeyClassOriginBitmap();

    v18 = [*(a1 + 152) ourSupportedFrameworkVersionsAsCAString];
    v40[0] = @"destination";
    v37 = [NSNumber numberWithUnsignedInt:v4];
    v41[0] = v37;
    v41[1] = &off_1004DD050;
    v40[1] = @"type";
    v40[2] = @"targetDeviceType";
    v41[2] = &off_1004DD068;
    v41[3] = &off_1004DD080;
    v40[3] = @"step";
    v40[4] = @"dataCenterCode";
    v41[4] = v14;
    v41[5] = v10;
    v40[5] = @"manufacturer";
    v40[6] = @"brand";
    v41[6] = v12;
    v40[7] = @"transportSupported";
    v35 = [NSNumber numberWithUnsignedInteger:v8 | v7];
    v41[7] = v35;
    v40[8] = @"totalSharedKeysForOwnerKey";
    v33 = [NSNumber numberWithInteger:*(a1 + 192)];
    v41[8] = v33;
    v40[9] = @"status";
    v19 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [*(a1 + 72) code]);
    v41[9] = v19;
    v41[10] = &off_1004DD098;
    v40[10] = @"inviteCancelReason";
    v40[11] = @"activationOption";
    v41[11] = &off_1004DD098;
    v40[12] = @"sharingTransport";
    [NSNumber numberWithInteger:*(a1 + 168)];
    v20 = v32 = v14;
    v41[12] = v20;
    v41[13] = &off_1004DD0B0;
    v40[13] = @"pinAttempts";
    v40[14] = @"appleToApple";
    v21 = [NSNumber numberWithInt:*(a1 + 216) != 0];
    v22 = v21;
    v23 = &stru_1004D9380;
    v31 = v18;
    if (v18)
    {
      v23 = v18;
    }

    v41[14] = v21;
    v41[15] = v23;
    v40[15] = @"senderSupportedFrameworkVersions";
    v40[16] = @"receiverSupportedFrameworkVersions";
    v24 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%04X", [*(a1 + 152) agreedKmlSharingVersion]);
    v41[16] = v24;
    v41[17] = &off_1004DD0B0;
    v40[17] = @"attestationChainLength";
    v40[18] = @"certificateChainLength";
    v41[18] = &off_1004DD0B0;
    v41[19] = &off_1004DD0B0;
    v40[19] = @"accountRole";
    v40[20] = @"isIntraAccountShare";
    v41[20] = &off_1004DD0B0;
    v41[21] = &off_1004DD0C8;
    v40[21] = @"wasUserAuthRequired";
    v40[22] = @"mailboxVersion";
    if (v34)
    {
      v25 = 128;
    }

    else
    {
      v25 = 0;
    }

    [NSNumber numberWithUnsignedChar:v25];
    v27 = v26 = v10;
    v41[22] = v27;
    v40[23] = @"frameworkVersion";
    v28 = +[NSNumber numberWithUnsignedShort:](NSNumber, "numberWithUnsignedShort:", [*(a1 + 152) agreedKmlSharingVersion]);
    v41[23] = v28;
    v41[24] = &off_1004DD0B0;
    v40[24] = @"accessProfile";
    v40[25] = @"keyClassOriginBitmap";
    v29 = [NSNumber numberWithUnsignedChar:v36];
    v41[25] = v29;
    v30 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:26];

    sub_100368DC8(KmlAnalyticsLogger, v30);
  }
}

id *sub_1003EF108(id *result)
{
  if (result)
  {
    v2 = result;
    sub_100396EB4();
    v4 = *(v3 + 232);
    sub_1003A1CC4();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v14 = v6;
      v15 = *v20;
      do
      {
        v16 = 0;
        do
        {
          sub_100396FA0(v6, v7, v8, v9, v10, v11, v12, v13, v18, v19, v20);
          if (v17 != v15)
          {
            objc_enumerationMutation(v1);
          }

          sub_1003B2160(*(v19 + 8 * v16));
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v6 = sub_100397230(v6, v7, &v18, v21);
        v14 = v6;
      }

      while (v6);
    }

    return [v2[29] removeAllObjects];
  }

  return result;
}

void sub_1003EF1EC()
{
  sub_1003722EC();
  if (v0)
  {
    v1 = v0;
    if (*(v0 + 40))
    {
      v2 = SESEndPointDeleteAuthorizationID();
      v3 = +[KmlCachedAuthorizationManager sharedManager];
      [v3 markCacheDirty];

      if (v2)
      {
        v4 = KmlLogger();
        if (sub_100057AEC(v4))
        {
          v5 = *(v1 + 200);
          v6 = [v5 UUIDString];
          [v6 UTF8String];
          v7 = [v2 description];
          sub_1003672C0();
          sub_1003A1A30();
          sub_1003A1B1C();
          sub_100057A9C();
          _os_log_impl(v8, v9, v10, v11, v12, 0x26u);

LABEL_8:
        }
      }

      else
      {
        v13 = *(v1 + 40);
        *(v1 + 40) = 0;

        v14 = KmlLogger();
        if (sub_100057AEC(v14))
        {
          v15 = *(v1 + 200);
          v6 = [v15 UUIDString];
          [v6 UTF8String];

          sub_1003672C0();
          sub_1003A1A30();
          sub_100057A9C();
          _os_log_impl(v16, v17, v18, v19, v20, 0x1Cu);
          goto LABEL_8;
        }
      }
    }
  }

  sub_1003722A4();
}

void sub_1003EF3A0(uint64_t a1)
{
  if (a1)
  {
    sub_100396EB4();
    v4 = *(v3 + 232);
    sub_1003A1CC4();
    v6 = [v5 countByEnumeratingWithState:? objects:? count:?];
    if (v6)
    {
      v14 = v6;
      v15 = *v21;
      do
      {
        v16 = 0;
        do
        {
          sub_100396FA0(v6, v7, v8, v9, v10, v11, v12, v13, v19, v20, v21);
          if (v17 != v15)
          {
            objc_enumerationMutation(v1);
          }

          v18 = *(v20 + 8 * v16);
          sub_1003B1EC0(v18, *(a1 + 136));
          sub_1003B1C9C(v18);
          v16 = v16 + 1;
        }

        while (v14 != v16);
        v6 = sub_100397230(v6, v7, &v19, v22);
        v14 = v6;
      }

      while (v6);
    }
  }
}

void sub_1003EF494(uint64_t a1)
{
  if (a1)
  {
    v3 = KmlLogger();
    if (sub_100057AEC(v3))
    {
      v4 = *(a1 + 200);
      v5 = [v4 UUIDString];
      v6 = [v5 UTF8String];

      v29 = 136315650;
      v30 = "[KmlOwnerSharingManager cancelAllSessions_sync]";
      sub_1003674B0();
      v31 = 1600;
      sub_100367520();
      v32 = v6;
      sub_1003A1AB8();
      _os_log_impl(v7, v8, v9, v10, v11, 0x1Cu);
    }

    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    obj = *(a1 + 232);
    v12 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(obj);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v26 = NSLocalizedDescriptionKey;
          v18 = [NSString stringWithUTF8String:KmlErrorString()];
          v27 = v18;
          v19 = [NSDictionary dictionaryWithObjects:&v27 forKeys:&v26 count:1];
          v20 = [NSError errorWithDomain:v17 code:123 userInfo:v19];
          sub_1003B1CAC(v16, v20);
        }

        v13 = [obj countByEnumeratingWithState:&v22 objects:v28 count:16];
      }

      while (v13);
    }
  }
}

void sub_1003EF6D4(uint64_t a1)
{
  if (a1)
  {
    v3 = KmlLogger();
    if (sub_100057AEC(v3))
    {
      v4 = *(a1 + 200);
      v5 = [v4 UUIDString];
      [v5 UTF8String];
      v6 = *(a1 + 200);

      sub_10036DC30();
      sub_100390948();
      sub_100367358();
      _os_log_impl(v7, v8, v9, v10, v11, 0x26u);
    }

    v12 = [NSMutableData dataWithLength:32];
    v13 = sub_10037E00C();
    v14 = [*(a1 + 200) UUIDString];
    sub_1003CD23C(v13, v12, 0, 0, v14, 0, *(a1 + 200), *(a1 + 216), *(a1 + 96), 9);
  }
}

NSString *const **sub_1003EF848(uint64_t a1)
{
  if (a1)
  {
    v6 = (a1 + 16);
    v5 = *(a1 + 16);
    *(a1 + 16) = 0;

    v109 = 0;
    v7 = SESEndPointListWithSession();
    v8 = 0;
    if (v8)
    {
      v2 = v8;
      v9 = KmlLogger();
      if (sub_10036DCF8(v9))
      {
        v10 = *(a1 + 200);
        v11 = [v10 UUIDString];
        [v11 UTF8String];

        *buf = 136315906;
        v118 = "[KmlOwnerSharingManager refreshOwnerEndpoint]";
        sub_1003674B0();
        sub_1003A1AC8(1149);
        *(v12 + 30) = v2;
        sub_1003A1AF0();
        _os_log_impl(v13, v14, v15, v16, v17, v18);
      }

      v19 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v20 = [v2 userInfo];
      v21 = v19;
    }

    else
    {
      if ([v7 count])
      {
        v107 = 0u;
        v108 = 0u;
        v105 = 0u;
        v106 = 0u;
        obj = v7;
        v22 = [obj countByEnumeratingWithState:&v105 objects:v114 count:16];
        if (v22)
        {
          v101 = v7;
          location = v6;
          v2 = *v106;
          while (2)
          {
            for (i = 0; i != v22; i = (i + 1))
            {
              if (*v106 != v2)
              {
                objc_enumerationMutation(obj);
              }

              v24 = *(*(&v105 + 1) + 8 * i);
              v25 = [v24 publicKeyIdentifier];
              v26 = KmlLogger();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                v27 = *(a1 + 200);
                v3 = [v27 UUIDString];
                v28 = [v3 UTF8String];

                sub_1003A1BC8(v29, v30, v31, v32, v33, v34, v35, v36, v101, location, v37);
                v118 = "[KmlOwnerSharingManager refreshOwnerEndpoint]";
                v119 = 1024;
                v120 = 1160;
                v121 = 2080;
                v122 = v28;
                v123 = 2112;
                v124 = v25;
                _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_INFO, "%s : %i : %s : checking key with id: %@", buf, 0x26u);
              }

              if ([v25 isEqual:*(a1 + 24)])
              {
                v38 = [v24 revocationAttestation];

                if (v38)
                {
                  i = &NSInferMappingModelAutomaticallyOption_ptr;
                  v3 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
                  v112 = NSLocalizedDescriptionKey;
                  KmlErrorString();
                  v39 = [sub_10039719C() stringWithUTF8String:?];
                  v113 = v39;
                  v40 = [NSDictionary dictionaryWithObjects:&v113 forKeys:&v112 count:1];
                  v22 = [NSError errorWithDomain:v3 code:211 userInfo:v40];

                  v7 = v101;
                  v6 = location;
                }

                else
                {
                  v6 = location;
                  objc_storeStrong(location, v24);
                  v53 = KmlLogger();
                  if (sub_100377D6C(v53))
                  {
                    v54 = *(a1 + 200);
                    v55 = [v54 UUIDString];
                    v56 = [v55 UTF8String];
                    i = *(a1 + 208);

                    sub_1003A1BC8(v57, v58, v59, v60, v61, v62, v63, v64, v101, location, v65);
                    v118 = "[KmlOwnerSharingManager refreshOwnerEndpoint]";
                    sub_1003674B0();
                    *(v66 + 14) = 1167;
                    sub_100367520();
                    *(v67 + 20) = v56;
                    sub_1003A1B34();
                    *(v68 + 30) = i;
                    v6 = locationa;
                    sub_1003A1AF0();
                    _os_log_impl(v69, v70, v71, v72, v73, v74);
                  }

                  v22 = 0;
                  v7 = v101;
                }

                goto LABEL_33;
              }
            }

            v22 = [obj countByEnumeratingWithState:&v105 objects:v114 count:16];
            if (v22)
            {
              continue;
            }

            break;
          }

          v7 = v101;
          v6 = location;
        }

LABEL_33:

        if (!*v6)
        {
          v87 = KmlLogger();
          if (sub_10036DCF8(v87))
          {
            v88 = *(a1 + 200);
            v89 = [v88 UUIDString];
            [v89 UTF8String];
            v90 = *(a1 + 208);

            *buf = 136315906;
            v118 = "[KmlOwnerSharingManager refreshOwnerEndpoint]";
            sub_1003674B0();
            sub_1003A1AC8(1173);
            *(v91 + 30) = v90;
            sub_1003A1AF0();
            _os_log_impl(v92, v93, v94, v95, v96, v97);
          }

          v2 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v110 = NSLocalizedDescriptionKey;
          v98 = [NSString stringWithUTF8String:KmlErrorString()];
          v111 = v98;
          v99 = [NSDictionary dictionaryWithObjects:&v111 forKeys:&v110 count:1];
          v100 = [NSError errorWithDomain:v2 code:210 userInfo:v99];

          v22 = v100;
          goto LABEL_8;
        }

        v75 = [[KmlVersions alloc] initWithEndpoint:*(a1 + 16)];
        v76 = *(a1 + 152);
        *(a1 + 152) = v75;

        v77 = KmlLogger();
        if (!sub_10036F124(v77))
        {
LABEL_8:

          goto LABEL_9;
        }

        v78 = *(a1 + 200);
        v19 = [v78 UUIDString];
        [v19 UTF8String];
        v79 = *(a1 + 152);

        *buf = 136315906;
        v118 = "[KmlOwnerSharingManager refreshOwnerEndpoint]";
        sub_1003674B0();
        sub_1003A1AC8(1177);
        *(v80 + 30) = v79;
        sub_1003A1AF0();
        _os_log_impl(v81, v82, v83, v84, v85, v86);
LABEL_7:

        goto LABEL_8;
      }

      v41 = KmlLogger();
      if (sub_10036DCF8(v41))
      {
        v42 = *(a1 + 200);
        v43 = [v42 UUIDString];
        v44 = [v43 UTF8String];

        *buf = 136315650;
        v118 = "[KmlOwnerSharingManager refreshOwnerEndpoint]";
        sub_1003674B0();
        *(v45 + 14) = 1154;
        sub_100367520();
        *(v46 + 20) = v44;
        sub_100393994();
        _os_log_impl(v47, v48, v49, v50, v51, v52);
      }

      v2 = [sub_100377D0C() stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v115 = NSLocalizedDescriptionKey;
      v19 = [v6[141] stringWithUTF8String:KmlErrorString()];
      v116 = v19;
      v20 = [NSDictionary dictionaryWithObjects:&v116 forKeys:&v115 count:1];
      v21 = v2;
    }

    v22 = [NSError errorWithDomain:v21 code:210 userInfo:v20];

    goto LABEL_7;
  }

  v22 = 0;
LABEL_9:

  return v22;
}

id sub_1003EFFE8(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 176) == 1)
    {
      v3 = KmlLogger();
      if (sub_10036F978(v3))
      {
        v4 = *(a1 + 200);
        v5 = [v4 UUIDString];
        [v5 UTF8String];

        sub_10036DC30();
        sub_100390948();
        sub_100393994();
        _os_log_impl(v6, v7, v8, v9, v10, v11);
      }

      v12 = 0;
    }

    else
    {
      *(a1 + 88) = 0;
      v1 = sub_1003DF2B8([KmlBindingAttestation alloc], *(a1 + 48));
      v13 = [*(a1 + 16) anonymizedDsid];
      if ([v13 length])
      {
        v14 = sub_1003BA3D0(v1);
        v15 = [v14 length];

        if (v15)
        {
          v16 = sub_1003BA3D0(v1);
          v17 = [v13 isEqualToData:v16];

          if (v17)
          {
            v18 = KmlLogger();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              v19 = *(a1 + 200);
              v20 = [v19 UUIDString];
              [v20 UTF8String];

              sub_10036DC30();
              sub_100390948();
              sub_100393994();
              _os_log_impl(v21, v22, v23, v24, v25, v26);
            }

            *(a1 + 88) = 1;
          }
        }
      }

      v27 = *(a1 + 208);
      v28 = *(a1 + 32);
      v29 = SESEndPointCreateAuthorizationID();
      v12 = 0;
      v30 = +[KmlCachedAuthorizationManager sharedManager];
      [v30 markCacheDirty];

      if (!v12)
      {
        if (v29)
        {
          v31 = [v29 authorizationID];
          v32 = *(a1 + 40);
          *(a1 + 40) = v31;

          v33 = sub_100388B10();
          v34 = [v29 authorizationInterval];
          [v34 doubleValue];
          sub_1003CE5F8(v33);
          v12 = 0;
        }

        else
        {
          v33 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
          v55[0] = NSLocalizedDescriptionKey;
          v34 = [NSString stringWithUTF8String:KmlErrorString()];
          v55[1] = NSLocalizedFailureReasonErrorKey;
          v56[0] = v34;
          v56[1] = @"Failed to get authorization from externalized auth";
          v35 = [NSDictionary dictionaryWithObjects:v56 forKeys:v55 count:2];
          v12 = [NSError errorWithDomain:v33 code:105 userInfo:v35];
        }
      }

      v36 = KmlLogger();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = *(a1 + 200);
        v38 = [v37 UUIDString];
        [v38 UTF8String];

        sub_10036DC30();
        sub_100390948();
        sub_1003A1AF0();
        _os_log_impl(v39, v40, v41, v42, v43, v44);
      }

      if (*(a1 + 88) == 1)
      {
        v45 = KmlLogger();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_INFO))
        {
          v46 = *(a1 + 200);
          v47 = [v46 UUIDString];
          [v47 UTF8String];

          sub_10036DC30();
          sub_100390948();
          sub_100393994();
          _os_log_impl(v48, v49, v50, v51, v52, v53);
        }

        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

void sub_1003F07C8()
{
  sub_1003722EC();
  if (v0)
  {
    v3 = v2;
    v4 = v1;
    v5 = v0;
    v6 = sub_100388B10();
    v7 = sub_1003890A8(v6, v4, v3, *(v5 + 24));

    if (v7)
    {
      v8 = KmlLogger();
      if (sub_100057AEC(v8))
      {
        v9 = *(v5 + 200);
        v10 = [v9 UUIDString];
        [v10 UTF8String];

        sub_1003672C0();
        sub_1003A1A30();
        sub_100057A9C();
        _os_log_impl(v11, v12, v13, v14, v15, 0x1Cu);
      }
    }
  }

  sub_1003722A4();
}

void sub_1003F08E4()
{
  sub_1003722EC();
  if (v0)
  {
    v1 = v0;
    v2 = KmlLogger();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(v1 + 200);
      v4 = [v3 UUIDString];
      [v4 UTF8String];

      sub_1003672C0();
      sub_1003A1A30();
      sub_100057A9C();
      _os_log_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }

    *(v1 + 8) = 0;
    *(v1 + 176) = 1;
    sub_1003EB1C4(v1);
  }

  sub_1003722A4();
}

void sub_1003F1108(uint64_t a1)
{
  if (a1)
  {
    sub_1003C42B4(*(a1 + 64), 0);
    sub_1003A8658(64);
    sub_1003A8658(80);
    sub_1003E90C4(*(a1 + 88), 0);
    sub_1003A8658(88);
    sub_1003A8658(96);
    sub_1003A8658(104);
    v2 = *(a1 + 112);
    *(a1 + 112) = 0;
  }
}

id *sub_1003F11AC(id *a1, void *a2, void *a3, void *a4)
{
  v8 = a2;
  v9 = a3;
  v10 = a4;
  if (a1)
  {
    v13.receiver = a1;
    v13.super_class = KmlMessageToSend;
    v11 = objc_msgSendSuper2(&v13, "init");
    a1 = v11;
    if (v11)
    {
      objc_storeStrong(v11 + 1, a2);
      objc_storeStrong(a1 + 2, a3);
      objc_storeStrong(a1 + 3, a4);
    }
  }

  return a1;
}

void sub_1003F126C(uint64_t a1)
{
  if (a1)
  {
    v2 = [*(a1 + 56) path];
    v3 = [v2 usesInterfaceType:1];

    v4 = [*(a1 + 56) path];
    v5 = [v4 usesInterfaceType:2];

    v6 = KmlLogger();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      *v8 = 136315906;
      sub_1003672C0();
      *&v8[7] = 435;
      v8[9] = v7;
      v9 = v3;
      v10 = v7;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_INFO, "%s : %i : NWPath - Wifi : %d, Cellular : %d", v8, 0x1Eu);
    }

    sub_1003F2370(a1, (v3 | v5) & 1);
  }
}

void sub_1003F138C(uint64_t a1, void *a2, char a3)
{
  v5 = a2;
  if (a1)
  {
    v6 = *(a1 + 16);
    sub_100057A60();
    v8 = 3221225472;
    v9 = sub_1003A8B08;
    v10 = &unk_1004D2418;
    v13 = a3;
    v11 = a1;
    v12 = v5;
    dispatch_async(v6, block);
  }
}

uint64_t sub_1003F1424(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    if (v3)
    {
      v5 = [*(a1 + 8) devices];
      sub_1003A9918();
      v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
      if (v7)
      {
        v8 = MEMORY[0];
        while (2)
        {
          for (i = 0; i != v7; ++i)
          {
            if (MEMORY[0] != v8)
            {
              objc_enumerationMutation(v5);
            }

            v10 = [*(8 * i) uniqueIDOverride];
            v11 = [v10 isEqualToString:v4];

            if (v11)
            {
              v12 = KmlLogger();
              if (sub_10036DCF8(v12))
              {
                *buf = 136315650;
                v17 = "[KmlPeerToPeerConnection internal_isOurOwnDeviceWithId:]";
                v18 = 1024;
                v19 = 361;
                v20 = 2112;
                v21 = v4;
                sub_1003A98FC(&_mh_execute_header, v13, v14, "%s : %i : ID %@ is of our own device", buf);
              }

              v7 = 1;
              goto LABEL_18;
            }
          }

          sub_1003A9918();
          v7 = [NSObject countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
          if (v7)
          {
            continue;
          }

          break;
        }
      }
    }

    else
    {
      v5 = KmlLogger();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        *buf = 136315394;
        v17 = "[KmlPeerToPeerConnection internal_isOurOwnDeviceWithId:]";
        v18 = 1024;
        v19 = 355;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "%s : %i : RemoteId should be non-nil to check this", buf, 0x12u);
      }

      v7 = 0;
    }

LABEL_18:
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1003F1628(id *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (a1)
  {
    v10 = KmlLogger();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      *buf = 136315650;
      sub_100367444();
      sub_1003A98EC();
      v51 = v9;
      sub_100367454(&_mh_execute_header, v10, v11, "%s : %i : Remote Id: %@", buf);
    }

    if (v9)
    {
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v42 = a1;
      v12 = [a1[1] devices];
      v13 = [v12 countByEnumeratingWithState:&v46 objects:v56 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v47;
LABEL_7:
        v16 = v8;
        v17 = 0;
        while (1)
        {
          if (*v47 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v46 + 1) + 8 * v17);
          v19 = [v18 uniqueIDOverride];
          v20 = [v19 isEqualToString:v9];

          if (v20)
          {
            break;
          }

          if (v14 == ++v17)
          {
            v14 = [v12 countByEnumeratingWithState:&v46 objects:v56 count:16];
            v8 = v16;
            if (v14)
            {
              goto LABEL_7;
            }

            goto LABEL_13;
          }
        }

        v21 = KmlLogger();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 136315650;
          sub_100367444();
          sub_1003A98EC();
          v51 = v9;
          sub_100367454(&_mh_execute_header, v21, v22, "%s : %i : Found our own device with ID %@", buf);
        }

        v23 = v18;
        v8 = v16;
        a1 = v42;
        if (!v23)
        {
          goto LABEL_19;
        }

        v24 = IDSCopyIDForDevice();
        if (!v24)
        {
          goto LABEL_31;
        }

LABEL_24:
        v26 = [NSSet setWithObject:v24];
        v27 = +[NSMutableDictionary dictionary];
        [v27 setObject:&off_1004DD0E0 forKeyedSubscript:IDSSendMessageOptionTimeoutKey];
        v28 = [a1[5] objectForKeyedSubscript:v9];
        if (v28)
        {
          [v27 setObject:v28 forKeyedSubscript:IDSSendMessageOptionFromIDKey];
        }

        v29 = a1[1];
        v44 = 0;
        v45 = 0;
        v43 = [v29 sendMessage:v7 toDestinations:v26 priority:300 options:v27 identifier:&v45 error:&v44];
        v41 = v27;
        v30 = v45;
        v31 = v28;
        v32 = v44;
        sub_1003F2154(a1, v9);

        if (v43)
        {
          v33 = KmlLogger();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
          {
            *buf = 136315906;
            sub_100367444();
            sub_1003A98EC();
            v51 = v8;
            v52 = v34;
            v53 = v30;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "%s : %i : P2PConnection: Requested to send message(%@) - uuid %@", buf, 0x26u);
          }

          [a1[4] setObject:v8 forKeyedSubscript:v30];
LABEL_35:

          goto LABEL_36;
        }

LABEL_32:
        v38 = KmlLogger();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315906;
          sub_100367444();
          sub_1003A98EC();
          v51 = v30;
          v52 = v39;
          v53 = v32;
          _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_ERROR, "%s : %i : P2PConnection: Failed to send with uuid %@ error %@", buf, 0x26u);
        }

        WeakRetained = objc_loadWeakRetained(a1 + 3);
        [WeakRetained handleSendMessageResult:v32 forMessageIdentifier:v8];

        goto LABEL_35;
      }

LABEL_13:

      a1 = v42;
    }

LABEL_19:
    if ([v9 _appearsToBeEmail])
    {
      v25 = IDSCopyIDForEmailAddress();
    }

    else
    {
      if (![v9 _appearsToBePhoneNumber])
      {
        v23 = 0;
        goto LABEL_31;
      }

      v25 = IDSCopyIDForPhoneNumber();
    }

    v24 = v25;
    v23 = 0;
    if (v25)
    {
      goto LABEL_24;
    }

LABEL_31:
    v35 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
    v54[0] = NSLocalizedDescriptionKey;
    v36 = [NSString stringWithUTF8String:KmlErrorString()];
    v54[1] = NSLocalizedFailureReasonErrorKey;
    v55[0] = v36;
    v55[1] = @"Failed to get a destination from rawAddress";
    v37 = [NSDictionary dictionaryWithObjects:v55 forKeys:v54 count:2];
    v32 = [NSError errorWithDomain:v35 code:106 userInfo:v37];

    v30 = 0;
    v24 = 0;
    goto LABEL_32;
  }

LABEL_36:
}

void sub_1003F1B6C(id *a1)
{
  if (a1 && [a1[9] count])
  {
    v3 = [a1[9] firstObject];
    [a1[9] removeFirstObject];
    v4 = KmlLogger();
    if (sub_10036DCF8(v4))
    {
      if (v3)
      {
        v5 = *(v3 + 16);
        v6 = *(v3 + 24);
        v7 = v5;
      }

      else
      {
        v7 = 0;
      }

      sub_10037BCBC();
      _os_log_impl(v8, v9, v10, v11, v12, 0x26u);
    }

    if (v3)
    {
      v13 = *(v3 + 8);
      v14 = *(v3 + 16);
      v15 = *(v3 + 24);
    }

    else
    {
      v14 = 0;
      v13 = 0;
      v15 = 0;
    }

    sub_1003F1628(a1, v13, v14, v15);
  }
}

void sub_1003F1CD4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1003A8CA0;
    block[3] = &unk_1004C08D8;
    block[4] = a1;
    dispatch_async(v1, block);
  }
}

id sub_1003F1D50(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 80))
    {
      v2 = KmlLogger();
      if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
      {
        v3 = *(a1 + 80);
        *buf = 136315650;
        v32 = "[KmlPeerToPeerConnection internal_getActiveAccount]";
        v33 = 1024;
        sub_1003A9924(v3);
        sub_100367454(&_mh_execute_header, v2, v4, "%s : %i : We already active IDS account with login:%@", buf);
      }

LABEL_19:
      v8 = 0;
    }

    else
    {
      v5 = [NSString stringWithUTF8String:"com.apple.sesd.kml.sharing"];
      v29 = NSLocalizedDescriptionKey;
      v6 = [NSString stringWithUTF8String:KmlErrorString()];
      v30 = v6;
      v7 = [NSDictionary dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v8 = [NSError errorWithDomain:v5 code:107 userInfo:v7];

      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v2 = [*(a1 + 8) accounts];
      v9 = [v2 countByEnumeratingWithState:&v24 objects:v28 count:16];
      if (v9)
      {
        v10 = v9;
        v23 = v8;
        v11 = *v25;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v25 != v11)
            {
              objc_enumerationMutation(v2);
            }

            v13 = *(*(&v24 + 1) + 8 * i);
            v14 = KmlLogger();
            if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
            {
              v15 = [v13 loginID];
              *buf = 136315650;
              v32 = "[KmlPeerToPeerConnection internal_getActiveAccount]";
              v33 = 1024;
              v34 = 394;
              v35 = 2112;
              v36 = v15;
              _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "%s : %i : P2PConnection: Checking IDS account with login:%@", buf, 0x1Cu);
            }

            if ([v13 canSend])
            {

              v16 = [v13 loginID];
              v17 = *(a1 + 80);
              *(a1 + 80) = v16;

              v18 = KmlLogger();
              if (sub_10036DCF8(v18))
              {
                v19 = *(a1 + 80);
                *buf = 136315650;
                v32 = "[KmlPeerToPeerConnection internal_getActiveAccount]";
                v33 = 1024;
                sub_1003A9924(v19);
                sub_1003A98FC(&_mh_execute_header, v20, v21, "%s : %i : P2PConnection: Found active IDS account with login:%@", buf);
              }

              goto LABEL_19;
            }
          }

          v10 = [v2 countByEnumeratingWithState:&v24 objects:v28 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }

        v8 = v23;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1003F20AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (a1)
  {
    v5 = *(a1 + 16);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1003A8D90;
    v6[3] = &unk_1004C22F0;
    v6[4] = a1;
    v7 = v3;
    dispatch_async(v5, v6);
  }
}

void sub_1003F2154(uint64_t a1, void *a2)
{
  v4 = a2;
  if (a1)
  {
    [*(a1 + 48) removeObject:v4];
    if (![*(a1 + 48) countForObject:v4])
    {
      v5 = KmlLogger();
      if (sub_10036DCF8(v5))
      {
        sub_1003672C0();
        sub_1003939E8();
        sub_10037BCBC();
        _os_log_impl(v6, v7, v8, v9, v10, 0x1Cu);
      }

      [*(a1 + 40) removeObjectForKey:v4];
    }
  }
}

dispatch_queue_t *sub_1003F223C(dispatch_queue_t *a1)
{
  if (a1)
  {
    v2 = a1;
    dispatch_assert_queue_not_V2(a1[2]);
    v3 = v2[2];
    sub_100057A60();
    v7 = 3221225472;
    v8 = sub_1003A9AF4;
    v9 = &unk_1004C08D8;
    v10 = v2;
    dispatch_sync(v4, block);
    a1 = v2[10];
    v1 = vars8;
  }

  return a1;
}

void sub_1003F22C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (a1)
  {
    v7 = *(a1 + 16);
    sub_100057A60();
    v9 = 3221225472;
    v10 = sub_1003A8EA8;
    v11 = &unk_1004C24A8;
    v12 = v6;
    v13 = a1;
    v14 = v5;
    dispatch_async(v7, block);
  }
}

void sub_1003F2370(uint64_t a1, int a2)
{
  if (a1)
  {
    v5 = KmlLogger();
    if (sub_10036DCF8(v5))
    {
      v11 = *(a1 + 64);
      sub_10037BCBC();
      _os_log_impl(v6, v7, v8, v9, v10, 0x1Eu);
    }

    if (*(a1 + 64) != a2)
    {
      *(a1 + 64) = a2;
      if (a2)
      {
        sub_1003F2460(a1);
      }
    }
  }
}

void sub_1003F2460(id *a1)
{
  if (a1)
  {
    v3 = [a1[9] count];
    v4 = KmlLogger();
    if (sub_10036DCF8(v4))
    {
      sub_1003672C0();
      sub_10037BCBC();
      _os_log_impl(v5, v6, v7, v8, v9, 0x1Cu);
    }

    for (; v3; --v3)
    {
      sub_1003F1B6C(a1);
    }
  }
}

Swift::String_optional __swiftcall URLRequest.value(forHTTPHeaderField:)(Swift::String forHTTPHeaderField)
{
  v1 = URLRequest.value(forHTTPHeaderField:)(forHTTPHeaderField._countAndFlagsBits, forHTTPHeaderField._object);
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t static PredicateExpressions.build_Arg<A>(_:)()
{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

{
  return static PredicateExpressions.build_Arg<A>(_:)();
}

uint64_t Data._Representation.subscript.getter()
{
  return Data._Representation.subscript.getter();
}

{
  return Data._Representation.subscript.getter();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = Data.base64EncodedString(options:)(options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t + infix(_:_:)()
{
  return + infix(_:_:)();
}

{
  return + infix(_:_:)();
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = String.lowercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = String.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = String.Iterator.next()();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = String.init(repeating:count:)(repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return String.subscript.getter();
}

{
  return String.subscript.getter();
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = Substring.uppercased()();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

{
  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

{
  return KeyedDecodingContainer.decode(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

{
  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

uint64_t encodeSequenceSpec()
{
  return encodeSequenceSpec();
}

{
  return encodeSequenceSpec();
}

uint64_t DERParseSequenceSpec()
{
  return DERParseSequenceSpec();
}

{
  return DERParseSequenceSpec();
}

{
  return DERParseSequenceSpec();
}

uint64_t DERParseSequenceSpecContent()
{
  return DERParseSequenceSpecContent();
}

{
  return DERParseSequenceSpecContent();
}

uint64_t sub_1003F6F5C(double a1)
{
  if (!atomic_load(&dword_10050CBC8))
  {
    sub_1003F7060(a1);
  }

  return isInternalBuild();
}

double sub_1003F6F88(double result)
{
  if (!atomic_load(&dword_10050CBCC))
  {
    return sub_1003F7104(result);
  }

  return result;
}

double sub_1003F6FAC(double result)
{
  if (!atomic_load(&dword_10050CBC8))
  {
    return sub_1003F7060(result);
  }

  return result;
}

double sub_1003F6FD0(double result)
{
  if (!atomic_load(&dword_10050CBC8))
  {
    return sub_1003F7060(result);
  }

  return result;
}

double sub_1003F6FF4(double result)
{
  if (!atomic_load(&dword_10050CBC8))
  {
    return sub_1003F7060(result);
  }

  return result;
}

double sub_1003F7018(double result)
{
  if (!atomic_load(dword_10050CBD0))
  {
    return sub_1003F71A8(result);
  }

  return result;
}

double sub_1003F703C(double result)
{
  if (!atomic_load(dword_10050CBD0))
  {
    return sub_1003F71A8(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1003F7060(double a1)
{
  dlopen("/System/Library/Frameworks/HomeKit.framework/HomeKit", 0);
  atomic_store(1u, &dword_10050CBC8);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1003F7104(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/CarKit.framework/CarKit", 0);
  atomic_store(1u, &dword_10050CBCC);
  return a1;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_1003F71A8(double a1)
{
  dlopen("/System/Library/PrivateFrameworks/NanoPassKit.framework/NanoPassKit", 0);
  atomic_store(1u, dword_10050CBD0);
  return a1;
}