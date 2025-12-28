# Docstring Generation Skill

This skill generates comprehensive docstrings following language-specific conventions.

## Supported Standards

### Python
- Google style (default)
- NumPy style
- Sphinx style

### JavaScript/TypeScript
- JSDoc format
- TSDoc format

### Other Languages
- GoDoc (Go)
- RustDoc (Rust)
- Javadoc (Java)

## Docstring Components

| Component | Description |
|-----------|-------------|
| Summary | One-line description |
| Description | Detailed explanation |
| Parameters | Input parameter descriptions |
| Returns | Return value description |
| Raises | Exception descriptions |
| Examples | Usage examples |

## Example Output

### Python (Google Style)
```python
def calculate_total(items: list[Item], tax_rate: float = 0.0) -> float:
    """Calculate the total price of items with optional tax.

    Args:
        items: List of Item objects to calculate total for.
        tax_rate: Tax rate as a decimal (e.g., 0.08 for 8%). Defaults to 0.0.

    Returns:
        The total price including tax.

    Raises:
        ValueError: If tax_rate is negative.

    Examples:
        >>> items = [Item(price=10.0), Item(price=20.0)]
        >>> calculate_total(items, tax_rate=0.1)
        33.0
    """
```

## Integration

Works with the Technical Writer agent for comprehensive documentation.
