Rails.application.config.content_security_policy do |policy|
  # policy.img_src 'power.itp.ac.cn'
  # policy.img_src :none
  policy.img_src :self
end