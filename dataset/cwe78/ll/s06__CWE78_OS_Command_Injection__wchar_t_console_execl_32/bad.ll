; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s06/CWE78_OS_Command_Injection__wchar_t_console_execl_32.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s06/CWE78_OS_Command_Injection__wchar_t_console_execl_32.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.1 = private unnamed_addr constant [8 x i32] [i32 47, i32 98, i32 105, i32 110, i32 47, i32 115, i32 104, i32 0], align 4
@.str.2 = private unnamed_addr constant [3 x i32] [i32 45, i32 99, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__wchar_t_console_execl_32_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i32], align 16
  %5 = alloca ptr, align 8
  %6 = alloca i64, align 8
  %7 = alloca ptr, align 8
  store ptr %1, ptr %2, align 8
  store ptr %1, ptr %3, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %8 = getelementptr inbounds [100 x i32], ptr %4, i32 0, i32 0
  store i32 108, ptr %8, align 16
  %9 = getelementptr inbounds [100 x i32], ptr %4, i32 0, i32 1
  store i32 115, ptr %9, align 4
  %10 = getelementptr inbounds [100 x i32], ptr %4, i32 0, i32 2
  store i32 32, ptr %10, align 8
  %11 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  store ptr %11, ptr %1, align 8
  %12 = load ptr, ptr %2, align 8
  %13 = load ptr, ptr %12, align 8
  store ptr %13, ptr %5, align 8
  %14 = load ptr, ptr %5, align 8
  %15 = call i64 @wcslen(ptr noundef %14) #5
  store i64 %15, ptr %6, align 8
  %16 = load i64, ptr %6, align 8
  %17 = sub i64 100, %16
  %18 = icmp ugt i64 %17, 1
  br i1 %18, label %19, label %52

19:                                               ; preds = %0
  %20 = load ptr, ptr %5, align 8
  %21 = load i64, ptr %6, align 8
  %22 = getelementptr inbounds nuw i32, ptr %20, i64 %21
  %23 = load i64, ptr %6, align 8
  %24 = sub i64 100, %23
  %25 = trunc i64 %24 to i32
  %26 = load ptr, ptr @stdin, align 8
  %27 = call ptr @fgetws(ptr noundef %22, i32 noundef %25, ptr noundef %26)
  %28 = icmp ne ptr %27, null
  br i1 %28, label %29, label %47

29:                                               ; preds = %19
  %30 = load ptr, ptr %5, align 8
  %31 = call i64 @wcslen(ptr noundef %30) #5
  store i64 %31, ptr %6, align 8
  %32 = load i64, ptr %6, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %46

34:                                               ; preds = %29
  %35 = load ptr, ptr %5, align 8
  %36 = load i64, ptr %6, align 8
  %37 = sub i64 %36, 1
  %38 = getelementptr inbounds nuw i32, ptr %35, i64 %37
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load ptr, ptr %5, align 8
  %43 = load i64, ptr %6, align 8
  %44 = sub i64 %43, 1
  %45 = getelementptr inbounds nuw i32, ptr %42, i64 %44
  store i32 0, ptr %45, align 4
  br label %46

46:                                               ; preds = %41, %34, %29
  br label %51

47:                                               ; preds = %19
  call void @printLine(ptr noundef @.str)
  %48 = load ptr, ptr %5, align 8
  %49 = load i64, ptr %6, align 8
  %50 = getelementptr inbounds nuw i32, ptr %48, i64 %49
  store i32 0, ptr %50, align 4
  br label %51

51:                                               ; preds = %47, %46
  br label %52

52:                                               ; preds = %51, %0
  %53 = load ptr, ptr %5, align 8
  %54 = load ptr, ptr %2, align 8
  store ptr %53, ptr %54, align 8
  %55 = load ptr, ptr %3, align 8
  %56 = load ptr, ptr %55, align 8
  store ptr %56, ptr %7, align 8
  %57 = load ptr, ptr %7, align 8
  %58 = call i32 (ptr, ptr, ...) @execl(ptr noundef @.str.1, ptr noundef @.str.1, ptr noundef @.str.2, ptr noundef %57, ptr noundef null) #6
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @execl(ptr noundef, ptr noundef, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
