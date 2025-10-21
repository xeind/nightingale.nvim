; Highlight destructured React useState setter identifiers as functions for typescript

((variable_declarator
  (array_pattern
    (identifier) @variable
    (identifier) @function (#match? @function "^[sS]et[A-Z].*")
  )
))
