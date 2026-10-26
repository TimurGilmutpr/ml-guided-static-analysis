; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s06/CWE78_OS_Command_Injection__wchar_t_console_popen_32.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s06/CWE78_OS_Command_Injection__wchar_t_console_popen_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.1 = private unnamed_addr constant [2 x i32] [i32 119, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_console_popen_32_bad() #0 {
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
  %9 = getelementptr inbounds [100 x i32], ptr %4, i32 0, i32 0
  store i32 108, ptr %9, align 16
  %10 = getelementptr inbounds [100 x i32], ptr %4, i32 0, i32 1
  store i32 115, ptr %10, align 4
  %11 = getelementptr inbounds [100 x i32], ptr %4, i32 0, i32 2
  store i32 32, ptr %11, align 8
  %12 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  store ptr %12, ptr %1, align 8
  %13 = load ptr, ptr %2, align 8
  %14 = load ptr, ptr %13, align 8
  store ptr %14, ptr %5, align 8
  %15 = load ptr, ptr %5, align 8
  %16 = call i64 @wcslen(ptr noundef %15) #4
  store i64 %16, ptr %6, align 8
  %17 = load i64, ptr %6, align 8
  %18 = sub i64 100, %17
  %19 = icmp ugt i64 %18, 1
  br i1 %19, label %20, label %53

20:                                               ; preds = %0
  %21 = load ptr, ptr %5, align 8
  %22 = load i64, ptr %6, align 8
  %23 = getelementptr inbounds nuw i32, ptr %21, i64 %22
  %24 = load i64, ptr %6, align 8
  %25 = sub i64 100, %24
  %26 = trunc i64 %25 to i32
  %27 = load ptr, ptr @stdin, align 8
  %28 = call ptr @fgetws(ptr noundef %23, i32 noundef %26, ptr noundef %27)
  %29 = icmp ne ptr %28, null
  br i1 %29, label %30, label %48

30:                                               ; preds = %20
  %31 = load ptr, ptr %5, align 8
  %32 = call i64 @wcslen(ptr noundef %31) #4
  store i64 %32, ptr %6, align 8
  %33 = load i64, ptr %6, align 8
  %34 = icmp ugt i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %30
  %36 = load ptr, ptr %5, align 8
  %37 = load i64, ptr %6, align 8
  %38 = sub i64 %37, 1
  %39 = getelementptr inbounds nuw i32, ptr %36, i64 %38
  %40 = load i32, ptr %39, align 4
  %41 = icmp eq i32 %40, 10
  br i1 %41, label %42, label %47

42:                                               ; preds = %35
  %43 = load ptr, ptr %5, align 8
  %44 = load i64, ptr %6, align 8
  %45 = sub i64 %44, 1
  %46 = getelementptr inbounds nuw i32, ptr %43, i64 %45
  store i32 0, ptr %46, align 4
  br label %47

47:                                               ; preds = %42, %35, %30
  br label %52

48:                                               ; preds = %20
  call void @printLine(ptr noundef @.str)
  %49 = load ptr, ptr %5, align 8
  %50 = load i64, ptr %6, align 8
  %51 = getelementptr inbounds nuw i32, ptr %49, i64 %50
  store i32 0, ptr %51, align 4
  br label %52

52:                                               ; preds = %48, %47
  br label %53

53:                                               ; preds = %52, %0
  %54 = load ptr, ptr %5, align 8
  %55 = load ptr, ptr %2, align 8
  store ptr %54, ptr %55, align 8
  %56 = load ptr, ptr %3, align 8
  %57 = load ptr, ptr %56, align 8
  store ptr %57, ptr %7, align 8
  %58 = load ptr, ptr %7, align 8
  %59 = call noalias ptr @popen(ptr noundef %58, ptr noundef @.str.1)
  store ptr %59, ptr %8, align 8
  %60 = load ptr, ptr %8, align 8
  %61 = icmp ne ptr %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %53
  %63 = load ptr, ptr %8, align 8
  %64 = call i32 @pclose(ptr noundef %63)
  br label %65

65:                                               ; preds = %62, %53
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

declare noalias ptr @popen(ptr noundef, ptr noundef) #3

declare i32 @pclose(ptr noundef) #3

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
