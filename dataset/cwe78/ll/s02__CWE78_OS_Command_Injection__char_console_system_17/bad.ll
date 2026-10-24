; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE78_OS_Command_Injection/s02/CWE78_OS_Command_Injection__char_console_system_17.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE78_OS_Command_Injection/s02/CWE78_OS_Command_Injection__char_console_system_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"command execution failed!\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__char_console_system_17_bad() #0 {
  %1 = alloca i32, align 4
  %2 = alloca ptr, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], ptr %3, i32 0, i32 0
  store i8 108, ptr %5, align 16
  %6 = getelementptr inbounds [100 x i8], ptr %3, i32 0, i32 1
  store i8 115, ptr %6, align 1
  %7 = getelementptr inbounds [100 x i8], ptr %3, i32 0, i32 2
  store i8 32, ptr %7, align 2
  %8 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  store ptr %8, ptr %2, align 8
  store i32 0, ptr %1, align 4
  br label %9

9:                                                ; preds = %53, %0
  %10 = load i32, ptr %1, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %56

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 8
  %14 = call i64 @strlen(ptr noundef %13) #5
  store i64 %14, ptr %4, align 8
  %15 = load i64, ptr %4, align 8
  %16 = sub i64 100, %15
  %17 = icmp ugt i64 %16, 1
  br i1 %17, label %18, label %52

18:                                               ; preds = %12
  %19 = load ptr, ptr %2, align 8
  %20 = load i64, ptr %4, align 8
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 %20
  %22 = load i64, ptr %4, align 8
  %23 = sub i64 100, %22
  %24 = trunc i64 %23 to i32
  %25 = load ptr, ptr @stdin, align 8
  %26 = call ptr @fgets(ptr noundef %21, i32 noundef %24, ptr noundef %25)
  %27 = icmp ne ptr %26, null
  br i1 %27, label %28, label %47

28:                                               ; preds = %18
  %29 = load ptr, ptr %2, align 8
  %30 = call i64 @strlen(ptr noundef %29) #5
  store i64 %30, ptr %4, align 8
  %31 = load i64, ptr %4, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %28
  %34 = load ptr, ptr %2, align 8
  %35 = load i64, ptr %4, align 8
  %36 = sub i64 %35, 1
  %37 = getelementptr inbounds nuw i8, ptr %34, i64 %36
  %38 = load i8, ptr %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load ptr, ptr %2, align 8
  %43 = load i64, ptr %4, align 8
  %44 = sub i64 %43, 1
  %45 = getelementptr inbounds nuw i8, ptr %42, i64 %44
  store i8 0, ptr %45, align 1
  br label %46

46:                                               ; preds = %41, %33, %28
  br label %51

47:                                               ; preds = %18
  call void @printLine(ptr noundef @.str)
  %48 = load ptr, ptr %2, align 8
  %49 = load i64, ptr %4, align 8
  %50 = getelementptr inbounds nuw i8, ptr %48, i64 %49
  store i8 0, ptr %50, align 1
  br label %51

51:                                               ; preds = %47, %46
  br label %52

52:                                               ; preds = %51, %12
  br label %53

53:                                               ; preds = %52
  %54 = load i32, ptr %1, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, ptr %1, align 4
  br label %9, !llvm.loop !6

56:                                               ; preds = %9
  %57 = load ptr, ptr %2, align 8
  %58 = call i32 @system(ptr noundef %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  call void @printLine(ptr noundef @.str.1)
  call void @exit(i32 noundef 1) #6
  unreachable

61:                                               ; preds = %56
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

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
