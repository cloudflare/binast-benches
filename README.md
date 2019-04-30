# binast-benches

## Requirements

### `js`

SpiderMonkey build (Firefox's JavaScript engine). You can find a prebuilt version here (Linux x64 opt): https://taskcluster-artifacts.net/QQMh7zQHRbmI-afc8HK8Ag/0/public/build/js.

Atlernatively you can build it from source: https://developer.mozilla.org/en-US/docs/Mozilla/Projects/SpiderMonkey/Build_Documentation.

### `binjs_encode`

Download the source code: https://github.com/binast/binjs-ref and build a local version.

## Usage

- `make encode`:  encode JavaScript files
- `make test`:  run benchmarks
