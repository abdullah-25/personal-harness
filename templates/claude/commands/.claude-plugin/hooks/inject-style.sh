#!/usr/bin/env bash
# PreToolUse hook: inject style rules right before any Write/Edit.
# Output to stdout becomes additional context Claude sees.

cat <<'EOF'
STYLE CHECK — verify before writing this code:

1. Happy path first. Are you adding edge cases beyond the obvious ones (empty input, not found, auth failure)? If yes, ask first.
2. No defensive code for impossible states. If the type system guarantees it, no null check.
3. No new dependencies without asking.
4. If using a library/API, did you verify current syntax against official docs?
5. If using a concept from docs/my-knowledge.md "shaky" or "not yet learned" sections, add a "💡 Learn more" block with 2 links.
6. Public functions get a docstring: one-line summary, args, returns.
7. No premature abstraction — extract a helper only with 2+ callers.

If any of these would be violated, stop and ask.
EOF
