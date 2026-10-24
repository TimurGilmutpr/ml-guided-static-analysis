; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s01/CWE134_Uncontrolled_Format_String__char_console_vprintf_09.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s01/CWE134_Uncontrolled_Format_String__char_console_vprintf_09.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@GLOBAL_CONST_FALSE = external constant i32, align 4
@.str = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@GLOBAL_CONST_TRUE = external constant i32, align 4
@stdin = external global ptr, align 8
@.str.2 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_console_vprintf_09_good() #0 {
  call void @goodG2B1()
  call void @goodG2B2()
  call void @goodB2G1()
  call void @goodB2G2()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %3 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %3, ptr %1, align 8
  %4 = load i32, ptr @GLOBAL_CONST_FALSE, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @printLine(ptr noundef @.str)
  br label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 8
  %9 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.1) #6
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i32, ptr @GLOBAL_CONST_TRUE, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load ptr, ptr %1, align 8
  %15 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodG2B1VaSinkB(ptr noundef %14, ptr noundef %15)
  br label %16

16:                                               ; preds = %13, %10
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare void @printLine(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B1VaSinkB(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %4)
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  %7 = call i32 @vprintf(ptr noundef %5, ptr noundef %6) #6
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %8)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nounwind
declare i32 @vprintf(ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %3 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %3, ptr %1, align 8
  %4 = load i32, ptr @GLOBAL_CONST_TRUE, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load ptr, ptr %1, align 8
  %8 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.1) #6
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, ptr @GLOBAL_CONST_TRUE, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %9
  %13 = load ptr, ptr %1, align 8
  %14 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodG2B2VaSinkB(ptr noundef %13, ptr noundef %14)
  br label %15

15:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2VaSinkB(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %4)
  %5 = load ptr, ptr %2, align 8
  %6 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  %7 = call i32 @vprintf(ptr noundef %5, ptr noundef %6) #6
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %8)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %4 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %4, ptr %1, align 8
  %5 = load i32, ptr @GLOBAL_CONST_TRUE, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 8
  %9 = call i64 @strlen(ptr noundef %8) #7
  store i64 %9, ptr %3, align 8
  %10 = load i64, ptr %3, align 8
  %11 = sub i64 100, %10
  %12 = icmp ugt i64 %11, 1
  br i1 %12, label %13, label %47

13:                                               ; preds = %7
  %14 = load ptr, ptr %1, align 8
  %15 = load i64, ptr %3, align 8
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 %15
  %17 = load i64, ptr %3, align 8
  %18 = sub i64 100, %17
  %19 = trunc i64 %18 to i32
  %20 = load ptr, ptr @stdin, align 8
  %21 = call ptr @fgets(ptr noundef %16, i32 noundef %19, ptr noundef %20)
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %13
  %24 = load ptr, ptr %1, align 8
  %25 = call i64 @strlen(ptr noundef %24) #7
  store i64 %25, ptr %3, align 8
  %26 = load i64, ptr %3, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load ptr, ptr %1, align 8
  %30 = load i64, ptr %3, align 8
  %31 = sub i64 %30, 1
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 %31
  %33 = load i8, ptr %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load ptr, ptr %1, align 8
  %38 = load i64, ptr %3, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 %39
  store i8 0, ptr %40, align 1
  br label %41

41:                                               ; preds = %36, %28, %23
  br label %46

42:                                               ; preds = %13
  call void @printLine(ptr noundef @.str.2)
  %43 = load ptr, ptr %1, align 8
  %44 = load i64, ptr %3, align 8
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 %44
  store i8 0, ptr %45, align 1
  br label %46

46:                                               ; preds = %42, %41
  br label %47

47:                                               ; preds = %46, %7
  br label %48

48:                                               ; preds = %47, %0
  %49 = load i32, ptr @GLOBAL_CONST_FALSE, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  call void @printLine(ptr noundef @.str)
  br label %55

52:                                               ; preds = %48
  %53 = load ptr, ptr %1, align 8
  %54 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodB2G1VaSinkG(ptr noundef %53, ptr noundef %54)
  br label %55

55:                                               ; preds = %52, %51
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1VaSinkG(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %4)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  %6 = call i32 @vprintf(ptr noundef @.str.3, ptr noundef %5) #6
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %7)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %4 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %4, ptr %1, align 8
  %5 = load i32, ptr @GLOBAL_CONST_TRUE, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 8
  %9 = call i64 @strlen(ptr noundef %8) #7
  store i64 %9, ptr %3, align 8
  %10 = load i64, ptr %3, align 8
  %11 = sub i64 100, %10
  %12 = icmp ugt i64 %11, 1
  br i1 %12, label %13, label %47

13:                                               ; preds = %7
  %14 = load ptr, ptr %1, align 8
  %15 = load i64, ptr %3, align 8
  %16 = getelementptr inbounds nuw i8, ptr %14, i64 %15
  %17 = load i64, ptr %3, align 8
  %18 = sub i64 100, %17
  %19 = trunc i64 %18 to i32
  %20 = load ptr, ptr @stdin, align 8
  %21 = call ptr @fgets(ptr noundef %16, i32 noundef %19, ptr noundef %20)
  %22 = icmp ne ptr %21, null
  br i1 %22, label %23, label %42

23:                                               ; preds = %13
  %24 = load ptr, ptr %1, align 8
  %25 = call i64 @strlen(ptr noundef %24) #7
  store i64 %25, ptr %3, align 8
  %26 = load i64, ptr %3, align 8
  %27 = icmp ugt i64 %26, 0
  br i1 %27, label %28, label %41

28:                                               ; preds = %23
  %29 = load ptr, ptr %1, align 8
  %30 = load i64, ptr %3, align 8
  %31 = sub i64 %30, 1
  %32 = getelementptr inbounds nuw i8, ptr %29, i64 %31
  %33 = load i8, ptr %32, align 1
  %34 = sext i8 %33 to i32
  %35 = icmp eq i32 %34, 10
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load ptr, ptr %1, align 8
  %38 = load i64, ptr %3, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds nuw i8, ptr %37, i64 %39
  store i8 0, ptr %40, align 1
  br label %41

41:                                               ; preds = %36, %28, %23
  br label %46

42:                                               ; preds = %13
  call void @printLine(ptr noundef @.str.2)
  %43 = load ptr, ptr %1, align 8
  %44 = load i64, ptr %3, align 8
  %45 = getelementptr inbounds nuw i8, ptr %43, i64 %44
  store i8 0, ptr %45, align 1
  br label %46

46:                                               ; preds = %42, %41
  br label %47

47:                                               ; preds = %46, %7
  br label %48

48:                                               ; preds = %47, %0
  %49 = load i32, ptr @GLOBAL_CONST_TRUE, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %48
  %52 = load ptr, ptr %1, align 8
  %53 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodB2G2VaSinkG(ptr noundef %52, ptr noundef %53)
  br label %54

54:                                               ; preds = %51, %48
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2VaSinkG(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  %4 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %4)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  %6 = call i32 @vprintf(ptr noundef @.str.3, ptr noundef %5) #6
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %3, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %7)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"frame-pointer", i32 2}
!5 = !{!"Ubuntu clang version 21.1.8 (6ubuntu1)"}
