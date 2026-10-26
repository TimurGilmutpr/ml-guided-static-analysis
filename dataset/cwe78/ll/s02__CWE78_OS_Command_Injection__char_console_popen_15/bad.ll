; ModuleID = 'data/C/testcases/CWE78_OS_Command_Injection/s02/CWE78_OS_Command_Injection__char_console_popen_15.c'
source_filename = "data/C/testcases/CWE78_OS_Command_Injection/s02/CWE78_OS_Command_Injection__char_console_popen_15.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"w\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE78_OS_Command_Injection__char_console_popen_15_bad() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 0
  store i8 108, ptr %5, align 16
  %6 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 1
  store i8 115, ptr %6, align 1
  %7 = getelementptr inbounds [100 x i8], ptr %2, i32 0, i32 2
  store i8 32, ptr %7, align 2
  %8 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %8, ptr %1, align 8
  %9 = load ptr, ptr %1, align 8
  %10 = call i64 @strlen(ptr noundef %9) #4
  store i64 %10, ptr %3, align 8
  %11 = load i64, ptr %3, align 8
  %12 = sub i64 100, %11
  %13 = icmp ugt i64 %12, 1
  br i1 %13, label %14, label %48

14:                                               ; preds = %0
  %15 = load ptr, ptr %1, align 8
  %16 = load i64, ptr %3, align 8
  %17 = getelementptr inbounds nuw i8, ptr %15, i64 %16
  %18 = load i64, ptr %3, align 8
  %19 = sub i64 100, %18
  %20 = trunc i64 %19 to i32
  %21 = load ptr, ptr @stdin, align 8
  %22 = call ptr @fgets(ptr noundef %17, i32 noundef %20, ptr noundef %21)
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %43

24:                                               ; preds = %14
  %25 = load ptr, ptr %1, align 8
  %26 = call i64 @strlen(ptr noundef %25) #4
  store i64 %26, ptr %3, align 8
  %27 = load i64, ptr %3, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = load ptr, ptr %1, align 8
  %31 = load i64, ptr %3, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds nuw i8, ptr %30, i64 %32
  %34 = load i8, ptr %33, align 1
  %35 = sext i8 %34 to i32
  %36 = icmp eq i32 %35, 10
  br i1 %36, label %37, label %42

37:                                               ; preds = %29
  %38 = load ptr, ptr %1, align 8
  %39 = load i64, ptr %3, align 8
  %40 = sub i64 %39, 1
  %41 = getelementptr inbounds nuw i8, ptr %38, i64 %40
  store i8 0, ptr %41, align 1
  br label %42

42:                                               ; preds = %37, %29, %24
  br label %47

43:                                               ; preds = %14
  call void @printLine(ptr noundef @.str)
  %44 = load ptr, ptr %1, align 8
  %45 = load i64, ptr %3, align 8
  %46 = getelementptr inbounds nuw i8, ptr %44, i64 %45
  store i8 0, ptr %46, align 1
  br label %47

47:                                               ; preds = %43, %42
  br label %48

48:                                               ; preds = %47, %0
  %49 = load ptr, ptr %1, align 8
  %50 = call noalias ptr @popen(ptr noundef %49, ptr noundef @.str.1)
  store ptr %50, ptr %4, align 8
  %51 = load ptr, ptr %4, align 8
  %52 = icmp ne ptr %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load ptr, ptr %4, align 8
  %55 = call i32 @pclose(ptr noundef %54)
  br label %56

56:                                               ; preds = %53, %48
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #3

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
