import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gostcoin_flutter/image_resources.dart';

import 'tr.dart';
import 'client_model.dart';
import 'client_version.dart';

/** For "About" dialog box */
final copyrightStr =
  tr("Copyright © 2009-$COPYRIGHT_YEAR The Bitcoin developers\r\n") +
  tr("Copyright © 2011-$COPYRIGHT_YEAR The Litecoin developers\r\n") +
  tr("Copyright © 2013-$COPYRIGHT_YEAR The Anoncoin developers\r\n") +
  tr("Copyright © 2015-$COPYRIGHT_YEAR The i2pd developers\r\n") +
  tr("Copyright © 2017-$COPYRIGHT_YEAR The Gostcoin developers");

String versionStr(ClientModel clientModel) => clientModel.formatFullVersion(); //TODO

final aboutDialogIconImage = imageResource('splash-small.png');

final aboutDialogLegaleseStr = 'This is experimental software.\r\n'+
                  'Distributed under the MIT/X11 software license, see the accompanying file COPYING or http://www.opensource.org/licenses/mit-license.php.\r\n'+
                  'This product includes software developed by the OpenSSL Project for use in the OpenSSL Toolkit (http://www.openssl.org/)'+
                  ' and cryptographic software written by Eric Young (eay@cryptsoft.com).';
