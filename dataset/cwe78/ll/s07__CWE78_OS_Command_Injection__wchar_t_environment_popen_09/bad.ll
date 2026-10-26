; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s07/CWE78_OS_Command_Injection__wchar_t_environment_popen_09.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s07/CWE78_OS_Command_Injection__wchar_t_environment_popen_09.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@GLOBAL_CONST_TRUE = external constant i32, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 65, i32 68, i32 68, i32 0], align 4
@.str.1 = private unnamed_addr constant [2 x i32] [i32 119, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_environment_popen_09_bad() #0 {
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
  %10 = load i32, ptr @GLOBAL_CONST_TRUE, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %0
  %13 = load ptr, ptr %1, align 8
  %14 = call i64 @wcslen(ptr noundef %13) #5
  store i64 %14, ptr %3, align 8
  %15 = call ptr @getenv(ptr noundef @.str) #6
  store ptr %15, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load ptr, ptr %1, align 8
  %20 = load i64, ptr %3, align 8
  %21 = getelementptr inbounds nuw i32, ptr %19, i64 %20
  %22 = load ptr, ptr %4, align 8
  %23 = load i64, ptr %3, align 8
  %24 = sub i64 100, %23
  %25 = sub i64 %24, 1
  %26 = call ptr @wcsncat(ptr noundef %21, ptr noundef %22, i64 noundef %25) #6
  br label %27

27:                                               ; preds = %18, %12
  br label %28

28:                                               ; preds = %27, %0
  %29 = load ptr, ptr %1, align 8
  %30 = call noalias ptr @popen(ptr noundef %29, ptr noundef @.str.1)
  store ptr %30, ptr %5, align 8
  %31 = load ptr, ptr %5, align 8
  %32 = icmp ne ptr %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load ptr, ptr %5, align 8
  %35 = call i32 @pclose(ptr noundef %34)
  br label %36

36:                                               ; preds = %33, %28
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
