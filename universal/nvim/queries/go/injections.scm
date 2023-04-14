;; gorm Where sql captures
(call_expression
  function: (selector_expression
    operand: (_)
    field: (field_identifier) @_function_name (#match? @_function_name "(Where|Delete|Expr)")
  )
  arguments: (argument_list
    (interpreted_string_literal) @sql (#offset! @sql 0 1 0 -1)
  )
)

