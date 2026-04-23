# Coding style & working agreement

## Before writing code
- For any language or framework change, check the latest official docs
  before using an API. Don't rely on training data for syntax.
  - Python: https://docs.python.org/3/
  - TypeScript: https://www.typescriptlang.org/docs/
  - React: https://react.dev/reference/react
  - Django: https://docs.djangoproject.com/en/stable/
  - AWS CDK: https://docs.aws.amazon.com/cdk/api/v2/
- If docs conflict with training memory, trust the docs.

## Code style
- Plain and simple. Prefer readable over clever.
- Happy path first. Cover only edge cases that are realistic for this
  codebase — not defensive programming for the sake of it.
- Every public function gets a docstring: one-line summary, args, returns,
  raises (only if it actually raises).
- No premature abstraction. Don't extract a helper until there are 2+ callers.
- Type hints on function signatures (Python) / full typing (TS). Skip
  annotating every local variable.

## What NOT to do
- No try/except around code that can't actually fail.
- No "just in case" null checks when the type system already guarantees it.
- No clever one-liners when a 3-line version reads better.
- No new dependencies without asking.

## Introducing concepts I may not know
When using a language feature, pattern, or library that's newer than basic
fluency, after writing the code add a "Learn more" block:

> 💡 Used `asyncio.TaskGroup` (Python 3.11+). It's a structured concurrency
> primitive — all child tasks are awaited together, and exceptions propagate
> cleanly.
> - Docs: https://docs.python.org/3/library/asyncio-task.html#task-groups
> - PEP 654 (exception groups): https://peps.python.org/pep-0654/

Use my current knowledge baseline in `docs/my-knowledge.md` to decide what
counts as "newer." When in doubt, flag it.

## Commits
- Conventional commits (`feat:`, `fix:`, `refactor:`, `docs:`, `chore:`).
- refer: https://www.conventionalcommits.org/en/v1.0.0/#summary to come up with meaningful commits