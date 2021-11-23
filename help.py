from rich.console import Console


console = Console()
console.print("\nto run commands: [bold]make target[/bold]")


with open("./Makefile", "r") as file:
    for line in file.readlines():
        if line.find("##") >= 0:
            if line.find("@") >= 0:
                title = line.split("@")[-1].strip()
                console.print(f"\n{title}", style="bold green")
            else:
                target, *values, description = line.split("##")

                target = target.split(":")[0].strip()
                description = description.strip().capitalize()
                console.print(f"  - [bold]{target}[/bold]: {description}")
