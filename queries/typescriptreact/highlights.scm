; Highlight destructured React useState setter identifiers as functions for tsx

((variable_declarator
  (array_pattern
    (identifier) @variable
    (identifier) @function (#match? @function "^[sS]et[A-Z].*")
  )
))
