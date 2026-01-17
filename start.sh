# 1. 先加 gem 并安装
bundle add devise
bundle add avo          # 或 avo-pro 如果你要高级版

bundle install

# 2. Devise 安装（最容易出错在这里）
rails generate devise:install
# → 看终端！根据提示修改 config/environments/*.rb 的 mailer 设置

rails generate devise User
rails db:migrate

# 3. 生成 Video 模型
rails generate model Video title:string description:text user:references views:integer
rails db:migrate

# 4. 生成 controller + 视图（或用 resource 一步到位）
rails generate controller Videos index show new create
# 或者更推荐（自动加完整路由）：
# rails generate resource Video title:string description:text user:references views:integer

# 5. 安装 Avo 后台（推荐放在最后）
rails generate avo:install
# → 然后根据 Avo 文档配置 current_user（通常在 config/initializers/avo.rb 里）