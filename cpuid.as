#ifndef __cpuid_mod4hsp__
#module __cpuid_mod4hsp__
#uselib "Kernel32.dll"
#func VirtualProtect_internal "VirtualProtect" int,int,int,int
#deffunc local __cpuid_mod4hsp__init__
docpuid=0x24448B53,0x244C8B0C,0x56A20F10,0x0C24748B,0x5E890689,0x084E8904,0x5E0C5689,0x000CC25B
currentattr=0
VirtualProtect_internal varptr(docpuid),varsize(docpuid),0x40,varptr(currentattr)
return
#deffunc cpuid var prm_0,int prm_1,int prm_2
option4cpuid=varptr(prm_0),prm_1,prm_2
return callfunc(option4cpuid,varptr(docpuid),3)
#global
__cpuid_mod4hsp__init__@__cpuid_mod4hsp__
#endif
