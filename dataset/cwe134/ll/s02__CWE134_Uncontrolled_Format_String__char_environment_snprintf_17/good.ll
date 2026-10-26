; ModuleID = 'data/C/testcases/CWE134_Uncontrolled_Format_String/s02/CWE134_Uncontrolled_Format_String__char_environment_snprintf_17.c'
source_filename = "data/C/testcases/CWE134_Uncontrolled_Format_String/s02/CWE134_Uncontrolled_Format_String__char_environment_snprintf_17.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"ADD\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"fixedstringtest\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @CWE134_Uncontrolled_Format_String__char_environment_snprintf_17_good() #0 {
  call void @goodB2G()
  call void @goodG2B()
  ret void
}

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodB2G() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca i64, align 8
  %6 = alloca ptr, align 8
  %7 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 100, i1 false)
  %8 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  store ptr %8, ptr %3, align 8
  store i32 0, ptr %1, align 4
  br label %9

9:                                                ; preds = %28, %0
  %10 = load i32, ptr %1, align 4
  %11 = icmp slt i32 %10, 1
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load ptr, ptr %3, align 8
  %14 = call i64 @strlen(ptr noundef %13) #5
  store i64 %14, ptr %5, align 8
  %15 = call ptr @getenv(ptr noundef @.str) #6
  store ptr %15, ptr %6, align 8
  %16 = load ptr, ptr %6, align 8
  %17 = icmp ne ptr %16, null
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load ptr, ptr %3, align 8
  %20 = load i64, ptr %5, align 8
  %21 = getelementptr inbounds nuw i8, ptr %19, i64 %20
  %22 = load ptr, ptr %6, align 8
  %23 = load i64, ptr %5, align 8
  %24 = sub i64 100, %23
  %25 = sub i64 %24, 1
  %26 = call ptr @strncat(ptr noundef %21, ptr noundef %22, i64 noundef %25) #6
  br label %27

27:                                               ; preds = %18, %12
  br label %28

28:                                               ; preds = %27
  %29 = load i32, ptr %1, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, ptr %1, align 4
  br label %9, !llvm.loop !6

31:                                               ; preds = %9
  store i32 0, ptr %2, align 4
  br label %32

32:                                               ; preds = %40, %31
  %33 = load i32, ptr %2, align 4
  %34 = icmp slt i32 %33, 1
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  call void @llvm.memset.p0.i64(ptr align 16 %7, i8 0, i64 100, i1 false)
  %36 = getelementptr inbounds [100 x i8], ptr %7, i64 0, i64 0
  %37 = load ptr, ptr %3, align 8
  %38 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %36, i64 noundef 99, ptr noundef @.str.1, ptr noundef %37) #6
  %39 = getelementptr inbounds [100 x i8], ptr %7, i64 0, i64 0
  call void @printLine(ptr noundef %39)
  br label %40

40:                                               ; preds = %35
  %41 = load i32, ptr %2, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, ptr %2, align 4
  br label %32, !llvm.loop !8

43:                                               ; preds = %32
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #1

; Function Attrs: nounwind willreturn memory(read)
declare i64 @strlen(ptr noundef) #2

; Function Attrs: nounwind
declare ptr @getenv(ptr noundef) #3

; Function Attrs: nounwind
declare ptr @strncat(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: nounwind
declare i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

declare void @printLine(ptr noundef) #4

; Function Attrs: noinline nounwind optnone uwtable
define internal void @goodG2B() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca ptr, align 8
  %4 = alloca [100 x i8], align 16
  %5 = alloca [100 x i8], align 16
  call void @llvm.memset.p0.i64(ptr align 16 %4, i8 0, i64 100, i1 false)
  %6 = getelementptr inbounds [100 x i8], ptr %4, i64 0, i64 0
  store ptr %6, ptr %3, align 8
  store i32 0, ptr %1, align 4
  br label %7

7:                                                ; preds = %13, %0
  %8 = load i32, ptr %1, align 4
  %9 = icmp slt i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %7
  %11 = load ptr, ptr %3, align 8
  %12 = call ptr @strcpy(ptr noundef %11, ptr noundef @.str.2) #6
  br label %13

13:                                               ; preds = %10
  %14 = load i32, ptr %1, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, ptr %1, align 4
  br label %7, !llvm.loop !9

16:                                               ; preds = %7
  store i32 0, ptr %2, align 4
  br label %17

17:                                               ; preds = %25, %16
  %18 = load i32, ptr %2, align 4
  %19 = icmp slt i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  call void @llvm.memset.p0.i64(ptr align 16 %5, i8 0, i64 100, i1 false)
  %21 = getelementptr inbounds [100 x i8], ptr %5, i64 0, i64 0
  %22 = load ptr, ptr %3, align 8
  %23 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %21, i64 noundef 99, ptr noundef %22) #6
  %24 = getelementptr inbounds [100 x i8], ptr %5, i64 0, i64 0
  call void @printLine(ptr noundef %24)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, ptr %2, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %2, align 4
  br label %17, !llvm.loop !10

28:                                               ; preds = %17
  ret void
}

; Function Attrs: nounwind
declare ptr @strcpy(ptr noundef, ptr noundef) #3

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
!6 = distinct !{!6, !7}
!7 = !{!"llvm.loop.mustprogress"}
!8 = distinct !{!8, !7}
!9 = distinct !{!9, !7}
!10 = distinct !{!10, !7}
