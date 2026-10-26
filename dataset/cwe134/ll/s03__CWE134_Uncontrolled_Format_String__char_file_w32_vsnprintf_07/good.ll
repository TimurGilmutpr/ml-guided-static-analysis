; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s03/CWE134_Uncontrolled_Format_String__char_file_w32_vsnprintf_07.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s03/CWE134_Uncontrolled_Format_String__char_file_w32_vsnprintf_07.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.__va_list_tag = type { i32, i32, ptr, ptr }

@staticFive = internal global i32 5, align 4
@.str = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"/tmp/file.txt\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"fgets() failed\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_file_w32_vsnprintf_07_good() #0 {
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
  %4 = load i32, ptr @staticFive, align 4
  %5 = icmp ne i32 %4, 5
  br i1 %5, label %6, label %7

6:                                                ; preds = %0
  call void @printLine(ptr noundef @.str)
  br label %10

7:                                                ; preds = %0
  %8 = load ptr, ptr %1, align 8
  %9 = call ptr @strcpy(ptr noundef %8, ptr noundef @.str.1) #6
  br label %10

10:                                               ; preds = %7, %6
  %11 = load i32, ptr @staticFive, align 4
  %12 = icmp eq i32 %11, 5
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
  %3 = alloca [100 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %5)
  %6 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  %9 = call i32 @vsnprintf(ptr noundef %6, i64 noundef 99, ptr noundef %7, ptr noundef %8) #6
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %10)
  %11 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  call void @printLine(ptr noundef %11)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #4

; Function Attrs: nounwind
declare i32 @vsnprintf(ptr noundef, i64 noundef, ptr noundef, ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %3 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %3, ptr %1, align 8
  %4 = load i32, ptr @staticFive, align 4
  %5 = icmp eq i32 %4, 5
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load ptr, ptr %1, align 8
  %8 = call ptr @strcpy(ptr noundef %7, ptr noundef @.str.1) #6
  br label %9

9:                                                ; preds = %6, %0
  %10 = load i32, ptr @staticFive, align 4
  %11 = icmp eq i32 %10, 5
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
  %3 = alloca [100 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %5)
  %6 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  %7 = load ptr, ptr %2, align 8
  %8 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  %9 = call i32 @vsnprintf(ptr noundef %6, i64 noundef 99, ptr noundef %7, ptr noundef %8) #6
  %10 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %10)
  %11 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  call void @printLine(ptr noundef %11)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = load i32, ptr @staticFive, align 4
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %37

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8
  %10 = call i64 @strlen(ptr noundef %9) #7
  store i64 %10, ptr %3, align 8
  %11 = load i64, ptr %3, align 8
  %12 = sub i64 100, %11
  %13 = icmp ugt i64 %12, 1
  br i1 %13, label %14, label %36

14:                                               ; preds = %8
  %15 = call noalias ptr @fopen(ptr noundef @.str.2, ptr noundef @.str.3)
  store ptr %15, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load ptr, ptr %1, align 8
  %20 = load i64, ptr %3, align 8
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 %20
  %22 = load i64, ptr %3, align 8
  %23 = sub i64 100, %22
  %24 = trunc i64 %23 to i32
  %25 = load ptr, ptr %4, align 8
  %26 = call ptr @fgets(ptr noundef %21, i32 noundef %24, ptr noundef %25)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  call void @printLine(ptr noundef @.str.4)
  %29 = load ptr, ptr %1, align 8
  %30 = load i64, ptr %3, align 8
  %31 = getelementptr inbounds nuw i8, ptr %29, i64 %30
  store i8 0, ptr %31, align 1
  br label %32

32:                                               ; preds = %28, %18
  %33 = load ptr, ptr %4, align 8
  %34 = call i32 @fclose(ptr noundef %33)
  br label %35

35:                                               ; preds = %32, %14
  br label %36

36:                                               ; preds = %35, %8
  br label %37

37:                                               ; preds = %36, %0
  %38 = load i32, ptr @staticFive, align 4
  %39 = icmp ne i32 %38, 5
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  call void @printLine(ptr noundef @.str)
  br label %44

41:                                               ; preds = %37
  %42 = load ptr, ptr %1, align 8
  %43 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodB2G1VaSinkG(ptr noundef %42, ptr noundef %43)
  br label %44

44:                                               ; preds = %41, %40
  ret void
}

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #5

declare noalias ptr @fopen(ptr noundef, ptr noundef) #2

declare ptr @fgets(ptr noundef, i32 noundef, ptr noundef) #2

declare i32 @fclose(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G1VaSinkG(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %5)
  %6 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  %8 = call i32 @vsnprintf(ptr noundef %6, i64 noundef 99, ptr noundef @.str.5, ptr noundef %7) #6
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %9)
  %10 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  call void @printLine(ptr noundef %10)
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = load i32, ptr @staticFive, align 4
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %37

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8
  %10 = call i64 @strlen(ptr noundef %9) #7
  store i64 %10, ptr %3, align 8
  %11 = load i64, ptr %3, align 8
  %12 = sub i64 100, %11
  %13 = icmp ugt i64 %12, 1
  br i1 %13, label %14, label %36

14:                                               ; preds = %8
  %15 = call noalias ptr @fopen(ptr noundef @.str.2, ptr noundef @.str.3)
  store ptr %15, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load ptr, ptr %1, align 8
  %20 = load i64, ptr %3, align 8
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 %20
  %22 = load i64, ptr %3, align 8
  %23 = sub i64 100, %22
  %24 = trunc i64 %23 to i32
  %25 = load ptr, ptr %4, align 8
  %26 = call ptr @fgets(ptr noundef %21, i32 noundef %24, ptr noundef %25)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %18
  call void @printLine(ptr noundef @.str.4)
  %29 = load ptr, ptr %1, align 8
  %30 = load i64, ptr %3, align 8
  %31 = getelementptr inbounds nuw i8, ptr %29, i64 %30
  store i8 0, ptr %31, align 1
  br label %32

32:                                               ; preds = %28, %18
  %33 = load ptr, ptr %4, align 8
  %34 = call i32 @fclose(ptr noundef %33)
  br label %35

35:                                               ; preds = %32, %14
  br label %36

36:                                               ; preds = %35, %8
  br label %37

37:                                               ; preds = %36, %0
  %38 = load i32, ptr @staticFive, align 4
  %39 = icmp eq i32 %38, 5
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load ptr, ptr %1, align 8
  %42 = load ptr, ptr %1, align 8
  call void (ptr, ...) @goodB2G2VaSinkG(ptr noundef %41, ptr noundef %42)
  br label %43

43:                                               ; preds = %40, %37
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2VaSinkG(ptr noundef %0, ...) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca [100 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  store ptr %0, ptr %2, align 8
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  call void @llvm.va_start.p0(ptr %5)
  %6 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  %7 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  %8 = call i32 @vsnprintf(ptr noundef %6, i64 noundef 99, ptr noundef @.str.5, ptr noundef %7) #6
  %9 = getelementptr inbounds [1 x %struct.__va_list_tag], ptr %4, i64 0, i64 0
  call void @llvm.va_end.p0(ptr %9)
  %10 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  call void @printLine(ptr noundef %10)
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
