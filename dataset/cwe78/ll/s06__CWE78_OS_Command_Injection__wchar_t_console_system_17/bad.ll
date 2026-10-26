; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s06/CWE78_OS_Command_Injection__wchar_t_console_system_17.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s06/CWE78_OS_Command_Injection__wchar_t_console_system_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"command execution failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_console_system_17_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca [100 x i32], align 16
  %4 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %5 = getelementptr inbounds [100 x i32], ptr %3, i32 0, i32 0
  store i32 108, ptr %5, align 16
  %6 = getelementptr inbounds [100 x i32], ptr %3, i32 0, i32 1
  store i32 115, ptr %6, align 4
  %7 = getelementptr inbounds [100 x i32], ptr %3, i32 0, i32 2
  store i32 32, ptr %7, align 8
  %8 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  store ptr %8, ptr %2, align 8
  store i32 0, ptr %1, align 4
  br label %9

9:                                                ; preds = %52, %0
  %10 = load i32, ptr %1, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %55

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 8
  %14 = call i64 @wcslen(ptr noundef %13) #5
  store i64 %14, ptr %4, align 8
  %15 = load i64, ptr %4, align 8
  %16 = sub i64 100, %15
  %17 = icmp ugt i64 %16, 1
  br i1 %17, label %18, label %51

18:                                               ; preds = %12
  %19 = load ptr, ptr %2, align 8
  %20 = load i64, ptr %4, align 8
  %21 = getelementptr inbounds nuw i32, ptr %19, i64 %20
  %22 = load i64, ptr %4, align 8
  %23 = sub i64 100, %22
  %24 = trunc i64 %23 to i32
  %25 = load ptr, ptr @stdin, align 8
  %26 = call ptr @fgetws(ptr noundef %21, i32 noundef %24, ptr noundef %25)
  %27 = icmp ne ptr %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %18
  %29 = load ptr, ptr %2, align 8
  %30 = call i64 @wcslen(ptr noundef %29) #5
  store i64 %30, ptr %4, align 8
  %31 = load i64, ptr %4, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %45

33:                                               ; preds = %28
  %34 = load ptr, ptr %2, align 8
  %35 = load i64, ptr %4, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds nuw i32, ptr %34, i64 %36
  %38 = load i32, ptr %37, align 4
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %45

40:                                               ; preds = %33
  %41 = load ptr, ptr %2, align 8
  %42 = load i64, ptr %4, align 8
  %43 = sub i64 %42, 1
  %44 = getelementptr inbounds nuw i32, ptr %41, i64 %43
  store i32 0, ptr %44, align 4
  br label %45

45:                                               ; preds = %40, %33, %28
  br label %50

46:                                               ; preds = %18
  call void @printLine(ptr noundef @.str)
  %47 = load ptr, ptr %2, align 8
  %48 = load i64, ptr %4, align 8
  %49 = getelementptr inbounds nuw i32, ptr %47, i64 %48
  store i32 0, ptr %49, align 4
  br label %50

50:                                               ; preds = %46, %45
  br label %51

51:                                               ; preds = %50, %12
  br label %52

52:                                               ; preds = %51
  %53 = load i32, ptr %1, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, ptr %1, align 4
  br label %9, !llvm.loop !6

55:                                               ; preds = %9
  %56 = load ptr, ptr %2, align 8
  %57 = call i32 @system(ptr noundef %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %55
  call void @printLine(ptr noundef @.str.1)
  call void @exit(i32 noundef 1) #6
  unreachable

60:                                               ; preds = %55
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

declare i32 @system(ptr noundef) #3

; Function Attrs: noreturn nounwind
declare void @exit(i32 noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind willreturn memory(read) }
attributes #6 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
