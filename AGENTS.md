# chpg — notes for agents and non-interactive shells

`chpg` switches Postgres.app versions. For automated/non-interactive use,
the key fact is **shims**: `$HOME/.chpg/shims` is on `PATH` (via `eval
"$(chpg init)"`), and each shim resolves the nearest `.chpg-version` at
run time.

- Bare `psql`/`pg_dump`/`createdb`/`pg_config`/etc. resolve the project's
  Postgres with **no `chpg @` prefix** — in scripts, cron, agent shells.
- Resolution is per-directory and lazy, so `cd proj && psql --version` is
  correct even within a single command.
- Run `chpg reshim` after adding/removing a Postgres.app version.
- `chpg which psql` → the real resolved path. `chpg resolve` → the
  version + source for the current dir.
