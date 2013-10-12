import queue
import time
from threading import Thread

def do_work(item):
    print("processing", item)

def source():
    i = 1
    while True:
        yield i
        print("starting task", i)
        time.sleep(0.2)
        i += 1

def worker():
    while True:
        item = q.get()
        do_work(item)
        q.task_done()

q = queue.Queue(maxsize=0)
def main():
    for i in range(4):
        t = Thread(target=worker)
        t.daemon = True
        t.start()

    for item in source():
        q.put(item)

    q.join()       # block until all tasks are done

main()

