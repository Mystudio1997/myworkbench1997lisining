#!/bin/bash
# 自动推送到 GitHub Pages 脚本
# 使用方法: ./push-to-github.sh "更新说明"

cd /workspace/myworkbench1997lisining

# 获取提交信息
MESSAGE="${1:-自动更新工作台 - $(date '+%Y-%m-%d %H:%M:%S')}"

# 添加所有更改
git add -A

# 提交更改
git commit -m "$MESSAGE"

# 推送到 GitHub
git push origin main

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ 推送成功！"
    echo "GitHub Pages 地址: https://mystudio1997.github.io/myworkbench1997lisining/"
    echo "(Pages 更新可能需要 1-2 分钟生效)"
else
    echo ""
    echo "❌ 推送失败，请检查网络或 token 是否有效"
fi
