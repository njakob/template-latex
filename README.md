
# Template-LaTeX

LaTeX template for MSE semester and thesis reports.

## Getting Started

This template provides a LaTeX class which simply replaces and extends the standard directive `report`.

*It is recommended that you configure your workspace as shown below, then it will be easy to keep it updated.*

You can also simply check out [releases](https://github.com/njakob/template-latex/releases) and download [last zip package](https://github.com/njakob/template-latex/archive/2.0.zip).

Create a new folder for your report, then run git clone command.

```shell
$ git clone git@github.com:njakob/template-latex.git
```

Then copy an example from `/examples` folder into your workspace.
```shell
$ cp -a template-latex/examples/simple-report/* ./
```

Now you can start to write your report in `thesis.tex`.

## Options

Different options can be defined for the document class.

### Confidential

Type: `Boolean` Default: False

Place a confidential marker on the first page.

### Lang

Type: `String` Default: `en`
Accept: `fr`, `en`

Language of your document.

### Major

Type: `String` Default: `tin`
Accept: `tic`, `tin` 

Define your major, `tic` for *Information and Communication Technologies* or `tin` for *Industrial Technologies*.

### Path

Type: `String`

Path to this document class.

### Type

Type: `String` Default: `thesis`
Accept: `semester`, `thesis`

Define whether it is a semester project or thesis.

## Metadata

Some metadata listed below must be provided to the document class.

### Advisor

Arguments: name

Advisor of your project, it is usually the same person as `\professor`.

Example: `\advisor{Prof. John Doe}`

### Author

Arguments: name, e-mail

Your name and contact information.

Example: `\author{Nicolas Jakob}{nicolas.jakob@master.hes-so.ch}`

### Expert

Arguments: name, e-mail, school or institute

Name and contact information of your expert.

Example: `\expert{Prof. John Doe}{john.doe@nowhere.com}{HES-SO}`

### HeadOfMSE

Arguments: name

Name of Head of MSE.

Example: `\headofmse{Fariba Moghaddam Bützberger}`

### Institute

*Optional*,
Arguments: school or institute, acronym

When you are abroad, place the information about the school or institute where you have done your work.

Example: `\institute{Institute which is aboard}{HES-SO}`

### Title

Arguments: title

Title of your report.

Example: `\title{\LaTeX\ Thesis Template}`

### Professor

Arguments: name, e-mail, school or institute

Professor who follows your research.

Example: `\professor{Prof. John Doe}{john.doe@nowhere.com}{HES-SO}`

### ProposedBy

Arguments: name, e-mail, school or institute

Person or company who proposed the subject of your work.

Example: `\proposedby{Nicolas Jakob}{nicolas.jakob@master.hes-so.ch}{HES-SO}`

### Supervisor

*Optional*,
Arguments: name, e-mail, school or institute

When you are abroad, place information about the person following your research.

Example: `\supervisor{Prof. John Doe}{john.doe@nowhere.com}{HES-SO}`

### Version

Arguments: version

Keep track of the published version of your document.

Example: `\version{Version 1}`
