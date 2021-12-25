# Copyright 2017-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Auto-Generated by cargo-ebuild 0.3.1

EAPI=7

if [[ ${PV} == *9999 ]] ; then
    SCM="git-r3"
    EGIT_REPO_URI="https://github.com/SFTtech/${PN}.git"
fi

if [[ ${PV} == *9999 ]] ; then
    SRC_URI=""
    KEYWORDS=""
else
    SRC_URI="https://github.com/SFTtech/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
    KEYWORDS="~amd64 ~x86"
fi


CRATES="
ahash-0.7.6
aho-corasick-0.7.18
ansi_term-0.12.1
anyhow-1.0.51
async-stream-0.3.2
async-stream-impl-0.3.2
async-trait-0.1.52
atoi-0.4.0
atty-0.2.14
autocfg-1.0.1
base64-0.13.0
bitflags-1.3.2
block-buffer-0.9.0
buffering-0.3.4
bumpalo-3.8.0
byteorder-1.4.3
bytes-1.1.0
cc-1.0.72
cfg-if-1.0.0
clap-3.0.0-rc.7
clap_derive-3.0.0-rc.7
cpufeatures-0.2.1
crc-2.1.0
crc-catalog-1.1.1
crossbeam-channel-0.5.1
crossbeam-queue-0.3.2
crossbeam-utils-0.8.5
curve25519-dalek-ng-4.1.1
darling-0.9.0
darling_core-0.9.0
darling_macro-0.9.0
derive_builder-0.7.2
derive_builder_core-0.5.0
digest-0.9.0
dotenv-0.15.0
either-1.6.1
fixedbitset-0.4.0
fnv-1.0.7
form_urlencoded-1.0.1
futures-0.3.19
futures-channel-0.3.19
futures-core-0.3.19
futures-intrusive-0.4.0
futures-io-0.3.19
futures-sink-0.3.19
futures-task-0.3.19
futures-util-0.3.19
generic-array-0.14.4
getrandom-0.2.3
h2-0.3.9
hashbrown-0.11.2
hashlink-0.7.0
heck-0.3.3
hermit-abi-0.1.19
hex-0.4.3
http-0.2.5
http-body-0.4.4
httparse-1.5.1
httpdate-1.0.2
hyper-0.14.16
hyper-timeout-0.4.1
ident_case-1.0.1
idna-0.2.3
indexmap-1.7.0
instant-0.1.12
ipnet-2.3.1
itertools-0.10.3
itoa-0.4.8
js-sys-0.3.55
lazy_static-1.4.0
libc-0.2.112
libsqlite3-sys-0.22.2
lock_api-0.4.5
log-0.4.14
matches-0.1.9
memchr-2.4.1
minimal-lexical-0.2.1
mio-0.7.14
miow-0.3.7
multimap-0.8.3
neli-0.4.3
nom-7.1.0
ntapi-0.3.6
num-traits-0.2.14
num_cpus-1.13.1
once_cell-1.9.0
opaque-debug-0.3.0
os_str_bytes-6.0.0
parking_lot-0.11.2
parking_lot_core-0.8.5
percent-encoding-2.1.0
petgraph-0.6.0
pin-project-1.0.8
pin-project-internal-1.0.8
pin-project-lite-0.2.7
pin-utils-0.1.0
pkg-config-0.3.24
ppv-lite86-0.2.15
proc-macro-error-1.0.4
proc-macro-error-attr-1.0.4
proc-macro2-0.4.30
proc-macro2-1.0.34
prost-0.9.0
prost-build-0.9.0
prost-derive-0.9.0
prost-types-0.9.0
quote-0.6.13
quote-1.0.10
rand-0.8.4
rand_chacha-0.3.1
rand_core-0.6.3
rand_hc-0.3.1
redox_syscall-0.2.10
regex-1.5.4
regex-syntax-0.6.25
remove_dir_all-0.5.3
ring-0.16.20
rustls-0.19.1
scopeguard-1.1.0
sct-0.6.1
sha2-0.9.8
sharded-slab-0.1.4
slab-0.4.5
smallvec-1.7.0
socket2-0.4.2
spin-0.5.2
sqlformat-0.1.8
sqlx-0.5.9
sqlx-core-0.5.9
sqlx-macros-0.5.9
sqlx-rt-0.5.9
stringprep-0.1.2
strsim-0.10.0
strsim-0.7.0
subtle-ng-2.5.0
syn-0.15.44
syn-1.0.82
synstructure-0.12.6
tempfile-3.2.0
termcolor-1.1.2
textwrap-0.14.2
thiserror-1.0.30
thiserror-impl-1.0.30
thread_local-1.1.3
tinyvec-1.5.1
tinyvec_macros-0.1.0
tokio-1.15.0
tokio-io-timeout-1.1.1
tokio-macros-1.7.0
tokio-rustls-0.22.0
tokio-stream-0.1.8
tokio-util-0.6.9
tonic-0.6.2
tonic-build-0.6.2
tower-0.4.11
tower-layer-0.3.1
tower-service-0.3.1
tracing-0.1.29
tracing-attributes-0.1.18
tracing-core-0.1.21
tracing-error-0.2.0
tracing-futures-0.2.5
tracing-log-0.1.2
tracing-subscriber-0.3.3
tracing-unwrap-0.9.2
try-lock-0.2.3
typenum-1.14.0
unicode-bidi-0.3.7
unicode-normalization-0.1.19
unicode-segmentation-1.8.0
unicode-xid-0.1.0
unicode-xid-0.2.2
unicode_categories-0.1.1
untrusted-0.7.1
url-2.2.2
uuid-0.8.2
vcpkg-0.2.15
version_check-0.9.3
want-0.3.0
wasi-0.10.2+wasi-snapshot-preview1
wasm-bindgen-0.2.78
wasm-bindgen-backend-0.2.78
wasm-bindgen-macro-0.2.78
wasm-bindgen-macro-support-0.2.78
wasm-bindgen-shared-0.2.78
web-sys-0.3.55
webpki-0.21.4
webpki-roots-0.21.1
which-4.2.2
whoami-1.2.1
winapi-0.3.9
winapi-i686-pc-windows-gnu-0.4.0
winapi-util-0.1.5
winapi-x86_64-pc-windows-gnu-0.4.0
wireguard-uapi-2.0.1
x25519-dalek-ng-1.1.1
zeroize-1.4.3
zeroize_derive-1.2.2
"

inherit cargo ${SCM}

DESCRIPTION="Wirespider allows distributing wireguard tunnels and routes"
# Double check the homepage as the cargo_metadata crate
# does not provide this value so instead repository is used
HOMEPAGE="https://github.com/SFTtech/wirespider"
SRC_URI="${SRC_URI} $(cargo_crate_uris ${CRATES})"
RESTRICT="mirror"
# License set may be more restrictive as OR is not respected
# use cargo-license for a more accurate license picture
LICENSE="Apache-2.0 Apache-2.0-with-LLVM-exceptions BSD Boost-1.0 GPL-3 ISC MIT MPL-2.0 Unlicense ZLIB"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""

DEPEND=""
RDEPEND=""
