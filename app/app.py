from os import getpid
from time import sleep

from rich.console import Console


console = Console()


def program(time: float, file_name: str) -> None:
    with open(file_name, "w") as file:
        pid = getpid()
        file.write(str(pid))

        for _ in range(3):
            console.print("[bold]2[/bold]: I am alive")
            sleep(time)

        console.print("[bold]2[/bold]: I gonna die now, bye")
