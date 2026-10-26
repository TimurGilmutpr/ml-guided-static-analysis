; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_environment_fprintf_32.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_environment_fprintf_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4
@stdout = external global ptr, align 8
@.str.1 = private unnamed_addr constant [4 x i32] [i32 65, i32 68, i32 68, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 37, i32 115, i32 10, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_environment_fprintf_32_good() #0 {
  call void @goodG2B()
  call void @goodB2G()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i32], align 16
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %7 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  store ptr %7, ptr %1, align 8
  %8 = load ptr, ptr %2, align 8
  %9 = load ptr, ptr %8, align 8
  store ptr %9, ptr %5, align 8
  %10 = load ptr, ptr %5, align 8
  %11 = call ptr @wcscpy(ptr noundef %10, ptr noundef @.str) #5
  %12 = load ptr, ptr %5, align 8
  %13 = load ptr, ptr %2, align 8
  store ptr %12, ptr %13, align 8
  %14 = load ptr, ptr %3, align 8
  %15 = load ptr, ptr %14, align 8
  store ptr %15, ptr %6, align 8
  %16 = load ptr, ptr @stdout, align 8
  %17 = load ptr, ptr %6, align 8
  %18 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %16, ptr noundef %17)
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) #2

declare i32 @fwprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i32], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  %8 = alloca ptr, align 8
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %9 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  %10 = load ptr, ptr %2, align 8
  %11 = load ptr, ptr %10, align 8
  store ptr %11, ptr %5, align 8
  %12 = load ptr, ptr %5, align 8
  %13 = call i64 @wcslen(ptr noundef %12) #6
  store i64 %13, ptr %6, align 8
  %14 = call ptr @getenv(ptr noundef @.str.1) #5
  store ptr %14, ptr %7, align 8
  %15 = load ptr, ptr %7, align 8
  %16 = icmp ne ptr %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %0
  %18 = load ptr, ptr %5, align 8
  %19 = load i64, ptr %6, align 8
  %20 = getelementptr inbounds nuw i32, ptr %18, i64 %19
  %21 = load ptr, ptr %7, align 8
  %22 = load i64, ptr %6, align 8
  %23 = sub i64 100, %22
  %24 = sub i64 %23, 1
  %25 = call ptr @wcsncat(ptr noundef %20, ptr noundef %21, i64 noundef %24) #5
  br label %26

26:                                               ; preds = %17, %0
  %27 = load ptr, ptr %5, align 8
  %28 = load ptr, ptr %2, align 8
  store ptr %27, ptr %28, align 8
  %29 = load ptr, ptr %3, align 8
  %30 = load ptr, ptr %29, align 8
  store ptr %30, ptr %8, align 8
  %31 = load ptr, ptr @stdout, align 8
  %32 = load ptr, ptr %8, align 8
  %33 = call i32 (ptr, ptr, ...) @fwprintf(ptr noundef %31, ptr noundef @.str.2, ptr noundef %32)
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #4

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @wcsncat(ptr noundef, ptr noundef, i64 noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
