# /api-docs

Generate API documentation from code annotations or OpenAPI specs.

## Arguments

- `$ARGUMENTS`: Path to API routes or OpenAPI spec file

## Usage

```
/api-docs src/api/
/api-docs openapi.yaml
/api-docs --framework fastapi
```

## Supported Frameworks

- FastAPI (Python)
- Express (Node.js)
- Flask (Python)
- Gin (Go)
- Axum (Rust)

## Output Formats

- OpenAPI 3.0 specification
- Markdown documentation
- Interactive HTML (using Swagger UI)

## Generated Content

### For Each Endpoint
- HTTP method and path
- Request parameters (path, query, body)
- Request/response schemas
- Example requests and responses
- Authentication requirements
- Error codes and descriptions
