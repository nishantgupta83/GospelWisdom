# Review & Orchestration Agents

## Agents

### UI/UX Reviewer
Validates Material Design 3 compliance and accessibility.

```bash
python uiux_reviewer.py
```

### Baseline Editor
Transforms codebase references from GitaWisdom to GospelWisdom.

```bash
python baseline_editor.py
```

### Orchestrator
Coordinates all agents and generates health dashboard.

```bash
python orchestrator.py
```

## Integration

The orchestrator runs all agents in parallel and aggregates results into a unified dashboard showing project health across:
- Content validation (Gospel Scholar)
- Performance (iOS/Android)
- UI/UX compliance
- Codebase transformation status
