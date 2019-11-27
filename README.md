# README

Last working commit (https://github.com/rails/rails/commit/3f1473379ce3eafc6f8a9912a7c4fb410745cac6) from Rails master where rspec works.

To recreate issue:

1. Go to Gemfile and use last working commit (line 8 and 9)
2. Run bundle and bundle exec rspec
3. Verify everything passes
4. Go back to Gemfile and use latest Rails head
5. Run bundle and bundle exec rspec
4. Specs fail with:

       raise WrongScopeError,
             "`#{name}` is not available from within an example (e.g. an " \
             "`it` block) or from constructs that run in the scope of an " \
             "example (e.g. `before`, `let`, etc). It is only available " \
             "on an example group (e.g. a `describe` or `context` block)."

