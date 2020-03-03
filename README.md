# chpg

Switch between installed [Postgres.app](https://postgresapp.com/) versions.

```
$ chpg @11 && pg_dump --version
$ echo '11' > ./.chpg-version && chpg @ && pg_dump --version
$ chpg @latest && pg_dump --version
$ chpg help
```

## Install

Open a terminal and run this command ([view source](http://git.io/chpg--install)):

```
$ curl -L http://git.io/chpg--install | sh
```

### Init

Add `chpg init` to your shell startup script.  This installs tab completions and enables modifying the env vars.

```bash
eval "$(chpg init)"
```

### Auto Mode

(optional) If you want automatic handling, add the `--auto` flag to the init.  In additon to the normal init above, `$PROMPT_COMMAND` is updated to activate any new Postgres.app version as you change directories.  **Again, this is optional.**

```bash
eval "$(chpg init --auto)"
```

### Quiet Mode

By default, chpg outputs a warning saying which version/source it activates. If you want to silence these warnings, add the `--quiet` flag to the init.

```bash
eval "$(chpg init --quiet)"
```

## Usage

```
$ chpg help
```

### `.chpg-version` Files

If no explicit @<verion> parameter is specified, chpg will look for the version in a file named `.chpg-version` in your current directory, its parent directories, or your home directory.  The `.chpg-version` files are expected to contain nothing but the version requested.

```
$ echo "11" > $HOME/.chpg-version
$ cd $HOME && chpg @
$ pg_dump --version # will use /Applications/Postgres.app/Contents/Versions/11/bin/pg_dump
```

You can specify a specific version file using the `-f` option:

```
$ cd $HOME
$ echo "12" > /a/path/to/.chpg-version
$ chpg -f /a/path/to/.chpg-version
$ pg_dump --version # will use /Applications/Postgres.app/Contents/Versions/12/bin/pg_dump
```

**Note**: You can specify a "default" version file at `$HOME/.chpg/.chpg-version`.  This version will be used when no other .chpg-version can be found and no command line version has been specified.

**Note**: If an `@<version>` parameter is given, it will always override any versions specified in any `.chpg-version` files.

## Uninstall

Open a terminal and run this command ([view source](http://git.io/chpg--uninstall)):

```
$ curl -L http://git.io/chpg--uninstall | sh
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
