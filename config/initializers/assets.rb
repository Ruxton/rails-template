# No need to conditionally compile assets - if we compile an asset and don't use it, it won't
# be served anyway.
#
Rails.application.config.assets.precompile += %w(
  public.js
  public.css
  member.js
  member.css
  admin.js
  admin.css
)
