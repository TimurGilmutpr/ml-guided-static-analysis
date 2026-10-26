; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s07/CWE78_OS_Command_Injection__wchar_t_environment_popen_01.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s07/CWE78_OS_Command_Injection__wchar_t_environment_popen_01.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i32] [i32 65, i32 68, i32 68, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 119, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_environment_popen_01_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %6 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 0
  store i32 108, ptr %6, align 16
  %7 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 1
  store i32 115, ptr %7, align 4
  %8 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 2
  store i32 32, ptr %8, align 8
  %9 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  %10 = load ptr, ptr %1, align 8
  %11 = call i64 @wcslen(ptr noundef %10) #5
  store i64 %11, ptr %3, align 8
  %12 = call ptr @getenv(ptr noundef @.str) #6
  store ptr %12, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %0
  %16 = load ptr, ptr %1, align 8
  %17 = load i64, ptr %3, align 8
  %18 = getelementptr inbounds nuw i32, ptr %16, i64 %17
  %19 = load ptr, ptr %4, align 8
  %20 = load i64, ptr %3, align 8
  %21 = sub i64 100, %20
  %22 = sub i64 %21, 1
  %23 = call ptr @wcsncat(ptr noundef %18, ptr noundef %19, i64 noundef %22) #6
  br label %24

24:                                               ; preds = %15, %0
  %25 = load ptr, ptr %1, align 8
  %26 = call noalias ptr @popen(ptr noundef %25, ptr noundef @.str.1)
  store ptr %26, ptr %5, align 8
  %27 = load ptr, ptr %5, align 8
  %28 = icmp ne ptr %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load ptr, ptr %5, align 8
  %31 = call i32 @pclose(ptr noundef %30)
  br label %32

32:                                               ; preds = %29, %24
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @wcsncat(ptr noundef, ptr noundef, i64 noundef) #3

declare noalias ptr @popen(ptr noundef, ptr noundef) #4

declare i32 @pclose(ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
