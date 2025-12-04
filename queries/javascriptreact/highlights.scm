; Highlight destructured React useState setter identifiers as functions for jsx

((variable_declarator
  (array_pattern
    (identifier) @variable
    (identifier) @function.setter (#match? @function.setter "^[sS]et[A-Z].*")
  )
))
