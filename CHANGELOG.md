# Changelog

## 2026-06-30

- `core_dep`: fully-qualify its dependency as `mip-org/core/chebfun` (was the
  bare name `chebfun`). The new build harness install-tests each package with
  `--channel mip-org/test-channel1`, and mip's install path looks up bare-name
  deps only in that channel — no fallback to `mip-org/core` — so the bare dep
  failed to resolve. Tracked upstream as a mip bug; this fixture is FQ'd to
  build cleanly in the meantime.

- Converted to the shared MIP channel build system. Package recipes are now
  `source.yaml` (renamed from `recipe.yaml`); `.github/workflows/` are thin
  callers delegating to the reusable workflows in `mip-org/mip_channel_tools`
  (`@main`). Dropped the per-channel `scripts/` and `site/` directories (now
  provided by the tooling repo) and added `.gitattributes` and `CLAUDE.md`.
