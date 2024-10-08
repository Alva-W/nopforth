# SPDX-License-Identifier: MIT
# Copyright (c) 2018-2022 Iruatã Martins dos Santos Souza

.equ MAP_ANONYMOUS, 0x1000
errnoaddr = __error

.text
.include "x86_64/boot.s"
.include "x86_64/sysv.s"

.data
.include "dicts.s"

_kernbuf:
.incbin "comments.ns"
.incbin "x86_64/arch.ns"
.incbin "flowcontrol.ns"
.incbin "interactive.ns"
.incbin "dictionary.ns"
.incbin "memory.ns"
.incbin "string.ns"
.incbin "pictured.ns"
.incbin "abort.ns"
.incbin "x86_64/signals.ns"
.incbin "interpreter.ns"
.incbin "file.ns"
.incbin "shell.ns"
.incbin "loadpaths.ns"
.incbin "go.ns"
_kerntot = . - _kernbuf
