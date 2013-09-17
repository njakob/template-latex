# About this template

This LaTeX template 

# Installation

# Options

Various options should be defined when invoking `\documentclass[<parameters>]{mse-thesis}`

`twoside` or `oneside` define if output should be generated for both side printing document. It is recommended to generate two different documents with those options.

`semester` or `thesis` are options which define a report for a semester project or a Master thesis.

`fr` or `en` simply define the language. The class would include the `babel` package.

`confidential` is optional and output a confidential mark on the first page of the report.

# Metadata

`\title`
`\author`
`\professor`
`\expert`
`\proposedby`
`\advisor`
`\headofmse`

# Useful custom commands

`\clearemptydoublepage` Should be put at the end of each chapter. This would start following content in a new page when `twoside` class's option is used. When there isn't any content in cleared pages, headers are simply removed. 

\inserttoc
\insertlof
\insertlot
\insertlol
\insertbibliography

Following commands help to reference a label like `\label{<name>}` with an text according to the kind of object. 

`\refchapter`
`\refsection`
`\reffigure`
`\reftable`
`\reflisting`