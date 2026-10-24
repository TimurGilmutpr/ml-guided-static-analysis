; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_snprintf_14.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s04/CWE134_Uncontrolled_Format_String__wchar_t_console_snprintf_14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@globalFive = external global i32, align 4
@stdin = external global ptr, align 8
@.str = private unnamed_addr constant [16 x i8] c"fgetws() failed\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4
@.str.3 = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_console_snprintf_14_good() #0 {
  call void @goodB2G1()
  call void @goodB2G2()
  call void @goodG2B1()
  call void @goodG2B2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %5 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = load i32, ptr @globalFive, align 4
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %48

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8
  %10 = call i64 @wcslen(ptr noundef %9) #5
  store i64 %10, ptr %3, align 8
  %11 = load i64, ptr %3, align 8
  %12 = sub i64 100, %11
  %13 = icmp ugt i64 %12, 1
  br i1 %13, label %14, label %47

14:                                               ; preds = %8
  %15 = load ptr, ptr %1, align 8
  %16 = load i64, ptr %3, align 8
  %17 = getelementptr inbounds nuw i32, ptr %15, i64 %16
  %18 = load i64, ptr %3, align 8
  %19 = sub i64 100, %18
  %20 = trunc i64 %19 to i32
  %21 = load ptr, ptr @stdin, align 8
  %22 = call ptr @fgetws(ptr noundef %17, i32 noundef %20, ptr noundef %21)
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %14
  %25 = load ptr, ptr %1, align 8
  %26 = call i64 @wcslen(ptr noundef %25) #5
  store i64 %26, ptr %3, align 8
  %27 = load i64, ptr %3, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load ptr, ptr %1, align 8
  %31 = load i64, ptr %3, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds nuw i32, ptr %30, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load ptr, ptr %1, align 8
  %38 = load i64, ptr %3, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds nuw i32, ptr %37, i64 %39
  store i32 0, ptr %40, align 4
  br label %41

41:                                               ; preds = %36, %29, %24
  br label %46

42:                                               ; preds = %14
  call void @printLine(ptr noundef @.str)
  %43 = load ptr, ptr %1, align 8
  %44 = load i64, ptr %3, align 8
  %45 = getelementptr inbounds nuw i32, ptr %43, i64 %44
  store i32 0, ptr %45, align 4
  br label %46

46:                                               ; preds = %42, %41
  br label %47

47:                                               ; preds = %46, %8
  br label %48

48:                                               ; preds = %47, %0
  %49 = load i32, ptr @globalFive, align 4
  %50 = icmp ne i32 %49, 5
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call void @printLine(ptr noundef @.str.1)
  br label %57

52:                                               ; preds = %48
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %53 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  %54 = load ptr, ptr %1, align 8
  %55 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %53, i64 noundef 99, ptr noundef @.str.2, ptr noundef %54) #6
  %56 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  call void @printWLine(ptr noundef %56)
  br label %57

57:                                               ; preds = %52, %51
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

declare ptr @fgetws(ptr noundef, i32 noundef, ptr noundef) #3

declare void @printLine(ptr noundef) #3

; Function Attrs: nounwind
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

declare void @printWLine(ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %5 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = load i32, ptr @globalFive, align 4
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %48

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8
  %10 = call i64 @wcslen(ptr noundef %9) #5
  store i64 %10, ptr %3, align 8
  %11 = load i64, ptr %3, align 8
  %12 = sub i64 100, %11
  %13 = icmp ugt i64 %12, 1
  br i1 %13, label %14, label %47

14:                                               ; preds = %8
  %15 = load ptr, ptr %1, align 8
  %16 = load i64, ptr %3, align 8
  %17 = getelementptr inbounds nuw i32, ptr %15, i64 %16
  %18 = load i64, ptr %3, align 8
  %19 = sub i64 100, %18
  %20 = trunc i64 %19 to i32
  %21 = load ptr, ptr @stdin, align 8
  %22 = call ptr @fgetws(ptr noundef %17, i32 noundef %20, ptr noundef %21)
  %23 = icmp ne ptr %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %14
  %25 = load ptr, ptr %1, align 8
  %26 = call i64 @wcslen(ptr noundef %25) #5
  store i64 %26, ptr %3, align 8
  %27 = load i64, ptr %3, align 8
  %28 = icmp ugt i64 %27, 0
  br i1 %28, label %29, label %41

29:                                               ; preds = %24
  %30 = load ptr, ptr %1, align 8
  %31 = load i64, ptr %3, align 8
  %32 = sub i64 %31, 1
  %33 = getelementptr inbounds nuw i32, ptr %30, i64 %32
  %34 = load i32, ptr %33, align 4
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %41

36:                                               ; preds = %29
  %37 = load ptr, ptr %1, align 8
  %38 = load i64, ptr %3, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds nuw i32, ptr %37, i64 %39
  store i32 0, ptr %40, align 4
  br label %41

41:                                               ; preds = %36, %29, %24
  br label %46

42:                                               ; preds = %14
  call void @printLine(ptr noundef @.str)
  %43 = load ptr, ptr %1, align 8
  %44 = load i64, ptr %3, align 8
  %45 = getelementptr inbounds nuw i32, ptr %43, i64 %44
  store i32 0, ptr %45, align 4
  br label %46

46:                                               ; preds = %42, %41
  br label %47

47:                                               ; preds = %46, %8
  br label %48

48:                                               ; preds = %47, %0
  %49 = load i32, ptr @globalFive, align 4
  %50 = icmp eq i32 %49, 5
  br i1 %50, label %51, label %56

51:                                               ; preds = %48
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 400, i1 false)
  %52 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  %53 = load ptr, ptr %1, align 8
  %54 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %52, i64 noundef 99, ptr noundef @.str.2, ptr noundef %53) #6
  %55 = getelementptr inbounds [100 x i32], ptr %4, i64 0, i64 0
  call void @printWLine(ptr noundef %55)
  br label %56

56:                                               ; preds = %51, %48
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %4 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %4, ptr %1, align 8
  %5 = load i32, ptr @globalFive, align 4
  %6 = icmp ne i32 %5, 5
  br i1 %6, label %7, label %8

7:                                                ; preds = %0
  call void @printLine(ptr noundef @.str.1)
  br label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8
  %10 = call ptr @wcscpy(ptr noundef %9, ptr noundef @.str.3) #6
  br label %11

11:                                               ; preds = %8, %7
  %12 = load i32, ptr @globalFive, align 4
  %13 = icmp eq i32 %12, 5
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %15 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  %16 = load ptr, ptr %1, align 8
  %17 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %15, i64 noundef 99, ptr noundef %16) #6
  %18 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  call void @printWLine(ptr noundef %18)
  br label %19

19:                                               ; preds = %14, %11
  ret void
}

; Function Attrs: nounwind
declare ptr @wcscpy(ptr noundef, ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %4 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %4, ptr %1, align 8
  %5 = load i32, ptr @globalFive, align 4
  %6 = icmp eq i32 %5, 5
  br i1 %6, label %7, label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 8
  %9 = call ptr @wcscpy(ptr noundef %8, ptr noundef @.str.3) #6
  br label %10

10:                                               ; preds = %7, %0
  %11 = load i32, ptr @globalFive, align 4
  %12 = icmp eq i32 %11, 5
  br i1 %12, label %13, label %18

13:                                               ; preds = %10
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 400, i1 false)
  %14 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  %15 = load ptr, ptr %1, align 8
  %16 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %14, i64 noundef 99, ptr noundef %15) #6
  %17 = getelementptr inbounds [100 x i32], ptr %3, i64 0, i64 0
  call void @printWLine(ptr noundef %17)
  br label %18

18:                                               ; preds = %13, %10
  ret void
}

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
