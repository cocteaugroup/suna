FROM python:3.10-slim

# 设置工作目录
WORKDIR /app

# 复制项目文件到容器里
COPY . /app

# 安装 Python 依赖
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# 开放端口（SUNA 默认用 7860）
EXPOSE 7860

# 设置启动命令（Gradio 入口文件是 app.py）
CMD ["python", "app.py"]
