# config/initializers/content_security_policy.rb
Rails.application.config.content_security_policy do |p|
  p.default_src :self, :https
  p.font_src    :self, :https, :data
  # p.img_src     :self , :https, :data
  p.object_src  :none
  p.script_src  :self, :https
  p.style_src   :self, :https, :unsafe_inline


  # p.img_src :self, 'power.itp.ac.cn', :https
  p.img_src 'power.itp.ac.cn'
  # p.img_src :none
  # p.img_src :self

  # Specify URI for violation reports
  p.report_uri  "/violation_report"
end

# Report CSP violations to a specified URI
# For further information see the following documentation:
# https://developer.mozilla.org/en-US/docs/Web/HTTP/Headers/Content-Security-Policy-Report-Only
# Rails.application.config.content_security_policy_report_only = true