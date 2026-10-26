; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s06/CWE78_OS_Command_Injection__wchar_t_console_system_21.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s06/CWE78_OS_Command_Injection__wchar_t_console_system_21.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@badStatic = internal global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"command execution failed!\00", align 1
@stdin = external global ptr, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_console_system_21_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %3 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 0
  store i32 108, ptr %3, align 16
  %4 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 1
  store i32 115, ptr %4, align 4
  %5 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 2
  store i32 32, ptr %5, align 8
  %6 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %6, ptr %1, align 8
  store i32 1, ptr @badStatic, align 4
  %7 = load ptr, ptr %1, align 8
  %8 = call ptr @badSource(ptr noundef %7)
  store ptr %8, ptr %1, align 8
  %9 = load ptr, ptr %1, align 8
  %10 = call i32 @system(ptr noundef %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %0
  call void @printLine(ptr noundef @.str)
  call void @exit(i32 noundef 1) #5
  unreachable

13:                                               ; preds = %0
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: noinline nounwind optnone uwtable
define internal ptr @badSource(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca i64, align 8
  store ptr %0, ptr %2, align 8
  %4 = load i32, ptr @badStatic, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %46

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8
  %8 = call i64 @wcslen(ptr noundef %7) #6
  store i64 %8, ptr %3, align 8
  %9 = load i64, ptr %3, align 8
  %10 = sub i64 100, %9
  %11 = icmp ugt i64 %10, 1
  br i1 %11, label %12, label %45

12:                                               ; preds = %6
  %13 = load ptr, ptr %2, align 8
  %14 = load i64, ptr %3, align 8
  %15 = getelementptr inbounds nuw i32, ptr %13, i64 %14
  %16 = load i64, ptr %3, align 8
  %17 = sub i64 100, %16
  %18 = trunc i64 %17 to i32
  %19 = load ptr, ptr @stdin, align 8
  %20 = call ptr @fgetws(ptr noundef %15, i32 noundef %18, ptr noundef %19)
  %21 = icmp ne ptr %20, null
  br i1 %21, label %22, label %40

22:                                               ; preds = %12
  %23 = load ptr, ptr %2, align 8
  %24 = call i64 @wcslen(ptr noundef %23) #6
  store i64 %24, ptr %3, align 8
  %25 = load i64, ptr %3, align 8
  %26 = icmp ugt i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %22
  %28 = load ptr, ptr %2, align 8
  %29 = load i64, ptr %3, align 8
  %30 = sub i64 %29, 1
  %31 = getelementptr inbounds nuw i32, ptr %28, i64 %30
  %32 = load i32, ptr %31, align 4
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load ptr, ptr %2, align 8
  %36 = load i64, ptr %3, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds nuw i32, ptr %35, i64 %37
  store i32 0, ptr %38, align 4
  br label %39

39:                                               ; preds = %34, %27, %22
  br label %44

40:                                               ; preds = %12
  call void @printLine(ptr noundef @.str.1)
  %41 = load ptr, ptr %2, align 8
  %42 = load i64, ptr %3, align 8
  %43 = getelementptr inbounds nuw i32, ptr %41, i64 %42
  store i32 0, ptr %43, align 4
  br label %44

44:                                               ; preds = %40, %39
  br label %45

45:                                               ; preds = %44, %6
  br label %46

46:                                               ; preds = %45, %1
  %47 = load ptr, ptr %2, align 8
  ret ptr %47
}

declare i32 @system(ptr noundef) #2

declare void @printLine(ptr noundef) #2

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #3

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #4

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #2

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
