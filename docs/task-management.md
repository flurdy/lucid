# Task Management

How to manage tasks and issues, what steps to follow in development workflow for each task, and how to use Beads for issue tracking.

- We use **Beads** for issue tracking.
- [docs/architecture.md](architecture.md) for project structure and decisions

## Development Workflow

For all tasks, subtasks, bugs, and features, complete each phase in order. Do not skip steps.

### Phase 1: Clean Slate

1. Ensure you have a clean working directory: `git status` should show no uncommitted changes.
2. If you have uncommitted changes, either commit them to git or create a new beads task for them before proceeding.
3. Sync beads to get the latest tasks: `bd sync`

### Phase 2: Find and Claim Work

1. Find available work: `bd ready` or `bd list --status=open`, or auto picked with `/next task` or `/next quick`.
2. Make sure it is not in progress by another session.
3. Review task details: `bd show <id>`
4. Claim the task: `bd update <id> --status=in_progress`
5. Implement the task according to specifications.
6. Update the bead with work in progress: `bd comment <id> "WIP: <short description>"`
7. Proceed to Phase 3.

### Phase 3: Commit and Close

1. Stage in git only the files changed for this task: `git add <files>`
2. Commit to git with a Conventional Commits message (do not push).
3. Review all changes and ensure they meet requirements.
4. Create follow-up beads issues if needed.
5. Close the task: `bd close <id>`, but never if git changes are uncommitted.
6. Return to Phase 1 for the next task.

## Epics and Large Features

For epics spanning multiple tasks, wrap the standard workflow:

1. Break down the epic into smaller tasks in Beads.
2. Complete each subtask using the Development Workflow above (Phases 1-3).
3. After all subtasks are complete, review the epic as a whole.
4. Create new beads tasks for any outstanding issues discovered.
5. Check git status in case of unrelated uncommitted changes, commit or create beads tasks as needed.
6. Close the epic: `bd close <epic-id>` if no uncommitted changes remain.
7. Sync beads changes: `bd sync` if no uncommitted changes remain.
