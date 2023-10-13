#!/usr/bin/python3

import i3ipc
import os


##  listen for workspace changes
def update_workspaces(i3):
    """
    WSP id,visible,focus,urgent
    """
    script = "eww update current_workspace="
    scriptPath = os.path.expanduser(script)
    for wp in i3.get_workspaces():
        if wp.visible and wp.focused:
            os.system(scriptPath + str(wp.num))


def on_workspace_focus(i3, e):
    update_workspaces(i3)


def on_workspace_init(i3, e):
    update_workspaces(i3)


# def on_workspace_urgent(i3, e):
#     update_workspaces(i3)


i3 = i3ipc.Connection()
i3.on("workspace::focus", on_workspace_focus)
i3.on("workspace::init", on_workspace_init)


i3.main()
