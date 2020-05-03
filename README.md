A minimal neovim setup with darkmode, airline, syntax highlighting, and CoC (Commander of Code) intellisense engine.  We use the oceanic theme for colors and coc-eslint linting (with eslint).

Be sure to run:

* :PlugInstall - install the neovim pkgs
* :checkhealth - need to install neovim pkg for node and python2/3. remember that if you switch node versions with nvm you will likely need to reinstall the neovim pkg with `npm install -g neovim`
* :CocInstall coc-eslint - install eslint for CoC https://github.com/neoclide/coc-eslint

We use the following .eslintrc:

```
{
  "extends": [ "standard", "plugin:react/recommended"],
  "parser": "babel-eslint",
    "plugins": [
      "react"
    ],
    "parserOptions": {
      "ecmaFeatures": {
        "jsx": true
      }
    }
}
```

Which will require in your node project:

```
npm install eslint eslint-plugin-import eslint-plugin-node eslint-plugin-promise eslint-plugin-standard
```
