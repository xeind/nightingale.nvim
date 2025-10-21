; Highlight destructured React useState setter identifiers as functions

;; Match array pattern in variable declarator: const [value, setter] = useState(...)
((variable_declarator
  (array_pattern
    (identifier) @variable
    (identifier) @function (#match? @function "^[sS]et[A-Z].*")
  )
))
