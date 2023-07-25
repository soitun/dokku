module github.com/dokku/dokku/plugins/config

go 1.19

require (
	github.com/dokku/dokku/plugins/common v0.0.0-00010101000000-000000000000
	github.com/joho/godotenv v1.2.0
	github.com/onsi/gomega v1.27.10
	github.com/ryanuber/columnize v2.1.2+incompatible
	github.com/spf13/pflag v1.0.5
)

require (
	github.com/codegangsta/inject v0.0.0-20150114235600-33e0aa1cb7c0 // indirect
	github.com/codeskyblue/go-sh v0.0.0-20190412065543-76bd3d59ff27 // indirect
	github.com/google/go-cmp v0.5.9 // indirect
	github.com/otiai10/copy v1.12.0 // indirect
	golang.org/x/net v0.12.0 // indirect
	golang.org/x/sync v0.3.0 // indirect
	golang.org/x/sys v0.10.0 // indirect
	golang.org/x/text v0.11.0 // indirect
	gopkg.in/yaml.v3 v3.0.1 // indirect
)

replace github.com/dokku/dokku/plugins/common => ../common
