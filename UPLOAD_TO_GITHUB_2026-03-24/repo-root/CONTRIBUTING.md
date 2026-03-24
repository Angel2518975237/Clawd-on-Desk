# Contributing to Clawd on Desk

Thanks for contributing.

## Before You Start

- Make sure your change matches the scope of the project: a lightweight desktop pet for Claude Code.
- Keep behavior consistent across macOS and Windows when possible.
- Do not remove existing hook compatibility without a clear migration path.

## Local Setup

```bash
git clone <your-fork-url>
cd clawd-on-desk
npm install
node hooks/install.js
npm start
```

## What We Prefer in PRs

- Small, focused pull requests.
- Clear reproduction steps for bug fixes.
- Screenshots or short screen recordings for UI changes.
- Notes about platform coverage: `macOS`, `Windows`, or both.
- If you touch hook behavior, explain which Claude Code events were tested.

## Testing Checklist

- Run the app locally and verify the main pet window still loads.
- Verify state changes still work through `POST /state`.
- If you change macOS behavior, run `bash test-macos.sh`.
- If you change mini mode or animation behavior, run `bash test-mini.sh` or `bash test-demo.sh`.
- If you change speech bubble behavior, verify:
  - the bubble appears when Claude starts replying
  - the bubble updates while the reply is streaming
  - the bubble hides after the reply finishes

## Commit and PR Guidance

- Use descriptive commit messages.
- Mention the affected area in the PR title, for example:
  - `fix: keep speech bubble aligned while dragging`
  - `docs: update macOS install instructions`
- Link related issues when relevant.

## Documentation Changes

If your change affects user behavior, update the relevant docs:

- `README.md`
- `README.zh-CN.md`
- `CHANGELOG.md`

## Questions

If you are unsure whether a change fits the project, open an issue first before implementing a large change.
