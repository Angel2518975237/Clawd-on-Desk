# Security Policy

## Supported Scope

Security reports are especially relevant for:

- local HTTP endpoints used by Clawd
- Claude Code hook registration and execution
- permission bubble behavior
- window focus and process lookup logic
- packaging and auto-update behavior

## Reporting a Vulnerability

Please do not post sensitive vulnerability details in a public issue.

Preferred approach:

1. Use GitHub's private vulnerability reporting if it is enabled for this repository.
2. If private reporting is not available, open a minimal public issue without exploit details and note that you have a security concern.

Please include:

- affected version or commit
- operating system
- reproduction steps
- impact
- whether the issue is macOS-only, Windows-only, or cross-platform

## Response Expectations

- We will try to confirm valid reports quickly.
- We may ask for reproduction details or logs.
- Fix timing depends on severity and maintainer availability.

## Out of Scope

The following are usually out of scope unless they lead to a real exploit path:

- cosmetic UI issues
- feature requests
- local-only crashes without security impact
- issues caused by unsupported third-party modifications
