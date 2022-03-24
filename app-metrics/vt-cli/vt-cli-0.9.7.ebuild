# Distributed under the terms of the GNU General Public License v2
EAPI=8
inherit go-module
EGO_SUM=(
	"cloud.google.com/go v0.26.0"
	"cloud.google.com/go v0.34.0"
	"cloud.google.com/go v0.38.0"
	"cloud.google.com/go v0.44.1"
	"cloud.google.com/go v0.44.2"
	"cloud.google.com/go v0.45.1"
	"cloud.google.com/go v0.46.3"
	"cloud.google.com/go/bigquery v1.0.1"
	"cloud.google.com/go/datastore v1.0.0"
	"cloud.google.com/go/firestore v1.1.0"
	"cloud.google.com/go/pubsub v1.0.1"
	"cloud.google.com/go/storage v1.0.0"
	"dmitri.shuralyov.com/gpu/mtl v0.0.0-20190408044501-666a987793e9"
	"github.com/BurntSushi/toml v0.3.1"
	"github.com/BurntSushi/xgb v0.0.0-20160522181843-27f122750802"
	"github.com/OneOfOne/xxhash v1.2.2"
	"github.com/VirusTotal/vt-go v0.0.0-20210528074736-45bbe34cc8ab"
	"github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc"
	"github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf"
	"github.com/armon/circbuf v0.0.0-20150827004946-bbbad097214e"
	"github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da"
	"github.com/armon/go-radix v0.0.0-20180808171621-7fddfc383310"
	"github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973"
	"github.com/beorn7/perks v1.0.0"
	"github.com/bgentry/speakeasy v0.1.0"
	"github.com/bketelsen/crypt v0.0.3-0.20200106085610-5cbc8cc4026c"
	"github.com/briandowns/spinner v1.7.0"
	"github.com/cavaliercoder/grab v2.0.0+incompatible"
	"github.com/cespare/xxhash v1.1.0"
	"github.com/client9/misspell v0.3.4"
	"github.com/coreos/bbolt v1.3.2"
	"github.com/coreos/etcd v3.3.13+incompatible"
	"github.com/coreos/go-semver v0.3.0"
	"github.com/coreos/go-systemd v0.0.0-20190321100706-95778dfbb74e"
	"github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0"
	"github.com/davecgh/go-spew v1.1.0"
	"github.com/davecgh/go-spew v1.1.1"
	"github.com/dgrijalva/jwt-go v3.2.0+incompatible"
	"github.com/dgryski/go-sip13 v0.0.0-20181026042036-e10d5fee7954"
	"github.com/dustin/go-humanize v1.0.0"
	"github.com/fatih/color v1.7.0"
	"github.com/fsnotify/fsnotify v1.4.7"
	"github.com/ghodss/yaml v1.0.0"
	"github.com/go-gl/glfw v0.0.0-20190409004039-e6da0acd62b1"
	"github.com/go-kit/kit v0.8.0"
	"github.com/go-logfmt/logfmt v0.3.0"
	"github.com/go-logfmt/logfmt v0.4.0"
	"github.com/go-stack/stack v1.8.0"
	"github.com/gobwas/glob v0.2.3"
	"github.com/gogo/protobuf v1.1.1"
	"github.com/gogo/protobuf v1.2.1"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b"
	"github.com/golang/groupcache v0.0.0-20190129154638-5b532d6fd5ef"
	"github.com/golang/mock v1.1.1"
	"github.com/golang/mock v1.2.0"
	"github.com/golang/mock v1.3.1"
	"github.com/golang/protobuf v1.2.0"
	"github.com/golang/protobuf v1.3.1"
	"github.com/golang/protobuf v1.3.2"
	"github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c"
	"github.com/google/btree v1.0.0"
	"github.com/google/go-cmp v0.2.0"
	"github.com/google/go-cmp v0.3.0"
	"github.com/google/martian v2.1.0+incompatible"
	"github.com/google/pprof v0.0.0-20181206194817-3ea8567a2e57"
	"github.com/google/pprof v0.0.0-20190515194954-54271f7e092f"
	"github.com/google/renameio v0.1.0"
	"github.com/googleapis/gax-go/v2 v2.0.4"
	"github.com/googleapis/gax-go/v2 v2.0.5"
	"github.com/gopherjs/gopherjs v0.0.0-20181017120253-0766667cb4d1"
	"github.com/gorilla/websocket v1.4.2"
	"github.com/gosuri/uitable v0.0.3"
	"github.com/grpc-ecosystem/go-grpc-middleware v1.0.0"
	"github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0"
	"github.com/grpc-ecosystem/grpc-gateway v1.9.0"
	"github.com/hashicorp/consul/api v1.1.0"
	"github.com/hashicorp/consul/sdk v0.1.1"
	"github.com/hashicorp/errwrap v1.0.0"
	"github.com/hashicorp/go-cleanhttp v0.5.1"
	"github.com/hashicorp/go-immutable-radix v1.0.0"
	"github.com/hashicorp/go-msgpack v0.5.3"
	"github.com/hashicorp/go-multierror v1.0.0"
	"github.com/hashicorp/go-rootcerts v1.0.0"
	"github.com/hashicorp/go-sockaddr v1.0.0"
	"github.com/hashicorp/go-syslog v1.0.0"
	"github.com/hashicorp/go-uuid v1.0.0"
	"github.com/hashicorp/go-uuid v1.0.1"
	"github.com/hashicorp/go.net v0.0.1"
	"github.com/hashicorp/golang-lru v0.5.0"
	"github.com/hashicorp/golang-lru v0.5.1"
	"github.com/hashicorp/hcl v1.0.0"
	"github.com/hashicorp/logutils v1.0.0"
	"github.com/hashicorp/mdns v1.0.0"
	"github.com/hashicorp/memberlist v0.1.3"
	"github.com/hashicorp/serf v0.8.2"
	"github.com/inconshreveable/mousetrap v1.0.0"
	"github.com/jonboulle/clockwork v0.1.0"
	"github.com/json-iterator/go v1.1.6"
	"github.com/jstemmer/go-junit-report v0.0.0-20190106144839-af01ea7f8024"
	"github.com/jtolds/gls v4.20.0+incompatible"
	"github.com/julienschmidt/httprouter v1.2.0"
	"github.com/k0kubun/go-ansi v0.0.0-20180517002512-3bf9e2903213"
	"github.com/kisielk/errcheck v1.1.0"
	"github.com/kisielk/gotool v1.0.0"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1"
	"github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515"
	"github.com/kr/pretty v0.1.0"
	"github.com/kr/pty v1.1.1"
	"github.com/kr/text v0.1.0"
	"github.com/magiconair/properties v1.8.1"
	"github.com/mattn/go-colorable v0.0.9"
	"github.com/mattn/go-colorable v0.1.2"
	"github.com/mattn/go-isatty v0.0.3"
	"github.com/mattn/go-isatty v0.0.8"
	"github.com/mattn/go-isatty v0.0.10"
	"github.com/mattn/go-runewidth v0.0.5"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1"
	"github.com/miekg/dns v1.0.14"
	"github.com/mitchellh/cli v1.0.0"
	"github.com/mitchellh/go-homedir v1.0.0"
	"github.com/mitchellh/go-homedir v1.1.0"
	"github.com/mitchellh/go-testing-interface v1.0.0"
	"github.com/mitchellh/gox v0.4.0"
	"github.com/mitchellh/iochan v1.0.0"
	"github.com/mitchellh/mapstructure v0.0.0-20160808181253-ca63d7c062ee"
	"github.com/mitchellh/mapstructure v1.1.2"
	"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd"
	"github.com/modern-go/reflect2 v1.0.1"
	"github.com/mwitkow/go-conntrack v0.0.0-20161129095857-cc309e4a2223"
	"github.com/oklog/ulid v1.3.1"
	"github.com/pascaldekloe/goe v0.0.0-20180627143212-57f6aae5913c"
	"github.com/pelletier/go-toml v1.2.0"
	"github.com/pelletier/go-toml v1.6.0"
	"github.com/pkg/errors v0.8.0"
	"github.com/pkg/errors v0.8.1"
	"github.com/plusvic/go-ansi v0.0.0-20180516115420-9879244c4340"
	"github.com/pmezard/go-difflib v1.0.0"
	"github.com/posener/complete v1.1.1"
	"github.com/prometheus/client_golang v0.9.1"
	"github.com/prometheus/client_golang v0.9.3"
	"github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910"
	"github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90"
	"github.com/prometheus/common v0.0.0-20181113130724-41aa239b4cce"
	"github.com/prometheus/common v0.4.0"
	"github.com/prometheus/procfs v0.0.0-20181005140218-185b4288413d"
	"github.com/prometheus/procfs v0.0.0-20190507164030-5867b95ac084"
	"github.com/prometheus/tsdb v0.7.1"
	"github.com/rogpeppe/fastuuid v0.0.0-20150106093220-6724a57986af"
	"github.com/rogpeppe/go-internal v1.3.0"
	"github.com/russross/blackfriday/v2 v2.0.1"
	"github.com/ryanuber/columnize v0.0.0-20160712163229-9b3edd62028f"
	"github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0"
	"github.com/sirupsen/logrus v1.2.0"
	"github.com/smartystreets/assertions v0.0.0-20180927180507-b2de0cb4f26d"
	"github.com/smartystreets/goconvey v1.6.4"
	"github.com/soheilhy/cmux v0.1.4"
	"github.com/spaolacci/murmur3 v0.0.0-20180118202830-f09979ecbc72"
	"github.com/spf13/afero v1.1.2"
	"github.com/spf13/afero v1.2.2"
	"github.com/spf13/cast v1.3.0"
	"github.com/spf13/cobra v1.1.3"
	"github.com/spf13/jwalterweatherman v1.0.0"
	"github.com/spf13/jwalterweatherman v1.1.0"
	"github.com/spf13/pflag v1.0.3"
	"github.com/spf13/pflag v1.0.5"
	"github.com/spf13/viper v1.7.0"
	"github.com/spf13/viper v1.7.1"
	"github.com/stretchr/objx v0.1.0"
	"github.com/stretchr/objx v0.1.1"
	"github.com/stretchr/testify v1.2.2"
	"github.com/stretchr/testify v1.3.0"
	"github.com/stretchr/testify v1.7.0"
	"github.com/subosito/gotenv v1.2.0"
	"github.com/thedevsaddam/gojsonq/v2 v2.5.2"
	"github.com/tmc/grpc-websocket-proxy v0.0.0-20190109142713-0ad062ec5ee5"
	"github.com/xiang90/probing v0.0.0-20190116061207-43a291ad63a2"
	"go.etcd.io/bbolt v1.3.2"
	"go.opencensus.io v0.21.0"
	"go.opencensus.io v0.22.0"
	"go.uber.org/atomic v1.4.0"
	"go.uber.org/multierr v1.1.0"
	"go.uber.org/zap v1.10.0"
	"golang.org/x/crypto v0.0.0-20180904163835-0709b304e793"
	"golang.org/x/crypto v0.0.0-20181029021203-45a5f77698d3"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2"
	"golang.org/x/crypto v0.0.0-20190510104115-cbcb75029529"
	"golang.org/x/crypto v0.0.0-20190605123033-f99c8df09eb5"
	"golang.org/x/exp v0.0.0-20190121172915-509febef88a4"
	"golang.org/x/exp v0.0.0-20190306152737-a1d7652674e8"
	"golang.org/x/exp v0.0.0-20190510132918-efd6b22b2522"
	"golang.org/x/exp v0.0.0-20190829153037-c13cbed26979"
	"golang.org/x/exp v0.0.0-20191030013958-a1ab85dbe136"
	"golang.org/x/image v0.0.0-20190227222117-0694c2d4d067"
	"golang.org/x/image v0.0.0-20190802002840-cff245a6509b"
	"golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3"
	"golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961"
	"golang.org/x/lint v0.0.0-20190301231843-5614ed5bae6f"
	"golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3"
	"golang.org/x/lint v0.0.0-20190409202823-959b441ac422"
	"golang.org/x/lint v0.0.0-20190909230951-414d861bb4ac"
	"golang.org/x/lint v0.0.0-20190930215403-16217165b5de"
	"golang.org/x/mobile v0.0.0-20190312151609-d3739f865fa6"
	"golang.org/x/mobile v0.0.0-20190719004257-d2bd2a29d028"
	"golang.org/x/mod v0.0.0-20190513183733-4bf6d317e70e"
	"golang.org/x/mod v0.1.0"
	"golang.org/x/net v0.0.0-20180724234803-3673e40ba225"
	"golang.org/x/net v0.0.0-20180826012351-8a410e7b638d"
	"golang.org/x/net v0.0.0-20181023162649-9b4f9f5ad519"
	"golang.org/x/net v0.0.0-20181114220301-adae6a3d119a"
	"golang.org/x/net v0.0.0-20181201002055-351d144fa1fc"
	"golang.org/x/net v0.0.0-20181220203305-927f97764cc3"
	"golang.org/x/net v0.0.0-20190108225652-1e06a53dbb7e"
	"golang.org/x/net v0.0.0-20190213061140-3a22650c66bd"
	"golang.org/x/net v0.0.0-20190311183353-d8887717615a"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3"
	"golang.org/x/net v0.0.0-20190501004415-9ce7a6920f09"
	"golang.org/x/net v0.0.0-20190503192946-f4e77d36d62c"
	"golang.org/x/net v0.0.0-20190603091049-60506f45cf65"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859"
	"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be"
	"golang.org/x/oauth2 v0.0.0-20190226205417-e64efc72b421"
	"golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45"
	"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f"
	"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f"
	"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4"
	"golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58"
	"golang.org/x/sys v0.0.0-20180823144017-11551d06cbcc"
	"golang.org/x/sys v0.0.0-20180830151530-49385e6e1522"
	"golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33"
	"golang.org/x/sys v0.0.0-20181026203630-95b1ffbd15a5"
	"golang.org/x/sys v0.0.0-20181107165924-66b7b1311ac8"
	"golang.org/x/sys v0.0.0-20181116152217-5ac8a444bdc5"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a"
	"golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223"
	"golang.org/x/sys v0.0.0-20190312061237-fead79001313"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d"
	"golang.org/x/sys v0.0.0-20190502145724-3ef323f4f1fd"
	"golang.org/x/sys v0.0.0-20190507160741-ecd444e8653b"
	"golang.org/x/sys v0.0.0-20190606165138-5da285871e9c"
	"golang.org/x/sys v0.0.0-20190624142023-c5567b49c5d0"
	"golang.org/x/sys v0.0.0-20191008105621-543471e840be"
	"golang.org/x/sys v0.0.0-20191028164358-195ce5e7f934"
	"golang.org/x/text v0.3.0"
	"golang.org/x/text v0.3.1-0.20180807135948-17ff2d5776d2"
	"golang.org/x/text v0.3.2"
	"golang.org/x/time v0.0.0-20181108054448-85acf8d2951c"
	"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4"
	"golang.org/x/tools v0.0.0-20180221164845-07fd8470d635"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e"
	"golang.org/x/tools v0.0.0-20190114222345-bf090417da8b"
	"golang.org/x/tools v0.0.0-20190226205152-f727befe758c"
	"golang.org/x/tools v0.0.0-20190311212946-11955173bddd"
	"golang.org/x/tools v0.0.0-20190312151545-0bb0c0a6e846"
	"golang.org/x/tools v0.0.0-20190312170243-e65039ee4138"
	"golang.org/x/tools v0.0.0-20190328211700-ab21143f2384"
	"golang.org/x/tools v0.0.0-20190425150028-36563e24a262"
	"golang.org/x/tools v0.0.0-20190506145303-2d16b83fe98c"
	"golang.org/x/tools v0.0.0-20190606124116-d0a3d012864b"
	"golang.org/x/tools v0.0.0-20190621195816-6e04913cbbac"
	"golang.org/x/tools v0.0.0-20190628153133-6cdbf07be9d0"
	"golang.org/x/tools v0.0.0-20190816200558-6889da9d5479"
	"golang.org/x/tools v0.0.0-20190911174233-4f2ddba30aff"
	"golang.org/x/tools v0.0.0-20191012152004-8de300cfc20a"
	"golang.org/x/tools v0.0.0-20191112195655-aa38f8e97acc"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7"
	"google.golang.org/api v0.4.0"
	"google.golang.org/api v0.7.0"
	"google.golang.org/api v0.8.0"
	"google.golang.org/api v0.9.0"
	"google.golang.org/api v0.13.0"
	"google.golang.org/appengine v1.1.0"
	"google.golang.org/appengine v1.4.0"
	"google.golang.org/appengine v1.5.0"
	"google.golang.org/appengine v1.6.1"
	"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8"
	"google.golang.org/genproto v0.0.0-20190307195333-5fe7a883aa19"
	"google.golang.org/genproto v0.0.0-20190418145605-e7d98fc518a7"
	"google.golang.org/genproto v0.0.0-20190425155659-357c62f0e4bb"
	"google.golang.org/genproto v0.0.0-20190502173448-54afdca5d873"
	"google.golang.org/genproto v0.0.0-20190801165951-fa694d86fc64"
	"google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55"
	"google.golang.org/genproto v0.0.0-20190911173649-1774047e7e51"
	"google.golang.org/genproto v0.0.0-20191108220845-16a3f7862a1a"
	"google.golang.org/grpc v1.19.0"
	"google.golang.org/grpc v1.20.1"
	"google.golang.org/grpc v1.21.1"
	"gopkg.in/alecthomas/kingpin.v2 v2.2.6"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127"
	"gopkg.in/errgo.v2 v2.1.0"
	"gopkg.in/ini.v1 v1.51.0"
	"gopkg.in/resty.v1 v1.12.0"
	"gopkg.in/yaml.v2 v2.0.0-20170812160011-eb3733d160e7"
	"gopkg.in/yaml.v2 v2.2.1"
	"gopkg.in/yaml.v2 v2.2.4"
	"gopkg.in/yaml.v2 v2.4.0"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c"
	"honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099"
	"honnef.co/go/tools v0.0.0-20190106161140-3f1c8253044a"
	"honnef.co/go/tools v0.0.0-20190418001031-e561f6794a2a"
	"honnef.co/go/tools v0.0.1-2019.2.3"
	"rsc.io/binaryregexp v0.2.0"
	"cloud.google.com/go v0.26.0/go.mod"
	"cloud.google.com/go v0.34.0/go.mod"
	"cloud.google.com/go v0.38.0/go.mod"
	"cloud.google.com/go v0.44.1/go.mod"
	"cloud.google.com/go v0.44.2/go.mod"
	"cloud.google.com/go v0.45.1/go.mod"
	"cloud.google.com/go v0.46.3/go.mod"
	"cloud.google.com/go/bigquery v1.0.1/go.mod"
	"cloud.google.com/go/datastore v1.0.0/go.mod"
	"cloud.google.com/go/firestore v1.1.0/go.mod"
	"cloud.google.com/go/pubsub v1.0.1/go.mod"
	"cloud.google.com/go/storage v1.0.0/go.mod"
	"dmitri.shuralyov.com/gpu/mtl v0.0.0-20190408044501-666a987793e9/go.mod"
	"github.com/BurntSushi/toml v0.3.1/go.mod"
	"github.com/BurntSushi/xgb v0.0.0-20160522181843-27f122750802/go.mod"
	"github.com/OneOfOne/xxhash v1.2.2/go.mod"
	"github.com/VirusTotal/vt-go v0.0.0-20210528074736-45bbe34cc8ab/go.mod"
	"github.com/alecthomas/template v0.0.0-20160405071501-a0175ee3bccc/go.mod"
	"github.com/alecthomas/units v0.0.0-20151022065526-2efee857e7cf/go.mod"
	"github.com/armon/circbuf v0.0.0-20150827004946-bbbad097214e/go.mod"
	"github.com/armon/go-metrics v0.0.0-20180917152333-f0300d1749da/go.mod"
	"github.com/armon/go-radix v0.0.0-20180808171621-7fddfc383310/go.mod"
	"github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973/go.mod"
	"github.com/beorn7/perks v1.0.0/go.mod"
	"github.com/bgentry/speakeasy v0.1.0/go.mod"
	"github.com/bketelsen/crypt v0.0.3-0.20200106085610-5cbc8cc4026c/go.mod"
	"github.com/briandowns/spinner v1.7.0/go.mod"
	"github.com/cavaliercoder/grab v2.0.0+incompatible/go.mod"
	"github.com/cespare/xxhash v1.1.0/go.mod"
	"github.com/client9/misspell v0.3.4/go.mod"
	"github.com/coreos/bbolt v1.3.2/go.mod"
	"github.com/coreos/etcd v3.3.13+incompatible/go.mod"
	"github.com/coreos/go-semver v0.3.0/go.mod"
	"github.com/coreos/go-systemd v0.0.0-20190321100706-95778dfbb74e/go.mod"
	"github.com/coreos/pkg v0.0.0-20180928190104-399ea9e2e55f/go.mod"
	"github.com/cpuguy83/go-md2man/v2 v2.0.0/go.mod"
	"github.com/davecgh/go-spew v1.1.0/go.mod"
	"github.com/davecgh/go-spew v1.1.1/go.mod"
	"github.com/dgrijalva/jwt-go v3.2.0+incompatible/go.mod"
	"github.com/dgryski/go-sip13 v0.0.0-20181026042036-e10d5fee7954/go.mod"
	"github.com/dustin/go-humanize v1.0.0/go.mod"
	"github.com/fatih/color v1.7.0/go.mod"
	"github.com/fsnotify/fsnotify v1.4.7/go.mod"
	"github.com/ghodss/yaml v1.0.0/go.mod"
	"github.com/go-gl/glfw v0.0.0-20190409004039-e6da0acd62b1/go.mod"
	"github.com/go-kit/kit v0.8.0/go.mod"
	"github.com/go-logfmt/logfmt v0.3.0/go.mod"
	"github.com/go-logfmt/logfmt v0.4.0/go.mod"
	"github.com/go-stack/stack v1.8.0/go.mod"
	"github.com/gobwas/glob v0.2.3/go.mod"
	"github.com/gogo/protobuf v1.1.1/go.mod"
	"github.com/gogo/protobuf v1.2.1/go.mod"
	"github.com/golang/glog v0.0.0-20160126235308-23def4e6c14b/go.mod"
	"github.com/golang/groupcache v0.0.0-20190129154638-5b532d6fd5ef/go.mod"
	"github.com/golang/mock v1.1.1/go.mod"
	"github.com/golang/mock v1.2.0/go.mod"
	"github.com/golang/mock v1.3.1/go.mod"
	"github.com/golang/protobuf v1.2.0/go.mod"
	"github.com/golang/protobuf v1.3.1/go.mod"
	"github.com/golang/protobuf v1.3.2/go.mod"
	"github.com/google/btree v0.0.0-20180813153112-4030bb1f1f0c/go.mod"
	"github.com/google/btree v1.0.0/go.mod"
	"github.com/google/go-cmp v0.2.0/go.mod"
	"github.com/google/go-cmp v0.3.0/go.mod"
	"github.com/google/martian v2.1.0+incompatible/go.mod"
	"github.com/google/pprof v0.0.0-20181206194817-3ea8567a2e57/go.mod"
	"github.com/google/pprof v0.0.0-20190515194954-54271f7e092f/go.mod"
	"github.com/google/renameio v0.1.0/go.mod"
	"github.com/googleapis/gax-go/v2 v2.0.4/go.mod"
	"github.com/googleapis/gax-go/v2 v2.0.5/go.mod"
	"github.com/gopherjs/gopherjs v0.0.0-20181017120253-0766667cb4d1/go.mod"
	"github.com/gorilla/websocket v1.4.2/go.mod"
	"github.com/gosuri/uitable v0.0.3/go.mod"
	"github.com/grpc-ecosystem/go-grpc-middleware v1.0.0/go.mod"
	"github.com/grpc-ecosystem/go-grpc-prometheus v1.2.0/go.mod"
	"github.com/grpc-ecosystem/grpc-gateway v1.9.0/go.mod"
	"github.com/hashicorp/consul/api v1.1.0/go.mod"
	"github.com/hashicorp/consul/sdk v0.1.1/go.mod"
	"github.com/hashicorp/errwrap v1.0.0/go.mod"
	"github.com/hashicorp/go-cleanhttp v0.5.1/go.mod"
	"github.com/hashicorp/go-immutable-radix v1.0.0/go.mod"
	"github.com/hashicorp/go-msgpack v0.5.3/go.mod"
	"github.com/hashicorp/go-multierror v1.0.0/go.mod"
	"github.com/hashicorp/go-rootcerts v1.0.0/go.mod"
	"github.com/hashicorp/go-sockaddr v1.0.0/go.mod"
	"github.com/hashicorp/go-syslog v1.0.0/go.mod"
	"github.com/hashicorp/go-uuid v1.0.0/go.mod"
	"github.com/hashicorp/go-uuid v1.0.1/go.mod"
	"github.com/hashicorp/go.net v0.0.1/go.mod"
	"github.com/hashicorp/golang-lru v0.5.0/go.mod"
	"github.com/hashicorp/golang-lru v0.5.1/go.mod"
	"github.com/hashicorp/hcl v1.0.0/go.mod"
	"github.com/hashicorp/logutils v1.0.0/go.mod"
	"github.com/hashicorp/mdns v1.0.0/go.mod"
	"github.com/hashicorp/memberlist v0.1.3/go.mod"
	"github.com/hashicorp/serf v0.8.2/go.mod"
	"github.com/inconshreveable/mousetrap v1.0.0/go.mod"
	"github.com/jonboulle/clockwork v0.1.0/go.mod"
	"github.com/json-iterator/go v1.1.6/go.mod"
	"github.com/jstemmer/go-junit-report v0.0.0-20190106144839-af01ea7f8024/go.mod"
	"github.com/jtolds/gls v4.20.0+incompatible/go.mod"
	"github.com/julienschmidt/httprouter v1.2.0/go.mod"
	"github.com/k0kubun/go-ansi v0.0.0-20180517002512-3bf9e2903213/go.mod"
	"github.com/kisielk/errcheck v1.1.0/go.mod"
	"github.com/kisielk/gotool v1.0.0/go.mod"
	"github.com/konsorten/go-windows-terminal-sequences v1.0.1/go.mod"
	"github.com/kr/logfmt v0.0.0-20140226030751-b84e30acd515/go.mod"
	"github.com/kr/pretty v0.1.0/go.mod"
	"github.com/kr/pty v1.1.1/go.mod"
	"github.com/kr/text v0.1.0/go.mod"
	"github.com/magiconair/properties v1.8.1/go.mod"
	"github.com/mattn/go-colorable v0.0.9/go.mod"
	"github.com/mattn/go-colorable v0.1.2/go.mod"
	"github.com/mattn/go-isatty v0.0.3/go.mod"
	"github.com/mattn/go-isatty v0.0.8/go.mod"
	"github.com/mattn/go-isatty v0.0.10/go.mod"
	"github.com/mattn/go-runewidth v0.0.5/go.mod"
	"github.com/matttproud/golang_protobuf_extensions v1.0.1/go.mod"
	"github.com/miekg/dns v1.0.14/go.mod"
	"github.com/mitchellh/cli v1.0.0/go.mod"
	"github.com/mitchellh/go-homedir v1.0.0/go.mod"
	"github.com/mitchellh/go-homedir v1.1.0/go.mod"
	"github.com/mitchellh/go-testing-interface v1.0.0/go.mod"
	"github.com/mitchellh/gox v0.4.0/go.mod"
	"github.com/mitchellh/iochan v1.0.0/go.mod"
	"github.com/mitchellh/mapstructure v0.0.0-20160808181253-ca63d7c062ee/go.mod"
	"github.com/mitchellh/mapstructure v1.1.2/go.mod"
	"github.com/modern-go/concurrent v0.0.0-20180306012644-bacd9c7ef1dd/go.mod"
	"github.com/modern-go/reflect2 v1.0.1/go.mod"
	"github.com/mwitkow/go-conntrack v0.0.0-20161129095857-cc309e4a2223/go.mod"
	"github.com/oklog/ulid v1.3.1/go.mod"
	"github.com/pascaldekloe/goe v0.0.0-20180627143212-57f6aae5913c/go.mod"
	"github.com/pelletier/go-toml v1.2.0/go.mod"
	"github.com/pelletier/go-toml v1.6.0/go.mod"
	"github.com/pkg/errors v0.8.0/go.mod"
	"github.com/pkg/errors v0.8.1/go.mod"
	"github.com/plusvic/go-ansi v0.0.0-20180516115420-9879244c4340/go.mod"
	"github.com/pmezard/go-difflib v1.0.0/go.mod"
	"github.com/posener/complete v1.1.1/go.mod"
	"github.com/prometheus/client_golang v0.9.1/go.mod"
	"github.com/prometheus/client_golang v0.9.3/go.mod"
	"github.com/prometheus/client_model v0.0.0-20180712105110-5c3871d89910/go.mod"
	"github.com/prometheus/client_model v0.0.0-20190129233127-fd36f4220a90/go.mod"
	"github.com/prometheus/common v0.0.0-20181113130724-41aa239b4cce/go.mod"
	"github.com/prometheus/common v0.4.0/go.mod"
	"github.com/prometheus/procfs v0.0.0-20181005140218-185b4288413d/go.mod"
	"github.com/prometheus/procfs v0.0.0-20190507164030-5867b95ac084/go.mod"
	"github.com/prometheus/tsdb v0.7.1/go.mod"
	"github.com/rogpeppe/fastuuid v0.0.0-20150106093220-6724a57986af/go.mod"
	"github.com/rogpeppe/go-internal v1.3.0/go.mod"
	"github.com/russross/blackfriday/v2 v2.0.1/go.mod"
	"github.com/ryanuber/columnize v0.0.0-20160712163229-9b3edd62028f/go.mod"
	"github.com/sean-/seed v0.0.0-20170313163322-e2103e2c3529/go.mod"
	"github.com/shurcooL/sanitized_anchor_name v1.0.0/go.mod"
	"github.com/sirupsen/logrus v1.2.0/go.mod"
	"github.com/smartystreets/assertions v0.0.0-20180927180507-b2de0cb4f26d/go.mod"
	"github.com/smartystreets/goconvey v1.6.4/go.mod"
	"github.com/soheilhy/cmux v0.1.4/go.mod"
	"github.com/spaolacci/murmur3 v0.0.0-20180118202830-f09979ecbc72/go.mod"
	"github.com/spf13/afero v1.1.2/go.mod"
	"github.com/spf13/afero v1.2.2/go.mod"
	"github.com/spf13/cast v1.3.0/go.mod"
	"github.com/spf13/cobra v1.1.3/go.mod"
	"github.com/spf13/jwalterweatherman v1.0.0/go.mod"
	"github.com/spf13/jwalterweatherman v1.1.0/go.mod"
	"github.com/spf13/pflag v1.0.3/go.mod"
	"github.com/spf13/pflag v1.0.5/go.mod"
	"github.com/spf13/viper v1.7.0/go.mod"
	"github.com/spf13/viper v1.7.1/go.mod"
	"github.com/stretchr/objx v0.1.0/go.mod"
	"github.com/stretchr/objx v0.1.1/go.mod"
	"github.com/stretchr/testify v1.2.2/go.mod"
	"github.com/stretchr/testify v1.3.0/go.mod"
	"github.com/stretchr/testify v1.7.0/go.mod"
	"github.com/subosito/gotenv v1.2.0/go.mod"
	"github.com/thedevsaddam/gojsonq/v2 v2.5.2/go.mod"
	"github.com/tmc/grpc-websocket-proxy v0.0.0-20190109142713-0ad062ec5ee5/go.mod"
	"github.com/xiang90/probing v0.0.0-20190116061207-43a291ad63a2/go.mod"
	"go.etcd.io/bbolt v1.3.2/go.mod"
	"go.opencensus.io v0.21.0/go.mod"
	"go.opencensus.io v0.22.0/go.mod"
	"go.uber.org/atomic v1.4.0/go.mod"
	"go.uber.org/multierr v1.1.0/go.mod"
	"go.uber.org/zap v1.10.0/go.mod"
	"golang.org/x/crypto v0.0.0-20180904163835-0709b304e793/go.mod"
	"golang.org/x/crypto v0.0.0-20181029021203-45a5f77698d3/go.mod"
	"golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod"
	"golang.org/x/crypto v0.0.0-20190510104115-cbcb75029529/go.mod"
	"golang.org/x/crypto v0.0.0-20190605123033-f99c8df09eb5/go.mod"
	"golang.org/x/exp v0.0.0-20190121172915-509febef88a4/go.mod"
	"golang.org/x/exp v0.0.0-20190306152737-a1d7652674e8/go.mod"
	"golang.org/x/exp v0.0.0-20190510132918-efd6b22b2522/go.mod"
	"golang.org/x/exp v0.0.0-20190829153037-c13cbed26979/go.mod"
	"golang.org/x/exp v0.0.0-20191030013958-a1ab85dbe136/go.mod"
	"golang.org/x/image v0.0.0-20190227222117-0694c2d4d067/go.mod"
	"golang.org/x/image v0.0.0-20190802002840-cff245a6509b/go.mod"
	"golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod"
	"golang.org/x/lint v0.0.0-20190227174305-5b3e6a55c961/go.mod"
	"golang.org/x/lint v0.0.0-20190301231843-5614ed5bae6f/go.mod"
	"golang.org/x/lint v0.0.0-20190313153728-d0100b6bd8b3/go.mod"
	"golang.org/x/lint v0.0.0-20190409202823-959b441ac422/go.mod"
	"golang.org/x/lint v0.0.0-20190909230951-414d861bb4ac/go.mod"
	"golang.org/x/lint v0.0.0-20190930215403-16217165b5de/go.mod"
	"golang.org/x/mobile v0.0.0-20190312151609-d3739f865fa6/go.mod"
	"golang.org/x/mobile v0.0.0-20190719004257-d2bd2a29d028/go.mod"
	"golang.org/x/mod v0.0.0-20190513183733-4bf6d317e70e/go.mod"
	"golang.org/x/mod v0.1.0/go.mod"
	"golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod"
	"golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod"
	"golang.org/x/net v0.0.0-20181023162649-9b4f9f5ad519/go.mod"
	"golang.org/x/net v0.0.0-20181114220301-adae6a3d119a/go.mod"
	"golang.org/x/net v0.0.0-20181201002055-351d144fa1fc/go.mod"
	"golang.org/x/net v0.0.0-20181220203305-927f97764cc3/go.mod"
	"golang.org/x/net v0.0.0-20190108225652-1e06a53dbb7e/go.mod"
	"golang.org/x/net v0.0.0-20190213061140-3a22650c66bd/go.mod"
	"golang.org/x/net v0.0.0-20190311183353-d8887717615a/go.mod"
	"golang.org/x/net v0.0.0-20190404232315-eb5bcb51f2a3/go.mod"
	"golang.org/x/net v0.0.0-20190501004415-9ce7a6920f09/go.mod"
	"golang.org/x/net v0.0.0-20190503192946-f4e77d36d62c/go.mod"
	"golang.org/x/net v0.0.0-20190603091049-60506f45cf65/go.mod"
	"golang.org/x/net v0.0.0-20190620200207-3b0461eec859/go.mod"
	"golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod"
	"golang.org/x/oauth2 v0.0.0-20190226205417-e64efc72b421/go.mod"
	"golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45/go.mod"
	"golang.org/x/sync v0.0.0-20180314180146-1d60e4601c6f/go.mod"
	"golang.org/x/sync v0.0.0-20181108010431-42b317875d0f/go.mod"
	"golang.org/x/sync v0.0.0-20181221193216-37e7f081c4d4/go.mod"
	"golang.org/x/sync v0.0.0-20190227155943-e225da77a7e6/go.mod"
	"golang.org/x/sync v0.0.0-20190423024810-112230192c58/go.mod"
	"golang.org/x/sys v0.0.0-20180823144017-11551d06cbcc/go.mod"
	"golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod"
	"golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod"
	"golang.org/x/sys v0.0.0-20181026203630-95b1ffbd15a5/go.mod"
	"golang.org/x/sys v0.0.0-20181107165924-66b7b1311ac8/go.mod"
	"golang.org/x/sys v0.0.0-20181116152217-5ac8a444bdc5/go.mod"
	"golang.org/x/sys v0.0.0-20190215142949-d0b11bdaac8a/go.mod"
	"golang.org/x/sys v0.0.0-20190222072716-a9d3bda3a223/go.mod"
	"golang.org/x/sys v0.0.0-20190312061237-fead79001313/go.mod"
	"golang.org/x/sys v0.0.0-20190412213103-97732733099d/go.mod"
	"golang.org/x/sys v0.0.0-20190502145724-3ef323f4f1fd/go.mod"
	"golang.org/x/sys v0.0.0-20190507160741-ecd444e8653b/go.mod"
	"golang.org/x/sys v0.0.0-20190606165138-5da285871e9c/go.mod"
	"golang.org/x/sys v0.0.0-20190624142023-c5567b49c5d0/go.mod"
	"golang.org/x/sys v0.0.0-20191008105621-543471e840be/go.mod"
	"golang.org/x/sys v0.0.0-20191028164358-195ce5e7f934/go.mod"
	"golang.org/x/text v0.3.0/go.mod"
	"golang.org/x/text v0.3.1-0.20180807135948-17ff2d5776d2/go.mod"
	"golang.org/x/text v0.3.2/go.mod"
	"golang.org/x/time v0.0.0-20181108054448-85acf8d2951c/go.mod"
	"golang.org/x/time v0.0.0-20190308202827-9d24e82272b4/go.mod"
	"golang.org/x/tools v0.0.0-20180221164845-07fd8470d635/go.mod"
	"golang.org/x/tools v0.0.0-20180917221912-90fa682c2a6e/go.mod"
	"golang.org/x/tools v0.0.0-20190114222345-bf090417da8b/go.mod"
	"golang.org/x/tools v0.0.0-20190226205152-f727befe758c/go.mod"
	"golang.org/x/tools v0.0.0-20190311212946-11955173bddd/go.mod"
	"golang.org/x/tools v0.0.0-20190312151545-0bb0c0a6e846/go.mod"
	"golang.org/x/tools v0.0.0-20190312170243-e65039ee4138/go.mod"
	"golang.org/x/tools v0.0.0-20190328211700-ab21143f2384/go.mod"
	"golang.org/x/tools v0.0.0-20190425150028-36563e24a262/go.mod"
	"golang.org/x/tools v0.0.0-20190506145303-2d16b83fe98c/go.mod"
	"golang.org/x/tools v0.0.0-20190606124116-d0a3d012864b/go.mod"
	"golang.org/x/tools v0.0.0-20190621195816-6e04913cbbac/go.mod"
	"golang.org/x/tools v0.0.0-20190628153133-6cdbf07be9d0/go.mod"
	"golang.org/x/tools v0.0.0-20190816200558-6889da9d5479/go.mod"
	"golang.org/x/tools v0.0.0-20190911174233-4f2ddba30aff/go.mod"
	"golang.org/x/tools v0.0.0-20191012152004-8de300cfc20a/go.mod"
	"golang.org/x/tools v0.0.0-20191112195655-aa38f8e97acc/go.mod"
	"golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod"
	"google.golang.org/api v0.4.0/go.mod"
	"google.golang.org/api v0.7.0/go.mod"
	"google.golang.org/api v0.8.0/go.mod"
	"google.golang.org/api v0.9.0/go.mod"
	"google.golang.org/api v0.13.0/go.mod"
	"google.golang.org/appengine v1.1.0/go.mod"
	"google.golang.org/appengine v1.4.0/go.mod"
	"google.golang.org/appengine v1.5.0/go.mod"
	"google.golang.org/appengine v1.6.1/go.mod"
	"google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod"
	"google.golang.org/genproto v0.0.0-20190307195333-5fe7a883aa19/go.mod"
	"google.golang.org/genproto v0.0.0-20190418145605-e7d98fc518a7/go.mod"
	"google.golang.org/genproto v0.0.0-20190425155659-357c62f0e4bb/go.mod"
	"google.golang.org/genproto v0.0.0-20190502173448-54afdca5d873/go.mod"
	"google.golang.org/genproto v0.0.0-20190801165951-fa694d86fc64/go.mod"
	"google.golang.org/genproto v0.0.0-20190819201941-24fa4b261c55/go.mod"
	"google.golang.org/genproto v0.0.0-20190911173649-1774047e7e51/go.mod"
	"google.golang.org/genproto v0.0.0-20191108220845-16a3f7862a1a/go.mod"
	"google.golang.org/grpc v1.19.0/go.mod"
	"google.golang.org/grpc v1.20.1/go.mod"
	"google.golang.org/grpc v1.21.1/go.mod"
	"gopkg.in/alecthomas/kingpin.v2 v2.2.6/go.mod"
	"gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod"
	"gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod"
	"gopkg.in/errgo.v2 v2.1.0/go.mod"
	"gopkg.in/ini.v1 v1.51.0/go.mod"
	"gopkg.in/resty.v1 v1.12.0/go.mod"
	"gopkg.in/yaml.v2 v2.0.0-20170812160011-eb3733d160e7/go.mod"
	"gopkg.in/yaml.v2 v2.2.1/go.mod"
	"gopkg.in/yaml.v2 v2.2.4/go.mod"
	"gopkg.in/yaml.v2 v2.4.0/go.mod"
	"gopkg.in/yaml.v3 v3.0.0-20200313102051-9f266ea9e77c/go.mod"
	"honnef.co/go/tools v0.0.0-20190102054323-c2f93a96b099/go.mod"
	"honnef.co/go/tools v0.0.0-20190106161140-3f1c8253044a/go.mod"
	"honnef.co/go/tools v0.0.0-20190418001031-e561f6794a2a/go.mod"
	"honnef.co/go/tools v0.0.1-2019.2.3/go.mod"
	"rsc.io/binaryregexp v0.2.0/go.mod"
)
go-module_set_globals
DESCRIPTION="The command line version of virustotal."
HOMEPAGE="https://virustotal.github.io/vt-cli/"
SRC_URI="https://github.com/VirusTotal/vt-cli/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz
            ${EGO_SUM_SRC_URI}"
LICENSE="Apache-2.0 BSD-2-Clause BSD-3-Clause MIT MPL-2.0"
SLOT="0"
KEYWORDS="~amd64"
IUSE=""
RESTRICT="mirror"
RDEPEND=""
DEPEND="${RDEPEND}"
src_install() {
	dobin build/vt
}
S="${WORKDIR}/vt-cli-${PV}"
