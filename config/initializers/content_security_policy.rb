Rails.application.configure do
  config.content_security_policy do |policy|
    policy.default_src :self, :https
    policy.img_src :self, :https, :data
    policy.script_src :self
    policy.style_src :self, :unsafe_inline
  end
end
