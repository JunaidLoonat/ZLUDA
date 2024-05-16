target datalayout = "e-p:64:64-p1:64:64-p2:32:32-p3:32:32-p4:64:64-p5:32:32-p6:32:32-i64:64-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024-v2048:2048-n32:64-S32-A5-G1-ni:7"
target triple = "amdgcn-amd-amdhsa"

define protected amdgpu_kernel void @param_ptr(ptr addrspace(4) byref(i64) %"21", ptr addrspace(4) byref(i64) %"22") #0 {
  %"9" = alloca i1, align 1, addrspace(5)
  %"4" = alloca i64, align 8, addrspace(5)
  %"5" = alloca i64, align 8, addrspace(5)
  %"6" = alloca i64, align 8, addrspace(5)
  %"7" = alloca i64, align 8, addrspace(5)
  %"8" = alloca i64, align 8, addrspace(5)
  %1 = alloca i64, align 8, addrspace(5)
  br label %2

2:                                                ; preds = %0
  store i1 false, ptr addrspace(5) %"9", align 1
  %"24" = ptrtoint ptr addrspace(4) %"21" to i64
  store i64 %"24", ptr addrspace(5) %1, align 8
  %"23" = load i64, ptr addrspace(5) %1, align 8
  store i64 %"23", ptr addrspace(5) %"4", align 8
  %"12" = load i64, ptr addrspace(5) %"4", align 8
  %"25" = inttoptr i64 %"12" to ptr addrspace(4)
  %"11" = load i64, ptr addrspace(4) %"25", align 8
  store i64 %"11", ptr addrspace(5) %"5", align 8
  %"13" = load i64, ptr addrspace(4) %"22", align 8
  store i64 %"13", ptr addrspace(5) %"6", align 8
  %"15" = load i64, ptr addrspace(5) %"5", align 8
  %"26" = inttoptr i64 %"15" to ptr
  %"14" = load i64, ptr %"26", align 8
  store i64 %"14", ptr addrspace(5) %"7", align 8
  %"17" = load i64, ptr addrspace(5) %"7", align 8
  %"16" = add i64 %"17", 1
  store i64 %"16", ptr addrspace(5) %"8", align 8
  %"18" = load i64, ptr addrspace(5) %"6", align 8
  %"19" = load i64, ptr addrspace(5) %"8", align 8
  %"27" = inttoptr i64 %"18" to ptr
  store i64 %"19", ptr %"27", align 8
  ret void
}

attributes #0 = { "amdgpu-unsafe-fp-atomics"="true" "denormal-fp-math"="ieee,ieee" "denormal-fp-math-f32"="ieee,ieee" "no-trapping-math"="true" "uniform-work-group-size"="true" }