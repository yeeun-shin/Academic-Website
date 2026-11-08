# Build baseline

The files in `current/` describe the generated production site before theme
cleanup. They record routes, HTML hashes, CSS/JavaScript hashes, copied assets,
internal links, and missing local assets.

The repository pins Ruby 3.1.6 to match GitHub Actions. For an isolated
project-local installation with `ruby-build`:

```sh
RUBY_BUILD_VENDOR_OPENSSL=1 ruby-build 3.1.6 .ruby
bin/site setup
```

The `.ruby/` interpreter and `vendor/bundle/` gems are ignored. `bin/site`
prefers that interpreter, but also accepts Ruby 3.1.6 activated by a version
manager that honors `.ruby-version`.

Commands:

```sh
bin/site build
bin/site serve
bin/site baseline
bin/site compare
```

`bin/site compare` rebuilds the site and exits non-zero if its generated output
does not match the baseline. Refresh the baseline only after reviewing an
intentional site change.

The default preview uses one local server port. Run
`bin/site serve --livereload` only when live reload is useful and its secondary
port is available.
