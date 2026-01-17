rails new moovie --database=postgresql
cd moovie


# Gemfile 加这些（2025 常用）
gem 'devise'                  # 认证
gem 'tailwindcss-rails'       # Tailwind
gem 'daisyui'                 # 漂亮组件（可选，超快美化）
gem 'mux_ruby'                # Mux 官方 SDK
gem 'active_storage_validations'
gem 'image_processing'        # 需要 sharp 或 mini_magick 处理缩略图
gem 'sidekiq'                 # 后台任务（可选，但推荐）
gem 'avo'                     # 超美后台（gem 'avo' + bundle）