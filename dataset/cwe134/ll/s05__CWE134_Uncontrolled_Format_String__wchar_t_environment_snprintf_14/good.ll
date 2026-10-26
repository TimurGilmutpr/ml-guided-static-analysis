; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s05/CWE134_Uncontrolled_Format_String__wchar_t_environment_snprintf_14.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s05/CWE134_Uncontrolled_Format_String__wchar_t_environment_snprintf_14.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@globalFive = external global i32, align 4
@.str = private unnamed_addr constant [4 x i32] [i32 65, i32 68, i32 68, i32 0], align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Benign, fixed string\00", align 1
@.str.2 = private unnamed_addr constant [3 x i32] [i32 37, i32 115, i32 0], align 4
@.str.3 = private unnamed_addr constant [16 x i32] [i32 102, i32 105, i32 120, i32 101, i32 100, i32 115, i32 116, i32 114, i32 105, i32 110, i32 103, i32 116, i32 101, i32 115, i32 116, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__wchar_t_environment_snprintf_14_good() #0 {
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
  %4 = alloca ptr, align 8
  %5 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %6 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %6, ptr %1, align 8
  %7 = load i32, ptr @globalFive, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %25

9:                                                ; preds = %0
  %10 = load ptr, ptr %1, align 8
  %11 = call i64 @wcslen(ptr noundef %10) #5
  store i64 %11, ptr %3, align 8
  %12 = call ptr @getenv(ptr noundef @.str) #6
  store ptr %12, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load ptr, ptr %1, align 8
  %17 = load i64, ptr %3, align 8
  %18 = getelementptr inbounds nuw i32, ptr %16, i64 %17
  %19 = load ptr, ptr %4, align 8
  %20 = load i64, ptr %3, align 8
  %21 = sub i64 100, %20
  %22 = sub i64 %21, 1
  %23 = call ptr @wcsncat(ptr noundef %18, ptr noundef %19, i64 noundef %22) #6
  br label %24

24:                                               ; preds = %15, %9
  br label %25

25:                                               ; preds = %24, %0
  %26 = load i32, ptr @globalFive, align 4
  %27 = icmp ne i32 %26, 5
  br i1 %27, label %28, label %29

28:                                               ; preds = %25
  call void @printLine(ptr noundef @.str.1)
  br label %34

29:                                               ; preds = %25
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 400, i1 false)
  %30 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 0
  %31 = load ptr, ptr %1, align 8
  %32 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %30, i64 noundef 99, ptr noundef @.str.2, ptr noundef %31) #6
  %33 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 0
  call void @printWLine(ptr noundef %33)
  br label %34

34:                                               ; preds = %29, %28
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @wcslen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @wcsncat(ptr noundef, ptr noundef, i64 noundef) #3

declare void @printLine(ptr noundef) #4

; Function Attrs: nounwind
declare i32 @swprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @printWLine(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G2() #0 {
  %1 = alloca ptr, align 8
  %2 = alloca [100 x i32], align 16
  %3 = alloca i64, align 8
  %4 = alloca ptr, align 8
  %5 = alloca [100 x i32], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %2, i8 0, i64 400, i1 false)
  %6 = getelementptr inbounds [100 x i32], ptr %2, i64 0, i64 0
  store ptr %6, ptr %1, align 8
  %7 = load i32, ptr @globalFive, align 4
  %8 = icmp eq i32 %7, 5
  br i1 %8, label %9, label %25

9:                                                ; preds = %0
  %10 = load ptr, ptr %1, align 8
  %11 = call i64 @wcslen(ptr noundef %10) #5
  store i64 %11, ptr %3, align 8
  %12 = call ptr @getenv(ptr noundef @.str) #6
  store ptr %12, ptr %4, align 8
  %13 = load ptr, ptr %4, align 8
  %14 = icmp ne ptr %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = load ptr, ptr %1, align 8
  %17 = load i64, ptr %3, align 8
  %18 = getelementptr inbounds nuw i32, ptr %16, i64 %17
  %19 = load ptr, ptr %4, align 8
  %20 = load i64, ptr %3, align 8
  %21 = sub i64 100, %20
  %22 = sub i64 %21, 1
  %23 = call ptr @wcsncat(ptr noundef %18, ptr noundef %19, i64 noundef %22) #6
  br label %24

24:                                               ; preds = %15, %9
  br label %25

25:                                               ; preds = %24, %0
  %26 = load i32, ptr @globalFive, align 4
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %33

28:                                               ; preds = %25
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 400, i1 false)
  %29 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 0
  %30 = load ptr, ptr %1, align 8
  %31 = call i32 (ptr, i64, ptr, ...) @swprintf(ptr noundef %29, i64 noundef 99, ptr noundef @.str.2, ptr noundef %30) #6
  %32 = getelementptr inbounds [100 x i32], ptr %5, i64 0, i64 0
  call void @printWLine(ptr noundef %32)
  br label %33

33:                                               ; preds = %28, %25
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
declare ptr @wcscpy(ptr noundef, ptr noundef) #3

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
attributes #3 = { nounwind "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
