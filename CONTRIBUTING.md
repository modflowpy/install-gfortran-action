# Contributing

Contributions to this repository are welcome. To make a contribution we ask that you follow a few guidelines.

## Issues and features

Before filing a bug report or making a feature request, please check the issues to make sure yours isn't a duplicate.

## Pull requests

Feel free to submit pull requests to the `develop` branch with small fixes or improvements. Before implementing new features or contributing broadly-scoped changes we ask that you first open an issue or discussion.

Before submitting a PR, please test your changes in your own fork. Please do *not* open a pull request immediately and add to it frequently during development &mdash; this will saturate the `modflowpy` organization's CI.

If `develop` changes while your work is still in progress, please rebase and fix any conflicts, then force push your branch to update the pull request.

## Commit messages

To keep the repository's commit history consistent, commit messages must conform to the following formatting conventions.

Each commit message consists of a **header**, a **body** and a **footer**.  The header includes a **type**, a **scope** and a **subject**:

```
<type>(<scope>): <subject>
<BLANK LINE>
<body>
<BLANK LINE>
<footer>
```

The **header** is mandatory and its **scope** is optional. The message **body** and **footer** are also optional.

Please keep lines under 100 characters.

### Type

Must be one of the following:

* **ci**: Changes to our CI configuration files and scripts (example scopes: Travis)
* **docs**: Documentation only changes
* **feat**: A new feature
* **fix**: A bug fix
* **perf**: A code change that improves performance
* **refactor**: A code change that neither fixes a bug nor adds a feature
* **style**: Changes that do not affect the meaning of the code (white-space, formatting, missing semi-colons, etc)
* **test**: Adding missing tests or correcting existing tests
* **revert**: Reverts a previous commit

### Scope
The scope should be the name of the FloPy module/class affected (as perceived by the person reading the changelog generated from commit messages.

There are currently a few exceptions to the "use module/class name" rule:

* **release**: used when updating files prior to a release
* **releasenotes**: used for updating the release notes
* **readme**: used for updating the release notes in README.md
* **changelog**: used for updating the release notes in CHANGELOG.md
* none/empty string: useful for `style`, `test` and `refactor` changes that are done across all
  packages (e.g. `style: add missing semicolons`) and for docs changes that are not related to a
  specific package (e.g. `docs: fix typo in tutorial`).

### Subject

The subject contains a succinct description of the change:

* use the imperative, present tense: "change" not "changed" nor "changes"
* don't capitalize the first letter
* do not include a dot (.) at the end

### Body

Just as in the **subject**, use the imperative, present tense: "change" not "changed" nor "changes".
The body should include the motivation for the change and contrast this with previous behavior.

### Footer

The footer should contain any information about **Breaking Changes** and is also the place to reference GitHub issues that this commit **Closes**.

**Breaking Changes** should start with the word `BREAKING CHANGE:` with a space or two newlines. The rest of the commit message is then used for this.