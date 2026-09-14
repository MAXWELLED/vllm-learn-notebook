import asyncio
import time

async def fetch_data(name, delay):
    print(f"{name} 开始请求...")
    await asyncio.sleep(delay)  # 模拟 I/O 等待
    print(f"{name} 完成！")
    return f"{name} 的数据"

async def main():
    start = time.time()
    # 并发执行三个协程
    results = await asyncio.gather(
        fetch_data("A", 2),
        fetch_data("B", 1),
        fetch_data("C", 3),
    )
    print(f"总耗时: {time.time() - start:.2f} 秒")
    print(results)

asyncio.run(main())