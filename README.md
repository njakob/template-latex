
# Template-LaTeX

LaTeX template for MSE semester and thesis reports.

## Getting Started

This template provides a LaTeX class which simply replaces and extends the standard directive `report`.

### Without Git

You can simply check out [releases](https://github.com/njakob/template-latex/releases) and download [last zip package](https://github.com/njakob/template-latex/archive/v2.1-package.zip).

*It is recommended that you configure your workspace as shown below, then it will be easy to keep it updated.*

### Clone this Repository

Create a new folder for your report, then run git clone command.

```sh
$ git clone git@github.com:njakob/template-latex.git
```

Then copy an example from `/examples` folder into your workspace.
```sh
$ cp -a template-latex/examples/simple-report/* ./
```

Now you can start to write your report in `thesis.tex`.

### Setup your Own Repository

Create a new folder for your report, and then initialize your repository as usual.

```sh
$ git init
$ git remote add origin <remote-location-of-your-git>
```

Then you can link this template with your repository with git submodule.

```sh
$ git submodule add git@github.com:njakob/template-latex.git ./template-latex
```

This sub-module will work the same way as a normal repository. For example, you can change the version as shown below. More documentation could be found at <http://git-scm.com/book/en/Git-Tools-Submodules>.

```sh
$ cd ./template-latex
$ git checkout v2.1
$ cd ..
```

Then copy an example from `/examples` folder into your workspace.
```sh
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

Advisor of your project, it is usually the same person as `\professor`.

Example:
```latex
\advisor{Prof. John Doe}
```

### Author

Your full name.

Example:
```latex
\author{Nicolas Jakob}
```

### Contact

Your e-mail address.

Example: 
```latex
\contact{nicolas.jakob@master.hes-so.ch}
```

### Expert

Name and contact information of your expert(s).

Example:
```latex
\expert{
   Prof. John Doe
   \institute{HES-SO}
   \email{john.doe@nowhere.com}
}
```

### HeadOfMSE

Name of Head of MSE.

Example:
```latex
\headofmse{Fariba Moghaddam Bützberger}
```

### Location

*Optional*

When you are abroad, place the information about the school or institute where you have done your work.

Example:
```latex
\location{
   Institute which is aboard
   \institute{HES-SO}
}
```

### Title

Title of your report.

Example:
```latex
\title{\LaTeX\ Thesis Template}
```

### Professor

Professor(s) who follow your research.

Example:
```latex
\professor{
   Prof. John Doe
   \institute{HES-SO}
   \email{john.doe@nowhere.com}
   \and
   Prof. John Doe
   \institute{HES-SO}
   \email{john.doe@nowhere.com}
}
```

### ProposedBy

Person or company who proposed the subject of your work.

Example:
```latex
\proposedby{
   Nicolas Jakob
   \institute{HES-SO}
   \email{nicolas.jakob@master.hes-so.ch}
}
```

### Supervisor

*Optional*

When you are abroad, place information about the person following your research.

Example:
```latex
\supervisor{
   Prof. John Doe
   \institute{HES-SO}
   \email{john.doe@nowhere.com}
}
```

### Version

Keep track of the published version of your document.

Example:
```
\version{Version 1}
```
