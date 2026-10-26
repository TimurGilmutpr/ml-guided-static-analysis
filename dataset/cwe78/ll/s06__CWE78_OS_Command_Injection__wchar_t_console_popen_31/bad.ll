; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s06/CWE78_OS_Command_Injection__wchar_t_console_popen_31.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s06/CWE78_OS_Command_Injection__wchar_t_console_popen_31.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.1 = private unnamed_addr constant [2 x i32] [i32 119, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_console_popen_31_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %7 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 0
  store i32 108, ptr %7, align 16
  %8 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 1
  store i32 115, ptr %8, align 4
  %9 = getelementptr inbounds [100 x i32], ptr %2, i32 0, i32 2
  store i32 32, ptr %9, align 8
  %10 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %10, ptr %1, align 8
  %11 = load ptr, ptr %1, align 8
  %12 = call i64 @wcslen(ptr noundef %11) #4
  store i64 %12, ptr %3, align 8
  %13 = load i64, ptr %3, align 8
  %14 = sub i64 100, %13
  %15 = icmp ugt i64 %14, 1
  br i1 %15, label %16, label %49

16:                                               ; preds = %0
  %17 = load ptr, ptr %1, align 8
  %18 = load i64, ptr %3, align 8
  %19 = getelementptr inbounds nuw i32, ptr %17, i64 %18
  %20 = load i64, ptr %3, align 8
  %21 = sub i64 100, %20
  %22 = trunc i64 %21 to i32
  %23 = load ptr, ptr @stdin, align 8
  %24 = call ptr @fgetws(ptr noundef %19, i32 noundef %22, ptr noundef %23)
  %25 = icmp ne ptr %24, null
  br i1 %25, label %26, label %44

26:                                               ; preds = %16
  %27 = load ptr, ptr %1, align 8
  %28 = call i64 @wcslen(ptr noundef %27) #4
  store i64 %28, ptr %3, align 8
  %29 = load i64, ptr %3, align 8
  %30 = icmp ugt i64 %29, 0
  br i1 %30, label %31, label %43

31:                                               ; preds = %26
  %32 = load ptr, ptr %1, align 8
  %33 = load i64, ptr %3, align 8
  %34 = sub i64 %33, 1
  %35 = getelementptr inbounds nuw i32, ptr %32, i64 %34
  %36 = load i32, ptr %35, align 4
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load ptr, ptr %1, align 8
  %40 = load i64, ptr %3, align 8
  %41 = sub i64 %40, 1
  %42 = getelementptr inbounds nuw i32, ptr %39, i64 %41
  store i32 0, ptr %42, align 4
  br label %43

43:                                               ; preds = %38, %31, %26
  br label %48

44:                                               ; preds = %16
  call void @printLine(ptr noundef @.str)
  %45 = load ptr, ptr %1, align 8
  %46 = load i64, ptr %3, align 8
  %47 = getelementptr inbounds nuw i32, ptr %45, i64 %46
  store i32 0, ptr %47, align 4
  br label %48

48:                                               ; preds = %44, %43
  br label %49

49:                                               ; preds = %48, %0
  %50 = load ptr, ptr %1, align 8
  store ptr %50, ptr %4, align 8
  %51 = load ptr, ptr %4, align 8
  store ptr %51, ptr %5, align 8
  %52 = load ptr, ptr %5, align 8
  %53 = call noalias ptr @popen(ptr noundef %52, ptr noundef @.str.1)
  store ptr %53, ptr %6, align 8
  %54 = load ptr, ptr %6, align 8
  %55 = icmp ne ptr %54, null
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load ptr, ptr %6, align 8
  %58 = call i32 @pclose(ptr noundef %57)
  br label %59

59:                                               ; preds = %56, %49
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
