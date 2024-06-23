import requests
from datetime import datetime
from time import sleep

# 假设api_config.py中定义了一个名为API_URLS的列表
from api_config import API_URLS

# 设置文件路径
file_path = 'hitokoto.txt'
log_path = 'hitokoto_log.txt'

def log_message(message):
    """记录日志消息到文件"""
    timestamp = datetime.now().strftime('%Y-%m-%d %H:%M:%S')
    with open(log_path, 'a', encoding='utf-8') as f:
        f.write(f'[{timestamp}] {message}\n')

def fetch_hitokoto(url):
    """使用requests获取API内容"""
    try:
        response = requests.get(url, timeout=5)
        response.raise_for_status()
        return response.text.strip()
    except requests.exceptions.RequestException as e:
        log_message(f'请求错误: {e}')
        return None

def save_hitokoto(file_path, hitokoto):
    """保存每日一句到文件"""
    if not hitokoto:
        log_message('API返回的内容为空。')
        return

    try:
        with open(file_path, 'a+', encoding='utf-8') as f:
            f.seek(0)
            content = f.read()
            if hitokoto not in content:
                f.write(f'{hitokoto}\n')
                log_message('新的每日一句已追加到文件中。')
            else:
                log_message('每日一句已存在于文件中，无需重复写入。')
    except IOError as e:
        log_message(f'文件操作错误: {e}')

# 主执行循环
while True:
    for url in API_URLS:
        hitokoto = fetch_hitokoto(url)
        if hitokoto:
            save_hitokoto(file_path, hitokoto)
    sleep(5)  # 每隔5秒执行一次
