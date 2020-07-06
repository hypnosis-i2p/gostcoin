import "client_version.dart";

const int CLIENT_VERSION =
    1000000 * CLIENT_VERSION_MAJOR
        +   10000 * CLIENT_VERSION_MINOR
        +     100 * CLIENT_VERSION_REVISION
        +       1 * CLIENT_VERSION_BUILD;

//TODO borrow the all below from C/C++ core

const I2P_MODULE_VERSION = "0.2";

//
// network protocol versioning
//

const PROTOCOL_VERSION = 70007;

// initial proto version, to be increased after version/verack negotiation
const INIT_PROTO_VERSION = 209;

// disconnect from peers older than this proto version
const MIN_PEER_PROTO_VERSION = 70007;

// nTime field added to CAddress, starting with this version;
// if possible, avoid requesting addresses nodes older than this
const int CADDR_TIME_VERSION = 31402;

// only request blocks from nodes outside this range of versions
const int NOBLKS_VERSION_START = 32000;
const int NOBLKS_VERSION_END = 32400;

// BIP 0031, pong message, is enabled for all versions AFTER this one
const int BIP0031_VERSION = 60000;

// "mempool" command, enhanced "getdata" behavior starts with this version:
const int MEMPOOL_GD_VERSION = 60002;

