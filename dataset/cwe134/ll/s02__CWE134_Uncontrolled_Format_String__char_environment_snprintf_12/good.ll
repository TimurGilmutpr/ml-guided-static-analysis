; ModuleID = '/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s02/CWE134_Uncontrolled_Format_String__char_environment_snprintf_12.c'
source_filename = "/home/timur/Desktop/juliet/data/C/testcases/CWE134_Uncontrolled_Format_String/s02/CWE134_Uncontrolled_Format_String__char_environment_snprintf_12.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_snprintf_12_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [100 x i8], align 16
  %8 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %9 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %9, ptr %1, align 8
  %10 = call i32 (...) @globalReturnsTrueOrFalse()
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %28

12:                                               ; preds = %0
  %13 = load ptr, ptr %1, align 8
  %14 = call i64 @strlen(ptr noundef %13) #5
  store i64 %14, ptr %3, align 8
  %15 = call ptr @getenv(ptr noundef @.str) #6
  store ptr %15, ptr %4, align 8
  %16 = load ptr, ptr %4, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load ptr, ptr %1, align 8
  %20 = load i64, ptr %3, align 8
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 %20
  %22 = load ptr, ptr %4, align 8
  %23 = load i64, ptr %3, align 8
  %24 = sub i64 100, %23
  %25 = sub i64 %24, 1
  %26 = call ptr @strncat(ptr noundef %21, ptr noundef %22, i64 noundef %25) #6
  br label %27

27:                                               ; preds = %18, %12
  br label %44

28:                                               ; preds = %0
  %29 = load ptr, ptr %1, align 8
  %30 = call i64 @strlen(ptr noundef %29) #5
  store i64 %30, ptr %5, align 8
  %31 = call ptr @getenv(ptr noundef @.str) #6
  store ptr %31, ptr %6, align 8
  %32 = load ptr, ptr %6, align 8
  %33 = icmp ne ptr %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %28
  %35 = load ptr, ptr %1, align 8
  %36 = load i64, ptr %5, align 8
  %37 = getelementptr inbounds nuw i8, ptr %35, i64 %36
  %38 = load ptr, ptr %6, align 8
  %39 = load i64, ptr %5, align 8
  %40 = sub i64 100, %39
  %41 = sub i64 %40, 1
  %42 = call ptr @strncat(ptr noundef %37, ptr noundef %38, i64 noundef %41) #6
  br label %43

43:                                               ; preds = %34, %28
  br label %44

44:                                               ; preds = %43, %27
  %45 = call i32 (...) @globalReturnsTrueOrFalse()
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %44
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 100, i1 false)
  %48 = getelementptr inbounds [100 x i8], ptr %7, i64 0, i64 0
  %49 = load ptr, ptr %1, align 8
  %50 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %48, i64 noundef 99, ptr noundef @.str.1, ptr noundef %49) #6
  %51 = getelementptr inbounds [100 x i8], ptr %7, i64 0, i64 0
  call void @printLine(ptr noundef %51)
  br label %57

52:                                               ; preds = %44
  call void @llvm.memset.p0.i64(ptr align 16 %8, i8 0, i64 100, i1 false)
  %53 = getelementptr inbounds [100 x i8], ptr %8, i64 0, i64 0
  %54 = load ptr, ptr %1, align 8
  %55 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %53, i64 noundef 99, ptr noundef @.str.1, ptr noundef %54) #6
  %56 = getelementptr inbounds [100 x i8], ptr %8, i64 0, i64 0
  call void @printLine(ptr noundef %56)
  br label %57

57:                                               ; preds = %52, %47
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

declare i32 @globalReturnsTrueOrFalse(...) #2

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #4

; Function Attrs: nounwind
declare ptr @strncat(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

declare void @printLine(ptr noundef) #2

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i8], align 16
  %3 = alloca [100 x i8], align 16
  %4 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 100, i1 false)
  %5 = getelementptr inbounds [100 x i8], ptr %2, i64 0, i64 0
  store ptr %5, ptr %1, align 8
  %6 = call i32 (...) @globalReturnsTrueOrFalse()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr %1, align 8
  %10 = call ptr @strcpy(ptr noundef %9, ptr noundef @.str.2) #6
  br label %14

11:                                               ; preds = %0
  %12 = load ptr, ptr %1, align 8
  %13 = call ptr @strcpy(ptr noundef %12, ptr noundef @.str.2) #6
  br label %14

14:                                               ; preds = %11, %8
  %15 = call i32 (...) @globalReturnsTrueOrFalse()
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14
  call void @llvm.memset.p0.i64(ptr align 16 %3, i8 0, i64 100, i1 false)
  %18 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  %19 = load ptr, ptr %1, align 8
  %20 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %18, i64 noundef 99, ptr noundef %19) #6
  %21 = getelementptr inbounds [100 x i8], ptr %3, i64 0, i64 0
  call void @printLine(ptr noundef %21)
  br label %27

22:                                               ; preds = %14
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 100, i1 false)
  %23 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  %24 = load ptr, ptr %1, align 8
  %25 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %23, i64 noundef 99, ptr noundef %24) #6
  %26 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  call void @printLine(ptr noundef %26)
  br label %27

27:                                               ; preds = %22, %17
  ret void
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #4

attributes #0 = { noinline nounwind optnone uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
