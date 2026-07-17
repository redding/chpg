## 1.0.0 / 2026-07-16

* 1.0 stable release.
* Shims: resolve the correct Postgres.app version for bare commands
  (`psql`, `pg_dump`, `pg_config`, …) in any shell, including
  non-interactive ones, with no `chpg @` prefix. New `chpg reshim`,
  `chpg which`, `chpg resolve` commands; `chpg init` adds the shims dir
  to `PATH`.
* docs: fix dead `git.io` install URLs and typos

## 0.1.2 / 2026-03-10

* Ensure clean exit code when sourced; the source guard's false test no longer propagates exit code 1

## 0.1.1 / 2026-03-10

* Guard the tail call (`chpg $@`) so sourcing the file doesn't trigger execution; fixes hangs in non-interactive shells

## 0.1.0 / 2020-03-09

* add initial API and implementation #1

