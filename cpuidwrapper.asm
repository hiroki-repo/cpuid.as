push ebx
mov eax,[esp+12]
mov ecx,[esp+16]
cpuid
push esi
mov esi,[esp+12]
mov [esi+ 0],eax
mov [esi+ 4],ebx
mov [esi+ 8],ecx
mov [esi+12],edx
pop esi
pop ebx
ret 12
