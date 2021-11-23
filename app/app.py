from os import getpid
from time import sleep


def program(time: float, file_name: str) -> None:
    with open(file_name, "w") as file:
        pid = getpid()
        file.write(str(pid))

        for _ in range(3):
            print("2: I am alive")
            sleep(time)

        print("2: I gonna die now, bye")
